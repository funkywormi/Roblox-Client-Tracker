PROTO_0:
  GETTABLEKS R2 R1 K0 ["searchTerm"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K7 ["Src"]
  GETTABLEKS R2 R3 K8 ["Actions"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K9 ["UpdateSearchTerm"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["createReducer"]
  LOADK R5 K11 [""]
  NEWTABLE R6 1 0
  GETTABLEKS R7 R3 K12 ["name"]
  DUPCLOSURE R8 K13 [PROTO_0]
  SETTABLE R8 R6 R7
  CALL R4 2 1
  RETURN R4 1
