PROTO_0:
  GETUPVAL R0 0
  LOADK R1 K0 ["TestUser"]
  LOADB R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K2 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R1 K1 [{"data"}]
  NEWTABLE R2 0 2
  DUPTABLE R3 K4 [{"id", "name"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K5 ["TestGroup1"]
  SETTABLEKS R4 R3 K3 ["name"]
  DUPTABLE R4 K4 [{"id", "name"}]
  LOADN R5 2
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K6 ["TestGroup2"]
  SETTABLEKS R5 R4 K3 ["name"]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K0 ["data"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R1 K7 ["Test fetchGroupsAsync error"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K2 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["PLACEHOLDER"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Images"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  NEWTABLE R3 4 0
  DUPCLOSURE R4 K10 [PROTO_1]
  SETTABLEKS R4 R3 K11 ["fetchUsernameAsync"]
  DUPCLOSURE R4 K12 [PROTO_3]
  SETTABLEKS R4 R3 K13 ["fetchGroupsAsync"]
  DUPCLOSURE R4 K14 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K15 ["getImageUriForItem"]
  RETURN R3 1
