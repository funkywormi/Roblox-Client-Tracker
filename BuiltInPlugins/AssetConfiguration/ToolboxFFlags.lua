-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined

game:DefineFastFlag("AssetConfigOverrideFromAnyScreen", false)
game:DefineFastFlag("FixAssetConfigManageableGroups", false)
game:DefineFastFlag("ShowAssetConfigReasons2", false)
game:DefineFastFlag("DebugAssetConfigNetworkError", false)
game:DefineFastFlag("AssetConfigFixRoactTypeChecks", false)

game:DefineFastFlag("DebugToolboxGetRolesRequest", false)

game:DefineFastFlag("EnableToolboxAssetNameColorChange", false)
game:DefineFastFlag("RemoveAudioEndorsedIcon", false)

game:DefineFastFlag("CMSPremiumBenefitsLink2", false)
game:DefineFastFlag("CMSFixAssetPreviewForThumbnailConfig", false)

game:DefineFastFlag("ToolboxFixOneSecondAudioMaxDuration", false)

game:DefineFastFlag("DebugToolboxEnableRoactChecks", false)

game:DefineFastFlag("ToolboxDisableMarketplaceAndRecentsForLuobu", false)
game:DefineFastFlag("ToolboxShowRobloxCreatedAssetsForLuobu", false)

-- TODO: jbousellam - 3/16/21 - remove with FFlagStudioCreatePluginPolicyService
game:DefineFastInt("LuobuToolboxMaxAudioLength", 5)
game:DefineFastString("LuobuMarketplaceDisabledCategories", "PaidPlugins;Plugins")

game:DefineFastFlag("AssetConfigFixAssetIdTypo", false)
game:DefineFastFlag("AssetConfigFixBadIdVerifyState", false)

game:DefineFastFlag("UseDefaultThumbnailForAnimation", false)

game:DefineFastFlag("CMSUploadAccessoryMeshPartFormat2", false)

game:DefineFastFlag("ToolboxUseDevFrameworkAssetPreview", false)

game:DefineFastFlag("CMSUploadFees", false)

game:DefineFastFlag("ImproveAssetCreationsPageFetching2", false)

game:DefineFastFlag("ToolboxUseGetItemDetails", false)

game:DefineFastFlag("EnableToolboxStylizer", false)

game:DefineFastFlag("ToolboxStopAudioFromPlayingOnCloseAndCategorySwitch", false)

game:DefineFastFlag("ToolboxCreationsFreshChecks", false)

game:DefineFastFlag("ToolboxNewResponseFreshChecks", false)

game:DefineFastFlag("ToolboxMarkLoadingInitially", false)

game:DefineFastFlag("AssetConfigNonCatalogOptionalDescription", false)
game:DefineFastFlag("ToolboxFixCreatorSearchResults", false)

game:DefineFastFlag("ToolboxAssetGridUseFirstOccurrence", false)

return nil
