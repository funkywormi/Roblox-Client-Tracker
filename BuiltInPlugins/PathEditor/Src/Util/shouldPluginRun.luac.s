PROTO_0:
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["DebugFlags"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["RunningUnderCLI"]
  CALL R1 0 1
  JUMPIFNOT R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R1 0
  NAMECALL R1 R1 K7 ["IsRunning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETIMPORT R1 K9 [game]
  LOADK R3 K10 ["EnablePathEditor"]
  NAMECALL R1 R1 K11 ["GetEngineFeature"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
