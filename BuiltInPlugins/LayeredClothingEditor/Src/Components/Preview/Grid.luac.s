PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["SelectedAssets"]
  GETTABLEKS R3 R1 K2 ["SelectedTab"]
  GETTABLE R4 R2 R3
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["List"]
  GETTABLEKS R5 R6 K4 ["toSet"]
  MOVE R6 R4
  CALL R5 1 -1
  RETURN R5 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["UserAddedAssets"]
  JUMPIFNOT R3 [+2]
  GETTABLE R4 R3 R1
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  RETURN R4 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["UpdatePreviewAssetsSelected"]
  MOVE R3 R0
  NOT R4 R1
  CALL R2 2 0
  JUMPIF R1 [+49]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["SelectedTab"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["PrebuiltAssetsInfo"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["Analytics"]
  GETTABLE R6 R3 R0
  JUMPIFEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["FirstAction"]
  JUMPIF R6 [+16]
  GETUPVAL R6 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["ACTIONS"]
  GETTABLEKS R7 R8 K7 ["Preview"]
  SETTABLEKS R7 R6 K5 ["FirstAction"]
  LOADK R8 K5 ["FirstAction"]
  NAMECALL R6 R4 K8 ["getHandler"]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["FirstAction"]
  CALL R6 1 0
  LOADK R8 K9 ["PreviewAssetSelected"]
  NAMECALL R6 R4 K8 ["getHandler"]
  CALL R6 2 1
  MOVE R7 R5
  MOVE R8 R2
  MOVE R9 R0
  LOADB R10 1
  CALL R6 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["gridRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K2 ["onThumbnailClick"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["UserAddedAssets"]
  JUMPIFNOT R4 [+2]
  GETTABLE R2 R4 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [ipairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R11 R8 K4 ["uniqueId"]
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K7 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [inext] [-9]
  RETURN R3 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["SearchFilter"]
  GETTABLEKS R4 R2 K2 ["CategoryFilter"]
  GETUPVAL R5 0
  GETTABLEKS R6 R2 K3 ["PrebuiltAssetsInfo"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R8 R7 K4 ["UserAddedAssets"]
  JUMPIFNOT R8 [+2]
  GETTABLE R6 R8 R1
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["getTabInfo"]
  MOVE R8 R1
  CALL R7 1 1
  JUMPIFNOT R7 [+153]
  GETUPVAL R8 2
  MOVE R9 R0
  MOVE R10 R1
  CALL R8 2 1
  NEWTABLE R9 0 0
  NEWTABLE R10 0 0
  JUMPIFEQKS R4 K6 [""] [+8]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K7 ["CategoryPrefixes"]
  GETTABLEKS R11 R12 K8 ["Default"]
  JUMPIFNOTEQ R4 R11 [+71]
  GETTABLEKS R11 R7 K9 ["AssetIds"]
  JUMPIFNOT R11 [+32]
  GETIMPORT R11 K11 [pairs]
  GETTABLEKS R12 R7 K9 ["AssetIds"]
  CALL R11 1 3
  FORGPREP_NEXT R11
  GETTABLE R16 R5 R15
  JUMPIFNOT R16 [+22]
  LOADK R17 K12 ["Asset"]
  SETTABLEKS R17 R16 K13 ["ThumbnailType"]
  JUMPIFEQKS R3 K6 [""] [+11]
  GETIMPORT R17 K16 [string.find]
  GETTABLEKS R18 R16 K17 ["Name"]
  JUMPIF R18 [+2]
  GETTABLEKS R18 R16 K18 ["name"]
  MOVE R19 R3
  CALL R17 2 1
  JUMPIFNOT R17 [+7]
  FASTCALL2 TABLE_INSERT R9 R15 [+5]
  MOVE R18 R9
  MOVE R19 R15
  GETIMPORT R17 K21 [table.insert]
  CALL R17 2 0
  FORGLOOP R11 2 [-25]
  GETTABLEKS R11 R7 K22 ["BundleIds"]
  JUMPIFNOT R11 [+32]
  GETIMPORT R11 K11 [pairs]
  GETTABLEKS R12 R7 K22 ["BundleIds"]
  CALL R11 1 3
  FORGPREP_NEXT R11
  GETTABLE R16 R5 R15
  JUMPIFNOT R16 [+22]
  LOADK R17 K23 ["BundleThumbnail"]
  SETTABLEKS R17 R16 K13 ["ThumbnailType"]
  JUMPIFEQKS R3 K6 [""] [+11]
  GETIMPORT R17 K16 [string.find]
  GETTABLEKS R18 R16 K17 ["Name"]
  JUMPIF R18 [+2]
  GETTABLEKS R18 R16 K18 ["name"]
  MOVE R19 R3
  CALL R17 2 1
  JUMPIFNOT R17 [+7]
  FASTCALL2 TABLE_INSERT R10 R15 [+5]
  MOVE R18 R10
  MOVE R19 R15
  GETIMPORT R17 K21 [table.insert]
  CALL R17 2 0
  FORGLOOP R11 2 [-25]
  NEWTABLE R11 0 0
  JUMPIFEQKS R4 K6 [""] [+8]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K7 ["CategoryPrefixes"]
  GETTABLEKS R12 R13 K24 ["Custom"]
  JUMPIFNOTEQ R4 R12 [+36]
  GETIMPORT R12 K26 [ipairs]
  MOVE R13 R6
  CALL R12 1 3
  FORGPREP_INEXT R12
  JUMPIFEQKS R3 K6 [""] [+10]
  GETIMPORT R17 K16 [string.find]
  GETTABLEKS R19 R16 K27 ["instance"]
  GETTABLEKS R18 R19 K17 ["Name"]
  MOVE R19 R3
  CALL R17 2 1
  JUMPIFNOT R17 [+17]
  GETTABLEKS R17 R16 K28 ["uniqueId"]
  DUPTABLE R18 K30 [{"Name", "ThumbnailType", "Instance"}]
  GETTABLEKS R20 R16 K27 ["instance"]
  GETTABLEKS R19 R20 K17 ["Name"]
  SETTABLEKS R19 R18 K17 ["Name"]
  LOADK R19 K6 [""]
  SETTABLEKS R19 R18 K13 ["ThumbnailType"]
  GETTABLEKS R19 R16 K27 ["instance"]
  SETTABLEKS R19 R18 K29 ["Instance"]
  SETTABLE R18 R11 R17
  FORGLOOP R12 2 [inext] [-29]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K31 ["Dictionary"]
  GETTABLEKS R12 R13 K32 ["join"]
  MOVE R13 R5
  MOVE R14 R11
  CALL R12 2 1
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K33 ["List"]
  GETTABLEKS R13 R14 K32 ["join"]
  MOVE R14 R8
  MOVE R15 R9
  MOVE R16 R10
  CALL R13 3 1
  MOVE R14 R13
  MOVE R15 R12
  RETURN R14 2
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Size"]
  GETTABLEKS R3 R1 K2 ["layoutOrder"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  GETTABLEKS R5 R1 K4 ["Analytics"]
  GETTABLEKS R6 R1 K5 ["SelectedTab"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["new"]
  CALL R7 0 1
  NEWTABLE R8 0 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["getTabInfo"]
  MOVE R10 R6
  CALL R9 1 1
  JUMPIFNOT R9 [+53]
  GETUPVAL R10 2
  MOVE R11 R0
  MOVE R12 R6
  CALL R10 2 2
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K8 ["Dictionary"]
  GETTABLEKS R12 R13 K9 ["join"]
  MOVE R13 R8
  GETUPVAL R14 4
  DUPTABLE R15 K16 [{"AssetIds", "AssetsInfo", "LayoutOrder", "SelectedTiles", "DefaultThumbnail", "OnThumbnailClick"}]
  SETTABLEKS R10 R15 K10 ["AssetIds"]
  SETTABLEKS R11 R15 K11 ["AssetsInfo"]
  NAMECALL R16 R7 K17 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  GETTABLEKS R17 R0 K0 ["props"]
  GETTABLEKS R18 R17 K18 ["SelectedAssets"]
  GETTABLEKS R19 R17 K5 ["SelectedTab"]
  GETTABLE R20 R18 R19
  JUMPIF R20 [+2]
  NEWTABLE R20 0 0
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K19 ["List"]
  GETTABLEKS R21 R22 K20 ["toSet"]
  MOVE R22 R20
  CALL R21 1 1
  MOVE R16 R21
  SETTABLEKS R16 R15 K13 ["SelectedTiles"]
  GETTABLEKS R17 R4 K21 ["DefaultTileImages"]
  GETTABLE R16 R17 R6
  SETTABLEKS R16 R15 K14 ["DefaultThumbnail"]
  GETTABLEKS R16 R0 K22 ["onThumbnailClick"]
  SETTABLEKS R16 R15 K15 ["OnThumbnailClick"]
  CALL R14 1 -1
  CALL R12 -1 1
  MOVE R8 R12
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K23 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K26 [{"Size", "CellSize", "CellPadding", "LayoutOrder"}]
  SETTABLEKS R2 R12 K1 ["Size"]
  GETTABLEKS R13 R4 K27 ["TileSize"]
  SETTABLEKS R13 R12 K24 ["CellSize"]
  GETTABLEKS R13 R4 K28 ["TilePadding"]
  SETTABLEKS R13 R12 K25 ["CellPadding"]
  SETTABLEKS R3 R12 K12 ["LayoutOrder"]
  MOVE R13 R8
  CALL R10 3 -1
  RETURN R10 -1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["API"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["AssetServiceWrapper"]
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["getAllAssetIds"]
  CALL R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["getAllBundleIds"]
  CALL R5 0 1
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["GetPrebuiltAssetsInfo"]
  MOVE R7 R2
  MOVE R8 R3
  MOVE R9 R4
  MOVE R10 R5
  CALL R6 4 0
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K7 ["UpdatePreviewAssetsSelected"]
  CALL R6 0 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["previewAssets"]
  GETTABLEKS R3 R0 K1 ["previewStatus"]
  DUPTABLE R4 K7 [{"PrebuiltAssetsInfo", "SelectedTab", "SearchFilter", "CategoryFilter", "SelectedAssets"}]
  GETTABLEKS R5 R2 K8 ["prebuiltAssetsInfo"]
  SETTABLEKS R5 R4 K2 ["PrebuiltAssetsInfo"]
  GETTABLEKS R5 R3 K9 ["selectedTab"]
  SETTABLEKS R5 R4 K3 ["SelectedTab"]
  GETTABLEKS R5 R3 K10 ["searchFilter"]
  SETTABLEKS R5 R4 K4 ["SearchFilter"]
  GETTABLEKS R5 R3 K11 ["categoryFilter"]
  SETTABLEKS R5 R4 K5 ["CategoryFilter"]
  GETTABLEKS R5 R3 K12 ["selectedAssets"]
  SETTABLEKS R5 R4 K6 ["SelectedAssets"]
  RETURN R4 1

PROTO_9:
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K2 [{"GetPrebuiltAssetsInfo", "UpdatePreviewAssetsSelected"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["GetPrebuiltAssetsInfo"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["UpdatePreviewAssetsSelected"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
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
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["AvatarToolsShared"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["Components"]
  GETTABLEKS R6 R5 K11 ["ScrollableGrid"]
  GETTABLEKS R7 R5 K12 ["AssetThumbnailTiles"]
  GETTABLEKS R9 R4 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R9 R8 K15 ["Constants"]
  GETTABLEKS R10 R8 K16 ["PreviewConstants"]
  GETTABLEKS R11 R8 K17 ["PreviewConstantsInterface"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K5 ["Packages"]
  GETTABLEKS R13 R14 K18 ["Framework"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K19 ["ContextServices"]
  GETTABLEKS R14 R13 K20 ["withContext"]
  GETTABLEKS R15 R12 K13 ["Util"]
  GETTABLEKS R16 R15 K21 ["LayoutOrderIterator"]
  GETTABLEKS R17 R15 K22 ["Typecheck"]
  GETTABLEKS R18 R15 K23 ["deepCopy"]
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K24 ["Src"]
  GETTABLEKS R21 R22 K25 ["Thunks"]
  GETTABLEKS R20 R21 K26 ["UpdatePreviewAssetsSelected"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K24 ["Src"]
  GETTABLEKS R22 R23 K25 ["Thunks"]
  GETTABLEKS R21 R22 K27 ["GetPrebuiltAssetsInfo"]
  CALL R20 1 1
  GETTABLEKS R22 R4 K28 ["Contexts"]
  GETTABLEKS R21 R22 K29 ["EditingItemContext"]
  GETTABLEKS R23 R4 K28 ["Contexts"]
  GETTABLEKS R22 R23 K30 ["AssetServiceWrapper"]
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K24 ["Src"]
  GETTABLEKS R25 R26 K13 ["Util"]
  GETTABLEKS R24 R25 K15 ["Constants"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K24 ["Src"]
  GETTABLEKS R26 R27 K13 ["Util"]
  GETTABLEKS R25 R26 K31 ["ShowDialog"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R28 R0 K24 ["Src"]
  GETTABLEKS R27 R28 K13 ["Util"]
  GETTABLEKS R26 R27 K32 ["AnalyticsGlobals"]
  CALL R25 1 1
  GETTABLEKS R26 R1 K33 ["PureComponent"]
  LOADK R28 K34 ["PreviewGrid"]
  NAMECALL R26 R26 K35 ["extend"]
  CALL R26 2 1
  GETTABLEKS R27 R17 K36 ["wrap"]
  MOVE R28 R26
  GETIMPORT R29 K1 [script]
  CALL R27 2 0
  DUPCLOSURE R27 K37 [PROTO_0]
  CAPTURE VAL R3
  DUPCLOSURE R28 K38 [PROTO_1]
  DUPCLOSURE R29 K39 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R25
  CAPTURE VAL R23
  SETTABLEKS R29 R26 K40 ["init"]
  DUPCLOSURE R29 K41 [PROTO_4]
  DUPCLOSURE R30 K42 [PROTO_5]
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R29
  CAPTURE VAL R10
  CAPTURE VAL R3
  DUPCLOSURE R31 K43 [PROTO_6]
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R30
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R31 R26 K44 ["render"]
  DUPCLOSURE R31 K45 [PROTO_7]
  CAPTURE VAL R11
  SETTABLEKS R31 R26 K46 ["didMount"]
  MOVE R31 R14
  DUPTABLE R32 K52 [{"Analytics", "Stylizer", "Localization", "API", "Plugin", "EditingItemContext", "AssetServiceWrapper"}]
  GETTABLEKS R33 R13 K47 ["Analytics"]
  SETTABLEKS R33 R32 K47 ["Analytics"]
  GETTABLEKS R33 R13 K48 ["Stylizer"]
  SETTABLEKS R33 R32 K48 ["Stylizer"]
  GETTABLEKS R33 R13 K49 ["Localization"]
  SETTABLEKS R33 R32 K49 ["Localization"]
  GETTABLEKS R33 R13 K50 ["API"]
  SETTABLEKS R33 R32 K50 ["API"]
  GETTABLEKS R33 R13 K51 ["Plugin"]
  SETTABLEKS R33 R32 K51 ["Plugin"]
  SETTABLEKS R21 R32 K29 ["EditingItemContext"]
  SETTABLEKS R22 R32 K30 ["AssetServiceWrapper"]
  CALL R31 1 1
  MOVE R32 R26
  CALL R31 1 1
  MOVE R26 R31
  DUPCLOSURE R31 K53 [PROTO_8]
  DUPCLOSURE R32 K54 [PROTO_11]
  CAPTURE VAL R20
  CAPTURE VAL R19
  GETTABLEKS R33 R2 K55 ["connect"]
  MOVE R34 R31
  MOVE R35 R32
  CALL R33 2 1
  MOVE R34 R26
  CALL R33 1 -1
  RETURN R33 -1
