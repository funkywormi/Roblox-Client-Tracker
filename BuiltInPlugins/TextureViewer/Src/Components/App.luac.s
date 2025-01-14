PROTO_0:
  DUPTABLE R3 K1 [{"rows"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["fetchAllTexturesFromWorkspace"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K0 ["rows"]
  NAMECALL R1 R0 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["refreshData"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  LENGTH R3 R1
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+35]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["zoomToExtentsAndSelectInstance"]
  GETIMPORT R6 K2 [game]
  GETTABLEKS R5 R6 K3 ["Workspace"]
  GETTABLEKS R4 R5 K4 ["CurrentCamera"]
  GETTABLE R5 R1 R2
  CALL R3 2 1
  JUMPIFNOT R3 [+19]
  GETUPVAL R4 1
  NEWTABLE R6 0 1
  GETTABLE R7 R1 R2
  SETLIST R6 R7 1 [1]
  NAMECALL R4 R4 K5 ["Set"]
  CALL R4 2 0
  DUPTABLE R6 K7 [{"tick"}]
  GETIMPORT R7 K8 [tick]
  CALL R7 0 1
  SETTABLEKS R7 R6 K6 ["tick"]
  NAMECALL R4 R0 K9 ["setState"]
  CALL R4 2 0
  RETURN R0 0
  NAMECALL R4 R0 K10 ["error"]
  CALL R4 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["searchTerm"]
  NAMECALL R1 R1 K2 ["lower"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  GETIMPORT R3 K4 [ipairs]
  GETTABLEKS R6 R0 K0 ["state"]
  GETTABLEKS R4 R6 K5 ["rows"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R8 R7 K6 ["Texture"]
  NAMECALL R8 R8 K2 ["lower"]
  CALL R8 1 1
  MOVE R10 R1
  NAMECALL R8 R8 K7 ["find"]
  CALL R8 2 1
  JUMPIFNOT R8 [+7]
  FASTCALL2 TABLE_INSERT R2 R7 [+5]
  MOVE R9 R2
  MOVE R10 R7
  GETIMPORT R8 K10 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-18]
  RETURN R2 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["showRightClickMenu"]
  GETUPVAL R3 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["Plugin"]
  NAMECALL R4 R4 K3 ["get"]
  CALL R4 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["props"]
  GETTABLEKS R5 R6 K4 ["Localization"]
  MOVE R6 R0
  MOVE R7 R1
  CALL R2 5 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["fetchAllTexturesFromWorkspace"]
  CALL R1 0 1
  DUPTABLE R2 K3 [{"rows", "searchTerm"}]
  SETTABLEKS R1 R2 K1 ["rows"]
  LOADK R3 K4 [""]
  SETTABLEKS R3 R2 K2 ["searchTerm"]
  SETTABLEKS R2 R0 K5 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["showRightClickMenu"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"searchTerm"}]
  SETTABLEKS R0 R3 K0 ["searchTerm"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["App"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  NAMECALL R4 R0 K4 ["filterRowsBySearchTerm"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["calculateAggregateStats"]
  MOVE R6 R4
  CALL R5 1 2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K11 [{"Size", "Layout", "Padding", "Spacing"}]
  GETIMPORT R10 K14 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K7 ["Size"]
  GETIMPORT R10 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K8 ["Layout"]
  GETTABLEKS R10 R2 K9 ["Padding"]
  SETTABLEKS R10 R9 K9 ["Padding"]
  GETTABLEKS R10 R2 K10 ["Spacing"]
  SETTABLEKS R10 R9 K10 ["Spacing"]
  DUPTABLE R10 K22 [{"TopPanel", "SearchBar", "Table"}]
  GETUPVAL R11 3
  MOVE R12 R0
  MOVE R13 R5
  MOVE R14 R6
  CALL R11 3 1
  SETTABLEKS R11 R10 K19 ["TopPanel"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K28 [{"PlaceholderText", "IncrementalTextSearch", "IncrementalTextSearchDelay", "OnSearchRequested", "Size", "LayoutOrder"}]
  LOADK R16 K29 ["Search"]
  LOADK R17 K30 ["Placeholder"]
  NAMECALL R14 R3 K31 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K23 ["PlaceholderText"]
  LOADB R14 1
  SETTABLEKS R14 R13 K24 ["IncrementalTextSearch"]
  LOADN R14 0
  SETTABLEKS R14 R13 K25 ["IncrementalTextSearchDelay"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K26 ["OnSearchRequested"]
  GETTABLEKS R15 R2 K20 ["SearchBar"]
  GETTABLEKS R14 R15 K7 ["Size"]
  SETTABLEKS R14 R13 K7 ["Size"]
  LOADN R14 2
  SETTABLEKS R14 R13 K27 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["SearchBar"]
  GETUPVAL R11 5
  MOVE R12 R0
  MOVE R13 R4
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Table"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Selection"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R4 K13 ["Analytics"]
  GETTABLEKS R6 R4 K14 ["Localization"]
  GETTABLEKS R7 R4 K15 ["withContext"]
  GETTABLEKS R9 R3 K16 ["Style"]
  GETTABLEKS R8 R9 K17 ["Stylizer"]
  GETTABLEKS R9 R3 K18 ["UI"]
  GETTABLEKS R10 R9 K19 ["Pane"]
  GETTABLEKS R11 R9 K20 ["SearchBar"]
  GETIMPORT R12 K8 [require]
  GETIMPORT R15 K5 [script]
  GETTABLEKS R14 R15 K6 ["Parent"]
  GETTABLEKS R13 R14 K21 ["ContextMenu"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETIMPORT R16 K5 [script]
  GETTABLEKS R15 R16 K6 ["Parent"]
  GETTABLEKS R14 R15 K22 ["TextureTable"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETIMPORT R17 K5 [script]
  GETTABLEKS R16 R17 K6 ["Parent"]
  GETTABLEKS R15 R16 K23 ["TopPanel"]
  CALL R14 1 1
  GETTABLEKS R16 R1 K24 ["Src"]
  GETTABLEKS R15 R16 K25 ["Util"]
  GETIMPORT R16 K8 [require]
  GETTABLEKS R17 R15 K26 ["Stats"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R18 R15 K27 ["WorkspaceOperations"]
  CALL R17 1 1
  GETTABLEKS R18 R2 K28 ["PureComponent"]
  LOADK R20 K29 ["App"]
  NAMECALL R18 R18 K30 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K31 [PROTO_0]
  CAPTURE VAL R17
  SETTABLEKS R19 R18 K32 ["refreshData"]
  DUPCLOSURE R19 K33 [PROTO_1]
  SETTABLEKS R19 R18 K34 ["error"]
  DUPCLOSURE R19 K35 [PROTO_2]
  CAPTURE VAL R17
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K36 ["zoomTo"]
  DUPCLOSURE R19 K37 [PROTO_3]
  SETTABLEKS R19 R18 K38 ["filterRowsBySearchTerm"]
  DUPCLOSURE R19 K39 [PROTO_5]
  CAPTURE VAL R17
  CAPTURE VAL R12
  SETTABLEKS R19 R18 K40 ["init"]
  DUPCLOSURE R19 K41 [PROTO_7]
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R13
  SETTABLEKS R19 R18 K42 ["render"]
  MOVE R19 R7
  DUPTABLE R20 K44 [{"Analytics", "Localization", "Plugin", "Stylizer"}]
  SETTABLEKS R5 R20 K13 ["Analytics"]
  SETTABLEKS R6 R20 K14 ["Localization"]
  GETTABLEKS R21 R4 K43 ["Plugin"]
  SETTABLEKS R21 R20 K43 ["Plugin"]
  SETTABLEKS R8 R20 K17 ["Stylizer"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  RETURN R18 1
