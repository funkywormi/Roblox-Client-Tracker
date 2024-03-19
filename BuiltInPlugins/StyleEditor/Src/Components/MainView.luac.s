PROTO_0:
  GETTABLEKS R1 R0 K0 ["Children"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Id"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  JUMPIFEQKS R1 K1 ["Destroying"] [+3]
  JUMPIFNOTEQKS R1 K2 ["DescendantRemoving"] [+12]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createItemId"]
  MOVE R5 R2
  CALL R4 1 1
  GETTABLEKS R5 R3 K4 ["dispatch"]
  GETUPVAL R6 2
  MOVE R7 R4
  CALL R6 1 -1
  CALL R5 -1 0
  LOADK R6 K5 ["StyleSheet"]
  NAMECALL R4 R0 K6 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+20]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["updateSheetReferences"]
  MOVE R5 R0
  CALL R4 1 0
  LOADK R6 K8 ["StyleCategory"]
  NAMECALL R4 R0 K9 ["GetAttribute"]
  CALL R4 2 1
  JUMPIFNOTEQKS R4 K10 ["Designs"] [+10]
  GETTABLEKS R4 R0 K11 ["Parent"]
  JUMPIF R4 [+6]
  GETTABLEKS R4 R3 K4 ["dispatch"]
  GETUPVAL R5 3
  LOADNIL R6
  CALL R5 1 -1
  CALL R4 -1 0
  GETTABLEKS R4 R3 K4 ["dispatch"]
  GETUPVAL R5 4
  LOADB R6 1
  CALL R5 1 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onDoubleClick"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  JUMPIFNOTEQKS R0 K1 ["Menu"] [+177]
  GETUPVAL R3 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["state"]
  GETTABLEKS R6 R7 K3 ["table"]
  GETTABLEKS R5 R6 K4 ["Items"]
  MOVE R6 R1
  NAMECALL R3 R3 K5 ["getChild"]
  CALL R3 3 1
  GETTABLEKS R5 R3 K6 ["Name"]
  GETTABLEKS R4 R5 K7 ["Value"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  GETTABLEKS R6 R3 K8 ["Instance"]
  JUMPIFNOT R6 [+69]
  GETTABLEKS R6 R3 K8 ["Instance"]
  LOADK R8 K9 ["StyleRule"]
  NAMECALL R6 R6 K10 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R2 K11 ["dispatch"]
  GETUPVAL R7 2
  GETTABLEKS R8 R3 K8 ["Instance"]
  MOVE R9 R5
  CALL R7 2 -1
  CALL R6 -1 0
  RETURN R0 0
  GETTABLEKS R6 R3 K8 ["Instance"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K12 ["DesignSheet"]
  JUMPIFNOTEQ R6 R7 [+13]
  GETTABLEKS R6 R2 K11 ["dispatch"]
  GETUPVAL R7 3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["props"]
  GETTABLEKS R8 R9 K12 ["DesignSheet"]
  MOVE R9 R5
  CALL R7 2 -1
  CALL R6 -1 0
  RETURN R0 0
  GETTABLEKS R6 R3 K8 ["Instance"]
  LOADK R8 K13 ["StyleSheet"]
  NAMECALL R6 R6 K10 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R2 K11 ["dispatch"]
  GETUPVAL R7 4
  GETTABLEKS R8 R3 K8 ["Instance"]
  MOVE R9 R5
  CALL R7 2 -1
  CALL R6 -1 0
  RETURN R0 0
  GETTABLEKS R6 R3 K8 ["Instance"]
  LOADK R8 K14 ["Folder"]
  NAMECALL R6 R6 K10 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+94]
  GETTABLEKS R6 R2 K11 ["dispatch"]
  GETUPVAL R7 5
  GETTABLEKS R8 R3 K8 ["Instance"]
  MOVE R9 R5
  CALL R7 2 -1
  CALL R6 -1 0
  RETURN R0 0
  GETUPVAL R6 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["state"]
  GETTABLEKS R9 R10 K3 ["table"]
  GETTABLEKS R8 R9 K4 ["Items"]
  MOVE R9 R3
  NAMECALL R6 R6 K15 ["getParent"]
  CALL R6 3 1
  JUMPIFNOTEQKS R4 K16 ["UI Elements"] [+9]
  GETTABLEKS R7 R2 K11 ["dispatch"]
  GETUPVAL R8 6
  GETTABLEKS R9 R6 K8 ["Instance"]
  CALL R8 1 -1
  CALL R7 -1 0
  RETURN R0 0
  JUMPIFNOTEQKS R4 K17 ["Design"] [+7]
  GETTABLEKS R7 R2 K11 ["dispatch"]
  GETUPVAL R8 7
  CALL R8 0 -1
  CALL R7 -1 0
  RETURN R0 0
  JUMPIFNOTEQKS R4 K18 ["Themes"] [+7]
  GETTABLEKS R7 R2 K11 ["dispatch"]
  GETUPVAL R8 8
  CALL R8 0 -1
  CALL R7 -1 0
  RETURN R0 0
  JUMPIFNOTEQKS R4 K19 ["Tokens"] [+7]
  GETTABLEKS R7 R2 K11 ["dispatch"]
  GETUPVAL R8 9
  CALL R8 0 -1
  CALL R7 -1 0
  RETURN R0 0
  GETTABLEKS R7 R6 K8 ["Instance"]
  JUMPIFNOT R7 [+31]
  GETTABLEKS R7 R6 K8 ["Instance"]
  LOADK R9 K13 ["StyleSheet"]
  NAMECALL R7 R7 K10 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+24]
  GETTABLEKS R8 R3 K6 ["Name"]
  GETTABLEKS R7 R8 K7 ["Value"]
  JUMPIFNOTEQKS R7 K20 ["Tags"] [+10]
  GETTABLEKS R7 R2 K11 ["dispatch"]
  GETUPVAL R8 10
  GETTABLEKS R9 R6 K8 ["Instance"]
  LOADK R10 K21 [".Tag"]
  CALL R8 2 -1
  CALL R7 -1 0
  RETURN R0 0
  GETTABLEKS R7 R2 K11 ["dispatch"]
  GETUPVAL R8 10
  GETTABLEKS R9 R6 K8 ["Instance"]
  LOADK R10 K22 ["#Name"]
  CALL R8 2 -1
  CALL R7 -1 0
  RETURN R0 0
  GETTABLEKS R7 R2 K11 ["dispatch"]
  GETUPVAL R8 11
  CALL R8 0 -1
  CALL R7 -1 0
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["dispatch"]
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"PaneSizes"}]
  SETTABLEKS R0 R3 K0 ["PaneSizes"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["dispatch"]
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETUPVAL R2 1
  GETTABLEKS R5 R1 K1 ["table"]
  GETTABLEKS R4 R5 K2 ["Items"]
  MOVE R5 R0
  NAMECALL R2 R2 K3 ["getChild"]
  CALL R2 3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["selectItem"]
  GETTABLEKS R4 R2 K5 ["Id"]
  CALL R3 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["Items"]
  GETUPVAL R4 1
  NAMECALL R1 R1 K1 ["getChild"]
  CALL R1 3 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K2 ["Instance"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  DUPTABLE R2 K5 [{"Schema", "Value"}]
  GETUPVAL R3 2
  GETTABLEKS R5 R1 K6 ["Name"]
  GETTABLEKS R4 R5 K3 ["Schema"]
  DUPTABLE R5 K8 [{"Editing"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K7 ["Editing"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["Schema"]
  GETTABLEKS R4 R1 K2 ["Instance"]
  LOADK R6 K9 ["StyleRule"]
  NAMECALL R4 R4 K10 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R1 K2 ["Instance"]
  GETTABLEKS R3 R4 K11 ["Selector"]
  JUMP [+4]
  GETTABLEKS R4 R1 K2 ["Instance"]
  GETTABLEKS R3 R4 K6 ["Name"]
  SETTABLEKS R3 R2 K4 ["Value"]
  GETUPVAL R3 0
  MOVE R5 R0
  MOVE R6 R2
  GETUPVAL R7 1
  LOADN R8 1
  NAMECALL R3 R3 K12 ["updateCell"]
  CALL R3 5 1
  MOVE R0 R3
  RETURN R0 1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["adaptor"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R0 0
  LOADK R2 K1 ["StyleRule"]
  NAMECALL R0 R0 K2 ["IsA"]
  CALL R0 2 1
  JUMPIFNOT R0 [+10]
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K3 ["Selector"]
  GETUPVAL R0 2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["SelectorError"]
  SETTABLEKS R1 R0 K5 ["ErrorMessage"]
  GETIMPORT R0 K9 [Enum.FinishRecordingOperation.Commit]
  RETURN R0 1

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["Items"]
  GETUPVAL R4 1
  NAMECALL R1 R1 K1 ["getChild"]
  CALL R1 3 1
  DUPTABLE R2 K4 [{"Schema", "Value"}]
  GETUPVAL R3 2
  GETTABLEKS R5 R1 K5 ["Name"]
  GETTABLEKS R4 R5 K2 ["Schema"]
  DUPTABLE R5 K7 [{"Editing"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["Editing"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["Schema"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K3 ["Value"]
  GETTABLEKS R3 R1 K8 ["Instance"]
  JUMPIF R3 [+5]
  GETIMPORT R4 K10 [warn]
  LOADK R5 K11 ["Edited row does not have a valid Instance associated"]
  CALL R4 1 0
  JUMP [+45]
  JUMPIFNOT R3 [+44]
  GETTABLEKS R4 R3 K5 ["Name"]
  GETUPVAL R5 3
  JUMPIFEQ R4 R5 [+17]
  GETUPVAL R4 4
  DUPTABLE R5 K14 [{"Name", "DisplayName", "DoChange"}]
  LOADK R6 K15 ["StyleEditor.EditInstanceName"]
  SETTABLEKS R6 R5 K5 ["Name"]
  LOADK R6 K16 ["Style Editor - Edit Instance Name"]
  SETTABLEKS R6 R5 K12 ["DisplayName"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K13 ["DoChange"]
  CALL R4 1 0
  JUMP [+23]
  LOADK R6 K17 ["StyleSheet"]
  NAMECALL R4 R3 K18 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+18]
  LOADK R6 K19 ["StyleCategory"]
  NAMECALL R4 R3 K20 ["GetAttribute"]
  CALL R4 2 1
  JUMPIFNOTEQKS R4 K21 ["Designs"] [+13]
  GETTABLEKS R4 R3 K5 ["Name"]
  LOADK R6 K17 ["StyleSheet"]
  NAMECALL R4 R4 K22 ["match"]
  CALL R4 2 1
  JUMPIF R4 [+5]
  GETUPVAL R5 3
  LOADK R6 K23 [" StyleSheet"]
  CONCAT R4 R5 R6
  SETTABLEKS R4 R2 K3 ["Value"]
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R2
  GETUPVAL R8 1
  LOADN R9 1
  NAMECALL R4 R4 K24 ["updateCell"]
  CALL R4 5 -1
  RETURN R4 -1

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["adaptor"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["dispatch"]
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_16:
  RETURN R1 1

PROTO_17:
  GETUPVAL R1 0
  MOVE R2 R0
  DUPCLOSURE R3 K0 [PROTO_16]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["selectItem"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["DesignSheet"]
  JUMPIFNOT R1 [+41]
  GETIMPORT R1 K3 [game]
  LOADK R3 K4 ["ReplicatedStorage"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  NAMECALL R2 R1 K6 ["GetDescendants"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K7 ["StyleDerive"]
  NAMECALL R7 R6 K8 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+24]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["isPartOfDesignSystem"]
  GETTABLEKS R8 R6 K10 ["Parent"]
  CALL R7 1 1
  JUMPIFNOT R7 [+17]
  GETTABLEKS R7 R6 K11 ["StyleSheet"]
  JUMPIFNOTEQ R7 R0 [+14]
  GETTABLEKS R7 R0 K10 ["Parent"]
  JUMPIFNOT R7 [+7]
  LOADK R8 K12 ["Derive from "]
  GETTABLEKS R9 R0 K13 ["Name"]
  CONCAT R7 R8 R9
  SETTABLEKS R7 R6 K13 ["Name"]
  JUMP [+3]
  NAMECALL R7 R6 K14 ["Remove"]
  CALL R7 1 0
  FORGLOOP R2 2 [-30]
  RETURN R0 0

PROTO_19:
  DUPTABLE R1 K4 [{"DesignSheet", "PaneSizes", "SearchTerm", "table"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["DesignSheet"]
  NEWTABLE R2 0 2
  GETIMPORT R3 K7 [UDim.new]
  LOADN R4 0
  LOADN R5 200
  CALL R3 2 1
  GETIMPORT R4 K7 [UDim.new]
  LOADN R5 1
  LOADN R6 56
  CALL R4 2 -1
  SETLIST R2 R3 -1 [1]
  SETTABLEKS R2 R1 K1 ["PaneSizes"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K2 ["SearchTerm"]
  DUPTABLE R2 K13 [{"Columns", "Expansion", "Selection", "Items"}]
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["Columns"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K10 ["Expansion"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K11 ["Selection"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K12 ["Items"]
  SETTABLEKS R2 R1 K3 ["table"]
  SETTABLEKS R1 R0 K14 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K15 ["onChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  SETTABLEKS R1 R0 K16 ["onAction"]
  DUPCLOSURE R1 K17 [PROTO_5]
  SETTABLEKS R1 R0 K18 ["onRightClick"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U17
  SETTABLEKS R1 R0 K19 ["onSearch"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K20 ["onPaneSizesChanged"]
  GETUPVAL R1 6
  MOVE R3 R0
  LOADK R4 K3 ["table"]
  NAMECALL R1 R1 K21 ["getStateAdaptor"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K22 ["adaptor"]
  GETUPVAL R1 6
  GETTABLEKS R3 R0 K22 ["adaptor"]
  NAMECALL R1 R1 K23 ["getCallbacks"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K24 ["tableCallbacks"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U18
  SETTABLEKS R1 R0 K25 ["selectItem"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R1 R0 K26 ["onCellPressed"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U19
  SETTABLEKS R1 R0 K27 ["onDoubleClick"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  SETTABLEKS R1 R0 K28 ["onEdited"]
  GETTABLEKS R1 R0 K24 ["tableCallbacks"]
  NEWCLOSURE R2 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U21
  SETTABLEKS R2 R1 K29 ["OnExpansionChange"]
  GETTABLEKS R1 R0 K24 ["tableCallbacks"]
  NEWCLOSURE R2 P10
  CAPTURE UPVAL U22
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K30 ["OnSelectionChange"]
  NEWCLOSURE R1 P11
  CAPTURE VAL R0
  CAPTURE UPVAL U23
  SETTABLEKS R1 R0 K31 ["updateSheetReferences"]
  RETURN R0 0

PROTO_20:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["DesignSheet"]
  GETTABLEKS R5 R1 K1 ["DesignSheet"]
  JUMPIFNOTEQ R4 R5 [+9]
  GETTABLEKS R4 R0 K2 ["listeners"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R5 R0 K2 ["listeners"]
  LENGTH R4 R5
  JUMPIFNOTEQKN R4 K3 [0] [+62]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R0 K2 ["listeners"]
  GETTABLEKS R5 R0 K2 ["listeners"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["new"]
  NEWTABLE R7 0 1
  GETUPVAL R8 1
  SETLIST R7 R8 1 [1]
  GETTABLEKS R8 R0 K5 ["onChanged"]
  NEWTABLE R9 0 2
  LOADK R10 K6 ["Selector"]
  LOADK R11 K7 ["Parent"]
  SETLIST R9 R10 2 [1]
  NEWTABLE R10 0 1
  LOADK R11 K8 ["StyleRule"]
  SETLIST R10 R11 1 [1]
  CALL R6 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K11 [table.insert]
  CALL R4 -1 0
  GETTABLEKS R5 R0 K2 ["listeners"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["new"]
  NEWTABLE R7 0 1
  GETUPVAL R8 1
  SETLIST R7 R8 1 [1]
  GETTABLEKS R8 R0 K5 ["onChanged"]
  NEWTABLE R9 0 2
  LOADK R10 K12 ["Name"]
  LOADK R11 K7 ["Parent"]
  SETLIST R9 R10 2 [1]
  NEWTABLE R10 0 2
  LOADK R11 K13 ["StyleSheet"]
  LOADK R12 K14 ["Folder"]
  SETLIST R10 R11 2 [1]
  CALL R6 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K11 [table.insert]
  CALL R4 -1 0
  GETTABLEKS R4 R3 K15 ["IsDirty"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R4 R3 K16 ["dispatch"]
  GETUPVAL R5 2
  LOADB R6 0
  CALL R5 1 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["listeners"]
  JUMPIFNOT R1 [+11]
  GETIMPORT R1 K2 [ipairs]
  GETTABLEKS R2 R0 K0 ["listeners"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETTABLEKS R6 R5 K3 ["destroyListener"]
  CALL R6 0 0
  FORGLOOP R1 2 [inext] [-4]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["listeners"]
  RETURN R0 0

PROTO_22:
  LOADB R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Children"]
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFLT R2 R1 [+16]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Name"]
  GETTABLEKS R0 R1 K2 ["Value"]
  NAMECALL R0 R0 K3 ["lower"]
  CALL R0 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["lower"]
  CALL R2 1 -1
  NAMECALL R0 R0 K4 ["match"]
  CALL R0 -1 1
  RETURN R0 1

PROTO_23:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["applySearch"]
  GETTABLEKS R4 R2 K1 ["Children"]
  GETUPVAL R5 2
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["Children"]
  GETIMPORT R3 K3 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CALL R3 1 2
  JUMPIFNOT R3 [+2]
  JUMPIFNOT R4 [+1]
  RETURN R2 1
  LOADNIL R5
  RETURN R5 1

PROTO_24:
  GETUPVAL R2 0
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CALL R2 2 1
  GETUPVAL R3 3
  MOVE R5 R2
  NAMECALL R3 R3 K0 ["updatePaths"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_25:
  GETTABLEKS R3 R1 K0 ["table"]
  GETTABLEKS R2 R3 K1 ["Expansion"]
  GETTABLEKS R4 R1 K0 ["table"]
  GETTABLEKS R3 R4 K2 ["Items"]
  GETTABLEKS R5 R1 K0 ["table"]
  GETTABLEKS R4 R5 K3 ["Selection"]
  LOADB R5 0
  GETTABLEKS R6 R0 K4 ["SearchTerm"]
  GETTABLEKS R7 R1 K4 ["SearchTerm"]
  JUMPIFEQ R6 R7 [+7]
  GETTABLEKS R6 R0 K4 ["SearchTerm"]
  JUMPIFEQKS R6 K5 [""] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R6 R0 K6 ["IsDirty"]
  JUMPIF R6 [+14]
  JUMPIF R5 [+13]
  GETTABLEKS R6 R0 K7 ["DesignSheet"]
  GETTABLEKS R7 R1 K7 ["DesignSheet"]
  JUMPIFNOTEQ R6 R7 [+8]
  GETUPVAL R6 0
  GETTABLEKS R8 R1 K0 ["table"]
  GETTABLEKS R7 R8 K2 ["Items"]
  CALL R6 1 1
  JUMPIFNOT R6 [+19]
  NEWTABLE R6 0 1
  GETUPVAL R7 1
  SETLIST R6 R7 1 [1]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["getItems"]
  MOVE R8 R6
  GETTABLEKS R9 R0 K7 ["DesignSheet"]
  CALL R7 2 1
  MOVE R3 R7
  GETUPVAL R7 3
  MOVE R9 R3
  NAMECALL R7 R7 K9 ["updatePaths"]
  CALL R7 2 1
  MOVE R3 R7
  GETUPVAL R6 4
  MOVE R7 R1
  DUPTABLE R8 K10 [{"DesignSheet", "SearchTerm", "table"}]
  GETTABLEKS R9 R0 K7 ["DesignSheet"]
  SETTABLEKS R9 R8 K7 ["DesignSheet"]
  GETTABLEKS R9 R0 K4 ["SearchTerm"]
  SETTABLEKS R9 R8 K4 ["SearchTerm"]
  GETUPVAL R9 4
  GETTABLEKS R10 R1 K0 ["table"]
  DUPTABLE R11 K11 [{"Items", "Expansion", "Selection"}]
  SETTABLEKS R3 R11 K2 ["Items"]
  SETTABLEKS R2 R11 K1 ["Expansion"]
  SETTABLEKS R4 R11 K3 ["Selection"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K0 ["table"]
  CALL R6 2 -1
  RETURN R6 -1

PROTO_26:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R2 K2 ["table"]
  GETTABLEKS R3 R4 K3 ["Items"]
  GETTABLEKS R5 R1 K4 ["SelectedItemId"]
  JUMPIFNOT R5 [+8]
  GETUPVAL R4 0
  MOVE R6 R3
  GETTABLEKS R7 R1 K4 ["SelectedItemId"]
  NAMECALL R4 R4 K5 ["findItemById"]
  CALL R4 3 1
  JUMP [+1]
  LOADNIL R4
  GETTABLEKS R5 R1 K6 ["ExpandedItems"]
  JUMPIFNOT R4 [+12]
  GETUPVAL R6 0
  MOVE R8 R3
  GETTABLEKS R9 R4 K7 ["Path"]
  NAMECALL R6 R6 K8 ["expandAncestors"]
  CALL R6 3 1
  GETUPVAL R7 1
  MOVE R8 R5
  MOVE R9 R6
  CALL R7 2 1
  MOVE R5 R7
  GETTABLEKS R6 R1 K9 ["SearchTerm"]
  JUMPIFNOT R6 [+8]
  GETTABLEKS R8 R1 K9 ["SearchTerm"]
  LENGTH R7 R8
  LOADN R8 0
  JUMPIFLT R8 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  JUMPIFNOT R6 [+14]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["applySearch"]
  MOVE R8 R3
  GETTABLEKS R9 R1 K9 ["SearchTerm"]
  CALL R7 2 1
  MOVE R3 R7
  GETUPVAL R7 0
  MOVE R9 R3
  MOVE R10 R5
  NAMECALL R7 R7 K11 ["expandAll"]
  CALL R7 3 0
  GETTABLEKS R8 R1 K4 ["SelectedItemId"]
  JUMPIFNOT R8 [+7]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["SelectedItemId"]
  LOADB R9 1
  SETTABLE R9 R7 R8
  JUMP [+2]
  NEWTABLE R7 0 0
  GETUPVAL R10 3
  GETUPVAL R11 4
  ADD R9 R10 R11
  LOADN R11 2
  GETUPVAL R12 5
  MUL R10 R11 R12
  ADD R8 R9 R10
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 7
  NEWTABLE R11 1 0
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K13 ["Tag"]
  LOADK R13 K14 ["X-ColumnS"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K17 [{"SearchInput", "LeftItems"}]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 8
  NEWTABLE R15 8 0
  LOADN R16 1
  SETTABLEKS R16 R15 K18 ["LayoutOrder"]
  GETTABLEKS R16 R0 K19 ["onSearch"]
  SETTABLEKS R16 R15 K20 ["OnTextChanged"]
  GETTABLEKS R16 R1 K21 ["Localization"]
  LOADK R18 K22 ["Control"]
  LOADK R19 K23 ["SearchPlaceholder"]
  NAMECALL R16 R16 K24 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K25 ["PlaceholderText"]
  LOADB R16 1
  SETTABLEKS R16 R15 K26 ["ShowSearchIcon"]
  LOADB R16 0
  SETTABLEKS R16 R15 K27 ["ShowSearchButton"]
  GETTABLEKS R17 R2 K28 ["PaneSizes"]
  GETTABLEN R16 R17 1
  SETTABLEKS R16 R15 K29 ["Width"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K13 ["Tag"]
  LOADK R17 K15 ["SearchInput"]
  SETTABLE R17 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["SearchInput"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 9
  GETUPVAL R15 1
  NEWTABLE R16 32 0
  GETTABLEKS R18 R2 K2 ["table"]
  GETTABLEKS R17 R18 K30 ["Columns"]
  SETTABLEKS R17 R16 K30 ["Columns"]
  LOADB R17 1
  SETTABLEKS R17 R16 K31 ["ClampSize"]
  SETTABLEKS R5 R16 K32 ["Expansion"]
  LOADB R17 1
  SETTABLEKS R17 R16 K33 ["FullSpanEmphasis"]
  GETUPVAL R18 10
  GETTABLEKS R17 R18 K34 ["getTableRowId"]
  SETTABLEKS R17 R16 K35 ["GetItemId"]
  GETUPVAL R18 10
  GETTABLEKS R17 R18 K36 ["getRowChildren"]
  SETTABLEKS R17 R16 K37 ["GetChildren"]
  GETTABLEKS R17 R0 K38 ["onAction"]
  SETTABLEKS R17 R16 K39 ["OnCellAction"]
  GETTABLEKS R17 R0 K40 ["onEdited"]
  SETTABLEKS R17 R16 K41 ["OnCellEdited"]
  GETTABLEKS R17 R0 K42 ["onDoubleClick"]
  SETTABLEKS R17 R16 K43 ["OnCellDoubleClick"]
  GETTABLEKS R17 R0 K44 ["onCellPressed"]
  SETTABLEKS R17 R16 K45 ["OnCellPressed"]
  LOADN R17 2
  SETTABLEKS R17 R16 K18 ["LayoutOrder"]
  GETTABLEKS R17 R0 K46 ["onRightClick"]
  SETTABLEKS R17 R16 K47 ["RightClick"]
  SETTABLEKS R3 R16 K48 ["RootItems"]
  LOADN R17 32
  SETTABLEKS R17 R16 K49 ["RowHeight"]
  LOADB R17 1
  SETTABLEKS R17 R16 K50 ["Scroll"]
  DUPTABLE R17 K52 [{"VerticalScrollBarInset"}]
  GETIMPORT R18 K56 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R18 R17 K51 ["VerticalScrollBarInset"]
  SETTABLEKS R17 R16 K57 ["ScrollProps"]
  SETTABLEKS R7 R16 K58 ["Selection"]
  LOADB R17 0
  SETTABLEKS R17 R16 K59 ["ShowHeader"]
  GETIMPORT R17 K62 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  MINUS R21 R8
  CALL R17 4 1
  SETTABLEKS R17 R16 K63 ["Size"]
  LOADB R17 1
  SETTABLEKS R17 R16 K64 ["UseScale"]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K13 ["Tag"]
  LOADK R18 K16 ["LeftItems"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R0 K65 ["tableCallbacks"]
  CALL R15 2 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K16 ["LeftItems"]
  CALL R9 3 1
  LOADNIL R10
  JUMPIFNOT R4 [+89]
  GETTABLEKS R11 R4 K66 ["Instance"]
  JUMPIFNOT R11 [+17]
  LOADK R14 K67 ["StyleRule"]
  NAMECALL R12 R11 K68 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+12]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 11
  DUPTABLE R14 K69 [{"StyleRule"}]
  GETTABLEKS R15 R4 K66 ["Instance"]
  SETTABLEKS R15 R14 K67 ["StyleRule"]
  CALL R12 2 1
  MOVE R10 R12
  JUMP [+69]
  JUMPIFNOT R11 [+17]
  LOADK R14 K70 ["StyleSheet"]
  NAMECALL R12 R11 K68 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+12]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 12
  DUPTABLE R14 K71 [{"StyleSheet"}]
  GETTABLEKS R15 R4 K66 ["Instance"]
  SETTABLEKS R15 R14 K70 ["StyleSheet"]
  CALL R12 2 1
  MOVE R10 R12
  JUMP [+51]
  GETTABLEKS R13 R4 K72 ["Name"]
  GETTABLEKS R12 R13 K73 ["Value"]
  JUMPIFEQKS R12 K74 ["Themes"] [+23]
  GETUPVAL R13 13
  GETTABLEKS R12 R13 K75 ["isUnderPath"]
  GETTABLEKS R13 R4 K7 ["Path"]
  GETUPVAL R16 13
  GETTABLEKS R15 R16 K76 ["PATHS"]
  GETTABLEKS R14 R15 K77 ["THEMES"]
  CALL R12 2 1
  JUMPIFNOT R12 [+10]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 14
  DUPTABLE R14 K79 [{"RootItem"}]
  SETTABLEKS R4 R14 K78 ["RootItem"]
  CALL R12 2 1
  MOVE R10 R12
  JUMP [+23]
  GETUPVAL R12 15
  GETTABLEKS R13 R4 K7 ["Path"]
  GETUPVAL R16 13
  GETTABLEKS R15 R16 K76 ["PATHS"]
  GETTABLEKS R14 R15 K80 ["DESIGN"]
  CALL R12 2 1
  JUMPIFNOT R12 [+13]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 12
  DUPTABLE R14 K71 [{"StyleSheet"}]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K81 ["DesignSheet"]
  SETTABLEKS R15 R14 K70 ["StyleSheet"]
  CALL R12 2 1
  MOVE R10 R12
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 7
  NEWTABLE R13 0 0
  DUPTABLE R14 K83 [{"Divider"}]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K12 ["createElement"]
  GETUPVAL R16 16
  DUPTABLE R17 K88 [{"ClampSize", "UseDeficit", "MinSizes", "OnSizesChange", "Sizes"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K31 ["ClampSize"]
  LOADB R18 1
  SETTABLEKS R18 R17 K84 ["UseDeficit"]
  NEWTABLE R18 0 2
  GETIMPORT R19 K90 [UDim.new]
  LOADN R20 0
  LOADN R21 100
  CALL R19 2 1
  GETIMPORT R20 K90 [UDim.new]
  LOADN R21 0
  LOADN R22 100
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  SETTABLEKS R18 R17 K85 ["MinSizes"]
  GETTABLEKS R18 R0 K91 ["onPaneSizesChanged"]
  SETTABLEKS R18 R17 K86 ["OnSizesChange"]
  GETTABLEKS R18 R2 K28 ["PaneSizes"]
  SETTABLEKS R18 R17 K87 ["Sizes"]
  NEWTABLE R18 0 2
  MOVE R19 R9
  MOVE R20 R10
  SETLIST R18 R19 2 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K82 ["Divider"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_27:
  DUPTABLE R1 K5 [{"DesignSheet", "IsDirty", "SearchTerm", "SelectedItemId", "ExpandedItems"}]
  GETTABLEKS R3 R0 K6 ["Window"]
  GETTABLEKS R2 R3 K0 ["DesignSheet"]
  SETTABLEKS R2 R1 K0 ["DesignSheet"]
  GETTABLEKS R3 R0 K6 ["Window"]
  GETTABLEKS R2 R3 K1 ["IsDirty"]
  SETTABLEKS R2 R1 K1 ["IsDirty"]
  GETTABLEKS R3 R0 K6 ["Window"]
  GETTABLEKS R2 R3 K2 ["SearchTerm"]
  SETTABLEKS R2 R1 K2 ["SearchTerm"]
  GETTABLEKS R3 R0 K6 ["Window"]
  GETTABLEKS R2 R3 K3 ["SelectedItemId"]
  SETTABLEKS R2 R1 K3 ["SelectedItemId"]
  GETTABLEKS R3 R0 K6 ["Window"]
  GETTABLEKS R2 R3 K4 ["ExpandedItems"]
  SETTABLEKS R2 R1 K4 ["ExpandedItems"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ReplicatedStorage"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ChangeHistoryService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R2 K10 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K14 ["SharedFlags"]
  GETTABLEKS R7 R6 K15 ["getFFlagDevFrameworkBetterInit"]
  CALL R7 0 1
  GETTABLEKS R8 R5 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["withContext"]
  GETTABLEKS R11 R2 K18 ["Src"]
  GETTABLEKS R10 R11 K19 ["Actions"]
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R10 K20 ["Window"]
  GETTABLEKS R12 R13 K21 ["DeselectItem"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R10 K20 ["Window"]
  GETTABLEKS R13 R14 K22 ["SelectItem"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R10 K20 ["Window"]
  GETTABLEKS R14 R15 K23 ["SetDesignSheet"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R10 K20 ["Window"]
  GETTABLEKS R15 R16 K24 ["SetIsDirty"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R17 R10 K20 ["Window"]
  GETTABLEKS R16 R17 K25 ["SetItemsExpanded"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R18 R10 K20 ["Window"]
  GETTABLEKS R17 R18 K26 ["SetSearch"]
  CALL R16 1 1
  GETTABLEKS R18 R2 K18 ["Src"]
  GETTABLEKS R17 R18 K27 ["Thunks"]
  GETIMPORT R18 K9 [require]
  GETTABLEKS R20 R17 K28 ["ContextMenu"]
  GETTABLEKS R19 R20 K29 ["ShowDesignSheetMenu"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R21 R17 K28 ["ContextMenu"]
  GETTABLEKS R20 R21 K30 ["ShowNilDesignSheetMenu"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R22 R17 K28 ["ContextMenu"]
  GETTABLEKS R21 R22 K31 ["ShowNewStyleRuleMenu"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R23 R17 K28 ["ContextMenu"]
  GETTABLEKS R22 R23 K32 ["ShowStyleRuleMenu"]
  CALL R21 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R24 R17 K28 ["ContextMenu"]
  GETTABLEKS R23 R24 K33 ["ShowStyleSheetMenu"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R25 R17 K28 ["ContextMenu"]
  GETTABLEKS R24 R25 K34 ["ShowThemeCategoryMenu"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R26 R17 K28 ["ContextMenu"]
  GETTABLEKS R25 R26 K35 ["ShowThemeFolderMenu"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETTABLEKS R27 R17 K28 ["ContextMenu"]
  GETTABLEKS R26 R27 K36 ["ShowThemeOtherMenu"]
  CALL R25 1 1
  GETIMPORT R26 K9 [require]
  GETTABLEKS R28 R17 K28 ["ContextMenu"]
  GETTABLEKS R27 R28 K37 ["ShowTokenCategoryMenu"]
  CALL R26 1 1
  GETIMPORT R27 K9 [require]
  GETTABLEKS R29 R17 K28 ["ContextMenu"]
  GETTABLEKS R28 R29 K38 ["ShowUiElementsMenu"]
  CALL R27 1 1
  GETTABLEKS R28 R5 K39 ["UI"]
  GETTABLEKS R29 R28 K40 ["Pane"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R30 R28 K41 ["SearchBar"]
  JUMP [+4]
  GETTABLEKS R31 R5 K42 ["StudioUI"]
  GETTABLEKS R30 R31 K41 ["SearchBar"]
  GETTABLEKS R31 R28 K43 ["SplitPane"]
  GETTABLEKS R32 R28 K44 ["TreeTable"]
  GETIMPORT R33 K9 [require]
  GETTABLEKS R36 R2 K18 ["Src"]
  GETTABLEKS R35 R36 K45 ["Util"]
  GETTABLEKS R34 R35 K46 ["DesignHelpers"]
  CALL R33 1 1
  GETIMPORT R34 K9 [require]
  GETTABLEKS R37 R2 K18 ["Src"]
  GETTABLEKS R36 R37 K45 ["Util"]
  GETTABLEKS R35 R36 K47 ["TreeTableHelpers"]
  CALL R34 1 1
  GETIMPORT R35 K9 [require]
  GETTABLEKS R38 R2 K18 ["Src"]
  GETTABLEKS R37 R38 K45 ["Util"]
  GETTABLEKS R36 R37 K48 ["mapDispatchToProps"]
  CALL R35 1 1
  GETIMPORT R36 K9 [require]
  GETTABLEKS R39 R2 K18 ["Src"]
  GETTABLEKS R38 R39 K49 ["Components"]
  GETTABLEKS R37 R38 K50 ["StyleRuleView"]
  CALL R36 1 1
  GETIMPORT R37 K9 [require]
  GETTABLEKS R40 R2 K18 ["Src"]
  GETTABLEKS R39 R40 K49 ["Components"]
  GETTABLEKS R38 R39 K51 ["StyleSheetView"]
  CALL R37 1 1
  GETIMPORT R38 K9 [require]
  GETTABLEKS R41 R2 K18 ["Src"]
  GETTABLEKS R40 R41 K49 ["Components"]
  GETTABLEKS R39 R40 K52 ["ThemesView"]
  CALL R38 1 1
  GETIMPORT R39 K9 [require]
  GETTABLEKS R42 R2 K18 ["Src"]
  GETTABLEKS R41 R42 K45 ["Util"]
  GETTABLEKS R40 R41 K53 ["TreeListener"]
  CALL R39 1 1
  GETIMPORT R40 K9 [require]
  GETTABLEKS R43 R2 K18 ["Src"]
  GETTABLEKS R42 R43 K45 ["Util"]
  GETTABLEKS R41 R42 K54 ["isEmptyTable"]
  CALL R40 1 1
  GETIMPORT R41 K9 [require]
  GETTABLEKS R44 R2 K18 ["Src"]
  GETTABLEKS R43 R44 K45 ["Util"]
  GETTABLEKS R42 R43 K55 ["recordChange"]
  CALL R41 1 1
  MOVE R42 R1
  CALL R41 1 1
  GETIMPORT R42 K9 [require]
  GETTABLEKS R44 R2 K18 ["Src"]
  GETTABLEKS R43 R44 K56 ["Types"]
  CALL R42 1 1
  GETIMPORT R43 K9 [require]
  GETTABLEKS R46 R2 K18 ["Src"]
  GETTABLEKS R45 R46 K57 ["Reducers"]
  GETTABLEKS R44 R45 K58 ["RootReducer"]
  CALL R43 1 1
  GETIMPORT R44 K9 [require]
  GETTABLEKS R47 R2 K18 ["Src"]
  GETTABLEKS R46 R47 K45 ["Util"]
  GETTABLEKS R45 R46 K59 ["StyleSchema"]
  CALL R44 1 1
  GETIMPORT R45 K9 [require]
  GETTABLEKS R47 R2 K10 ["Packages"]
  GETTABLEKS R46 R47 K60 ["Dash"]
  CALL R45 1 1
  GETTABLEKS R46 R45 K61 ["copy"]
  GETTABLEKS R47 R45 K62 ["collectArray"]
  GETTABLEKS R48 R45 K63 ["join"]
  GETTABLEKS R49 R45 K64 ["mapOne"]
  GETTABLEKS R50 R45 K65 ["shallowEqual"]
  GETIMPORT R51 K9 [require]
  GETTABLEKS R54 R2 K18 ["Src"]
  GETTABLEKS R53 R54 K66 ["Resources"]
  GETTABLEKS R52 R53 K67 ["PluginStyles"]
  CALL R51 1 1
  LOADK R54 K68 ["BorderSize"]
  NAMECALL R52 R51 K69 ["GetAttribute"]
  CALL R52 2 1
  LOADK R55 K70 ["PaddingSm"]
  NAMECALL R53 R51 K69 ["GetAttribute"]
  CALL R53 2 1
  LOADK R56 K71 ["SearchBarHeight"]
  NAMECALL R54 R51 K69 ["GetAttribute"]
  CALL R54 2 1
  NEWTABLE R55 0 1
  DUPTABLE R56 K75 [{"Name", "Key", "Width"}]
  LOADK R57 K72 ["Name"]
  SETTABLEKS R57 R56 K72 ["Name"]
  LOADK R57 K72 ["Name"]
  SETTABLEKS R57 R56 K73 ["Key"]
  GETIMPORT R57 K78 [UDim.new]
  LOADN R58 1
  LOADN R59 0
  CALL R57 2 1
  SETTABLEKS R57 R56 K74 ["Width"]
  SETLIST R55 R56 1 [1]
  GETTABLEKS R57 R32 K79 ["EditTree"]
  GETTABLEKS R56 R57 K77 ["new"]
  DUPTABLE R57 K82 [{"getChildren", "getId"}]
  DUPCLOSURE R58 K83 [PROTO_0]
  SETTABLEKS R58 R57 K80 ["getChildren"]
  DUPCLOSURE R58 K84 [PROTO_1]
  SETTABLEKS R58 R57 K81 ["getId"]
  CALL R56 1 1
  GETTABLEKS R57 R3 K85 ["PureComponent"]
  LOADK R59 K86 ["MainView"]
  NAMECALL R57 R57 K87 ["extend"]
  CALL R57 2 1
  DUPCLOSURE R58 K88 [PROTO_19]
  CAPTURE VAL R46
  CAPTURE VAL R55
  CAPTURE VAL R34
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R56
  CAPTURE VAL R21
  CAPTURE VAL R18
  CAPTURE VAL R22
  CAPTURE VAL R24
  CAPTURE VAL R27
  CAPTURE VAL R19
  CAPTURE VAL R23
  CAPTURE VAL R26
  CAPTURE VAL R20
  CAPTURE VAL R25
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R48
  CAPTURE VAL R41
  CAPTURE VAL R15
  CAPTURE VAL R49
  CAPTURE VAL R33
  SETTABLEKS R58 R57 K89 ["init"]
  DUPCLOSURE R58 K90 [PROTO_20]
  CAPTURE VAL R39
  CAPTURE VAL R0
  CAPTURE VAL R14
  SETTABLEKS R58 R57 K91 ["didUpdate"]
  DUPCLOSURE R58 K92 [PROTO_21]
  SETTABLEKS R58 R57 K93 ["willUnmount"]
  NEWCLOSURE R58 P5
  CAPTURE VAL R47
  CAPTURE VAL R46
  CAPTURE REF R57
  CAPTURE VAL R56
  SETTABLEKS R58 R57 K94 ["applySearch"]
  DUPCLOSURE R58 K95 [PROTO_25]
  CAPTURE VAL R40
  CAPTURE VAL R0
  CAPTURE VAL R33
  CAPTURE VAL R56
  CAPTURE VAL R48
  SETTABLEKS R58 R57 K96 ["getDerivedStateFromProps"]
  NEWCLOSURE R58 P7
  CAPTURE VAL R56
  CAPTURE VAL R48
  CAPTURE REF R57
  CAPTURE VAL R54
  CAPTURE VAL R53
  CAPTURE VAL R52
  CAPTURE VAL R3
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R32
  CAPTURE VAL R34
  CAPTURE VAL R36
  CAPTURE VAL R37
  CAPTURE VAL R33
  CAPTURE VAL R38
  CAPTURE VAL R50
  CAPTURE VAL R31
  SETTABLEKS R58 R57 K97 ["render"]
  MOVE R58 R9
  DUPTABLE R59 K100 [{"Localization", "Plugin"}]
  GETTABLEKS R60 R8 K98 ["Localization"]
  SETTABLEKS R60 R59 K98 ["Localization"]
  GETTABLEKS R60 R8 K99 ["Plugin"]
  SETTABLEKS R60 R59 K99 ["Plugin"]
  CALL R58 1 1
  MOVE R59 R57
  CALL R58 1 1
  MOVE R57 R58
  GETTABLEKS R58 R4 K101 ["connect"]
  DUPCLOSURE R59 K102 [PROTO_27]
  MOVE R60 R35
  CALL R58 2 1
  MOVE R59 R57
  CALL R58 1 -1
  CLOSEUPVALS R57
  RETURN R58 -1
