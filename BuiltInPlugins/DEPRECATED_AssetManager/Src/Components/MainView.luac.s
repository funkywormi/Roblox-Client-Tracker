PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getIconForCurrentTheme"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["IconEnums"]
  GETTABLEKS R5 R6 K2 ["BlankFolder"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K3 ["Height"]
  DUPTABLE R6 K9 [{"text", "icon", "Screen", "children", "Parent"}]
  LOADK R9 K10 ["Folders"]
  GETTABLEKS R10 R0 K11 ["Path"]
  NAMECALL R7 R2 K12 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["text"]
  DUPTABLE R7 K16 [{"Image", "Size", "ImageColor3"}]
  SETTABLEKS R4 R7 K13 ["Image"]
  GETIMPORT R8 K19 [UDim2.new]
  LOADN R9 0
  MOVE R10 R5
  LOADN R11 0
  MOVE R12 R5
  CALL R8 4 1
  SETTABLEKS R8 R7 K14 ["Size"]
  GETTABLEKS R8 R3 K20 ["ColorIcon"]
  SETTABLEKS R8 R7 K15 ["ImageColor3"]
  SETTABLEKS R7 R6 K5 ["icon"]
  GETTABLEKS R7 R0 K11 ["Path"]
  SETTABLEKS R7 R6 K6 ["Screen"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K7 ["children"]
  SETTABLEKS R1 R6 K8 ["Parent"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R7 R1 K7 ["children"]
  GETTABLEKS R8 R0 K21 ["LayoutOrder"]
  SETTABLE R6 R7 R8
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showConfirmRemovePlaceDialog"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showConfirmRemovePlaceDialog"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showConfirmRemovePlaceDialog"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showConfirmRemovePlaceDialog"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showOverlay"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showOverlay"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showOverlay"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showOverlay"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"showAssetPreview", "assetPreview"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showAssetPreview"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["assetPreview"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  JUMPIF R1 [+1]
  RETURN R0 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+27]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"AssetPreviewData", "OnAssetPreviewClose", "AssetData"}]
  SETTABLEKS R1 R4 K4 ["AssetPreviewData"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["closeAssetPreview"]
  SETTABLEKS R5 R4 K5 ["OnAssetPreviewClose"]
  SETTABLEKS R0 R4 K6 ["AssetData"]
  CALL R2 2 1
  GETUPVAL R3 2
  DUPTABLE R5 K11 [{"showAssetPreview", "assetPreview"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["showAssetPreview"]
  SETTABLEKS R2 R5 K10 ["assetPreview"]
  NAMECALL R3 R3 K12 ["setState"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K13 ["props"]
  GETTABLEKS R2 R3 K14 ["Localization"]
  LOADK R5 K15 ["MainView"]
  LOADK R6 K16 ["AssetPreviewError"]
  NAMECALL R3 R2 K17 ["getText"]
  CALL R3 3 1
  GETIMPORT R4 K19 [warn]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K5 [{"currentScreen", "showAssetPreview", "showOverlay", "showConfirmRemovePlaceDialog", "fileExplorerData"}]
  LOADK R2 K6 [""]
  SETTABLEKS R2 R1 K0 ["currentScreen"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["showAssetPreview"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["showOverlay"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["showConfirmRemovePlaceDialog"]
  DUPTABLE R2 K10 [{"text", "Screen", "children"}]
  LOADK R3 K11 ["Game 1"]
  SETTABLEKS R3 R2 K7 ["text"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["MAIN"]
  GETTABLEKS R3 R4 K13 ["Path"]
  SETTABLEKS R3 R2 K8 ["Screen"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K9 ["children"]
  SETTABLEKS R2 R1 K4 ["fileExplorerData"]
  SETTABLEKS R1 R0 K14 ["state"]
  LOADNIL R1
  SETTABLEKS R1 R0 K15 ["gamePublishedConnection"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["openConfirmRemovePlaceDialog"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["closeConfirmRemovePlaceDialog"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K18 ["openOverlay"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K19 ["closeOverlay"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K20 ["closeAssetPreview"]
  NEWCLOSURE R1 P5
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K21 ["openAssetPreview"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["dispatchGetUniverseConfiguration"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["API"]
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R2 K1 [game]
  GETTABLEKS R1 R2 K2 ["GameId"]
  JUMPIFEQKN R1 K3 [0] [+13]
  GETTABLEKS R2 R0 K4 ["props"]
  GETTABLEKS R1 R2 K5 ["dispatchGetUniverseConfiguration"]
  GETTABLEKS R3 R0 K4 ["props"]
  GETTABLEKS R2 R3 K6 ["API"]
  NAMECALL R2 R2 K7 ["get"]
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["GamePublishFinished"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K9 ["connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K10 ["gamePublishedConnection"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["gamePublishedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["gamePublishedConnection"]
  NAMECALL R1 R1 K1 ["disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETIMPORT R3 K3 [pairs]
  GETUPVAL R4 0
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R7 K4 ["Path"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["MAIN"]
  GETTABLEKS R9 R10 K4 ["Path"]
  JUMPIFEQ R8 R9 [+13]
  GETUPVAL R8 1
  MOVE R9 R7
  GETTABLEKS R11 R0 K6 ["state"]
  GETTABLEKS R10 R11 K7 ["fileExplorerData"]
  MOVE R11 R2
  GETTABLEKS R13 R1 K8 ["Stylizer"]
  GETTABLEKS R12 R13 K9 ["TreeViewItem"]
  CALL R8 4 0
  FORGLOOP R3 2 [-22]
  GETTABLEKS R3 R1 K10 ["API"]
  NAMECALL R3 R3 K11 ["get"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["CurrentScreen"]
  GETTABLEKS R6 R0 K6 ["state"]
  GETTABLEKS R5 R6 K13 ["currentScreen"]
  JUMPIFEQ R4 R5 [+12]
  GETTABLEKS R5 R1 K14 ["dispatchOnScreenChange"]
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 0
  DUPTABLE R7 K15 [{"currentScreen"}]
  SETTABLEKS R4 R7 K13 ["currentScreen"]
  NAMECALL R5 R0 K16 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  LOADB R2 0
  LOADB R3 0
  GETIMPORT R4 K3 [Enum.StudioCloseMode.None]
  NAMECALL R0 R0 K4 ["ShowSaveOrPublishPlaceToRoblox"]
  CALL R0 4 0
  RETURN R0 0

PROTO_13:
  JUMPIFNOTEQKS R0 K0 ["Confirm"] [+6]
  GETUPVAL R1 0
  LOADK R3 K1 ["RemovePlaceConfirmed"]
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["closeConfirmRemovePlaceDialog"]
  CALL R1 0 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["closeConfirmRemovePlaceDialog"]
  CALL R0 0 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["UniverseName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  GETTABLEKS R7 R0 K5 ["state"]
  GETTABLEKS R6 R7 K6 ["fileExplorerData"]
  SETTABLEKS R4 R6 K7 ["text"]
  JUMPIFEQKS R4 K8 [""] [+5]
  GETUPVAL R6 1
  JUMPIF R6 [+2]
  LOADB R6 1
  SETUPVAL R6 1
  GETIMPORT R8 K10 [game]
  GETTABLEKS R7 R8 K11 ["GameId"]
  JUMPIFNOTEQKN R7 K12 [0] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  LOADK R9 K13 ["MainView"]
  LOADK R10 K14 ["SaveText"]
  NAMECALL R7 R3 K15 ["getText"]
  CALL R7 3 1
  GETUPVAL R8 2
  MOVE R9 R7
  GETTABLEKS R10 R2 K16 ["FontSizeLarge"]
  GETTABLEKS R11 R2 K17 ["Font"]
  GETIMPORT R12 K19 [Vector2.new]
  GETTABLEKS R15 R2 K13 ["MainView"]
  GETTABLEKS R14 R15 K20 ["PublishText"]
  GETTABLEKS R13 R14 K21 ["Width"]
  LOADK R14 K22 [∞]
  CALL R12 2 -1
  CALL R8 -1 1
  LOADK R11 K13 ["MainView"]
  LOADK R12 K23 ["ButtonText"]
  NAMECALL R9 R3 K15 ["getText"]
  CALL R9 3 1
  LOADK R12 K13 ["MainView"]
  LOADK R13 K24 ["SaveToRobloxButtonText"]
  NAMECALL R10 R3 K15 ["getText"]
  CALL R10 3 1
  MOVE R9 R10
  GETUPVAL R10 2
  MOVE R11 R9
  GETTABLEKS R12 R2 K16 ["FontSizeLarge"]
  GETTABLEKS R13 R2 K17 ["Font"]
  CALL R10 3 1
  GETTABLEKS R11 R1 K25 ["RecentViewToggled"]
  GETTABLEKS R12 R1 K26 ["RecentAssets"]
  GETIMPORT R14 K28 [next]
  MOVE R15 R12
  CALL R14 1 1
  JUMPIFNOTEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  GETTABLEKS R17 R2 K29 ["TopBar"]
  GETTABLEKS R16 R17 K30 ["Height"]
  GETTABLEKS R18 R2 K31 ["NavBar"]
  GETTABLEKS R17 R18 K30 ["Height"]
  ADD R15 R16 R17
  JUMPIFNOT R13 [+7]
  GETTABLEKS R18 R2 K32 ["RecentView"]
  GETTABLEKS R17 R18 K33 ["Bar"]
  GETTABLEKS R16 R17 K30 ["Height"]
  JUMPIF R16 [+1]
  LOADN R16 0
  ADD R14 R15 R16
  GETTABLEKS R17 R2 K29 ["TopBar"]
  GETTABLEKS R16 R17 K30 ["Height"]
  GETTABLEKS R18 R2 K31 ["NavBar"]
  GETTABLEKS R17 R18 K30 ["Height"]
  ADD R15 R16 R17
  GETTABLEKS R18 R0 K5 ["state"]
  GETTABLEKS R17 R18 K34 ["showOverlay"]
  NOT R16 R17
  JUMPIFNOT R16 [+5]
  GETTABLEKS R18 R0 K5 ["state"]
  GETTABLEKS R17 R18 K35 ["showAssetPreview"]
  NOT R16 R17
  LOADK R19 K13 ["MainView"]
  LOADK R20 K36 ["ConfirmText"]
  NAMECALL R17 R3 K15 ["getText"]
  CALL R17 3 1
  LOADK R20 K13 ["MainView"]
  LOADK R21 K37 ["CancelText"]
  NAMECALL R18 R3 K15 ["getText"]
  CALL R18 3 1
  LOADK R21 K13 ["MainView"]
  LOADK R22 K38 ["ConfirmRemovePlaceText"]
  NAMECALL R19 R3 K15 ["getText"]
  CALL R19 3 1
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K39 ["createElement"]
  LOADK R21 K40 ["Frame"]
  DUPTABLE R22 K45 [{"Size", "Position", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R23 K47 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K41 ["Size"]
  GETIMPORT R23 K47 [UDim2.new]
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K42 ["Position"]
  LOADN R23 0
  SETTABLEKS R23 R22 K43 ["BackgroundTransparency"]
  GETTABLEKS R23 R2 K48 ["BackgroundColor"]
  SETTABLEKS R23 R22 K44 ["BackgroundColor3"]
  DUPTABLE R23 K58 [{"UseText", "PublishButton", "MainViewLayout", "ExplorerOverlay", "AssetPreview", "TopBar", "NavBar", "AssetGridView", "RecentsAssetGridView", "RecentlyImportedView", "ConfirmRemovePlaceDialog"}]
  NOT R24 R6
  JUMPIFNOT R24 [+67]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  LOADK R25 K59 ["TextLabel"]
  DUPTABLE R26 K67 [{"Size", "Position", "AnchorPoint", "LayoutOrder", "BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextWrapped"}]
  GETIMPORT R27 K47 [UDim2.new]
  LOADN R28 0
  GETTABLEKS R29 R8 K68 ["X"]
  LOADN R30 0
  GETTABLEKS R31 R8 K69 ["Y"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K41 ["Size"]
  GETIMPORT R27 K47 [UDim2.new]
  LOADK R28 K70 [0.5]
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R33 R2 K13 ["MainView"]
  GETTABLEKS R32 R33 K20 ["PublishText"]
  GETTABLEKS R31 R32 K71 ["Offset"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K42 ["Position"]
  GETIMPORT R27 K19 [Vector2.new]
  LOADK R28 K70 [0.5]
  LOADK R29 K70 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K60 ["AnchorPoint"]
  NAMECALL R27 R5 K72 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K61 ["LayoutOrder"]
  LOADN R27 1
  SETTABLEKS R27 R26 K43 ["BackgroundTransparency"]
  GETTABLEKS R27 R2 K17 ["Font"]
  SETTABLEKS R27 R26 K17 ["Font"]
  SETTABLEKS R7 R26 K62 ["Text"]
  GETTABLEKS R27 R2 K73 ["TextColor"]
  SETTABLEKS R27 R26 K63 ["TextColor3"]
  GETTABLEKS R27 R2 K16 ["FontSizeLarge"]
  SETTABLEKS R27 R26 K64 ["TextSize"]
  GETIMPORT R27 K76 [Enum.TextXAlignment.Center]
  SETTABLEKS R27 R26 K65 ["TextXAlignment"]
  LOADB R27 1
  SETTABLEKS R27 R26 K66 ["TextWrapped"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K49 ["UseText"]
  NOT R24 R6
  JUMPIFNOT R24 [+79]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  GETUPVAL R25 4
  DUPTABLE R26 K79 [{"Style", "Text", "Size", "Position", "AnchorPoint", "LayoutOrder", "OnClick"}]
  LOADK R27 K80 ["RoundPrimary"]
  SETTABLEKS R27 R26 K77 ["Style"]
  SETTABLEKS R9 R26 K62 ["Text"]
  GETIMPORT R27 K47 [UDim2.new]
  LOADN R28 0
  GETTABLEKS R30 R10 K68 ["X"]
  GETTABLEKS R33 R2 K13 ["MainView"]
  GETTABLEKS R32 R33 K50 ["PublishButton"]
  GETTABLEKS R31 R32 K81 ["PaddingX"]
  ADD R29 R30 R31
  LOADN R30 0
  GETTABLEKS R32 R10 K69 ["Y"]
  GETTABLEKS R35 R2 K13 ["MainView"]
  GETTABLEKS R34 R35 K50 ["PublishButton"]
  GETTABLEKS R33 R34 K82 ["PaddingY"]
  ADD R31 R32 R33
  CALL R27 4 1
  SETTABLEKS R27 R26 K41 ["Size"]
  GETIMPORT R27 K47 [UDim2.new]
  LOADK R28 K70 [0.5]
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R33 R2 K13 ["MainView"]
  GETTABLEKS R32 R33 K50 ["PublishButton"]
  GETTABLEKS R31 R32 K71 ["Offset"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K42 ["Position"]
  GETIMPORT R27 K19 [Vector2.new]
  LOADK R28 K70 [0.5]
  LOADK R29 K70 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K60 ["AnchorPoint"]
  NAMECALL R27 R5 K72 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K61 ["LayoutOrder"]
  DUPCLOSURE R27 K83 [PROTO_12]
  CAPTURE UPVAL U5
  SETTABLEKS R27 R26 K78 ["OnClick"]
  NEWTABLE R27 0 1
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K39 ["createElement"]
  GETUPVAL R29 6
  DUPTABLE R30 K85 [{"Cursor"}]
  LOADK R31 K86 ["PointingHand"]
  SETTABLEKS R31 R30 K84 ["Cursor"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  SETTABLEKS R24 R23 K50 ["PublishButton"]
  MOVE R24 R6
  JUMPIFNOT R24 [+18]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  LOADK R25 K87 ["UIListLayout"]
  DUPTABLE R26 K91 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R27 K93 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K88 ["FillDirection"]
  GETIMPORT R27 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K89 ["SortOrder"]
  GETIMPORT R27 K96 [Enum.VerticalAlignment.Top]
  SETTABLEKS R27 R26 K90 ["VerticalAlignment"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K51 ["MainViewLayout"]
  MOVE R24 R6
  JUMPIFNOT R24 [+25]
  GETTABLEKS R25 R0 K5 ["state"]
  GETTABLEKS R24 R25 K34 ["showOverlay"]
  JUMPIFNOT R24 [+20]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  GETUPVAL R25 7
  DUPTABLE R26 K99 [{"FileExplorerData", "CloseOverlay"}]
  NEWTABLE R27 0 1
  GETTABLEKS R29 R0 K5 ["state"]
  GETTABLEKS R28 R29 K6 ["fileExplorerData"]
  SETLIST R27 R28 1 [1]
  SETTABLEKS R27 R26 K97 ["FileExplorerData"]
  GETTABLEKS R27 R0 K100 ["closeOverlay"]
  SETTABLEKS R27 R26 K98 ["CloseOverlay"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K52 ["ExplorerOverlay"]
  MOVE R24 R6
  JUMPIFNOT R24 [+9]
  GETTABLEKS R25 R0 K5 ["state"]
  GETTABLEKS R24 R25 K35 ["showAssetPreview"]
  JUMPIFNOT R24 [+4]
  GETTABLEKS R25 R0 K5 ["state"]
  GETTABLEKS R24 R25 K101 ["assetPreview"]
  SETTABLEKS R24 R23 K53 ["AssetPreview"]
  MOVE R24 R6
  JUMPIFNOT R24 [+36]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  GETUPVAL R25 8
  DUPTABLE R26 K104 [{"Size", "LayoutOrder", "OnOverlayActivated", "Enabled"}]
  GETIMPORT R27 K47 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R33 R2 K29 ["TopBar"]
  GETTABLEKS R32 R33 K105 ["Button"]
  GETTABLEKS R31 R32 K41 ["Size"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K41 ["Size"]
  NAMECALL R27 R5 K72 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K61 ["LayoutOrder"]
  GETTABLEKS R27 R0 K106 ["openOverlay"]
  SETTABLEKS R27 R26 K102 ["OnOverlayActivated"]
  GETTABLEKS R29 R0 K5 ["state"]
  GETTABLEKS R28 R29 K34 ["showOverlay"]
  NOT R27 R28
  SETTABLEKS R27 R26 K103 ["Enabled"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K29 ["TopBar"]
  MOVE R24 R6
  JUMPIFNOT R24 [+23]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  GETUPVAL R25 9
  DUPTABLE R26 K107 [{"Size", "LayoutOrder"}]
  GETIMPORT R27 K47 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R32 R2 K31 ["NavBar"]
  GETTABLEKS R31 R32 K30 ["Height"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K41 ["Size"]
  NAMECALL R27 R5 K72 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K61 ["LayoutOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K31 ["NavBar"]
  GETUPVAL R25 10
  NOT R24 R25
  JUMPIFNOT R24 [+43]
  MOVE R24 R6
  JUMPIFNOT R24 [+41]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  GETUPVAL R25 11
  DUPTABLE R26 K110 [{"Size", "LayoutOrder", "OnOpenAssetPreview", "OnAssetPreviewClose", "Enabled"}]
  GETIMPORT R27 K47 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  GETTABLEKS R35 R2 K29 ["TopBar"]
  GETTABLEKS R34 R35 K105 ["Button"]
  GETTABLEKS R33 R34 K41 ["Size"]
  MINUS R32 R33
  GETTABLEKS R34 R2 K31 ["NavBar"]
  GETTABLEKS R33 R34 K30 ["Height"]
  SUB R31 R32 R33
  CALL R27 4 1
  SETTABLEKS R27 R26 K41 ["Size"]
  NAMECALL R27 R5 K72 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K61 ["LayoutOrder"]
  GETTABLEKS R27 R0 K111 ["openAssetPreview"]
  SETTABLEKS R27 R26 K108 ["OnOpenAssetPreview"]
  GETTABLEKS R27 R0 K112 ["closeAssetPreview"]
  SETTABLEKS R27 R26 K109 ["OnAssetPreviewClose"]
  SETTABLEKS R16 R26 K103 ["Enabled"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K54 ["AssetGridView"]
  GETUPVAL R24 10
  JUMPIFNOT R24 [+43]
  MOVE R24 R6
  JUMPIFNOT R24 [+41]
  NOT R24 R11
  JUMPIFNOT R24 [+39]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  GETUPVAL R25 11
  DUPTABLE R26 K114 [{"Size", "LayoutOrder", "OnOpenAssetPreview", "OnAssetPreviewClose", "OnOpenConfirmRemovePlaceDialog", "Enabled"}]
  GETIMPORT R27 K47 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  MINUS R31 R14
  CALL R27 4 1
  SETTABLEKS R27 R26 K41 ["Size"]
  NAMECALL R27 R5 K72 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K61 ["LayoutOrder"]
  GETTABLEKS R27 R0 K111 ["openAssetPreview"]
  SETTABLEKS R27 R26 K108 ["OnOpenAssetPreview"]
  GETTABLEKS R27 R0 K112 ["closeAssetPreview"]
  SETTABLEKS R27 R26 K109 ["OnAssetPreviewClose"]
  GETUPVAL R28 12
  CALL R28 0 1
  JUMPIFNOT R28 [+3]
  GETTABLEKS R27 R0 K115 ["openConfirmRemovePlaceDialog"]
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K113 ["OnOpenConfirmRemovePlaceDialog"]
  SETTABLEKS R16 R26 K103 ["Enabled"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K55 ["RecentsAssetGridView"]
  GETUPVAL R24 10
  JUMPIFNOT R24 [+40]
  MOVE R24 R13
  JUMPIFNOT R24 [+38]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  GETUPVAL R25 13
  DUPTABLE R26 K116 [{"Size", "LayoutOrder", "Enabled"}]
  GETIMPORT R27 K47 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  JUMPIFNOT R11 [+2]
  LOADN R30 1
  JUMP [+1]
  LOADN R30 0
  JUMPIFNOT R11 [+2]
  MINUS R31 R15
  JUMPIF R31 [+6]
  GETTABLEKS R33 R2 K32 ["RecentView"]
  GETTABLEKS R32 R33 K33 ["Bar"]
  GETTABLEKS R31 R32 K30 ["Height"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K41 ["Size"]
  NAMECALL R27 R5 K72 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K61 ["LayoutOrder"]
  GETTABLEKS R29 R0 K5 ["state"]
  GETTABLEKS R28 R29 K34 ["showOverlay"]
  NOT R27 R28
  SETTABLEKS R27 R26 K103 ["Enabled"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K56 ["RecentlyImportedView"]
  GETUPVAL R24 12
  CALL R24 0 1
  JUMPIFNOT R24 [+98]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K39 ["createElement"]
  GETUPVAL R25 14
  DUPTABLE R26 K122 [{"Style", "Enabled", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
  LOADK R27 K123 ["Alert"]
  SETTABLEKS R27 R26 K77 ["Style"]
  GETTABLEKS R28 R0 K5 ["state"]
  GETTABLEKS R27 R28 K124 ["showConfirmRemovePlaceDialog"]
  SETTABLEKS R27 R26 K103 ["Enabled"]
  LOADK R27 K8 [""]
  SETTABLEKS R27 R26 K117 ["Title"]
  GETTABLEKS R28 R2 K13 ["MainView"]
  GETTABLEKS R27 R28 K125 ["ConfirmRemovePlaceDialogSize"]
  SETTABLEKS R27 R26 K118 ["MinContentSize"]
  NEWTABLE R27 0 2
  DUPTABLE R28 K127 [{"Key", "Text"}]
  LOADK R29 K128 ["Confirm"]
  SETTABLEKS R29 R28 K126 ["Key"]
  SETTABLEKS R17 R28 K62 ["Text"]
  DUPTABLE R29 K127 [{"Key", "Text"}]
  LOADK R30 K129 ["Cancel"]
  SETTABLEKS R30 R29 K126 ["Key"]
  SETTABLEKS R18 R29 K62 ["Text"]
  SETLIST R27 R28 2 [1]
  SETTABLEKS R27 R26 K119 ["Buttons"]
  NEWCLOSURE R27 P1
  CAPTURE UPVAL U15
  CAPTURE VAL R0
  SETTABLEKS R27 R26 K120 ["OnButtonPressed"]
  NEWCLOSURE R27 P2
  CAPTURE VAL R0
  SETTABLEKS R27 R26 K121 ["OnClose"]
  DUPTABLE R27 K131 [{"Contents"}]
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K39 ["createElement"]
  LOADK R29 K59 ["TextLabel"]
  DUPTABLE R30 K132 [{"BackgroundTransparency", "Position", "Size", "Font", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextWrapped"}]
  LOADN R31 1
  SETTABLEKS R31 R30 K43 ["BackgroundTransparency"]
  GETIMPORT R31 K134 [UDim2.fromScale]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K42 ["Position"]
  GETIMPORT R31 K134 [UDim2.fromScale]
  LOADN R32 1
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K41 ["Size"]
  GETTABLEKS R31 R2 K17 ["Font"]
  SETTABLEKS R31 R30 K17 ["Font"]
  SETTABLEKS R19 R30 K62 ["Text"]
  GETTABLEKS R31 R2 K73 ["TextColor"]
  SETTABLEKS R31 R30 K63 ["TextColor3"]
  GETTABLEKS R31 R2 K16 ["FontSizeLarge"]
  SETTABLEKS R31 R30 K64 ["TextSize"]
  GETIMPORT R31 K76 [Enum.TextXAlignment.Center]
  SETTABLEKS R31 R30 K65 ["TextXAlignment"]
  LOADB R31 1
  SETTABLEKS R31 R30 K66 ["TextWrapped"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K130 ["Contents"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K57 ["ConfirmRemovePlaceDialog"]
  CALL R20 3 -1
  RETURN R20 -1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["AssetManagerReducer"]
  DUPTABLE R3 K6 [{"AssetsTable", "CurrentScreen", "UniverseName", "RecentAssets", "RecentViewToggled"}]
  GETTABLEKS R4 R2 K7 ["assetsTable"]
  SETTABLEKS R4 R3 K1 ["AssetsTable"]
  GETTABLEKS R5 R0 K8 ["Screen"]
  GETTABLEKS R4 R5 K9 ["currentScreen"]
  SETTABLEKS R4 R3 K2 ["CurrentScreen"]
  GETTABLEKS R4 R2 K10 ["universeName"]
  SETTABLEKS R4 R3 K3 ["UniverseName"]
  GETTABLEKS R4 R2 K11 ["recentAssets"]
  SETTABLEKS R4 R3 K4 ["RecentAssets"]
  GETTABLEKS R4 R2 K12 ["recentViewToggled"]
  SETTABLEKS R4 R3 K5 ["RecentViewToggled"]
  RETURN R3 1

PROTO_17:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_20:
  DUPTABLE R1 K3 [{"dispatchLoadAllAliases", "dispatchGetUniverseConfiguration", "dispatchOnScreenChange"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchLoadAllAliases"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchGetUniverseConfiguration"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchOnScreenChange"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Button"]
  GETTABLEKS R8 R6 K13 ["HoverArea"]
  GETTABLEKS R9 R6 K14 ["StyledDialog"]
  GETTABLEKS R10 R6 K15 ["TextLabel"]
  GETTABLEKS R11 R3 K16 ["Util"]
  GETTABLEKS R12 R11 K17 ["LayoutOrderIterator"]
  GETTABLEKS R13 R11 K18 ["GetTextSize"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K19 ["Src"]
  GETTABLEKS R16 R17 K20 ["Components"]
  GETTABLEKS R15 R16 K21 ["AssetGridContainer"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K19 ["Src"]
  GETTABLEKS R17 R18 K20 ["Components"]
  GETTABLEKS R16 R17 K22 ["AssetPreviewWrapper"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K19 ["Src"]
  GETTABLEKS R18 R19 K20 ["Components"]
  GETTABLEKS R17 R18 K23 ["ExplorerOverlay"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K19 ["Src"]
  GETTABLEKS R19 R20 K20 ["Components"]
  GETTABLEKS R18 R19 K24 ["NavBar"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K19 ["Src"]
  GETTABLEKS R20 R21 K20 ["Components"]
  GETTABLEKS R19 R20 K25 ["RecentlyImportedView"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K19 ["Src"]
  GETTABLEKS R21 R22 K20 ["Components"]
  GETTABLEKS R20 R21 K26 ["TopBar"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K19 ["Src"]
  GETTABLEKS R22 R23 K16 ["Util"]
  GETTABLEKS R21 R22 K27 ["Screens"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K19 ["Src"]
  GETTABLEKS R23 R24 K28 ["Thunks"]
  GETTABLEKS R22 R23 K29 ["LoadAllAliases"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K19 ["Src"]
  GETTABLEKS R24 R25 K28 ["Thunks"]
  GETTABLEKS R23 R24 K30 ["GetUniverseConfiguration"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K19 ["Src"]
  GETTABLEKS R25 R26 K28 ["Thunks"]
  GETTABLEKS R24 R25 K31 ["OnScreenChange"]
  CALL R23 1 1
  GETIMPORT R24 K33 [game]
  LOADK R26 K34 ["StudioPublishService"]
  NAMECALL R24 R24 K35 ["GetService"]
  CALL R24 2 1
  GETIMPORT R25 K33 [game]
  LOADK R27 K36 ["MemStorageService"]
  NAMECALL R25 R25 K35 ["GetService"]
  CALL R25 2 1
  GETTABLEKS R26 R1 K37 ["PureComponent"]
  LOADK R28 K38 ["MainView"]
  NAMECALL R26 R26 K39 ["extend"]
  CALL R26 2 1
  GETIMPORT R27 K33 [game]
  LOADK R29 K40 ["StudioAssetManagerAddRecentlyImportedView"]
  NAMECALL R27 R27 K41 ["GetFastFlag"]
  CALL R27 2 1
  LOADB R28 0
  GETIMPORT R29 K4 [require]
  GETTABLEKS R32 R0 K19 ["Src"]
  GETTABLEKS R31 R32 K16 ["Util"]
  GETTABLEKS R30 R31 K42 ["ModernIcons"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R33 R0 K19 ["Src"]
  GETTABLEKS R32 R33 K43 ["Flags"]
  GETTABLEKS R31 R32 K44 ["getFFlagAddConfirmRemovePlaceDialog"]
  CALL R30 1 1
  DUPCLOSURE R31 K45 [PROTO_0]
  CAPTURE VAL R29
  DUPCLOSURE R32 K46 [PROTO_7]
  CAPTURE VAL R20
  CAPTURE VAL R1
  CAPTURE VAL R15
  SETTABLEKS R32 R26 K47 ["init"]
  DUPCLOSURE R32 K48 [PROTO_9]
  CAPTURE VAL R24
  SETTABLEKS R32 R26 K49 ["didMount"]
  DUPCLOSURE R32 K50 [PROTO_10]
  SETTABLEKS R32 R26 K51 ["willUnmount"]
  DUPCLOSURE R32 K52 [PROTO_11]
  CAPTURE VAL R20
  CAPTURE VAL R31
  SETTABLEKS R32 R26 K53 ["didUpdate"]
  NEWCLOSURE R32 P5
  CAPTURE VAL R12
  CAPTURE REF R28
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R24
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R27
  CAPTURE VAL R14
  CAPTURE VAL R30
  CAPTURE VAL R18
  CAPTURE VAL R9
  CAPTURE VAL R25
  SETTABLEKS R32 R26 K54 ["render"]
  MOVE R32 R5
  DUPTABLE R33 K58 [{"API", "Stylizer", "Localization"}]
  GETTABLEKS R34 R4 K55 ["API"]
  SETTABLEKS R34 R33 K55 ["API"]
  GETTABLEKS R34 R4 K56 ["Stylizer"]
  SETTABLEKS R34 R33 K56 ["Stylizer"]
  GETTABLEKS R34 R4 K57 ["Localization"]
  SETTABLEKS R34 R33 K57 ["Localization"]
  CALL R32 1 1
  MOVE R33 R26
  CALL R32 1 1
  MOVE R26 R32
  DUPCLOSURE R32 K59 [PROTO_16]
  DUPCLOSURE R33 K60 [PROTO_20]
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R23
  GETTABLEKS R34 R2 K61 ["connect"]
  MOVE R35 R32
  MOVE R36 R33
  CALL R34 2 1
  MOVE R35 R26
  CALL R34 1 -1
  CLOSEUPVALS R28
  RETURN R34 -1
