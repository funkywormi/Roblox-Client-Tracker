PROTO_0:
  LOADN R1 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  ADDK R1 R1 K0 [1]
  FORGLOOP R7 1 [-2]
  FORGLOOP R2 2 [-8]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["revertResult"]
  GETTABLEKS R3 R1 K1 ["scriptInstance"]
  GETTABLEKS R4 R1 K2 ["replaceResult"]
  GETTABLEKS R5 R1 K3 ["undoRevertResult"]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  JUMPIFNOT R4 [+39]
  GETTABLEKS R6 R4 K4 ["autoConverted"]
  GETTABLEKS R10 R4 K5 ["succeeded"]
  ADD R7 R7 R10
  GETTABLEKS R10 R4 K6 ["failed"]
  LOADN R11 0
  MOVE R12 R10
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  MOVE R17 R16
  LOADNIL R18
  LOADNIL R19
  FORGPREP R17
  ADDK R11 R11 K7 [1]
  FORGLOOP R17 1 [-2]
  FORGLOOP R12 2 [-8]
  MOVE R8 R11
  GETTABLEKS R10 R4 K8 ["failedVar"]
  LOADN R11 0
  MOVE R12 R10
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  MOVE R17 R16
  LOADNIL R18
  LOADNIL R19
  FORGPREP R17
  ADDK R11 R11 K7 [1]
  FORGLOOP R17 1 [-2]
  FORGLOOP R12 2 [-8]
  MOVE R9 R11
  JUMPIFNOT R3 [+1]
  LOADN R7 1
  NEWTABLE R10 0 0
  JUMPIFNOT R2 [+7]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["ScriptStatus"]
  GETTABLEKS R11 R12 K10 ["Reverted"]
  SETTABLE R2 R10 R11
  JUMP [+7]
  JUMPIFNOT R5 [+6]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["ScriptStatus"]
  GETTABLEKS R11 R12 K10 ["Reverted"]
  SETTABLE R5 R10 R11
  LOADN R11 0
  JUMPIFNOTLT R11 R6 [+7]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["ScriptStatus"]
  GETTABLEKS R11 R12 K11 ["AutoConverted"]
  SETTABLE R6 R10 R11
  LOADN R11 0
  JUMPIFNOTLT R11 R7 [+7]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["ScriptStatus"]
  GETTABLEKS R11 R12 K12 ["Complete"]
  SETTABLE R7 R10 R11
  LOADN R11 0
  JUMPIFNOTLT R11 R8 [+7]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["ScriptStatus"]
  GETTABLEKS R11 R12 K13 ["Error"]
  SETTABLE R8 R10 R11
  LOADN R11 0
  JUMPIFNOTLT R11 R9 [+7]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["ScriptStatus"]
  GETTABLEKS R11 R12 K14 ["VariableError"]
  SETTABLE R9 R10 R11
  RETURN R10 1

PROTO_2:
  GETTABLEKS R3 R1 K0 ["scriptInstance"]
  JUMPIFNOT R3 [+19]
  NEWTABLE R3 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["ScriptStatus"]
  GETTABLEKS R4 R5 K2 ["Complete"]
  LOADK R7 K3 ["ConversionResult"]
  LOADK R8 K4 ["Script"]
  DUPTABLE R9 K6 [{"name"}]
  GETTABLEKS R10 R1 K0 ["scriptInstance"]
  SETTABLEKS R10 R9 K5 ["name"]
  NAMECALL R5 R2 K7 ["getText"]
  CALL R5 4 1
  SETTABLE R5 R3 R4
  RETURN R3 1
  MOVE R5 R1
  NAMECALL R3 R0 K8 ["GetStatusCounts"]
  CALL R3 2 1
  NEWTABLE R4 0 0
  MOVE R5 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["ScriptStatus"]
  GETTABLEKS R10 R11 K9 ["AutoConverted"]
  JUMPIFEQ R8 R10 [+29]
  DUPTABLE R10 K11 [{"count"}]
  GETIMPORT R11 K14 [string.format]
  LOADK R12 K15 ["%d"]
  MOVE R13 R9
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["count"]
  GETTABLEKS R11 R1 K16 ["undoRevertResult"]
  JUMPIFNOT R11 [+10]
  LOADK R13 K3 ["ConversionResult"]
  LOADK R15 K17 ["Undo"]
  MOVE R16 R8
  CONCAT R14 R15 R16
  MOVE R15 R10
  NAMECALL R11 R2 K7 ["getText"]
  CALL R11 4 1
  SETTABLE R11 R4 R8
  JUMP [+7]
  LOADK R13 K3 ["ConversionResult"]
  MOVE R14 R8
  MOVE R15 R10
  NAMECALL R11 R2 K7 ["getText"]
  CALL R11 4 1
  SETTABLE R11 R4 R8
  FORGLOOP R5 2 [-36]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["ScriptAnalysis"]
  GETTABLEKS R2 R3 K9 ["Constants"]
  CALL R1 1 1
  NEWTABLE R2 2 0
  DUPCLOSURE R3 K10 [PROTO_0]
  DUPCLOSURE R4 K11 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R4 R2 K12 ["GetStatusCounts"]
  DUPCLOSURE R4 K13 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R4 R2 K14 ["GetStatusMessages"]
  RETURN R2 1
