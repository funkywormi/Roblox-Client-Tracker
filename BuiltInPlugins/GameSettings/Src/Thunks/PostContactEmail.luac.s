PROTO_0:
  GETTABLEKS R2 R1 K0 ["policyInfoController"]
  GETIMPORT R4 K2 [game]
  GETTABLEKS R3 R4 K3 ["GameId"]
  MOVE R6 R3
  GETUPVAL R7 0
  NAMECALL R4 R2 K4 ["postContactEmail"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_1]
  RETURN R0 1
