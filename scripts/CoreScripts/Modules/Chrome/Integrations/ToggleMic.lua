local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Players = game:GetService("Players")
local React = require(CorePackages.Packages.React)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc)

local ChromeService = require(script.Parent.Parent.Service)
local RedVoiceDot = require(script.Parent.RedVoiceDot)

local Constants = require(script.Parent.Parent.Unibar.Constants)
local ICON_SIZE = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE)

local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

local toggleMic = function(self)
	VoiceChatServiceManager:ToggleMic()
	Analytics:setLastCtx("SelfView")
end

local rejoinChannel = function(self)
	VoiceChatServiceManager:RejoinPreviousChannel()
end

local showLoading = function(self)
	VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
end

local muteSelf = ChromeService:register({
	--initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "toggle_mic_mute",
	label = "CoreScripts.TopBar.ToggleMic",
	activated = toggleMic,
	components = {
		Icon = function(props)
			return React.createElement("Frame", {
				Size = ICON_SIZE,
				BackgroundTransparency = 1,
			}, {
				React.createElement(VoiceIndicator, {
					userId = tostring((Players.LocalPlayer :: Player).UserId),
					hideOnError = false,
					iconStyle = "MicLight",
					size = ICON_SIZE,
				}) :: any,
				React.createElement(RedVoiceDot, {
					position = UDim2.new(1, -7, 1, -7),
				}) :: any,
			})
		end,
	},
})

local function updateVoiceState(_, voiceState)
	local voiceEnabled = voiceState ~= (Enum :: any).VoiceChatState.Ended
	if voiceEnabled then
		muteSelf.availability:available()
	else
		muteSelf.availability:unavailable()
	end

	local voiceFailed = voiceState == (Enum :: any).VoiceChatState.Failed
	local voiceLoading = voiceState == (Enum :: any).VoiceChatState.Joining
		or voiceState == (Enum :: any).VoiceChatState.JoiningRetry

	if voiceFailed then
		muteSelf.activated = rejoinChannel
	elseif voiceLoading then
		muteSelf.activated = showLoading
	else
		muteSelf.activated = toggleMic
	end
end

if game:GetEngineFeature("VoiceChatSupported") then
	VoiceChatServiceManager:asyncInit()
		:andThen(function()
			local voiceService = VoiceChatServiceManager:getService()
			if voiceService then
				voiceService.StateChanged:Connect(updateVoiceState)
				VoiceChatServiceManager:SetupParticipantListeners()
				muteSelf.availability:available()
			end
		end)
		:catch(function() end)
end

return muteSelf
