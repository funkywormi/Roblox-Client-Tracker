PROTO_0:
  GETIMPORT R2 K2 [os.time]
  CALL R2 0 1
  GETUPVAL R5 0
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R0 K3 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R0 K0 [PROTO_0]
  CAPTURE UPVAL U0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Src"]
  GETTABLEKS R1 R2 K4 ["Actions"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["SessionStats"]
  GETTABLEKS R3 R4 K8 ["PluginFocusEnd"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K3 ["Src"]
  GETTABLEKS R4 R5 K9 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K3 ["Src"]
  GETTABLEKS R6 R7 K10 ["Reducers"]
  GETTABLEKS R5 R6 K11 ["RootReducer"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K3 ["Src"]
  GETTABLEKS R7 R8 K12 ["Thunks"]
  GETTABLEKS R6 R7 K9 ["Types"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R2
  RETURN R6 1
