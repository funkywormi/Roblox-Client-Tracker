PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+23]
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  JUMPIFNOT R7 [+7]
  FASTCALL2 TABLE_INSERT R2 R6 [+5]
  MOVE R9 R2
  MOVE R10 R6
  GETIMPORT R8 K4 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-9]
  GETIMPORT R3 K6 [table.concat]
  MOVE R4 R2
  LOADK R5 K7 [","]
  CALL R3 2 1
  MOVE R1 R3
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["convertQualityFilterDataToTagsCSV"]
  RETURN R0 1
