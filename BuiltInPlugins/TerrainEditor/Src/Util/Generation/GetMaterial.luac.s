PROTO_0:
  GETTABLEKS R3 R0 K0 ["Unit"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["MaterialUnit"]
  GETTABLEKS R4 R5 K2 ["Percentage"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R3 R0 K3 ["MaterialList"]
  JUMPIFNOT R3 [+3]
  LENGTH R4 R3
  JUMPIFNOTEQKN R4 K4 [0] [+3]
  LOADNIL R4
  RETURN R4 1
  GETTABLEKS R4 R1 K5 ["HeightInPercentage"]
  GETTABLEKS R5 R1 K6 ["HeightInStud"]
  GETTABLEKS R6 R1 K7 ["Position"]
  GETTABLEKS R7 R1 K8 ["Slope"]
  NEWTABLE R8 0 0
  MOVE R9 R3
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R14 R13 K9 ["MinHeight"]
  GETTABLEKS R15 R13 K10 ["MaxHeight"]
  JUMPIFNOT R2 [+2]
  MOVE R16 R4
  JUMP [+1]
  MOVE R16 R5
  JUMPIFNOTLE R14 R16 [+10]
  JUMPIFNOTLE R16 R15 [+8]
  FASTCALL2 TABLE_INSERT R8 R13 [+5]
  MOVE R18 R8
  MOVE R19 R13
  GETIMPORT R17 K13 [table.insert]
  CALL R17 2 0
  FORGLOOP R9 2 [-20]
  LENGTH R9 R8
  LOADN R10 0
  JUMPIFNOTLE R9 R10 [+3]
  LOADNIL R9
  RETURN R9 1
  LENGTH R9 R8
  JUMPIFNOTEQKN R9 K14 [1] [+5]
  GETTABLEN R10 R8 1
  GETTABLEKS R9 R10 K15 ["Material"]
  RETURN R9 1
  NEWTABLE R9 0 0
  MOVE R10 R8
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLEKS R15 R14 K16 ["MinSlope"]
  GETTABLEKS R16 R14 K17 ["MaxSlope"]
  JUMPIFNOTLE R15 R7 [+10]
  JUMPIFNOTLE R7 R16 [+8]
  FASTCALL2 TABLE_INSERT R9 R14 [+5]
  MOVE R18 R9
  MOVE R19 R14
  GETIMPORT R17 K13 [table.insert]
  CALL R17 2 0
  FORGLOOP R10 2 [-16]
  LENGTH R10 R9
  JUMPIFNOTEQKN R10 K14 [1] [+5]
  GETTABLEN R11 R9 1
  GETTABLEKS R10 R11 K15 ["Material"]
  RETURN R10 1
  LENGTH R11 R9
  LOADN R12 1
  JUMPIFNOTLT R12 R11 [+3]
  MOVE R10 R9
  JUMP [+1]
  MOVE R10 R8
  GETIMPORT R14 K21 [math.noise]
  GETTABLEKS R15 R6 K22 ["X"]
  GETTABLEKS R16 R6 K23 ["Z"]
  LOADK R17 K24 [0.12345]
  CALL R14 3 1
  LOADN R15 255
  LOADN R16 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R13 K26 [math.clamp]
  CALL R13 3 1
  MULK R12 R13 K18 [0.5]
  ADDK R11 R12 K18 [0.5]
  LENGTH R14 R10
  MUL R13 R11 R14
  FASTCALL1 MATH_CEIL R13 [+2]
  GETIMPORT R12 K28 [math.ceil]
  CALL R12 1 1
  MOVE R11 R12
  GETTABLE R13 R10 R11
  GETTABLEKS R12 R13 K15 ["Material"]
  RETURN R12 1

PROTO_1:
  GETTABLEKS R3 R2 K0 ["BlendingFactor"]
  GETTABLEKS R4 R2 K1 ["EdgePosition"]
  GETTABLEKS R5 R2 K2 ["Width"]
  DIVK R7 R5 K3 [2]
  SUB R6 R4 R7
  DIVK R8 R5 K3 [2]
  ADD R7 R4 R8
  JUMPIFNOTLT R3 R6 [+2]
  RETURN R0 1
  JUMPIFNOTLT R7 R3 [+2]
  RETURN R1 1
  SUB R8 R3 R6
  SUB R9 R7 R6
  DIV R3 R8 R9
  GETIMPORT R8 K6 [math.random]
  CALL R8 0 1
  JUMPIFNOTLT R3 R8 [+3]
  MOVE R9 R0
  RETURN R9 1
  MOVE R9 R1
  RETURN R9 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 2 0
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K9 ["FromPreset"]
  DUPCLOSURE R3 K10 [PROTO_1]
  SETTABLEKS R3 R2 K11 ["Blend"]
  RETURN R2 1
