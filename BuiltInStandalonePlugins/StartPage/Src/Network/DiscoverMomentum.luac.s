PROTO_0:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  JUMPIF R2 [+14]
  GETUPVAL R2 0
  DUPTABLE R3 K6 [{"targetResults", "pages", "doNotWaitForImages"}]
  GETUPVAL R5 1
  LENGTH R4 R5
  SETTABLEKS R4 R3 K3 ["targetResults"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K4 ["pages"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["doNotWaitForImages"]
  SETTABLE R3 R1 R2
  GETUPVAL R4 0
  GETTABLE R3 R1 R4
  GETTABLEKS R2 R3 K4 ["pages"]
  GETUPVAL R3 2
  GETUPVAL R4 1
  SETTABLE R4 R2 R3
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R4 1
  LENGTH R3 R4
  SETTABLEKS R3 R2 K3 ["targetResults"]
  RETURN R1 1

PROTO_1:
  LOADN R5 1
  JUMPIFNOTLT R5 R2 [+2]
  RETURN R0 0
  MOVE R5 R4
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R2
  CALL R5 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_1]
  RETURN R2 1
