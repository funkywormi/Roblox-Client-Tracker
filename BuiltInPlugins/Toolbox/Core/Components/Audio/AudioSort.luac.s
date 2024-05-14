PROTO_0:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+40]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["current"]
  JUMPIFNOT R4 [+36]
  LOADNIL R4
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+14]
  GETUPVAL R5 3
  NAMECALL R5 R5 K1 ["get"]
  CALL R5 1 1
  GETUPVAL R6 4
  NAMECALL R6 R6 K1 ["get"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K2 ["getNavigationContext"]
  MOVE R8 R5
  GETUPVAL R9 5
  CALL R7 2 1
  MOVE R4 R7
  GETUPVAL R5 0
  MOVE R6 R0
  MOVE R7 R3
  MOVE R8 R1
  MOVE R9 R2
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["current"]
  GETTABLEKS R10 R11 K3 ["AbsoluteSize"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K0 ["current"]
  GETTABLEKS R11 R12 K4 ["AbsolutePosition"]
  MOVE R12 R4
  CALL R5 7 -1
  RETURN R5 -1
  LOADNIL R4
  RETURN R4 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETTABLEKS R3 R0 K1 ["AudioSection"]
  GETTABLEKS R2 R3 K2 ["ResultsState"]
  GETTABLEKS R5 R0 K1 ["AudioSection"]
  GETTABLEKS R4 R5 K3 ["Section"]
  GETTABLEKS R3 R4 K4 ["name"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K5 ["use"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R5 R6 K7 ["LogAssetImpression"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["useRef"]
  LOADNIL R7
  CALL R6 1 1
  LOADNIL R7
  LOADNIL R8
  GETUPVAL R9 3
  CALL R9 0 1
  JUMPIFNOT R9 [+10]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K5 ["use"]
  CALL R9 0 1
  MOVE R7 R9
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K5 ["use"]
  CALL R9 0 1
  MOVE R8 R9
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["useCallback"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE UPVAL U3
  CAPTURE REF R7
  CAPTURE REF R8
  CAPTURE VAL R3
  NEWTABLE R11 0 1
  MOVE R12 R5
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K18 [{"LayoutOrder", "Size", "AutomaticSize", "BackgroundTransparency", "Layout", "Spacing", "ref"}]
  GETTABLEKS R13 R0 K11 ["LayoutOrder"]
  SETTABLEKS R13 R12 K11 ["LayoutOrder"]
  GETIMPORT R13 K21 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K12 ["Size"]
  GETIMPORT R13 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K13 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K14 ["BackgroundTransparency"]
  GETIMPORT R13 K27 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K15 ["Layout"]
  GETTABLEKS R13 R4 K28 ["spacingUnit"]
  SETTABLEKS R13 R12 K16 ["Spacing"]
  SETTABLEKS R6 R12 K17 ["ref"]
  DUPTABLE R13 K31 [{"Header", "Table"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K10 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K34 [{"LayoutOrder", "Title", "OnClickSeeAll"}]
  NAMECALL R17 R1 K35 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K11 ["LayoutOrder"]
  GETTABLEKS R19 R0 K1 ["AudioSection"]
  GETTABLEKS R18 R19 K3 ["Section"]
  GETTABLEKS R17 R18 K36 ["displayName"]
  SETTABLEKS R17 R16 K32 ["Title"]
  GETTABLEKS R17 R0 K37 ["OnSeeAllActivated"]
  SETTABLEKS R17 R16 K33 ["OnClickSeeAll"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K29 ["Header"]
  JUMPIFNOT R2 [+44]
  GETTABLEKS R15 R2 K38 ["loading"]
  JUMPIF R15 [+41]
  GETUPVAL R15 8
  GETTABLEKS R14 R15 K39 ["Generator"]
  DUPTABLE R15 K46 [{"LayoutOrder", "Assets", "LogImpression", "CanInsertAsset", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
  NAMECALL R16 R1 K35 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K11 ["LayoutOrder"]
  GETTABLEKS R16 R2 K47 ["assets"]
  SETTABLEKS R16 R15 K40 ["Assets"]
  SETTABLEKS R9 R15 K41 ["LogImpression"]
  GETTABLEKS R17 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R16 R17 K42 ["CanInsertAsset"]
  SETTABLEKS R16 R15 K42 ["CanInsertAsset"]
  GETTABLEKS R17 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R16 R17 K43 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R16 R15 K43 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R17 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R16 R17 K44 ["TryInsert"]
  SETTABLEKS R16 R15 K44 ["TryInsert"]
  GETTABLEKS R17 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R16 R17 K45 ["TryOpenAssetConfig"]
  SETTABLEKS R16 R15 K45 ["TryOpenAssetConfig"]
  CALL R14 1 1
  JUMP [+11]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K10 ["createElement"]
  GETUPVAL R15 9
  DUPTABLE R16 K48 [{"LayoutOrder"}]
  NAMECALL R17 R1 K35 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K11 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["Table"]
  CALL R10 3 -1
  CLOSEUPVALS R7
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["Categorization"]
  GETTABLEKS R4 R5 K12 ["SectionHeader"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K10 ["Components"]
  GETTABLEKS R6 R7 K13 ["Audio"]
  GETTABLEKS R5 R6 K14 ["AudioTable"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K15 ["Types"]
  GETTABLEKS R6 R7 K16 ["AudioTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Core"]
  GETTABLEKS R8 R9 K15 ["Types"]
  GETTABLEKS R7 R8 K17 ["AssetLogicTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Core"]
  GETTABLEKS R9 R10 K18 ["Util"]
  GETTABLEKS R8 R9 K19 ["LayoutOrderIterator"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Core"]
  GETTABLEKS R10 R11 K20 ["ContextServices"]
  GETTABLEKS R9 R10 K21 ["NavigationContext"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K9 ["Core"]
  GETTABLEKS R12 R13 K18 ["Util"]
  GETTABLEKS R11 R12 K22 ["Analytics"]
  GETTABLEKS R10 R11 K23 ["AssetAnalyticsContextItem"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K9 ["Core"]
  GETTABLEKS R13 R14 K18 ["Util"]
  GETTABLEKS R12 R13 K24 ["SharedFlags"]
  GETTABLEKS R11 R12 K25 ["getFFlagAddMoreAudioSwimlaneAnalytics"]
  CALL R10 1 1
  GETTABLEKS R12 R2 K20 ["ContextServices"]
  GETTABLEKS R11 R12 K26 ["Stylizer"]
  GETTABLEKS R13 R2 K27 ["UI"]
  GETTABLEKS R12 R13 K28 ["LoadingIndicator"]
  GETTABLEKS R14 R2 K27 ["UI"]
  GETTABLEKS R13 R14 K29 ["Pane"]
  DUPCLOSURE R14 K30 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R12
  RETURN R14 1
