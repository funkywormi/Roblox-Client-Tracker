PROTO_0:
  GETTABLEKS R3 R1 K0 ["action"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R1 K1 ["uuid"]
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R1 K2 ["hash"]
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Action must have action, uuid, and hash fields"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETIMPORT R2 K8 [table.clone]
  MOVE R3 R0
  CALL R2 1 1
  MOVE R0 R2
  GETTABLEKS R2 R1 K0 ["action"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["GENERATION_ACTIONS"]
  GETTABLEKS R3 R4 K10 ["ADD"]
  JUMPIFNOTEQ R2 R3 [+31]
  GETTABLEKS R3 R1 K2 ["hash"]
  GETTABLE R2 R0 R3
  JUMPIF R2 [+6]
  GETTABLEKS R2 R1 K2 ["hash"]
  NEWTABLE R3 0 0
  SETTABLE R3 R0 R2
  JUMP [+9]
  GETTABLEKS R2 R1 K2 ["hash"]
  GETIMPORT R3 K8 [table.clone]
  GETTABLEKS R5 R1 K2 ["hash"]
  GETTABLE R4 R0 R5
  CALL R3 1 1
  SETTABLE R3 R0 R2
  GETTABLEKS R4 R1 K2 ["hash"]
  GETTABLE R3 R0 R4
  GETTABLEKS R4 R1 K1 ["uuid"]
  FASTCALL2 TABLE_INSERT R3 R4 [+3]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 2 0
  RETURN R0 1
  GETTABLEKS R2 R1 K0 ["action"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["GENERATION_ACTIONS"]
  GETTABLEKS R3 R4 K13 ["REMOVE"]
  JUMPIFNOTEQ R2 R3 [+31]
  GETTABLEKS R3 R1 K2 ["hash"]
  GETTABLE R2 R0 R3
  JUMPIFNOT R2 [+36]
  GETIMPORT R2 K15 [table.find]
  GETTABLEKS R4 R1 K2 ["hash"]
  GETTABLE R3 R0 R4
  GETTABLEKS R4 R1 K1 ["uuid"]
  CALL R2 2 1
  JUMPIFNOT R2 [+27]
  GETTABLEKS R3 R1 K2 ["hash"]
  GETIMPORT R4 K8 [table.clone]
  GETTABLEKS R6 R1 K2 ["hash"]
  GETTABLE R5 R0 R6
  CALL R4 1 1
  SETTABLE R4 R0 R3
  GETIMPORT R3 K17 [table.remove]
  GETTABLEKS R5 R1 K2 ["hash"]
  GETTABLE R4 R0 R5
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 1
  GETIMPORT R2 K19 [error]
  LOADK R4 K20 ["Invalid action: %*"]
  GETTABLEKS R6 R1 K0 ["action"]
  NAMECALL R4 R4 K21 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  RETURN R0 1

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Generations table: "]
  GETUPVAL R2 0
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["ModelToGenerations table: "]
  GETUPVAL R2 0
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useReducer"]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  CALL R1 2 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useReducer"]
  GETUPVAL R4 2
  NEWTABLE R5 0 0
  CALL R3 2 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["useState"]
  LOADNIL R6
  CALL R5 1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["useState"]
  LOADN R8 0
  CALL R7 1 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["useState"]
  LOADN R10 0
  CALL R9 1 2
  GETUPVAL R11 3
  CALL R11 0 1
  JUMPIFNOT R11 [+22]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["useEffect"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R1
  NEWTABLE R13 0 1
  MOVE R14 R1
  SETLIST R13 R14 1 [1]
  CALL R11 2 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["useEffect"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R3
  NEWTABLE R13 0 1
  MOVE R14 R3
  SETLIST R13 R14 1 [1]
  CALL R11 2 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K4 ["Provider"]
  DUPTABLE R13 K6 [{"value"}]
  DUPTABLE R14 K17 [{"generations", "updateGeneration", "modelToGenerations", "updateModelToGenerations", "selected", "setSelected", "quota", "setQuota", "total", "setTotal"}]
  SETTABLEKS R1 R14 K7 ["generations"]
  SETTABLEKS R2 R14 K8 ["updateGeneration"]
  SETTABLEKS R3 R14 K9 ["modelToGenerations"]
  SETTABLEKS R4 R14 K10 ["updateModelToGenerations"]
  SETTABLEKS R5 R14 K11 ["selected"]
  SETTABLEKS R6 R14 K12 ["setSelected"]
  SETTABLEKS R7 R14 K13 ["quota"]
  SETTABLEKS R8 R14 K14 ["setQuota"]
  SETTABLEKS R9 R14 K15 ["total"]
  SETTABLEKS R10 R14 K16 ["setTotal"]
  SETTABLEKS R14 R13 K5 ["value"]
  GETTABLEKS R14 R0 K18 ["children"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["GenerationsContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Hooks"]
  GETTABLEKS R5 R6 K13 ["jobTableReducer"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K14 ["Flags"]
  GETTABLEKS R6 R7 K15 ["getFFlagDebugTextureGeneratorLogging"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R7 K17 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  RETURN R7 1
