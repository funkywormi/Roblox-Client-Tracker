PROTO_0:
  DUPTABLE R2 K3 [{"DropdownLabel", "Key", "Query"}]
  GETTABLEKS R3 R1 K4 ["name"]
  SETTABLEKS R3 R2 K0 ["DropdownLabel"]
  GETTABLEKS R3 R1 K5 ["id"]
  SETTABLEKS R3 R2 K1 ["Key"]
  DUPTABLE R3 K7 [{"creatorTargetId"}]
  GETTABLEKS R4 R1 K5 ["id"]
  SETTABLEKS R4 R3 K6 ["creatorTargetId"]
  SETTABLEKS R3 R2 K2 ["Query"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["data"]
  DUPCLOSURE R3 K1 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["data"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETTABLEKS R2 R1 K1 ["composeUrl"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["GROUPS_SEARCH_URL"]
  GETTABLEKS R3 R4 K3 ["Prefix"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["GROUPS_SEARCH_URL"]
  GETTABLEKS R4 R5 K4 ["Url"]
  CALL R4 0 -1
  CALL R2 -1 1
  GETUPVAL R3 2
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 2 1
  GETUPVAL R4 2
  MOVE R6 R3
  NAMECALL R4 R4 K6 ["parseJson"]
  CALL R4 2 1
  GETUPVAL R6 3
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K7 ["validate"]
  CALL R6 1 -1
  NAMECALL R4 R4 K8 ["andThen"]
  CALL R4 -1 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NAMECALL R4 R4 K8 ["andThen"]
  CALL R4 2 1
  GETIMPORT R6 K10 [warn]
  NAMECALL R4 R4 K11 ["catch"]
  CALL R4 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K10 ["Models"]
  GETTABLEKS R4 R5 K11 ["ApiArrayResponseGroupModel"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Network"]
  GETTABLEKS R5 R6 K13 ["Urls"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETTABLEKS R6 R7 K15 ["TypedNetworking"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K16 ["createResponseValidator"]
  CALL R6 1 1
  GETTABLEKS R8 R1 K17 ["RobloxAPI"]
  GETTABLEKS R7 R8 K18 ["Url"]
  GETTABLEKS R8 R5 K19 ["new"]
  DUPTABLE R9 K22 [{"isInternal", "loggingLevel"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K20 ["isInternal"]
  LOADN R10 0
  SETTABLEKS R10 R9 K21 ["loggingLevel"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K8 ["Src"]
  GETTABLEKS R11 R12 K14 ["Util"]
  GETTABLEKS R10 R11 K23 ["TypedDash"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K24 ["collectArray"]
  DUPCLOSURE R11 K25 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R10
  RETURN R11 1
