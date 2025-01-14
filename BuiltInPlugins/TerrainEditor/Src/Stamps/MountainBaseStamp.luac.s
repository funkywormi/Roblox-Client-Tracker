PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 1

PROTO_1:
  SETTABLEKS R1 R0 K0 ["_hillOption"]
  JUMPIFNOT R2 [+12]
  GETTABLEKS R4 R2 K1 ["frequency"]
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+8]
  GETTABLEKS R4 R2 K2 ["amplitude"]
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+3]
  LOADB R3 1
  JUMP [+1]
  LOADB R3 0
  GETIMPORT R4 K5 [table.create]
  GETTABLEKS R5 R0 K6 ["_mapSize"]
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R0 K7 ["_noiseMap"]
  JUMPIFNOT R3 [+7]
  GETIMPORT R4 K5 [table.create]
  GETTABLEKS R5 R0 K6 ["_mapSize"]
  LOADN R6 0
  CALL R4 2 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R0 K8 ["_hillMacroNoiseMap"]
  LOADN R6 1
  GETTABLEKS R4 R0 K9 ["_sliceX"]
  LOADN R5 1
  FORNPREP R4
  LOADN R9 1
  GETTABLEKS R7 R0 K10 ["_sliceZ"]
  LOADN R8 1
  FORNPREP R7
  MOVE R12 R6
  MOVE R13 R9
  NAMECALL R10 R0 K11 ["getGaussianHillHeight"]
  CALL R10 3 1
  MOVE R13 R6
  MOVE R14 R9
  NAMECALL R11 R0 K12 ["getIndex"]
  CALL R11 3 1
  GETTABLEKS R12 R0 K7 ["_noiseMap"]
  SETTABLE R10 R12 R11
  JUMPIFNOT R2 [+10]
  MOVE R14 R6
  MOVE R15 R9
  MOVE R16 R2
  NAMECALL R12 R0 K11 ["getGaussianHillHeight"]
  CALL R12 4 1
  GETTABLEKS R13 R0 K8 ["_hillMacroNoiseMap"]
  SUB R14 R12 R10
  SETTABLE R14 R13 R11
  FORNLOOP R7
  FORNLOOP R4
  RETURN R0 0

PROTO_2:
  GETTABLEKS R5 R0 K0 ["_hillOption"]
  GETTABLEKS R4 R5 K1 ["centerPosPercent"]
  JUMPIF R4 [+1]
  GETUPVAL R4 0
  GETTABLEKS R6 R0 K0 ["_hillOption"]
  GETTABLEKS R5 R6 K2 ["hillHeight"]
  GETTABLEKS R7 R0 K0 ["_hillOption"]
  GETTABLEKS R6 R7 K3 ["hillWidth"]
  GETIMPORT R7 K6 [Vector2.new]
  GETTABLEKS R9 R0 K7 ["_sliceX"]
  DIV R8 R1 R9
  GETTABLEKS R10 R0 K8 ["_sliceZ"]
  DIV R9 R2 R10
  CALL R7 2 1
  SUB R9 R7 R4
  GETTABLEKS R8 R9 K9 ["magnitude"]
  LOADN R9 0
  JUMPIFNOT R3 [+31]
  GETTABLEKS R10 R3 K10 ["frequency"]
  GETTABLEKS R11 R3 K11 ["amplitude"]
  GETTABLEKS R12 R3 K12 ["offset"]
  GETTABLEKS R14 R3 K14 ["seed"]
  ORK R13 R14 K13 [12345]
  GETTABLEKS R14 R0 K15 ["_getRotatedPoint"]
  SUBK R15 R1 K16 [0.5]
  SUBK R16 R2 K16 [0.5]
  CALL R14 2 2
  GETUPVAL R18 1
  MUL R17 R14 R18
  GETTABLEKS R18 R12 K17 ["X"]
  SUB R16 R17 R18
  GETUPVAL R19 1
  MUL R18 R15 R19
  GETTABLEKS R19 R12 K18 ["Y"]
  SUB R17 R18 R19
  GETIMPORT R18 K21 [math.noise]
  MUL R19 R10 R16
  MUL R20 R10 R17
  MOVE R21 R13
  CALL R18 3 1
  MUL R9 R11 R18
  ADD R10 R8 R9
  MUL R15 R10 R10
  MINUS R14 R15
  LOADN R17 2
  MUL R16 R17 R6
  MUL R15 R16 R6
  DIV R13 R14 R15
  FASTCALL1 MATH_EXP R13 [+2]
  GETIMPORT R12 K23 [math.exp]
  CALL R12 1 1
  MUL R11 R5 R12
  RETURN R11 1

PROTO_3:
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  JUMPIFNOT R3 [+35]
  SUBK R8 R1 K0 [1]
  LOADN R9 1
  GETTABLEKS R10 R0 K1 ["_sliceX"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K4 [math.clamp]
  CALL R7 3 1
  SUBK R9 R2 K0 [1]
  LOADN R10 1
  GETTABLEKS R11 R0 K5 ["_sliceZ"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K4 [math.clamp]
  CALL R8 3 1
  MOVE R11 R1
  MOVE R12 R2
  NAMECALL R9 R0 K6 ["getIndex"]
  CALL R9 3 1
  GETTABLE R4 R3 R9
  MOVE R11 R7
  MOVE R12 R2
  NAMECALL R9 R0 K6 ["getIndex"]
  CALL R9 3 1
  GETTABLE R5 R3 R9
  MOVE R11 R1
  MOVE R12 R8
  NAMECALL R9 R0 K6 ["getIndex"]
  CALL R9 3 1
  GETTABLE R6 R3 R9
  JUMP [+18]
  MOVE R9 R1
  MOVE R10 R2
  NAMECALL R7 R0 K7 ["getGaussianHillHeight"]
  CALL R7 3 1
  MOVE R4 R7
  SUBK R9 R1 K0 [1]
  MOVE R10 R2
  NAMECALL R7 R0 K7 ["getGaussianHillHeight"]
  CALL R7 3 1
  MOVE R5 R7
  MOVE R9 R1
  SUBK R10 R2 K0 [1]
  NAMECALL R7 R0 K7 ["getGaussianHillHeight"]
  CALL R7 3 1
  MOVE R6 R7
  SUB R8 R4 R5
  GETUPVAL R9 0
  DIV R7 R8 R9
  SUB R9 R4 R6
  GETUPVAL R10 0
  DIV R8 R9 R10
  RETURN R7 2

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["NoiseScale"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K0 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["NoiseStrength"]
  GETTABLE R2 R3 R4
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["AdvancedNoise"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K4 ["Children"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["Offset"]
  GETTABLE R3 R4 R5
  GETTABLEKS R9 R0 K0 ["_payload"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["BuildSettings"]
  GETTABLE R8 R9 R10
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["AdvancedNoise"]
  GETTABLE R7 R8 R9
  GETTABLEKS R6 R7 K4 ["Children"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["Seed"]
  GETTABLE R5 R6 R7
  MULK R4 R5 K7 [3.14159265358979]
  NEWTABLE R5 0 4
  LOADK R6 K9 [0.003]
  LOADK R7 K10 [0.008]
  LOADK R8 K11 [0.016]
  LOADK R9 K12 [0.04]
  SETLIST R5 R6 4 [1]
  NEWTABLE R6 0 4
  LOADK R7 K13 [0.1]
  LOADK R8 K14 [0.05]
  LOADK R9 K15 [0.02]
  LOADK R10 K16 [0.0125]
  SETLIST R6 R7 4 [1]
  MULK R7 R1 K17 [10]
  GETIMPORT R8 K20 [Instance.new]
  LOADK R9 K21 ["Noise"]
  CALL R8 1 1
  GETIMPORT R9 K25 [Enum.NoiseType.SimplexGabor]
  SETTABLEKS R9 R8 K23 ["NoiseType"]
  SETTABLEKS R4 R8 K8 ["Seed"]
  GETIMPORT R9 K28 [table.create]
  GETTABLEKS R11 R0 K29 ["_noiseMap"]
  LENGTH R10 R11
  LOADN R11 0
  CALL R9 2 1
  LOADN R12 1
  LOADN R10 4
  LOADN R11 1
  FORNPREP R10
  LOADN R15 1
  LENGTH R13 R9
  LOADN R14 1
  FORNPREP R13
  GETTABLEKS R17 R0 K29 ["_noiseMap"]
  GETTABLE R16 R17 R15
  SETTABLE R16 R9 R15
  FORNLOOP R13
  LOADN R15 1
  GETTABLEKS R13 R0 K30 ["_sliceX"]
  LOADN R14 1
  FORNPREP R13
  LOADN R18 1
  GETTABLEKS R16 R0 K31 ["_sliceZ"]
  LOADN R17 1
  FORNPREP R16
  GETTABLEKS R19 R0 K32 ["_getRotatedPoint"]
  SUBK R20 R15 K33 [0.5]
  SUBK R21 R18 K33 [0.5]
  CALL R19 2 2
  GETUPVAL R23 2
  MUL R22 R19 R23
  GETTABLEKS R23 R3 K34 ["X"]
  SUB R21 R22 R23
  GETUPVAL R24 2
  MUL R23 R20 R24
  GETTABLEKS R24 R3 K35 ["Y"]
  SUB R22 R23 R24
  MOVE R26 R21
  LOADN R27 0
  MOVE R28 R22
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K37 [Vector3.new]
  CALL R25 3 1
  GETTABLE R26 R5 R12
  MUL R24 R25 R26
  MUL R23 R24 R7
  LOADN R24 0
  LOADN R25 0
  JUMPIFNOTEQKN R12 K38 [1] [+9]
  MOVE R28 R19
  MOVE R29 R20
  NAMECALL R26 R0 K39 ["getHeightGradient"]
  CALL R26 3 2
  MOVE R24 R26
  MOVE R25 R27
  JUMP [+8]
  MOVE R28 R15
  MOVE R29 R18
  MOVE R30 R9
  NAMECALL R26 R0 K39 ["getHeightGradient"]
  CALL R26 4 2
  MOVE R24 R26
  MOVE R25 R27
  MINUS R28 R25
  LOADN R29 0
  MOVE R30 R24
  FASTCALL VECTOR [+2]
  GETIMPORT R27 K37 [Vector3.new]
  CALL R27 3 1
  MULK R26 R27 K40 [2000]
  MOVE R29 R23
  MOVE R30 R26
  NAMECALL R27 R8 K41 ["SampleDirectional"]
  CALL R27 3 1
  GETTABLE R29 R6 R12
  MUL R28 R29 R2
  MUL R27 R27 R28
  MOVE R30 R15
  MOVE R31 R18
  NAMECALL R28 R0 K42 ["getIndex"]
  CALL R28 3 1
  GETTABLEKS R29 R0 K29 ["_noiseMap"]
  GETTABLE R30 R29 R28
  ADD R30 R30 R27
  SETTABLE R30 R29 R28
  FORNLOOP R16
  FORNLOOP R13
  FORNLOOP R10
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_hillMacroNoiseMap"]
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADN R3 1
  GETTABLEKS R4 R0 K1 ["_noiseMap"]
  LENGTH R1 R4
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R4 R0 K1 ["_noiseMap"]
  GETTABLE R5 R4 R3
  GETTABLEKS R7 R0 K0 ["_hillMacroNoiseMap"]
  GETTABLE R6 R7 R3
  ADD R5 R5 R6
  SETTABLE R5 R4 R3
  FORNLOOP R1
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_mapSize"]
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_heightMapFromNoise"]
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_mapSize"]
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R6 R0 K5 ["_noiseMap"]
  GETTABLE R5 R6 R3
  LOADN R6 255
  LOADN R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K8 [math.clamp]
  CALL R4 3 1
  GETTABLEKS R6 R0 K9 ["_sliceY"]
  MUL R5 R6 R4
  GETTABLEKS R6 R0 K4 ["_heightMapFromNoise"]
  MOVE R8 R5
  LOADN R9 0
  GETTABLEKS R10 R0 K9 ["_sliceY"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K8 [math.clamp]
  CALL R7 3 1
  SETTABLE R7 R6 R3
  FORNLOOP R1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["BaseStamp"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["VoxelResolution"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["BuildSettings"]
  GETTABLEKS R6 R4 K14 ["Category"]
  GETTABLEKS R7 R4 K15 ["TerrainType"]
  GETIMPORT R8 K18 [Vector2.new]
  LOADK R9 K19 [0.5]
  LOADK R10 K19 [0.5]
  CALL R8 2 1
  GETTABLEKS R11 R7 K20 ["None"]
  NAMECALL R9 R1 K17 ["new"]
  CALL R9 2 1
  DUPCLOSURE R10 K21 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K22 ["init"]
  DUPCLOSURE R10 K23 [PROTO_1]
  SETTABLEKS R10 R9 K24 ["generateHill"]
  DUPCLOSURE R10 K25 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K26 ["getGaussianHillHeight"]
  DUPCLOSURE R10 K27 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K28 ["getHeightGradient"]
  DUPCLOSURE R10 K29 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K30 ["addErosion"]
  DUPCLOSURE R10 K31 [PROTO_5]
  SETTABLEKS R10 R9 K32 ["addMacroNoise"]
  DUPCLOSURE R10 K33 [PROTO_6]
  SETTABLEKS R10 R9 K34 ["generateHeightMap"]
  RETURN R9 1
