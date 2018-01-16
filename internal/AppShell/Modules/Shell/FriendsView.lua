--[[
			// FriendsView.lua

			// Creates a view for the users friends.
			// Handles user input, updating view

			TODO:
				Connect selected/deselected to change color
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local UserInputService = game:GetService('UserInputService')
local GuiService = game:GetService('GuiService')

local FriendsData = require(ShellModules:FindFirstChild('FriendsData'))
local FriendPresenceItem = require(ShellModules:FindFirstChild('FriendPresenceItem'))
local SideBarModule = require(ShellModules:FindFirstChild('SideBar'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local GameJoinModule = require(ShellModules:FindFirstChild('GameJoin'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlayModule = require(ShellModules:FindFirstChild('ErrorOverlay'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

-- Array of tables
	-- see FriendsData - fetchXboxFriends() for full documentation
local myFriendsData = nil

local FOLLOW_MODE = 2

local SIDE_BAR_ITEMS = {
	JoinGame =  Utility.Upper(Strings:LocalizedString("JoinGameWord"));
	ViewDetails = Utility.Upper(Strings:LocalizedString("ViewGameDetailsWord"));
	ViewProfile = Utility.Upper(Strings:LocalizedString("ViewGamerCardWord"));
}

-- side bar is shared between all views
local SideBar = SideBarModule()

local function setPresenceData(item, data)
	item:SetDisplay(data)
end

-- viewGridContainer - ScrollingGrid
-- friendData - FriendsData
-- sizeConstraint - limit view to this many items
-- updateFunc - function that will be called when FriendData update
local createFriendsView = function(viewGridContainer, friendsData, sizeConstraint, updateFunc)
	local this = {}
	-- map of userId to presenceItem, for dynamic scrolling grid, we generate
	-- the presenceItem for the user until the user's grid item is shown on screen
	local presenceItems = {}
	local presenceItemDirty = {}
	local presenceItemToSidebarEvent = {}
	local currentFriendsData = nil

	local function connectSideBar(item, data)
		Utility.DisconnectEvent(presenceItemToSidebarEvent[item])
		local container = item:GetContainer()
		presenceItemToSidebarEvent[item] = container.MouseButton1Click:connect(function()
			if data then
				-- rebuild side bar based on current data
				SideBar:RemoveAllItems()
				function SideBar:GetAnalyticsInfo()
					return {[Analytics.WidgetNames('WidgetId')] = "FriendsSideBar"}
				end
				local inGame = data["PlaceId"] ~= nil
				if inGame and not data["IsPrivateSession"] then
					SideBar:AddItem(SIDE_BAR_ITEMS.JoinGame, function()
						GameJoinModule:StartGame(GameJoinModule.JoinType.Follow, data["robloxuid"])
					end)
					SideBar:AddItem(SIDE_BAR_ITEMS.ViewDetails, function()
						-- pass nil for iconId, gameDetail will fetch
						EventHub:dispatchEvent(EventHub.Notifications["OpenGameDetail"], data["PlaceId"], data["LastLocation"], nil)
					end)
				end
				SideBar:AddItem(SIDE_BAR_ITEMS.ViewProfile, function()
					if PlatformService and data["xuid"] then
						local success, result = pcall(function()
							PlatformService:PopupProfileUI(Enum.UserInputType.Gamepad1, data["xuid"])
						end)
						-- NOTE: This will try to pop up the xbox system gamer card, failure will be handled
						-- by the xbox.
						if not success then
							Utility.DebugLog("PlatformService:PopupProfileUI failed because,", result)
						end
					end
				end)
				ScreenManager:OpenScreen(SideBar, false)
			else
				ScreenManager:OpenScreen(ErrorOverlayModule(Errors.Default), false)
			end
		end)
	end

	local function getPresenceItemByIndex(i)
		local data = currentFriendsData[i]
		if data then
			local idStr = tostring(data.xuid and data.xuid or data["robloxuid"])
			local presenceItem = presenceItems[idStr]
			if presenceItem == nil then
				presenceItem = FriendPresenceItem(UDim2.new(0, 446, 0, 114), idStr)
				presenceItemDirty[idStr] = true
				presenceItems[idStr] = presenceItem
			end

			if presenceItemDirty[idStr] then
				setPresenceData(presenceItem, data)
				connectSideBar(presenceItem, data)
				presenceItemDirty[idStr] = nil
			end
			return presenceItem:GetContainer()
		end
	end

	local function onFriendsUpdated(newFriendsData)
		-- map of valid userIds to bool
		local validEntries = {}
		currentFriendsData = newFriendsData
		for i = 1, #currentFriendsData do
			local data = currentFriendsData[i]
			if data then
				local idStr = tostring(data.xuid and data.xuid or data["robloxuid"])
				validEntries[idStr] = true
			end
		end

		--Update scrolling grid with new list
		viewGridContainer:SetItemCallback(getPresenceItemByIndex)
		viewGridContainer:RecalcLayout(#currentFriendsData)

		-- remove items if needed
		for idStr, presenceItem in pairs(presenceItems) do
			if not validEntries[idStr] then
				local presenceItem = presenceItems[idStr]
				presenceItemDirty[idStr] = true
				presenceItems[idStr] = nil
				presenceItem:Destroy()
				presenceItem = nil
			end
		end

		if updateFunc then
			updateFunc(#currentFriendsData)
		end
	end

	onFriendsUpdated(friendsData)
	FriendsData.ConnectUpdateEvent(onFriendsUpdated)

	function this:GetDefaultFocusItem()
		return viewGridContainer:GetSelectableItem()
	end

	return this
end

return createFriendsView