PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Expected story to be a table"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["provideMockContext"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["TestHelpers"]
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Reducers"]
  GETTABLEKS R6 R7 K13 ["MainReducer"]
  CALL R5 1 1
  GETTABLEKS R8 R2 K14 ["Style"]
  GETTABLEKS R7 R8 K15 ["Themes"]
  GETTABLEKS R6 R7 K16 ["StudioTheme"]
  NEWTABLE R7 0 4
  GETTABLEKS R9 R4 K17 ["Analytics"]
  GETTABLEKS R8 R9 K18 ["mock"]
  CALL R8 0 1
  GETTABLEKS R10 R4 K19 ["Localization"]
  GETTABLEKS R9 R10 K18 ["mock"]
  CALL R9 0 1
  GETTABLEKS R11 R4 K20 ["Store"]
  GETTABLEKS R10 R11 K21 ["new"]
  GETTABLEKS R12 R1 K20 ["Store"]
  GETTABLEKS R11 R12 K21 ["new"]
  MOVE R12 R5
  LOADNIL R13
  LOADNIL R14
  LOADNIL R15
  CALL R11 4 -1
  CALL R10 -1 1
  GETTABLEKS R11 R6 K18 ["mock"]
  CALL R11 0 -1
  SETLIST R7 R8 -1 [1]
  DUPCLOSURE R8 K22 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R8 1
