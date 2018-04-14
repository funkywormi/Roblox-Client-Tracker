local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local Modules = CoreGui.RobloxGui.Modules
local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)

local AppPage = require(Modules.LuaApp.AppPage)
local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)
local NavigationEventReceiver = require(Modules.LuaApp.NavigationEventReceiver)

local HomePage = require(Modules.LuaApp.Components.Home.HomePage)
local GamesHub = require(Modules.LuaApp.Components.Games.GamesHub)
local RoactAvatarEditorWrapper = require(Modules.LuaApp.Components.Avatar.RoactAvatarEditorWrapper)
local RoactChatWrapper = require(Modules.LuaApp.Components.Chat.RoactChatWrapper)
local BottomBar = require(Modules.LuaApp.Components.BottomBar)
local RoactDummyPageWrap = require(Modules.LuaApp.Components.RoactDummyPageWrap)

local RemoveLoadingHUDOniOS = settings():GetFFlag("RemoveLoadingHUDOniOS")
local UseLuaBottomBar = settings():GetFFlag("UseLuaBottomBar")


local APP_READY = GuiService:GetNotificationTypeList().APP_READY

-- TODO Once HomePage and GamesHub creates their own ScreenGui,
-- the ScreenGuiWrap should be removed.
local RoactScreenGuiWrap = Roact.Component:extend("RoactScreenGuiWrap")

function RoactScreenGuiWrap:render()
	local element = self.props.element
	local isVisible = self.props.isVisible

	return Roact.createElement("ScreenGui", {
		Enabled = isVisible,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Contents = Roact.createElement(element),
	})
end

-- Staging broadcasting of APP_READY to accomodate for unpredictable delay on the native side.
-- Once Lua tab bar is integrated, there will be no use for this, as current page information
-- will be propagated instantly within the Roact paradigm.
function RoactScreenGuiWrap:didUpdate(prevProps, prevState)
	if not RemoveLoadingHUDOniOS then
		if not prevProps.isVisible and self.props.isVisible then
			GuiService:BroadcastNotification(self.props.pageType, APP_READY)
		end
	end
end


local AppRouter = Roact.Component:extend("AppRouter")

function AppRouter:render()
	local deviceOrientation = self.props.deviceOrientation
	if deviceOrientation == DeviceOrientationMode.Invalid then
		return Roact.createElement(NavigationEventReceiver)
	end

	local currentPage = self.props.currentPage
	local parameters = self.props.parameters
	local bottomBarVisible = self.props.bottomBarVisible

	local elements = {
		NavigationEventReceiver = Roact.createElement(NavigationEventReceiver),
		Home = Roact.createElement(RoactScreenGuiWrap, {
			element = HomePage,
			isVisible = currentPage == AppPage.Home,
			pageType = AppPage.Home,
		}),
		Games = Roact.createElement(RoactScreenGuiWrap, {
			element = GamesHub,
			isVisible = currentPage == AppPage.Games,
			pageType = AppPage.Games,
		}),
		Avatar = Roact.createElement(RoactAvatarEditorWrapper, {
			isVisible = currentPage == AppPage.AvatarEditor,
			pageType = AppPage.AvatarEditor,
		}),
		Chat = Roact.createElement(RoactChatWrapper, {
			isVisible = currentPage == AppPage.Chat or currentPage == AppPage.ShareGameToChat,
			pageType = currentPage,
			parameters = parameters,
		}),
		More = Roact.createElement(RoactDummyPageWrap, {
			isVisible = currentPage == AppPage.More,
			pageType = AppPage.More,
		}),
	}
	if deviceOrientation == DeviceOrientationMode.Landscape then
		elements["Catalog"] = Roact.createElement(RoactDummyPageWrap, {
			isVisible = currentPage == AppPage.Catalog,
			pageType = AppPage.Catalog,
		})
		elements["Friends"] = Roact.createElement(RoactDummyPageWrap, {
			isVisible = currentPage == AppPage.Friends,
			pageType = AppPage.Friends,
		})
	end
	if  UserSettings().GameSettings:InStudioMode() or UseLuaBottomBar then
		elements["BottomBar"] = Roact.createElement(BottomBar, {
			isVisible = bottomBarVisible,
			displayOrder = 4,
		})
		if bottomBarVisible then
			GuiService:SetGlobalGuiInset(0, 0, 0, Constants.TAB_BAR_SIZE)
		else
			GuiService:SetGlobalGuiInset(0, 0, 0, 0)
		end
	end

	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, elements)
end

AppRouter = RoactRodux.connect(function(store)
	local state = store:GetState()
	return {
		currentPage = state.AppRouter.currentPage,
		parameters = state.AppRouter.parameters,
		bottomBarVisible = state.ChatAppReducer.TabBarVisible,
		deviceOrientation = state.DeviceOrientation,
	}
end)(AppRouter)

return AppRouter