PROTO_0:
  GETTABLEKS R1 R0 K0 ["arguments"]
  LOADB R2 1
  GETTABLEKS R3 R1 K1 ["enabled"]
  JUMPIFEQKN R3 K2 [1] [+7]
  GETTABLEKS R3 R1 K1 ["enabled"]
  JUMPIFEQKB R3 TRUE [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+12]
  GETUPVAL R3 0
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K3 ["activeDraftGuids"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["enableDraftMode"]
  GETTABLEKS R4 R0 K5 ["requestId"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R3 0
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["activeDraftGuids"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["disableDraftMode"]
  GETTABLEKS R4 R0 K5 ["requestId"]
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K7 ["Utils"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K8 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K9 ["Commands"]
  GETTABLEKS R5 R6 K10 ["BuilderCommands"]
  GETTABLEKS R4 R5 K11 ["BuilderNameMap"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
