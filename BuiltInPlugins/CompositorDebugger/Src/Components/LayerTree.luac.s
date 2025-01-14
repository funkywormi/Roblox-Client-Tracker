PROTO_0:
  GETTABLEKS R1 R0 K0 ["id"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"Expansion"}]
  GETUPVAL R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["state"]
  GETTABLEKS R5 R6 K0 ["Expansion"]
  MOVE R6 R0
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["Expansion"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnToggleAdornment"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnToggleAdornment"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K1 ["SetSelectedLayer"]
  MOVE R7 R4
  CALL R6 1 0
  FORGLOOP R1 2 [-8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["ClearHistoryField"]
  CALL R1 0 0
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"Selection"}]
  SETTABLEKS R0 R3 K3 ["Selection"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K2 [{"Selection", "Expansion"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["Selection"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["Expansion"]
  SETTABLEKS R1 R0 K3 ["state"]
  DUPCLOSURE R1 K4 [PROTO_0]
  SETTABLEKS R1 R0 K5 ["getItemId"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K6 ["onExpand"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onToggleAdornment"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onSelect"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["index"]
  JUMPIFNOT R2 [+18]
  GETTABLEKS R2 R1 K0 ["index"]
  JUMPIFNOT R2 [+15]
  GETTABLEKS R2 R0 K0 ["index"]
  GETTABLEKS R3 R1 K0 ["index"]
  JUMPIFEQ R2 R3 [+10]
  GETTABLEKS R3 R0 K0 ["index"]
  GETTABLEKS R4 R1 K0 ["index"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K1 ["name"]
  JUMPIFNOT R2 [+18]
  GETTABLEKS R2 R1 K1 ["name"]
  JUMPIFNOT R2 [+15]
  GETTABLEKS R2 R0 K1 ["name"]
  GETTABLEKS R3 R1 K1 ["name"]
  JUMPIFEQ R2 R3 [+10]
  GETTABLEKS R3 R0 K1 ["name"]
  GETTABLEKS R4 R1 K1 ["name"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["className"]
  JUMPIFNOT R2 [+18]
  GETTABLEKS R2 R1 K2 ["className"]
  JUMPIFNOT R2 [+15]
  GETTABLEKS R2 R0 K2 ["className"]
  GETTABLEKS R3 R1 K2 ["className"]
  JUMPIFEQ R2 R3 [+10]
  GETTABLEKS R3 R0 K2 ["className"]
  GETTABLEKS R4 R1 K2 ["className"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R3 R0 K3 ["id"]
  GETTABLEKS R4 R1 K3 ["id"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["id"]
  GETTABLE R1 R2 R3
  JUMPIFNOTEQKNIL R1 [+6]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K0 ["id"]
  LOADB R3 1
  SETTABLE R3 R1 R2
  GETTABLEKS R1 R0 K1 ["children"]
  JUMPIFNOT R1 [+6]
  GETIMPORT R1 K4 [table.sort]
  GETTABLEKS R2 R0 K1 ["children"]
  DUPCLOSURE R3 K5 [PROTO_5]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R2 0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  MOVE R4 R0
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CALL R3 2 0
  RETURN R2 1

PROTO_8:
  GETGLOBAL R2 K0 ["updateTreeViewItems"]
  GETTABLEKS R3 R0 K1 ["FramePayload"]
  GETTABLEKS R4 R1 K2 ["Expansion"]
  CALL R2 2 1
  GETIMPORT R3 K4 [next]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOT R3 [+9]
  DUPTABLE R3 K5 [{"Expansion"}]
  GETUPVAL R4 0
  GETTABLEKS R5 R1 K2 ["Expansion"]
  MOVE R6 R2
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Expansion"]
  RETURN R3 1
  NEWTABLE R3 0 0
  RETURN R3 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R2 K2 ["FramePayload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K16 [{"Size", "LayoutOrder", "RootItems", "Expansion", "Selection", "GetItemId", "RowComponent", "RowProps", "RowHeight", "OnExpansionChange", "OnSelectionChange", "ScrollingDirection"}]
  GETTABLEKS R7 R2 K4 ["Size"]
  SETTABLEKS R7 R6 K4 ["Size"]
  GETTABLEKS R7 R2 K5 ["LayoutOrder"]
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  NEWTABLE R7 0 1
  MOVE R8 R3
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K6 ["RootItems"]
  GETTABLEKS R7 R1 K7 ["Expansion"]
  SETTABLEKS R7 R6 K7 ["Expansion"]
  GETTABLEKS R7 R1 K8 ["Selection"]
  SETTABLEKS R7 R6 K8 ["Selection"]
  GETTABLEKS R7 R0 K17 ["getItemId"]
  SETTABLEKS R7 R6 K9 ["GetItemId"]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K10 ["RowComponent"]
  DUPTABLE R7 K20 [{"GetItemId", "Adornments", "OnToggleAdornment"}]
  GETTABLEKS R8 R0 K17 ["getItemId"]
  SETTABLEKS R8 R7 K9 ["GetItemId"]
  GETTABLEKS R8 R2 K18 ["Adornments"]
  SETTABLEKS R8 R7 K18 ["Adornments"]
  GETTABLEKS R8 R0 K21 ["onToggleAdornment"]
  SETTABLEKS R8 R7 K19 ["OnToggleAdornment"]
  SETTABLEKS R7 R6 K11 ["RowProps"]
  LOADN R7 26
  SETTABLEKS R7 R6 K12 ["RowHeight"]
  GETTABLEKS R7 R0 K22 ["onExpand"]
  SETTABLEKS R7 R6 K13 ["OnExpansionChange"]
  GETTABLEKS R7 R0 K23 ["onSelect"]
  SETTABLEKS R7 R6 K14 ["OnSelectionChange"]
  GETIMPORT R7 K26 [Enum.ScrollingDirection.Y]
  SETTABLEKS R7 R6 K15 ["ScrollingDirection"]
  NEWTABLE R7 0 0
  CALL R4 3 -1
  RETURN R4 -1

PROTO_10:
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_11:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADNIL R2
  LOADNIL R3
  LOADNIL R4
  CALL R1 3 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K2 [{"ClearHistoryField", "SetSelectedLayer"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ClearHistoryField"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetSelectedLayer"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Analytics"]
  GETTABLEKS R7 R4 K13 ["Localization"]
  GETTABLEKS R8 R3 K14 ["Dash"]
  GETTABLEKS R9 R8 K15 ["join"]
  GETTABLEKS R10 R3 K16 ["UI"]
  GETTABLEKS R11 R10 K17 ["TreeView"]
  GETTABLEKS R13 R0 K18 ["Src"]
  GETTABLEKS R12 R13 K19 ["Actions"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K20 ["SetSelectedLayer"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R12 K21 ["SetHistoryField"]
  CALL R14 1 1
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K22 ["Components"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R15 K23 ["LayerTreeRow"]
  CALL R16 1 1
  GETTABLEKS R18 R0 K18 ["Src"]
  GETTABLEKS R17 R18 K24 ["Thunks"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R17 K25 ["DetachCompositor"]
  CALL R18 1 1
  GETTABLEKS R20 R0 K18 ["Src"]
  GETTABLEKS R19 R20 K26 ["Util"]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R19 K27 ["traverse"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R23 R0 K18 ["Src"]
  GETTABLEKS R22 R23 K28 ["Types"]
  CALL R21 1 1
  GETTABLEKS R22 R1 K29 ["PureComponent"]
  LOADK R24 K30 ["LayerTree"]
  NAMECALL R22 R22 K31 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K32 [PROTO_4]
  CAPTURE VAL R9
  SETTABLEKS R23 R22 K33 ["init"]
  DUPCLOSURE R23 K34 [PROTO_7]
  CAPTURE VAL R20
  SETGLOBAL R23 K35 ["updateTreeViewItems"]
  DUPCLOSURE R23 K36 [PROTO_8]
  CAPTURE VAL R9
  SETTABLEKS R23 R22 K37 ["getDerivedStateFromProps"]
  DUPCLOSURE R23 K38 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R16
  SETTABLEKS R23 R22 K39 ["render"]
  MOVE R23 R5
  DUPTABLE R24 K40 [{"Analytics", "Localization"}]
  SETTABLEKS R6 R24 K12 ["Analytics"]
  SETTABLEKS R7 R24 K13 ["Localization"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  DUPCLOSURE R23 K41 [PROTO_10]
  DUPCLOSURE R24 K42 [PROTO_13]
  CAPTURE VAL R14
  CAPTURE VAL R13
  GETTABLEKS R25 R2 K43 ["connect"]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  MOVE R26 R22
  CALL R25 1 1
  MOVE R22 R25
  RETURN R22 1
