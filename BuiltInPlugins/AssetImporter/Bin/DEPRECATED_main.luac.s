PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Name"]
  SETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["Store"]
  GETTABLEKS R0 R1 K2 ["new"]
  GETUPVAL R1 3
  LOADNIL R2
  NEWTABLE R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["thunkMiddleware"]
  SETLIST R3 R4 1 [1]
  CALL R0 3 1
  GETUPVAL R1 4
  GETUPVAL R2 0
  MOVE R3 R0
  GETUPVAL R4 5
  CALL R1 3 1
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 7
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K5 ["mount"]
  MOVE R4 R2
  CALL R3 1 1
  SETUPVAL R3 8
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R2 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Utility"]
  GETTABLEKS R4 R5 K7 ["DEPRECATED_shouldPluginRun"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K8 ["DEPRECATED_commonInit"]
  CALL R4 1 1
  MOVE R5 R4
  CALL R5 0 0
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R2 K9 ["Packages"]
  GETTABLEKS R6 R7 K10 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R2 K9 ["Packages"]
  GETTABLEKS R7 R8 K11 ["Rodux"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R2 K5 ["Src"]
  GETTABLEKS R9 R10 K12 ["Reducers"]
  GETTABLEKS R8 R9 K13 ["MainReducer"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K14 ["createContextItems"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R2 K5 ["Src"]
  GETTABLEKS R10 R11 K15 ["MainPlugin"]
  CALL R9 1 1
  LOADNIL R10
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE REF R10
  GETTABLEKS R12 R0 K16 ["Unloading"]
  NEWCLOSURE R14 P1
  CAPTURE REF R10
  CAPTURE VAL R5
  NAMECALL R12 R12 K17 ["Connect"]
  CALL R12 2 0
  MOVE R12 R11
  CALL R12 0 0
  CLOSEUPVALS R10
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_2]
  RETURN R0 1
