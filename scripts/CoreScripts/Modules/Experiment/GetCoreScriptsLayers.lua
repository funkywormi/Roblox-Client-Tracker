local CorePackages = game:GetService("CorePackages")
local IsExperienceMenuABTestEnabled = require(script.Parent.Parent.IsExperienceMenuABTestEnabled)
local FFlagEnableCapturesDesktopExperiment = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableCapturesDesktopExperiment
local FFlagEnableSocialCaptureTakenIXPLayer = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableSocialCaptureTakenIXPLayer
local FStringCapturesIXPLayer = require(CorePackages.Workspace.Packages.SharedFlags).FStringCapturesIXPLayer
local FStringSocialCaptureIXPLayer = require(CorePackages.Workspace.Packages.SharedFlags).FStringSocialCaptureIXPLayer
local FStringSocialCaptureTakenIXPLayer = require(CorePackages.Workspace.Packages.SharedFlags).FStringSocialCaptureTakenIXPLayer
local GetFFlagShareInviteLinkContextMenuABTestEnabled = require(script.Parent.Parent.Flags.GetFFlagShareInviteLinkContextMenuABTestEnabled)
local GetFFlagEnableNewInviteMenuIXP = require(script.Parent.Parent.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFStringLargerRobuxUpsellIxpLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLargerRobuxUpsellIxpLayer
local GetFStringLuaAppExperienceMenuLayer = require(script.Parent.Parent.Flags.GetFStringLuaAppExperienceMenuLayer)
local GetFStringLuaAppConsoleExperienceMenuLayer = require(script.Parent.Parent.Flags.GetFStringLuaAppConsoleExperienceMenuLayer)
local GetFFlagInGameMenuV1FadeBackgroundAnimation = require(script.Parent.Parent.Settings.Flags.GetFFlagInGameMenuV1FadeBackgroundAnimation)
local GetFFlagEnableTeleportBackButton = require(script.Parent.Parent.Flags.GetFFlagEnableTeleportBackButton)
local GetFStringTeleportBackButtonIXPCustomLayerName = require(script.Parent.Parent.Flags.GetFStringTeleportBackButtonIXPCustomLayerName)
local GetFFlagReportAnythingAnnotationIXP = require(script.Parent.Parent.Settings.Flags.GetFFlagReportAnythingAnnotationIXP)
local GetFStringReportAnythingAnnotationIXPLayerName = require(script.Parent.Parent.Settings.Flags.GetFStringReportAnythingAnnotationIXPLayerName)
local GetFFlagReportTabShareIXPLayerWithMenu = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportTabShareIXPLayerWithMenu
local GetFStringChatTranslationLayerName = require(script.Parent.Parent.Flags.GetFStringChatTranslationLayerName)
local GetFFlagChatTranslationSettingEnabled = require(script.Parent.Parent.Flags.GetFFlagChatTranslationSettingEnabled)
local GetFFlagVoiceUserAgencyEnableIXP = require(script.Parent.Parent.Flags.GetFFlagVoiceUserAgencyEnableIXP)
local GetFStringVoiceUserAgencyIXPLayerName = require(script.Parent.Parent.Flags.GetFStringVoiceUserAgencyIXPLayerName)
local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification = require(script.Parent.Parent.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)
local getFStringDesktopToastNotificationLayer = require(CorePackages.Workspace.Packages.SharedFlags).getFStringDesktopToastNotificationLayer
local GetFFlagMuteTogglesEnableIXP = require(script.Parent.Parent.Settings.Flags.GetFFlagMuteTogglesEnableIXP)
local GetFStringMuteTogglesIXPLayerName = require(script.Parent.Parent.Settings.Flags.GetFStringMuteTogglesIXPLayerName)
local GetFStringGameInviteMenuLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringGameInviteMenuLayer
local GetFFlagUXForCameraPerformanceIXPEnabled = require(script.Parent.Parent.Flags.GetFFlagUXForCameraPerformanceIXPEnabled)
local GetFStringUXForCameraPerformanceIXPLayerName = require(script.Parent.Parent.Flags.GetFStringUXForCameraPerformanceIXPLayerName)
local GetFFlagAddVoiceExposureLayer = require(script.Parent.Parent.Flags.GetFFlagAddVoiceExposureLayer)
local GetFStringVoiceExposureIXPLayerName = require(script.Parent.Parent.Flags.GetFStringVoiceExposureIXPLayerName)
local GetFFlagAddPhoneVerificationLayers = require(script.Parent.Parent.Flags.GetFFlagAddPhoneVerificationLayers)
local GetFStringAndroidPhoneVerificationLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringAndroidPhoneVerificationLayer
local GetFStringIOSPhoneVerificationLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringIOSPhoneVerificationLayer

return function()
	local layers = {
		"AbuseReports",
		getFStringDesktopToastNotificationLayer(),
	}

	if IsExperienceMenuABTestEnabled()
		or GetFFlagShareInviteLinkContextMenuABTestEnabled()
		or GetFFlagEnableNewInviteMenuIXP()
		or GetFFlagReportTabShareIXPLayerWithMenu()
	then
		table.insert(layers, GetFStringLuaAppExperienceMenuLayer())
		table.insert(layers, GetFStringLuaAppConsoleExperienceMenuLayer())
	end

	if GetFStringLargerRobuxUpsellIxpLayer() then
		table.insert(layers, GetFStringLargerRobuxUpsellIxpLayer())
	end

	if GetFFlagEnableTeleportBackButton() then
		table.insert(layers, GetFStringTeleportBackButtonIXPCustomLayerName())
	end

	if GetFFlagInGameMenuV1FadeBackgroundAnimation() then
		table.insert(layers, "Engine.Interactivity.UICreation.NotchScreenSupport")
	end

	if GetFFlagReportAnythingAnnotationIXP() then
		table.insert(layers, GetFStringReportAnythingAnnotationIXPLayerName())
	end

	if GetFFlagChatTranslationSettingEnabled() and #GetFStringChatTranslationLayerName() > 0 then
		table.insert(layers, GetFStringChatTranslationLayerName())
	end

	if GetFFlagVoiceUserAgencyEnableIXP() then
		table.insert(layers, GetFStringVoiceUserAgencyIXPLayerName())
	end
	if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() then
		table.insert(layers, GetFStringGameInviteMenuLayer())
	end

	if GetFFlagMuteTogglesEnableIXP() then
		table.insert(layers, GetFStringMuteTogglesIXPLayerName())
	end

	if GetFFlagUXForCameraPerformanceIXPEnabled() then
		table.insert(layers, GetFStringUXForCameraPerformanceIXPLayerName())
	end

	if FFlagEnableCapturesDesktopExperiment then
		table.insert(layers, FStringCapturesIXPLayer)
	end

	if game:GetEngineFeature("SocialCaptureLayerRegistered") and FStringSocialCaptureIXPLayer then
		table.insert(layers, FStringSocialCaptureIXPLayer)
	end

	if FFlagEnableSocialCaptureTakenIXPLayer and FStringSocialCaptureTakenIXPLayer then
		table.insert(layers, FStringSocialCaptureTakenIXPLayer)
	end

	if GetFFlagAddVoiceExposureLayer() then
		table.insert(layers, GetFStringVoiceExposureIXPLayerName())
	end

	if GetFFlagAddPhoneVerificationLayers() and GetFStringAndroidPhoneVerificationLayer() then
		table.insert(layers, GetFStringAndroidPhoneVerificationLayer())
	end

	if GetFFlagAddPhoneVerificationLayers() and GetFStringIOSPhoneVerificationLayer() then
		table.insert(layers, GetFStringIOSPhoneVerificationLayer())
	end

	return layers
end
