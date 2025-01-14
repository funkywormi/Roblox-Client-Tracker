local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local RoactRodux = require(CorePackages.Workspace.Packages.RoactRodux)
local Rodux = require(CorePackages.Workspace.Packages.Rodux)

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)
local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChat = AppChat.App.InExperienceAppChat
local SettingsHubPageChangedSignalProvider = AppChat.Contexts.SettingsHubPageChangedSignalProvider
local UnreadMessagesProvider = AppChat.Contexts.UnreadMessagesProvider
local AppChatReducer = AppChat.App.AppChatReducer
local InExperienceAppChatProviders = AppChat.App.InExperienceAppChatProviders

local GetFFlagInExperienceAppChatWithProvider = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagInExperienceAppChatWithProvider

local folder = Instance.new("Folder")
folder.Name = "AppChat"
folder.Parent = CoreGui

local root = ReactRoblox.createRoot(folder)
local store = Rodux.Store.new(AppChatReducer, nil, {
	Rodux.thunkMiddleware,
})

local tree = if GetFFlagInExperienceAppChatWithProvider() then
	React.createElement(InExperienceAppChatProviders, {
		store = store,
		currentPageSignal = SettingsHub.CurrentPageSignal,
		updateAppChatUnreadMessagesCount = SettingsHub.Instance.PlayersPage.UpdateAppChatUnreadMessagesCount,
	}, {
		appChat = React.createElement(InExperienceAppChat, {
			apolloClient = ApolloClient,
			parentContainer = SettingsHub.Instance.MenuContainer,
			navigateToChat = function()
				SettingsHub.Instance:SetVisibility(true, false)
				SettingsHub:SwitchToPage(SettingsHub.Instance.AppChatPage)
			end,
			popSettingsHub = function()
				if SettingsHub:GetVisibility() then
					SettingsHub.Instance:PopMenu(false, true)
				end
			end,
		})
	})
else React.createElement(SettingsHubPageChangedSignalProvider, {
	signal = SettingsHub.CurrentPageSignal,
}, {
	unreadMessagesDispatch = React.createElement(UnreadMessagesProvider, {
		dispatch = SettingsHub.Instance.PlayersPage.UpdateAppChatUnreadMessagesCount,
	}, {
		store = React.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			appChat = React.createElement(InExperienceAppChat, {
				apolloClient = ApolloClient,
				parentContainer = SettingsHub.Instance.MenuContainer,
				navigateToChat = function()
					SettingsHub.Instance:SetVisibility(true, false)
					SettingsHub:SwitchToPage(SettingsHub.Instance.AppChatPage)
				end,
				popSettingsHub = function()
					if SettingsHub:GetVisibility() then
						SettingsHub.Instance:PopMenu(false, true)
					end
				end,
			})
		})
	})
})
root:render(tree)
