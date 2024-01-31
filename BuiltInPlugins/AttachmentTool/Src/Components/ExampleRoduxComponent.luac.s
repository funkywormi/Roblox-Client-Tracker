PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchExampleIncrementCount"]
  LOADK R1 K1 ["Pressed!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 2
  NEWTABLE R4 2 0
  LOADN R5 2
  SETTABLEKS R5 R4 K1 ["LayoutOrder"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["Tag"]
  LOADK R6 K3 ["X-Fit X-PadL X-RowM X-Middle"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K6 [{"Button", "Text"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 3
  NEWTABLE R8 4 0
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K1 ["LayoutOrder"]
  LOADK R9 K7 ["Increment"]
  SETTABLEKS R9 R8 K5 ["Text"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K8 ["OnClick"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["Tag"]
  LOADK R10 K9 ["Primary X-Fit"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["Button"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  NEWTABLE R8 4 0
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K1 ["LayoutOrder"]
  LOADK R10 K10 ["Count: %* %*"]
  GETTABLEKS R12 R0 K11 ["ExampleCount"]
  GETTABLEKS R13 R0 K12 ["ExampleString"]
  NAMECALL R10 R10 K13 ["format"]
  CALL R10 3 1
  MOVE R9 R10
  SETTABLEKS R9 R8 K5 ["Text"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["Tag"]
  LOADK R10 K14 ["X-Fit"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Text"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  DUPTABLE R2 K2 [{"ExampleCount", "ExampleString"}]
  GETTABLEKS R4 R0 K3 ["ExampleReducer"]
  GETTABLEKS R3 R4 K0 ["ExampleCount"]
  SETTABLEKS R3 R2 K0 ["ExampleCount"]
  GETTABLEKS R4 R0 K3 ["ExampleReducer"]
  GETTABLEKS R3 R4 K1 ["ExampleString"]
  SETTABLEKS R3 R2 K1 ["ExampleString"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"dispatchExampleIncrementCount"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchExampleIncrementCount"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttachmentTool"]
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
  GETTABLEKS R5 R3 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["counter"]
  GETTABLEKS R5 R3 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["IconButton"]
  GETTABLEKS R7 R5 K14 ["Pane"]
  GETTABLEKS R8 R5 K15 ["TextLabel"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K16 ["Src"]
  GETTABLEKS R11 R12 K17 ["Reducers"]
  GETTABLEKS R10 R11 K18 ["MainReducer"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K16 ["Src"]
  GETTABLEKS R12 R13 K19 ["Actions"]
  GETTABLEKS R11 R12 K20 ["ExampleIncrementCount"]
  CALL R10 1 1
  DUPCLOSURE R11 K21 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  GETTABLEKS R12 R2 K22 ["connect"]
  DUPCLOSURE R13 K23 [PROTO_2]
  DUPCLOSURE R14 K24 [PROTO_4]
  CAPTURE VAL R10
  CALL R12 2 1
  MOVE R13 R11
  CALL R12 1 -1
  RETURN R12 -1
