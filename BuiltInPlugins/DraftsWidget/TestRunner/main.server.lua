if not plugin then
	return
end

local Plugin = script.Parent.Parent

if not settings():GetFFlag("StudioVersionControlAlpha") then return end

local OverrideLocaleId = settings():GetFVariable("StudioForceLocale")
game:DefineFastInt("DebugStudioDraftsWidgetTestCase", 0)

local MockDraftsService = require(Plugin.Src.TestHelpers.MockDraftsService)
local DraftsService = game:GetService("DraftsService")
local RunService = game:GetService("RunService")
local StudioService = game:GetService("StudioService")

-- libraries
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)

-- components
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local MainView = require(Plugin.Src.Components.MainView)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local DraftsServiceLoaded = require(Plugin.Src.Actions.DraftsServiceLoaded)
local DraftsLoadedAction = require(Plugin.Src.Actions.DraftsLoadedAction)
local DraftAddedAction = require(Plugin.Src.Actions.DraftAddedAction)
local DraftRemovedAction = require(Plugin.Src.Actions.DraftRemovedAction)
local DraftStateChangedAction = require(Plugin.Src.Actions.DraftStateChangedAction)
local CommitState = require(Plugin.Src.Symbols.CommitState)
local DraftState = require(Plugin.Src.Symbols.DraftState)

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local Localization = UILibrary.Studio.Localization

-- Plugin Specific Globals
local roduxStore = Rodux.Store.new(MainReducer)
local theme = PluginTheme.new()
local localization = Localization.new({
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
	overrideLocaleChangedSignal = StudioService:GetPropertyChangedSignal("StudioLocaleId"),
	getLocale = function()
		if #OverrideLocaleId > 0 then
			return OverrideLocaleId
		else
			return StudioService["StudioLocaleId"]
		end
	end,
	pluginName = "Drafts",
})

local draftsTestCase = game:GetFastInt("DebugStudioDraftsWidgetTestCase")
local draftsService = draftsTestCase == 0 and DraftsService or MockDraftsService.new(draftsTestCase)

-- Widget Gui Elements
local pluginHandle
local pluginGui

-- Fast flags

--Initializes and populates the plugin popup window
local function openPluginWindow()
	if pluginHandle then
		warn("Plugin handle already exists")
		return
	end

	-- create the roact tree
	local servicesProvider = Roact.createElement(ServiceWrapper, {
		draftsService = draftsService,
		plugin = plugin,
		pluginGui = pluginGui,
		localization = localization,
		theme = theme,
		store = roduxStore,
	}, {
		mainView = Roact.createElement(MainView, {
		}),
	})

	pluginHandle = Roact.mount(servicesProvider, pluginGui)
end

--Closes and unmounts the Skeleton Editor popup window
local function closePluginWindow()
	if pluginHandle then
		Roact.unmount(pluginHandle)
		pluginHandle = nil
	end
end

local function toggleWidget()
	pluginGui.Enabled = not pluginGui.Enabled
end

-- The widget should open automatically if there are checked out drafts, or whenever
-- the first draft is checked out. We only do this once so the widget doesn't keep
-- opening if the user explicitly closes it
local function setWidgetInitialState(drafts)
	-- Widget isn't enabled outside of Edit, so don't automatically open it
	if not RunService:IsEdit() then return end

	local initiallyHasDrafts = #drafts > 0
	if initiallyHasDrafts then
		pluginGui.Enabled = true
	else
		-- Wait for the first draft to be checked out. Our fake signal implementation doesn't have :wait(),
		-- so we need to connect and then immediately disconnect the first time it fires. The definition
		-- and assignment of connection is separated because otherwise we couldn't access it from within
		-- the event callback
		local connection
		connection = draftsService.DraftAdded:connect(function()
			connection:disconnect()
			pluginGui.Enabled = true
		end)
	end
end

local function connectToDraftsService()
	local eventConnections = {}

	local function handleStatus(draft, status)
		if status == Enum.DraftStatusCode.DraftOutdated then
			roduxStore:dispatch(DraftStateChangedAction(draft, DraftState.Outdated, true))
		elseif status == Enum.DraftStatusCode.OK then
			roduxStore:dispatch(DraftStateChangedAction(draft, DraftState.Outdated, false))
		elseif status == Enum.DraftStatusCode.ScriptRemoved then
			-- Do nothing. AncestryChanged event will handle this
		end

		return status == Enum.DraftStatusCode.OK
	end

	local function draftInit(draft)
		assert(eventConnections[draft] == nil)

		local draftStatus = draftsService:GetDraftStatus(draft)
		handleStatus(draft, draftStatus)

		eventConnections[draft] = draft.AncestryChanged:Connect(function(_, ancestorNewParent)
			roduxStore:dispatch(DraftStateChangedAction(draft, DraftState.Deleted, ancestorNewParent == nil))
		end)
	end

	local function draftCleanup(draft)
		assert(eventConnections[draft] ~= nil)
		eventConnections[draft]:Disconnect()
		eventConnections[draft] = nil
	end

	spawn(function()
		local success, drafts = pcall(function() return draftsService:GetDrafts() end)
		roduxStore:dispatch(DraftsServiceLoaded(success, drafts))

		if not success then return end

		roduxStore:dispatch(DraftsLoadedAction(drafts))

		for _,draft in pairs(drafts) do
			draftInit(draft)
		end

		draftsService.DraftAdded:connect(function(draft)
			roduxStore:dispatch(DraftAddedAction(draft))
			draftInit(draft)
		end)

		draftsService.DraftRemoved:connect(function(draft)
			roduxStore:dispatch(DraftRemovedAction(draft))
			draftCleanup(draft)
		end)

		draftsService.DraftStatusChanged:connect(function(draft)
		    local draftStatus = draftsService:GetDraftStatus(draft)
            handleStatus(draft, draftStatus)
		end)

		draftsService.UpdateStatusChanged:connect(function(draft)
			local draftStatus = draftsService:GetDraftStatus(draft)
			local success = handleStatus(draft, draftStatus)
			if success then
				roduxStore:dispatch(DraftStateChangedAction(draft, DraftState.Outdated, false))
			end
		end)
		draftsService.CommitStatusChanged:connect(function(draft, status)
			local success = handleStatus(draft, status)
			if success then
				roduxStore:dispatch(DraftStateChangedAction(draft, DraftState.Committed, CommitState.Committed))
			else
				roduxStore:dispatch(DraftStateChangedAction(draft, DraftState.Committed, CommitState.Uncommitted))
			end
		end)

		setWidgetInitialState(drafts)
	end)
end

--Binds a toolbar button
local function main()
	local pluginTitle = localization:getText("Meta", "PluginName")
	plugin.Name = pluginTitle

	local toolbar = plugin:CreateToolbar("draftsToolbar")
	local pluginButton = toolbar:CreateButton(
		"draftsButton",
		localization:getText("Meta", "PluginButtonTooltip"),
		""
	)

	pluginButton.ClickableWhenViewportHidden = true
	pluginButton.Click:connect(toggleWidget)

	local function showIfEnabled()
		if pluginGui.Enabled then
			openPluginWindow()
		else
			closePluginWindow()
		end

		-- toggle the plugin UI
		pluginButton:SetActive(pluginGui.Enabled)
	end

	-- create the plugin
	local widgetInfo = DockWidgetPluginGuiInfo.new(
		Enum.InitialDockState.Right,  -- Widget will be initialized docked to the right
		false,   -- Widget will be initially disabled
		true,  -- Override the previous enabled state since the plugin enabling itself
			   -- will be saved and open next time a place with no drafts is loaded
		300,    -- Default width of the floating window
		600,    -- Default height of the floating window
		150,    -- Minimum width of the floating window (optional)
		150     -- Minimum height of the floating window (optional)
	)
	pluginGui = plugin:CreateDockWidgetPluginGui(pluginTitle, widgetInfo)
	pluginGui.Name = pluginTitle
	pluginGui.Title = pluginTitle
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	pluginGui:GetPropertyChangedSignal("Enabled"):connect(showIfEnabled)

	-- configure the widget and button if its visible
	showIfEnabled()

	connectToDraftsService()
end

main()