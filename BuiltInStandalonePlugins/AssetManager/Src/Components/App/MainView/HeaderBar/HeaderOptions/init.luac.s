PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"FilterType", "Item", "LayoutOrder", "Activated"}]
  SETTABLEKS R0 R6 K1 ["FilterType"]
  SETTABLEKS R1 R6 K2 ["Item"]
  SETTABLEKS R2 R6 K3 ["LayoutOrder"]
  SETTABLEKS R3 R6 K4 ["Activated"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K4 [{"Item", "LayoutOrder", "Activated"}]
  SETTABLEKS R0 R5 K1 ["Item"]
  SETTABLEKS R1 R5 K2 ["LayoutOrder"]
  SETTABLEKS R2 R5 K3 ["Activated"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  JUMPIF R0 [+3]
  GETUPVAL R2 0
  GETTABLEKS R0 R2 K0 ["GridSize"]
  JUMPIF R1 [+3]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["ViewType"]
  GETUPVAL R2 1
  DUPTABLE R4 K2 [{"GridSize", "ViewType"}]
  SETTABLEKS R0 R4 K0 ["GridSize"]
  SETTABLEKS R1 R4 K1 ["ViewType"]
  NAMECALL R2 R2 K3 ["setLayout"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["refreshItems"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["addSort"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["Creator"]
  NEWTABLE R5 1 0
  LOADB R6 1
  SETTABLE R6 R5 R0
  NAMECALL R2 R2 K1 ["addFilter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Creator"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R3 4 -1
  RETURN R3 -1

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["AssetType"]
  NEWTABLE R5 1 0
  LOADB R6 1
  SETTABLE R6 R5 R0
  NAMECALL R2 R2 K1 ["addFilter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["AssetType"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R3 4 -1
  RETURN R3 -1

PROTO_10:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["clearFilters"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R0 2
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  MOVE R1 R0
  LOADNIL R2
  JUMPIF R1 [+3]
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K0 ["GridSize"]
  JUMPIF R2 [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ViewType"]
  GETUPVAL R3 1
  DUPTABLE R5 K2 [{"GridSize", "ViewType"}]
  SETTABLEKS R1 R5 K0 ["GridSize"]
  SETTABLEKS R2 R5 K1 ["ViewType"]
  NAMECALL R3 R3 K3 ["setLayout"]
  CALL R3 2 0
  RETURN R0 0

PROTO_12:
  LOADNIL R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ViewType"]
  GETTABLEKS R2 R3 K1 ["fromRawValue"]
  GETTABLEKS R3 R0 K2 ["rawValue"]
  CALL R3 0 -1
  CALL R2 -1 1
  JUMPIF R1 [+3]
  GETUPVAL R3 1
  GETTABLEKS R1 R3 K3 ["GridSize"]
  JUMPIF R2 [+3]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["ViewType"]
  GETUPVAL R3 2
  DUPTABLE R5 K4 [{"GridSize", "ViewType"}]
  SETTABLEKS R1 R5 K3 ["GridSize"]
  SETTABLEKS R2 R5 K0 ["ViewType"]
  NAMECALL R3 R3 K5 ["setLayout"]
  CALL R3 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETUPVAL R4 3
  LOADNIL R5
  CALL R4 1 2
  GETUPVAL R6 3
  LOADNIL R7
  CALL R6 1 2
  DUPCLOSURE R8 K2 [PROTO_0]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  DUPCLOSURE R9 K3 [PROTO_1]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  GETUPVAL R10 7
  MOVE R11 R3
  CALL R10 1 1
  NEWCLOSURE R11 P2
  CAPTURE VAL R10
  CAPTURE VAL R3
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 8
  NEWTABLE R14 2 0
  GETTABLEKS R15 R0 K5 ["LayoutOrder"]
  SETTABLEKS R15 R14 K5 ["LayoutOrder"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K6 ["Tag"]
  LOADK R16 K7 ["HeaderOptions X-Right X-Middle"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K16 [{"RefreshButton", "GridSortButton", "CreatorFilter", "AssetTypeFilter", "ClearFiltersButton", "ViewTypeSelector", "Separator", "BulkImportButton"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 8
  NEWTABLE R18 4 0
  NAMECALL R19 R1 K17 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K5 ["LayoutOrder"]
  NEWCLOSURE R19 P3
  CAPTURE VAL R3
  SETTABLEKS R19 R18 K18 ["OnClick"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K6 ["Tag"]
  LOADK R20 K19 ["X-Fit X-Center X-Middle"]
  SETTABLE R20 R18 R19
  DUPTABLE R19 K20 [{"RefreshButton"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 9
  NEWTABLE R22 2 0
  GETUPVAL R24 10
  GETTABLEKS R23 R24 K21 ["REFRESH_ICON"]
  SETTABLEKS R23 R22 K22 ["Image"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K6 ["Tag"]
  LOADK R24 K23 ["Icon16"]
  SETTABLE R24 R22 R23
  DUPTABLE R23 K25 [{"RefreshTooltip"}]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K4 ["createElement"]
  GETUPVAL R25 11
  DUPTABLE R26 K27 [{"Text"}]
  LOADK R29 K28 ["Tooltip"]
  LOADK R30 K29 ["Refresh"]
  NAMECALL R27 R2 K30 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K26 ["Text"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K24 ["RefreshTooltip"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K8 ["RefreshButton"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K8 ["RefreshButton"]
  GETTABLEKS R17 R10 K31 ["ViewType"]
  GETUPVAL R20 12
  GETTABLEKS R19 R20 K31 ["ViewType"]
  GETTABLEKS R18 R19 K32 ["Grid"]
  JUMPIFNOTEQ R17 R18 [+52]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 13
  NEWTABLE R18 16 0
  NAMECALL R19 R1 K17 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K5 ["LayoutOrder"]
  GETUPVAL R20 10
  GETTABLEKS R19 R20 K33 ["SORT_ICON"]
  SETTABLEKS R19 R18 K34 ["ExpandIcon"]
  LOADB R19 0
  SETTABLEKS R19 R18 K35 ["ShowSelection"]
  GETUPVAL R19 14
  SETTABLEKS R19 R18 K36 ["Items"]
  NEWCLOSURE R19 P4
  CAPTURE VAL R3
  SETTABLEKS R19 R18 K37 ["OnItemActivated"]
  DUPCLOSURE R19 K38 [PROTO_5]
  CAPTURE VAL R9
  SETTABLEKS R19 R18 K39 ["OnRenderItem"]
  LOADB R19 1
  SETTABLEKS R19 R18 K40 ["UseAutoWidth"]
  GETIMPORT R19 K44 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R19 R18 K42 ["TextTruncate"]
  GETUPVAL R19 15
  LOADK R21 K45 ["FilterIconSize"]
  NAMECALL R19 R19 K46 ["GetAttribute"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K47 ["Size"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K6 ["Tag"]
  LOADK R20 K48 ["X-Fit TickSelected"]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K9 ["GridSortButton"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 13
  NEWTABLE R18 16 0
  NAMECALL R19 R1 K17 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K5 ["LayoutOrder"]
  LOADK R21 K49 ["Filters"]
  LOADK R22 K50 ["Creator"]
  NAMECALL R19 R2 K30 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K51 ["PlaceholderText"]
  SETTABLEKS R6 R18 K52 ["SelectedIndex"]
  NAMECALL R19 R3 K53 ["getCreators"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K36 ["Items"]
  NEWCLOSURE R19 P6
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE UPVAL U16
  SETTABLEKS R19 R18 K37 ["OnItemActivated"]
  DUPCLOSURE R19 K54 [PROTO_7]
  CAPTURE VAL R8
  CAPTURE UPVAL U16
  SETTABLEKS R19 R18 K39 ["OnRenderItem"]
  LOADB R19 1
  SETTABLEKS R19 R18 K40 ["UseAutoWidth"]
  GETIMPORT R19 K44 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R19 R18 K42 ["TextTruncate"]
  GETUPVAL R19 15
  LOADK R21 K55 ["FilterSize"]
  NAMECALL R19 R19 K46 ["GetAttribute"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K47 ["Size"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K6 ["Tag"]
  LOADK R20 K56 [""]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K10 ["CreatorFilter"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 13
  NEWTABLE R18 16 0
  NAMECALL R19 R1 K17 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K5 ["LayoutOrder"]
  LOADK R21 K49 ["Filters"]
  LOADK R22 K57 ["AssetTypes"]
  NAMECALL R19 R2 K30 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K51 ["PlaceholderText"]
  SETTABLEKS R4 R18 K52 ["SelectedIndex"]
  GETUPVAL R20 12
  GETTABLEKS R19 R20 K58 ["getEnumAsList"]
  GETUPVAL R21 12
  GETTABLEKS R20 R21 K59 ["AssetType"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K36 ["Items"]
  NEWCLOSURE R19 P8
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE UPVAL U16
  SETTABLEKS R19 R18 K37 ["OnItemActivated"]
  DUPCLOSURE R19 K60 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE UPVAL U16
  SETTABLEKS R19 R18 K39 ["OnRenderItem"]
  LOADB R19 1
  SETTABLEKS R19 R18 K40 ["UseAutoWidth"]
  GETIMPORT R19 K44 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R19 R18 K42 ["TextTruncate"]
  GETUPVAL R19 15
  LOADK R21 K55 ["FilterSize"]
  NAMECALL R19 R19 K46 ["GetAttribute"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K47 ["Size"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K6 ["Tag"]
  LOADK R20 K56 [""]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K11 ["AssetTypeFilter"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 8
  NEWTABLE R18 4 0
  NAMECALL R19 R1 K17 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K5 ["LayoutOrder"]
  NEWCLOSURE R19 P10
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R5
  SETTABLEKS R19 R18 K18 ["OnClick"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K6 ["Tag"]
  LOADK R20 K61 ["ClearFilter"]
  SETTABLE R20 R18 R19
  DUPTABLE R19 K63 [{"ClearFiltersIcon"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 9
  NEWTABLE R22 2 0
  GETUPVAL R24 10
  GETTABLEKS R23 R24 K64 ["CLEAR_ICON"]
  SETTABLEKS R23 R22 K22 ["Image"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K6 ["Tag"]
  LOADK R24 K65 ["FilterImage"]
  SETTABLE R24 R22 R23
  CALL R20 2 1
  SETTABLEKS R20 R19 K62 ["ClearFiltersIcon"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K12 ["ClearFiltersButton"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 17
  NEWTABLE R18 8 0
  NAMECALL R19 R1 K17 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K5 ["LayoutOrder"]
  NEWCLOSURE R19 P11
  CAPTURE VAL R10
  CAPTURE VAL R3
  SETTABLEKS R19 R18 K66 ["OnGridTileSizeChanged"]
  NEWCLOSURE R19 P12
  CAPTURE UPVAL U12
  CAPTURE VAL R10
  CAPTURE VAL R3
  SETTABLEKS R19 R18 K67 ["OnViewTypeSelected"]
  GETTABLEKS R20 R10 K31 ["ViewType"]
  GETTABLEKS R19 R20 K68 ["rawValue"]
  CALL R19 0 1
  SETTABLEKS R19 R18 K69 ["Default"]
  GETTABLEKS R19 R10 K70 ["GridSize"]
  SETTABLEKS R19 R18 K71 ["DefaultGridTileSize"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K6 ["Tag"]
  LOADK R20 K72 ["IconOnly"]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K13 ["ViewTypeSelector"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 18
  DUPTABLE R18 K74 [{"LayoutOrder", "DominantAxis"}]
  NAMECALL R19 R1 K17 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K5 ["LayoutOrder"]
  GETIMPORT R19 K76 [Enum.DominantAxis.Height]
  SETTABLEKS R19 R18 K73 ["DominantAxis"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K14 ["Separator"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 19
  DUPTABLE R18 K77 [{"LayoutOrder"}]
  NAMECALL R19 R1 K17 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K5 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K15 ["BulkImportButton"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["SelectInput"]
  GETTABLEKS R8 R5 K14 ["Image"]
  GETTABLEKS R9 R5 K15 ["Separator"]
  GETTABLEKS R10 R5 K16 ["ViewTypeSelector"]
  GETTABLEKS R11 R5 K17 ["Tooltip"]
  GETIMPORT R12 K5 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K18 ["BulkImportButton"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K19 ["FilterItem"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K20 ["SortItem"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K22 ["Controllers"]
  GETTABLEKS R16 R17 K23 ["ItemsController"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K24 ["useState"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K21 ["Src"]
  GETTABLEKS R19 R20 K25 ["Hooks"]
  GETTABLEKS R18 R19 K26 ["useLayoutInfo"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R20 R0 K21 ["Src"]
  GETTABLEKS R19 R20 K27 ["Types"]
  CALL R18 1 1
  GETTABLEKS R19 R18 K28 ["AssetInfoField"]
  GETIMPORT R20 K5 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K29 ["styles"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K21 ["Src"]
  GETTABLEKS R23 R24 K30 ["Util"]
  GETTABLEKS R22 R23 K31 ["Images"]
  CALL R21 1 1
  GETTABLEKS R23 R2 K30 ["Util"]
  GETTABLEKS R22 R23 K32 ["LayoutOrderIterator"]
  NEWTABLE R23 0 4
  GETTABLEKS R24 R19 K33 ["DisplayName"]
  GETTABLEKS R25 R19 K34 ["Created"]
  GETTABLEKS R26 R19 K35 ["Modified"]
  GETTABLEKS R27 R19 K36 ["AssetType"]
  SETLIST R23 R24 4 [1]
  DUPCLOSURE R24 K37 [PROTO_13]
  CAPTURE VAL R22
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R7
  CAPTURE VAL R23
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R12
  RETURN R24 1
