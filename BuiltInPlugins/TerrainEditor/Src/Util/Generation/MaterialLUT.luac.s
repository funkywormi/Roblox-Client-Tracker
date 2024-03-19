PROTO_0:
  NEWTABLE R4 0 0
  LENGTH R5 R1
  MUL R8 R0 R2
  GETIMPORT R11 K4 [math.random]
  CALL R11 0 1
  MULK R10 R11 K1 [2]
  SUBK R9 R10 K0 [1]
  MUL R7 R8 R9
  ADD R6 R0 R7
  LOADN R9 1
  MOVE R7 R5
  LOADN R8 1
  FORNPREP R7
  GETTABLE R12 R1 R9
  GETTABLEKS R11 R12 K5 ["range"]
  GETTABLEN R10 R11 1
  JUMPIFNOTLE R10 R6 [+16]
  GETTABLE R12 R1 R9
  GETTABLEKS R11 R12 K5 ["range"]
  GETTABLEN R10 R11 2
  JUMPIFNOTLE R6 R10 [+10]
  GETTABLE R13 R1 R9
  GETTABLEKS R12 R13 K6 ["value"]
  FASTCALL2 TABLE_INSERT R4 R12 [+4]
  MOVE R11 R4
  GETIMPORT R10 K9 [table.insert]
  CALL R10 2 0
  FORNLOOP R7
  LENGTH R7 R4
  JUMPIFNOTEQKN R7 K10 [0] [+35]
  JUMPIFNOT R3 [+33]
  GETTABLEN R9 R1 1
  GETTABLEKS R8 R9 K5 ["range"]
  GETTABLEN R7 R8 1
  JUMPIFNOTLT R6 R7 [+9]
  NEWTABLE R7 0 1
  GETTABLEN R9 R1 1
  GETTABLEKS R8 R9 K6 ["value"]
  SETLIST R7 R8 1 [1]
  RETURN R7 1
  GETTABLE R9 R1 R5
  GETTABLEKS R8 R9 K5 ["range"]
  GETTABLEN R7 R8 2
  JUMPIFNOTLT R7 R6 [+9]
  NEWTABLE R7 0 1
  GETTABLE R9 R1 R5
  GETTABLEKS R8 R9 K6 ["value"]
  SETLIST R7 R8 1 [1]
  RETURN R7 1
  LOADK R8 K11 ["Invalid rangeArray in lut creation!"]
  FASTCALL1 ASSERT R8 [+2]
  GETIMPORT R7 K13 [assert]
  CALL R7 1 0
  RETURN R4 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["range"]
  GETTABLEN R2 R3 1
  GETTABLEKS R4 R1 K0 ["range"]
  GETTABLEN R3 R4 1
  JUMPIFNOTEQ R2 R3 [+12]
  GETTABLEKS R4 R0 K0 ["range"]
  GETTABLEN R3 R4 2
  GETTABLEKS R5 R1 K0 ["range"]
  GETTABLEN R4 R5 2
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R4 R0 K0 ["range"]
  GETTABLEN R3 R4 1
  GETTABLEKS R5 R1 K0 ["range"]
  GETTABLEN R4 R5 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETIMPORT R1 K2 [table.create]
  LOADK R2 K3 [1048576]
  CALL R1 1 1
  GETTABLEKS R2 R0 K4 ["isPercentage"]
  GETTABLEKS R3 R0 K5 ["materialList"]
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  GETIMPORT R6 K7 [ipairs]
  MOVE R7 R3
  CALL R6 1 3
  FORGPREP_INEXT R6
  NEWTABLE R11 2 0
  JUMPIFNOT R2 [+60]
  LOADB R13 0
  GETTABLEKS R14 R10 K8 ["minHeight"]
  LOADN R15 1
  JUMPIFNOTLE R14 R15 [+8]
  GETTABLEKS R14 R10 K8 ["minHeight"]
  LOADN R15 0
  JUMPIFLE R15 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  FASTCALL2K ASSERT R13 K9 [+4]
  LOADK R14 K9 ["invalid minimum height input!"]
  GETIMPORT R12 K11 [assert]
  CALL R12 2 0
  LOADB R13 0
  GETTABLEKS R14 R10 K12 ["maxHeight"]
  LOADN R15 1
  JUMPIFNOTLE R14 R15 [+8]
  GETTABLEKS R14 R10 K12 ["maxHeight"]
  LOADN R15 0
  JUMPIFLE R15 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  FASTCALL2K ASSERT R13 K9 [+4]
  LOADK R14 K9 ["invalid minimum height input!"]
  GETIMPORT R12 K11 [assert]
  CALL R12 2 0
  NEWTABLE R12 0 2
  GETTABLEKS R13 R10 K8 ["minHeight"]
  GETTABLEKS R14 R10 K12 ["maxHeight"]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K13 ["range"]
  GETTABLEKS R12 R10 K14 ["material"]
  SETTABLEKS R12 R11 K15 ["value"]
  FASTCALL2 TABLE_INSERT R4 R11 [+5]
  MOVE R13 R4
  MOVE R14 R11
  GETIMPORT R12 K17 [table.insert]
  CALL R12 2 0
  JUMP [+41]
  LOADB R13 0
  GETTABLEKS R14 R10 K8 ["minHeight"]
  GETTABLEKS R15 R10 K12 ["maxHeight"]
  JUMPIFNOTLT R14 R15 [+8]
  GETTABLEKS R14 R10 K8 ["minHeight"]
  LOADN R15 0
  JUMPIFLE R15 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  FASTCALL2K ASSERT R13 K9 [+4]
  LOADK R14 K9 ["invalid minimum height input!"]
  GETIMPORT R12 K11 [assert]
  CALL R12 2 0
  NEWTABLE R12 0 2
  GETTABLEKS R13 R10 K8 ["minHeight"]
  GETTABLEKS R14 R10 K12 ["maxHeight"]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K13 ["range"]
  GETTABLEKS R12 R10 K14 ["material"]
  SETTABLEKS R12 R11 K15 ["value"]
  FASTCALL2 TABLE_INSERT R4 R11 [+5]
  MOVE R13 R4
  MOVE R14 R11
  GETIMPORT R12 K17 [table.insert]
  CALL R12 2 0
  GETTABLEKS R14 R10 K18 ["minSlope"]
  GETTABLEKS R15 R10 K19 ["maxSlope"]
  JUMPIFLT R14 R15 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  FASTCALL2K ASSERT R13 K20 [+4]
  LOADK R14 K20 ["invalid slope input!"]
  GETIMPORT R12 K11 [assert]
  CALL R12 2 0
  LOADB R13 0
  GETTABLEKS R14 R10 K18 ["minSlope"]
  LOADK R15 K21 [1.5707963267949]
  JUMPIFNOTLE R14 R15 [+8]
  GETTABLEKS R14 R10 K18 ["minSlope"]
  LOADN R15 0
  JUMPIFLE R15 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  FASTCALL2K ASSERT R13 K22 [+4]
  LOADK R14 K22 ["invalid minimum slope input!"]
  GETIMPORT R12 K11 [assert]
  CALL R12 2 0
  LOADB R13 0
  GETTABLEKS R14 R10 K19 ["maxSlope"]
  LOADK R15 K21 [1.5707963267949]
  JUMPIFNOTLE R14 R15 [+8]
  GETTABLEKS R14 R10 K19 ["maxSlope"]
  LOADN R15 0
  JUMPIFLE R15 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  FASTCALL2K ASSERT R13 K23 [+4]
  LOADK R14 K23 ["invalid maximum slope input!"]
  GETIMPORT R12 K11 [assert]
  CALL R12 2 0
  NEWTABLE R12 2 0
  NEWTABLE R13 0 2
  GETTABLEKS R14 R10 K18 ["minSlope"]
  GETTABLEKS R15 R10 K19 ["maxSlope"]
  SETLIST R13 R14 2 [1]
  SETTABLEKS R13 R12 K13 ["range"]
  GETTABLEKS R13 R10 K14 ["material"]
  SETTABLEKS R13 R12 K15 ["value"]
  FASTCALL2 TABLE_INSERT R5 R12 [+5]
  MOVE R14 R5
  MOVE R15 R12
  GETIMPORT R13 K17 [table.insert]
  CALL R13 2 0
  FORGLOOP R6 2 [inext] [-180]
  GETIMPORT R6 K25 [table.sort]
  MOVE R7 R4
  GETUPVAL R8 0
  CALL R6 2 0
  GETIMPORT R6 K25 [table.sort]
  MOVE R7 R5
  GETUPVAL R8 0
  CALL R6 2 0
  LOADN R6 1
  LOADN R7 0
  JUMPIF R2 [+19]
  LENGTH R10 R4
  GETTABLE R9 R4 R10
  GETTABLEKS R8 R9 K13 ["range"]
  GETTABLEN R6 R8 2
  GETTABLEN R9 R4 1
  GETTABLEKS R8 R9 K13 ["range"]
  GETTABLEN R7 R8 1
  JUMPIFLT R7 R6 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K26 [+4]
  LOADK R10 K26 ["Invalid height range!"]
  GETIMPORT R8 K11 [assert]
  CALL R8 2 0
  LOADN R10 1
  LOADN R8 0
  LOADN R9 1
  FORNPREP R8
  DIVK R11 R10 K27 [1024]
  GETUPVAL R12 1
  SUB R15 R6 R7
  MUL R14 R11 R15
  ADD R13 R14 R7
  MOVE R14 R4
  LOADK R15 K28 [0.1]
  LOADB R16 1
  CALL R12 4 1
  LOADN R15 1
  LOADN R13 0
  LOADN R14 1
  FORNPREP R13
  JUMPIFNOT R12 [+3]
  LENGTH R16 R12
  JUMPIFNOTEQKN R16 K29 [0] [+7]
  LOADK R17 K30 ["Invalid heightMat in lut creation!"]
  FASTCALL1 ASSERT R17 [+2]
  GETIMPORT R16 K11 [assert]
  CALL R16 1 0
  JUMP [+34]
  LENGTH R16 R12
  JUMPIFNOTEQKN R16 K31 [1] [+7]
  SUBK R18 R10 K31 [1]
  MULK R17 R18 K27 [1024]
  ADD R16 R17 R15
  GETTABLEN R17 R12 1
  SETTABLE R17 R1 R16
  JUMP [+25]
  DIVK R17 R15 K27 [1024]
  MULK R16 R17 K21 [1.5707963267949]
  GETUPVAL R17 1
  MOVE R18 R16
  MOVE R19 R5
  LOADK R20 K28 [0.1]
  LOADB R21 0
  CALL R17 4 1
  JUMPIFNOT R17 [+6]
  LENGTH R19 R17
  LOADN R20 0
  JUMPIFNOTLT R20 R19 [+3]
  MOVE R18 R17
  JUMP [+1]
  MOVE R18 R12
  GETIMPORT R19 K34 [math.random]
  LENGTH R20 R18
  CALL R19 1 1
  SUBK R22 R10 K31 [1]
  MULK R21 R22 K27 [1024]
  ADD R20 R21 R15
  GETTABLE R21 R18 R19
  SETTABLE R21 R1 R20
  FORNLOOP R13
  FORNLOOP R8
  NEWTABLE R9 8 0
  GETUPVAL R10 2
  FASTCALL2 SETMETATABLE R9 R10 [+3]
  GETIMPORT R8 K36 [setmetatable]
  CALL R8 2 1
  SETTABLEKS R1 R8 K37 ["_lut"]
  SETTABLEKS R2 R8 K38 ["_isPercentage"]
  NEWTABLE R9 0 2
  LOADN R10 0
  LOADN R11 0
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K39 ["_resolution"]
  GETTABLEKS R9 R8 K38 ["_isPercentage"]
  JUMPIFNOT R9 [+5]
  GETTABLEKS R9 R8 K40 ["_getValuePercentage"]
  SETTABLEKS R9 R8 K41 ["GetValue"]
  JUMP [+4]
  GETTABLEKS R9 R8 K42 ["_getValueSize"]
  SETTABLEKS R9 R8 K41 ["GetValue"]
  SETTABLEKS R6 R8 K43 ["_maxHeight"]
  SETTABLEKS R7 R8 K44 ["_minHeight"]
  SUB R9 R6 R7
  SETTABLEKS R9 R8 K45 ["_heightRange"]
  RETURN R8 1

PROTO_3:
  DIV R8 R1 R2
  MULK R7 R8 K1 [1024]
  FASTCALL1 MATH_FLOOR R7 [+2]
  GETIMPORT R6 K4 [math.floor]
  CALL R6 1 1
  ADDK R5 R6 K0 [1]
  FASTCALL2K MATH_MIN R5 K1 [+4]
  LOADK R6 K1 [1024]
  GETIMPORT R4 K6 [math.min]
  CALL R4 2 1
  DIVK R9 R3 K7 [1.5707963267949]
  MULK R8 R9 K1 [1024]
  FASTCALL1 MATH_FLOOR R8 [+2]
  GETIMPORT R7 K4 [math.floor]
  CALL R7 1 1
  ADDK R6 R7 K0 [1]
  FASTCALL2K MATH_MIN R6 K1 [+4]
  LOADK R7 K1 [1024]
  GETIMPORT R5 K6 [math.min]
  CALL R5 2 1
  GETTABLEKS R7 R0 K8 ["_lut"]
  SUBK R10 R4 K0 [1]
  MULK R9 R10 K1 [1024]
  ADD R8 R9 R5
  GETTABLE R6 R7 R8
  RETURN R6 1

PROTO_4:
  GETTABLEKS R10 R0 K1 ["_minHeight"]
  SUB R9 R1 R10
  GETTABLEKS R10 R0 K2 ["_heightRange"]
  DIV R8 R9 R10
  LOADN R9 0
  LOADN R10 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K5 [math.clamp]
  CALL R7 3 1
  MULK R6 R7 K0 [1024]
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K7 [math.floor]
  CALL R5 1 1
  FASTCALL2K MATH_MAX R5 K8 [+4]
  LOADK R6 K8 [1]
  GETIMPORT R4 K10 [math.max]
  CALL R4 2 1
  DIVK R9 R3 K11 [1.5707963267949]
  MULK R8 R9 K0 [1024]
  FASTCALL1 MATH_FLOOR R8 [+2]
  GETIMPORT R7 K7 [math.floor]
  CALL R7 1 1
  ADDK R6 R7 K8 [1]
  FASTCALL2K MATH_MIN R6 K0 [+4]
  LOADK R7 K0 [1024]
  GETIMPORT R5 K13 [math.min]
  CALL R5 2 1
  GETTABLEKS R7 R0 K14 ["_lut"]
  SUBK R10 R4 K8 [1]
  MULK R9 R10 K0 [1024]
  ADD R8 R9 R5
  GETTABLE R6 R7 R8
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  SETTABLEKS R0 R0 K0 ["__index"]
  GETIMPORT R1 K2 [script]
  LOADK R3 K3 ["TerrainEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R1 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagUseMaterialLUT"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_0]
  DUPCLOSURE R4 K11 [PROTO_1]
  DUPCLOSURE R5 K12 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K13 ["new"]
  DUPCLOSURE R5 K14 [PROTO_3]
  SETTABLEKS R5 R0 K15 ["_getValuePercentage"]
  DUPCLOSURE R5 K16 [PROTO_4]
  SETTABLEKS R5 R0 K17 ["_getValueSize"]
  RETURN R0 1
