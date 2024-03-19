PROTO_0:
  GETTABLEKS R2 R0 K0 ["Data"]
  GETTABLEKS R1 R2 K1 ["Selector"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETUPVAL R5 2
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K1 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["getNewSelectorAction"]
  GETUPVAL R5 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  MOVE R7 R3
  CALL R4 3 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["getRenameAction"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U3
  MOVE R7 R3
  CALL R5 2 1
  GETTABLEKS R8 R2 K4 ["Clipboard"]
  GETTABLEKS R7 R8 K5 ["Instance"]
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  DUPTABLE R7 K8 [{"Id", "Children"}]
  LOADK R8 K9 ["DesignSheet"]
  SETTABLEKS R8 R7 K6 ["Id"]
  NEWTABLE R8 0 5
  MOVE R9 R4
  MOVE R10 R5
  DUPTABLE R11 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
  LOADK R12 K14 ["Delete"]
  SETTABLEKS R12 R11 K6 ["Id"]
  LOADK R14 K15 ["ContextMenu"]
  LOADK R15 K14 ["Delete"]
  NAMECALL R12 R3 K16 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["Text"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K17 ["delete"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K11 ["Icon"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  SETTABLEKS R12 R11 K12 ["OnItemClicked"]
  DUPTABLE R12 K19 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
  LOADK R13 K20 ["PasteInto"]
  SETTABLEKS R13 R12 K6 ["Id"]
  LOADK R15 K15 ["ContextMenu"]
  LOADK R16 K20 ["PasteInto"]
  NAMECALL R13 R3 K16 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K10 ["Text"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K21 ["paste"]
  CALL R13 0 1
  SETTABLEKS R13 R12 K11 ["Icon"]
  SETTABLEKS R6 R12 K18 ["Enabled"]
  NEWCLOSURE R13 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  SETTABLEKS R13 R12 K12 ["OnItemClicked"]
  DUPTABLE R13 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
  LOADK R14 K22 ["ShowInExplorer"]
  SETTABLEKS R14 R13 K6 ["Id"]
  LOADK R16 K15 ["ContextMenu"]
  LOADK R17 K22 ["ShowInExplorer"]
  NAMECALL R14 R3 K16 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K10 ["Text"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K23 ["getClassIcon"]
  LOADK R15 K24 ["ReplicatedStorage"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K11 ["Icon"]
  NEWCLOSURE R14 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U1
  SETTABLEKS R14 R13 K12 ["OnItemClicked"]
  SETLIST R8 R9 5 [1]
  SETTABLEKS R8 R7 K7 ["Children"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K25 ["trackClicks"]
  MOVE R9 R7
  GETTABLEKS R10 R1 K26 ["Telemetry"]
  CALL R8 2 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K27 ["showContextMenu"]
  GETTABLEKS R9 R1 K28 ["Plugin"]
  MOVE R10 R7
  CALL R8 2 0
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Reducers"]
  GETTABLEKS R2 R3 K7 ["RootReducer"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["MenuHelpers"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["ModernIcons"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K12 ["Thunks"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R4 K13 ["Change"]
  GETTABLEKS R6 R7 K14 ["CreateStyleRule"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R4 K13 ["Change"]
  GETTABLEKS R7 R8 K15 ["DeleteInstance"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R4 K13 ["Change"]
  GETTABLEKS R8 R9 K16 ["PasteInstanceInto"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R4 K13 ["Change"]
  GETTABLEKS R9 R10 K17 ["ShowInstanceInExplorer"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K5 ["Src"]
  GETTABLEKS R10 R11 K18 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K5 ["Src"]
  GETTABLEKS R12 R13 K12 ["Thunks"]
  GETTABLEKS R11 R12 K18 ["Types"]
  CALL R10 1 1
  DUPCLOSURE R11 K19 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R11 1
