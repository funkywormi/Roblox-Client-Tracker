PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["session"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["session"]
  NAMECALL R2 R1 K1 ["GetImportTree"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+17]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["update"]
  GETUPVAL R4 0
  DUPTABLE R5 K4 [{"validSession"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K3 ["validSession"]
  CALL R3 2 1
  GETUPVAL R6 2
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R0 K5 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0
  LOADNIL R3
  LOADNIL R4
  JUMPIFNOT R2 [+17]
  GETUPVAL R5 3
  MOVE R6 R2
  CALL R5 1 1
  GETTABLE R7 R5 R2
  GETTABLEKS R6 R7 K6 ["errors"]
  GETTABLE R8 R5 R2
  GETTABLEKS R7 R8 K7 ["descErrors"]
  ADD R3 R6 R7
  GETTABLE R7 R5 R2
  GETTABLEKS R6 R7 K8 ["warnings"]
  GETTABLE R8 R5 R2
  GETTABLEKS R7 R8 K9 ["descWarnings"]
  ADD R4 R6 R7
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["update"]
  GETUPVAL R6 0
  DUPTABLE R7 K10 [{"errors", "warnings"}]
  SETTABLEKS R3 R7 K6 ["errors"]
  SETTABLEKS R4 R7 K8 ["warnings"]
  CALL R5 2 1
  GETUPVAL R8 2
  MOVE R9 R5
  CALL R8 1 -1
  NAMECALL R6 R0 K5 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Actions"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["UpdateQueueItem"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R6 R0 K4 ["Src"]
  GETTABLEKS R5 R6 K9 ["DataTypes"]
  GETTABLEKS R4 R5 K10 ["QueuedSession"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R8 R0 K4 ["Src"]
  GETTABLEKS R7 R8 K11 ["Utility"]
  GETTABLEKS R6 R7 K12 ["Status"]
  GETTABLEKS R5 R6 K13 ["countStatusLevelsForTree"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R5 1
