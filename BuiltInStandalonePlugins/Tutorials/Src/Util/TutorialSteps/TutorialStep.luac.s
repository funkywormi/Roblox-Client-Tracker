PROTO_0:
  DUPTABLE R2 K3 [{"tutorial", "data", "completed"}]
  SETTABLEKS R0 R2 K0 ["tutorial"]
  SETTABLEKS R1 R2 K1 ["data"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["completed"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K5 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R5 1
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K2 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

PROTO_4:
  DUPTABLE R1 K1 [{"kind"}]
  SETTABLEKS R0 R1 K0 ["kind"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K3 [setmetatable]
  CALL R2 2 0
  DUPTABLE R2 K5 [{"__index"}]
  SETTABLEKS R1 R2 K4 ["__index"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K6 ["new"]
  RETURN R1 1

PROTO_5:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["completed"]
  GETTABLEKS R1 R0 K1 ["tutorial"]
  NAMECALL R1 R1 K2 ["getCurrentStep"]
  CALL R1 1 1
  JUMPIFNOTEQ R1 R0 [+6]
  GETTABLEKS R1 R0 K1 ["tutorial"]
  NAMECALL R1 R1 K3 ["increment"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["TutorialTypes"]
  CALL R1 1 1
  NEWTABLE R2 8 0
  DUPTABLE R3 K9 [{"__index"}]
  SETTABLEKS R2 R3 K8 ["__index"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R4 R2 K11 ["new"]
  DUPCLOSURE R4 K12 [PROTO_1]
  SETTABLEKS R4 R2 K13 ["bind"]
  DUPCLOSURE R4 K14 [PROTO_2]
  SETTABLEKS R4 R2 K15 ["unbind"]
  DUPCLOSURE R4 K16 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R2 K17 ["extend"]
  DUPCLOSURE R4 K18 [PROTO_5]
  SETTABLEKS R4 R2 K19 ["complete"]
  RETURN R2 1
