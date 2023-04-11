return {
	-- Common
	UIBlox = require(script.UIBlox),
	isSubjectToDesktopPolicies = require(script.isSubjectToDesktopPolicies),

	-- Ecosystems
	getFFlagUseVerifiedBadgeExperienceModal = require(script.getFFlagUseVerifiedBadgeExperienceModal),
	getFFlagVBXboxReducerFix = require(script.getFFlagVBXboxReducerFix),
	GetFFlagFixGameDetailsAutomaticSize = require(script.GetFFlagFixGameDetailsAutomaticSize),
	getFFlagVirtualEventsGraphQL = require(script.getFFlagVirtualEventsGraphQL),
	getFFlagHorizontalMediaOnEventDetailsPage = require(script.getFFlagHorizontalMediaOnEventDetailsPage),
	getFFlagShowEventsOnExperienceDetailsPages = require(script.getFFlagShowEventsOnExperienceDetailsPages),
	getFStringEventsOnExperienceDetailsPageLayer = require(script.getFStringEventsOnExperienceDetailsPageLayer),
	getFFlagEventNotificationsModal = require(script.getFFlagEventNotificationsModal),
	getFFlagUpsellModalOnEventDetailsPage = require(script.getFFlagUpsellModalOnEventDetailsPage),
	getFFlagUpdateRsvpButtonText = require(script.getFFlagUpdateRsvpButtonText),
	getFFlagFetchEventsFromWrapper = require(script.getFFlagFetchEventsFromWrapper),
	getFFlagRemoveVirtualEventsExperiment = require(script.getFFlagRemoveVirtualEventsExperiment),
	getFFlagFixEventsListGettingSquished = require(script.getFFlagFixEventsListGettingSquished),

	-- LuaApp
	getFFlagLuaProfileShareWithDesktopPolicy = require(script.getFFlagLuaProfileShareWithDesktopPolicy),
	GetFFlagEnableSwapToSourceButton = require(script.GetFFlagEnableSwapToSourceButton),
	FFlagDesktopLaunchLinksInExternalBrowser = require(script.FFlagDesktopLaunchLinksInExternalBrowser),
	ConvertUniverseIdToString = require(script.ConvertUniverseIdToString),
	FFlagMultiTryOnPurchaseGamepadEnabled = require(script.FFlagMultiTryOnPurchaseGamepadEnabled),
	GetFFlagUseExperienceDetailsPageSelector = require(script.GetFFlagUseExperienceDetailsPageSelector),

	-- Social
	GetFFlagLuaAppEnableSquadPage = require(script.GetFFlagLuaAppEnableSquadPage),
	getFFlagProfileAliasEnabled = require(script.getFFlagProfileAliasEnabled),
	getFFlagProfileAddQRCodeEventLogging = require(script.getFFlagProfileAddQRCodeEventLogging),
	getFFlagProfileQRCodeReducerEnabled = require(script.getFFlagProfileQRCodeReducerEnabled),
	getFFlagEnableRoduxUsersRoactChat = require(script.getFFlagEnableRoduxUsersRoactChat),
	getFFlagEnableContactInvitesForNonPhoneVerified = require(script.getFFlagEnableContactInvitesForNonPhoneVerified),
	getFFlagGameInviteShortUrlEnabled = require(script.getFFlagGameInviteShortUrlEnabled),
	getFFlagAddFriendsQRCodeAnalytics = require(script.getFFlagAddFriendsQRCodeAnalytics),
	getFFlagProfileQRCodeCoreFeaturesEnabled = require(script.getFFlagProfileQRCodeCoreFeaturesEnabled),
	getFFlagProfileQRCodeFixDistanceFromTop = require(script.getFFlagProfileQRCodeFixDistanceFromTop),
	getFFlagReEnableAutoSyncContacts = require(script.getFFlagReEnableAutoSyncContacts),
	getFFlagEnableDeeplinkForContactsList = require(script.getFFlagEnableDeeplinkForContactsList),
	GetFFlagUserSearchNewContextExperimentEnabled = require(script.GetFFlagUserSearchNewContextExperimentEnabled),
	getFFlagAddFriendsPageHideBottomBar = require(script.getFFlagAddFriendsPageHideBottomBar),
	getFFlagFriendsCarouselCleanUpFetchExperimentCode = require(
		script.getFFlagFriendsCarouselCleanUpFetchExperimentCode
	),
	getFFlagLuaProfileDeps438 = require(script.getFFlagLuaProfileDeps438),
	getFFlagMoveMutualFriendsTextToUtils = require(script.getFFlagMoveMutualFriendsTextToUtils),

	-- Notifications
	getFFlagEnableNotificationExperienceInvite = require(script.getFFlagEnableNotificationExperienceInvite),

	-- VR
	GetFFlagUseGridPageLayoutInVR = require(script.GetFFlagUseGridPageLayoutInVR),
	GetFFlagVRAvatarExperienceNoLandingPage = require(script.GetFFlagVRAvatarExperienceNoLandingPage),
	GetFFlagFixStateMutationInVROverlay = require(script.GetFFlagFixStateMutationInVROverlay),
	GetFFlagActivateShadowsInWorldspace = require(script.GetFFlagActivateShadowsInWorldspace),

	-- IXP Layers
	getFStringSocialUserSearchResultsPageLayer = require(script.getFStringSocialUserSearchResultsPageLayer),
	getFStringSocialAddFriendsPageLayer = require(script.getFStringSocialAddFriendsPageLayer),
	getFStringSocialFriendsLayer = require(script.getFStringSocialFriendsLayer),
	getFStringSocialProfileLayer = require(script.getFStringSocialProfileLayer),
	GetFStringLoadingScreenIxpLayer = require(script.GetFStringLoadingScreenIxpLayer),
	GetFStringLargerRobuxUpsellIxpLayer = require(script.GetFStringLargerRobuxUpsellIxpLayer),

	-- Misc
	FFlagLuaAppFixMessageBusUnsubscribe = require(script.FFlagLuaAppFixMessageBusUnsubscribe),
	FFlagAXCatalogSearchSizeGamepad = require(script.FFlagAXCatalogSearchSizeGamepad),
	GetFFlagUseColor3sForBodyParts = require(script.GetFFlagUseColor3sForBodyParts),
	GetEngineFeatureIxpUserAppLayersPrefetchEnabled = require(script.GetEngineFeatureIxpUserAppLayersPrefetchEnabled),
	GetFFlagEnableUnifiedWebViews = require(script.GetFFlagEnableUnifiedWebViews),
	GetFFlagEnableVRWelcomePanel = require(script.GetFFlagEnableVRWelcomePanel),
	GetFFlagSkipRedundantVoiceCheck = require(script.GetFFlagSkipRedundantVoiceCheck),
	getFFlagChatUserDeepLinkEnabled = require(script.getFFlagChatUserDeepLinkEnabled),
	getFFlagContactImporterWithPhoneVerification = require(script.getFFlagContactImporterWithPhoneVerification),
	getFFlagFixLearnMoreLinkViaSocialTab = require(script.getFFlagFixLearnMoreLinkViaSocialTab),
	getFFlagFriendsCarouselDontUseIngestService = require(script.getFFlagFriendsCarouselDontUseIngestService),
	getFFlagOffNetworkAnalytics = require(script.getFFlagOffNetworkAnalytics),
	getFFlagPYMKDontUseIngestService = require(script.getFFlagPYMKDontUseIngestService),
	getFFlagSocialAddFriendshipRequestEvent = require(script.getFFlagSocialAddFriendshipRequestEvent),
	getFFlagSocialAddMessageModal = require(script.getFFlagSocialAddMessageModal),
	getFFlagSocialProfileShareAnalyticsEnabled = require(script.getFFlagSocialProfileShareAnalyticsEnabled),
	getFFlagSoothsayerCheckForContactImporter = require(script.getFFlagSoothsayerCheckForContactImporter),
	getFFlagMigrateSocialNetworking = require(script.getFFlagMigrateSocialNetworking),
	GetEnableDesignSystemExperiment = require(script.GetEnableDesignSystemExperiment),
	GetFFlagDisableBubbleChatForExpChat = require(script.GetFFlagDisableBubbleChatForExpChat),
	GetFFlagShareGetPlatformTargetImpl = require(script.GetFFlagShareGetPlatformTargetImpl),
	GetFFlagUseLoadableImageForAvatarThumbnails = require(script.GetFFlagUseLoadableImageForAvatarThumbnails),
	GetFFlagUpgradeExpChatV3_4_2 = require(script.GetFFlagUpgradeExpChatV3_4_2),
	GetFFlagLuaAppAddSignalToFocusArea = require(script.GetFFlagLuaAppAddSignalToFocusArea),
	GetFFlagLuaAppUseUIBloxColorPalettes = require(script.GetFFlagLuaAppUseUIBloxColorPalettes),
	isNewFriendsEndpointsEnabled = require(script.isNewFriendsEndpointsEnabled),
	GetFFlagApiProxyGetUserByIdSwitchToUsersApiEnabled = require(
		script.GetFFlagApiProxyGetUserByIdSwitchToUsersApiEnabled
	),
	getFFlagProfileQRCodeOpenDeepLink = require(script.getFFlagProfileQRCodeOpenDeepLink),
	GetFFlagUseCorrectedFriendSortUtil = require(script.GetFFlagUseCorrectedFriendSortUtil),
	GetFFlagPeekViewDeprecateFitChildren = require(script.GetFFlagPeekViewDeprecateFitChildren),
	GetFFlagUseVoiceExitBetaLanguage = require(script.GetFFlagUseVoiceExitBetaLanguage),
	GetFFlagGameInfoRowVoiceExitBetaBugFix = require(script.GetFFlagGameInfoRowVoiceExitBetaBugFix),
	GetFFlagHideConnectPageWebViewItemsForVR = require(script.GetFFlagHideConnectPageWebViewItemsForVR),
	GetFFlagPeekViewClipFramePositionFromBottom = require(script.GetFFlagPeekViewClipFramePositionFromBottom),
	getFFlagPYMKUseDesktopPolicies = require(script.getFFlagPYMKUseDesktopPolicies),
	GetFFlagDisableEditProfileForVR = require(script.GetFFlagDisableEditProfileForVR),
	GetFFlagLuaAppInfiniteHomePage = require(script.GetFFlagLuaAppInfiniteHomePage),
	getFFlagProfileQRCodePageEnabled = require(script.getFFlagProfileQRCodePageEnabled),
	getFFlagProfileQRCodePageSoothsayerAccessEnabled = require(script.getFFlagProfileQRCodePageSoothsayerAccessEnabled),
	getFFlagProfileQRCodeFriendRequestContextInfoEnabled = require(
		script.getFFlagProfileQRCodeFriendRequestContextInfoEnabled
	),
	getFFlagLuaNativeUtilEnableSMSHandling = require(script.getFFlagLuaNativeUtilEnableSMSHandling),
	GetFFlagEnableTopBarVRPolicyOverride = require(script.GetFFlagEnableTopBarVRPolicyOverride),
	GetFFlagPhoneVerificationWebviewShouldBeFullscreen = require(
		script.GetFFlagPhoneVerificationWebviewShouldBeFullscreen
	),
	getFFlagSocialOnboardingExperimentEnabled = require(script.getFFlagSocialOnboardingExperimentEnabled),
	GetFFlagLuaAppGamePassGameDetails = require(script.GetFFlagLuaAppGamePassGameDetails),
	GetFFlagApolloClientFetchThumbnails = require(script.GetFFlagApolloClientFetchThumbnails),
	GetFFlagApiFetchThumbnailsKeyMapper = require(script.GetFFlagApiFetchThumbnailsKeyMapper),
	getFFlagDebugLuaAppAlwaysUseGamepad = require(script.getFFlagDebugLuaAppAlwaysUseGamepad),
	GetFFlagApolloClientFetchExperiences = require(script.GetFFlagApolloClientFetchExperiences),
	GetFFlagEnableSurveyImprovements = require(script.GetFFlagEnableSurveyImprovements),
	GetFFlagIrisV2Enabled = require(script.GetFFlagIrisV2Enabled),
	GetFFlagDisableCDLQrCodeForMaquettes = require(script.GetFFlagDisableCDLQrCodeForMaquettes),
	GetFFlagPipEnabled = require(script.GetFFlagPipEnabled),
	GetFFlagPlayerBillboardReducerEnabled = require(script.GetFFlagPlayerBillboardReducerEnabled),
}
