PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Item"]
  NAMECALL R0 R0 K1 ["setSelection"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["use"]
  CALL R4 0 1
  GETUPVAL R5 4
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 1
  GETTABLEKS R6 R0 K2 ["Item"]
  MOVE R9 R6
  NAMECALL R7 R4 K3 ["getImageUriForItem"]
  CALL R7 2 1
  GETTABLEKS R10 R5 K4 ["Selection"]
  GETTABLEKS R9 R10 K5 ["Id"]
  GETTABLEKS R10 R6 K5 ["Id"]
  JUMPIFNOTEQ R9 R10 [+3]
  LOADK R8 K6 ["Paper"]
  JUMP [+1]
  LOADK R8 K7 [""]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 6
  NEWTABLE R11 4 0
  GETTABLEKS R12 R0 K9 ["Index"]
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  GETTABLEKS R12 R0 K11 ["Position"]
  SETTABLEKS R12 R11 K11 ["Position"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K12 ["OnPress"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K13 ["Tag"]
  LOADK R14 K14 ["Element X-Corner X-Row X-Left X-Middle %*"]
  MOVE R16 R8
  NAMECALL R14 R14 K15 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLE R13 R11 R12
  DUPTABLE R12 K18 [{"Thumbnail", "Name"}]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 7
  NEWTABLE R15 4 0
  NAMECALL R16 R1 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K10 ["LayoutOrder"]
  SETTABLEKS R7 R15 K20 ["Image"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K13 ["Tag"]
  LOADK R17 K21 ["ScopeIcon Icon16 X-PadM"]
  SETTABLE R17 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K16 ["Thumbnail"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 8
  NEWTABLE R15 4 0
  NAMECALL R16 R1 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K10 ["LayoutOrder"]
  GETTABLEKS R17 R0 K2 ["Item"]
  GETTABLEKS R16 R17 K17 ["Name"]
  SETTABLEKS R16 R15 K22 ["Text"]
  GETIMPORT R16 K26 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R16 R15 K24 ["TextTruncate"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K13 ["Tag"]
  LOADK R17 K27 ["Left X-PadS"]
  SETTABLE R17 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["Name"]
  CALL R9 3 -1
  RETURN R9 -1

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
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Pane"]
  GETTABLEKS R5 R3 K11 ["TextLabel"]
  GETTABLEKS R6 R3 K12 ["Image"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Controllers"]
  GETTABLEKS R8 R9 K15 ["ExplorerController"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Controllers"]
  GETTABLEKS R9 R10 K16 ["PluginController"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K17 ["Networking"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K18 ["Hooks"]
  GETTABLEKS R11 R12 K19 ["useExplorerState"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K20 ["Types"]
  CALL R11 1 1
  GETTABLEKS R13 R2 K21 ["Util"]
  GETTABLEKS R12 R13 K22 ["LayoutOrderIterator"]
  DUPCLOSURE R13 K23 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R13 1
