PROTO_0:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K0 ["FromText"]
  JUMPIFEQKS R7 K1 [""] [+14]
  GETTABLEKS R7 R6 K2 ["ToText"]
  JUMPIFEQKS R7 K1 [""] [+10]
  GETTABLEKS R7 R6 K3 ["Enabled"]
  JUMPIFEQKB R7 FALSE [+6]
  GETTABLEKS R7 R6 K0 ["FromText"]
  GETTABLEKS R8 R6 K2 ["ToText"]
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-18]
  RETURN R1 1

PROTO_1:
  LOADN R1 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LENGTH R7 R6
  ADD R1 R1 R7
  FORGLOOP R2 2 [-3]
  RETURN R1 1

PROTO_2:
  GETTABLE R10 R4 R2
  JUMPIFNOT R3 [+9]
  LENGTH R11 R3
  JUMPIFNOTEQKN R11 K0 [1] [+7]
  GETTABLEN R10 R3 1
  GETTABLEKS R11 R6 K1 ["autoConverted"]
  ADDK R11 R11 K0 [1]
  SETTABLEKS R11 R6 K1 ["autoConverted"]
  JUMPIF R10 [+19]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K2 ["ReferenceKey"]
  JUMPIFNOTEQ R9 R13 [+3]
  LOADK R12 K3 ["failedVar"]
  JUMP [+1]
  LOADK R12 K4 ["failed"]
  GETTABLE R11 R6 R12
  GETTABLE R12 R11 R0
  JUMPIF R12 [+3]
  NEWTABLE R12 0 0
  SETTABLE R12 R11 R0
  GETTABLE R12 R11 R0
  LOADB R13 1
  SETTABLE R13 R12 R2
  LOADB R12 0
  RETURN R12 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["replaceWithSuggestion"]
  MOVE R12 R0
  MOVE R13 R1
  MOVE R14 R5
  MOVE R15 R10
  MOVE R16 R7
  MOVE R17 R8
  CALL R11 6 0
  LOADB R11 1
  RETURN R11 1

PROTO_3:
  GETIMPORT R9 K1 [next]
  MOVE R10 R3
  CALL R9 1 1
  MOVE R10 R3
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLE R15 R7 R13
  MOVE R16 R14
  LOADNIL R17
  LOADNIL R18
  FORGPREP R16
  NAMECALL R21 R1 K2 ["updateProgress"]
  CALL R21 1 0
  GETUPVAL R21 0
  MOVE R22 R13
  GETTABLEKS R23 R20 K3 ["range"]
  GETTABLEKS R24 R20 K4 ["instanceName"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R25 R20 K5 ["suggestions"]
  JUMP [+1]
  LOADNIL R25
  MOVE R26 R6
  MOVE R27 R2
  MOVE R28 R4
  MOVE R29 R15
  MOVE R30 R8
  GETTABLEKS R31 R20 K6 ["issueType"]
  CALL R21 10 1
  JUMPIFNOT R21 [+5]
  GETTABLEKS R21 R4 K7 ["succeeded"]
  ADDK R21 R21 K8 [1]
  SETTABLEKS R21 R4 K7 ["succeeded"]
  FORGLOOP R16 2 [-29]
  JUMPIFEQ R13 R9 [+5]
  MOVE R18 R13
  NAMECALL R16 R2 K9 ["closeScriptIfOpen"]
  CALL R16 2 0
  FORGLOOP R10 2 [-42]
  JUMPIFNOT R9 [+4]
  MOVE R12 R9
  NAMECALL R10 R2 K9 ["closeScriptIfOpen"]
  CALL R10 2 0
  RETURN R0 0

PROTO_4:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["ScriptConversion"]
  GETTABLEKS R2 R3 K2 ["selection"]
  GETTABLEKS R4 R1 K1 ["ScriptConversion"]
  GETTABLEKS R3 R4 K3 ["diagnostics"]
  GETUPVAL R4 0
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R4 K4 ["sortSelectionForConversion"]
  CALL R4 3 1
  DUPTABLE R5 K9 [{"autoConverted", "succeeded", "failed", "failedVar"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K5 ["autoConverted"]
  LOADN R6 0
  SETTABLEKS R6 R5 K6 ["succeeded"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K7 ["failed"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K8 ["failedVar"]
  GETUPVAL R6 1
  GETTABLEKS R8 R1 K1 ["ScriptConversion"]
  GETTABLEKS R7 R8 K10 ["replaceRules"]
  CALL R6 1 1
  LOADN R8 0
  MOVE R9 R4
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  LENGTH R14 R13
  ADD R8 R8 R14
  FORGLOOP R9 2 [-3]
  MOVE R7 R8
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+26]
  LOADK R8 K11 ["ReplaceWithRules"]
  GETUPVAL R9 2
  JUMPIFNOT R9 [+1]
  LOADK R8 K12 ["Convert"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K13 ["new"]
  MOVE R10 R8
  MOVE R11 R7
  MOVE R12 R0
  CALL R9 3 1
  GETUPVAL R10 4
  MOVE R11 R1
  MOVE R12 R9
  GETUPVAL R13 5
  MOVE R14 R4
  MOVE R15 R5
  GETUPVAL R16 2
  MOVE R17 R6
  MOVE R18 R3
  GETUPVAL R19 6
  CALL R10 9 0
  NAMECALL R10 R9 K14 ["clearProgressBar"]
  CALL R10 1 0
  DUPTABLE R8 K16 [{"replaceResult"}]
  SETTABLEKS R5 R8 K15 ["replaceResult"]
  GETUPVAL R11 7
  MOVE R12 R8
  CALL R11 1 -1
  NAMECALL R9 R0 K17 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R9 6
  LOADK R11 K18 ["onScriptConvertSelection"]
  NAMECALL R9 R9 K19 ["getHandler"]
  CALL R9 2 1
  MOVE R10 R8
  MOVE R11 R6
  CALL R9 2 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Actions"]
  GETTABLEKS R2 R3 K8 ["SetProcessResult"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["ScriptReplacement"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["ScriptIssueSorting"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["ScriptConversionProgressTracker"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K9 ["Util"]
  GETTABLEKS R7 R8 K13 ["ScriptAnalysis"]
  GETTABLEKS R6 R7 K14 ["Constants"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  DUPCLOSURE R7 K16 [PROTO_1]
  DUPCLOSURE R8 K17 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R2
  DUPCLOSURE R9 K18 [PROTO_3]
  CAPTURE VAL R8
  DUPCLOSURE R10 K19 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R1
  RETURN R10 1
