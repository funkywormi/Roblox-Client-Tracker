PROTO_0:
  GETTABLEKS R3 R0 K0 ["Payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["BrushSize"]
  GETTABLE R3 R2 R4
  GETTABLEKS R4 R3 K3 ["Height"]
  GETTABLEKS R5 R3 K4 ["Size"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["BrushShape"]
  GETTABLE R6 R2 R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["State"]
  GETTABLE R7 R2 R8
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["Sphere"]
  JUMPIFNOTEQ R6 R10 [+3]
  MOVE R9 R5
  JUMP [+1]
  MOVE R9 R4
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["VoxelResolution"]
  MUL R8 R9 R10
  GETUPVAL R9 4
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["PivotPosition"]
  GETTABLE R10 R2 R11
  GETTABLEKS R11 R7 K10 ["Position"]
  MOVE R12 R8
  CALL R9 3 1
  DUPTABLE R10 K11 [{"Position"}]
  SETTABLEKS R9 R10 K10 ["Position"]
  SETTABLEKS R10 R0 K6 ["State"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to step without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K0 ["State"]
  GETTABLEKS R4 R0 K4 ["Payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["BrushSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["BrushSize"]
  GETTABLE R4 R3 R5
  GETTABLEKS R5 R4 K7 ["Height"]
  GETTABLEKS R6 R4 K8 ["Size"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["BrushShape"]
  GETTABLE R7 R3 R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["State"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K10 ["IgnoreWater"]
  GETTABLE R9 R3 R10
  GETTABLEKS R11 R0 K4 ["Payload"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["MaterialSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K12 ["MaterialMode"]
  GETTABLE R11 R10 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K13 ["SourceMaterial"]
  GETTABLE R12 R10 R13
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K14 ["TargetMaterial"]
  GETTABLE R13 R10 R14
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K15 ["Sphere"]
  JUMPIFNOTEQ R7 R16 [+3]
  MOVE R15 R6
  JUMP [+1]
  MOVE R15 R5
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["VoxelResolution"]
  MUL R14 R15 R16
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["VoxelResolution"]
  MUL R15 R6 R16
  MULK R16 R15 K17 [0.5]
  GETUPVAL R17 5
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K18 ["PivotPosition"]
  GETTABLE R18 R3 R19
  GETTABLEKS R19 R8 K19 ["Position"]
  MOVE R20 R14
  CALL R17 3 1
  GETUPVAL R18 6
  GETTABLEKS R19 R2 K19 ["Position"]
  MOVE R20 R17
  MOVE R21 R16
  CALL R18 3 1
  LENGTH R20 R18
  GETTABLE R19 R18 R20
  SETTABLEKS R19 R2 K19 ["Position"]
  MOVE R19 R18
  LOADNIL R20
  LOADNIL R21
  FORGPREP R19
  GETUPVAL R24 7
  MOVE R25 R23
  MOVE R26 R16
  MOVE R27 R14
  CALL R24 3 2
  GETIMPORT R26 K22 [Region3.new]
  MOVE R27 R24
  MOVE R28 R25
  CALL R26 2 1
  GETTABLEKS R29 R25 K23 ["X"]
  GETTABLEKS R30 R24 K23 ["X"]
  SUB R28 R29 R30
  MULK R27 R28 K17 [0.5]
  GETUPVAL R29 8
  GETTABLEKS R28 R29 K24 ["Terrain"]
  MOVE R30 R26
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K16 ["VoxelResolution"]
  NAMECALL R28 R28 K25 ["ReadVoxels"]
  CALL R28 3 2
  LOADNIL R30
  SETTABLEKS R30 R28 K8 ["Size"]
  LOADNIL R30
  SETTABLEKS R30 R29 K8 ["Size"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 0
  NEWTABLE R32 0 0
  NEWTABLE R33 0 0
  MOVE R34 R29
  LOADNIL R35
  LOADNIL R36
  FORGPREP R34
  GETTABLEKS R41 R24 K23 ["X"]
  SUBK R43 R37 K17 [0.5]
  GETUPVAL R45 4
  GETTABLEKS R44 R45 K16 ["VoxelResolution"]
  MUL R42 R43 R44
  ADD R40 R41 R42
  GETTABLEKS R41 R23 K23 ["X"]
  SUB R39 R40 R41
  NEWTABLE R40 0 0
  SETTABLE R40 R30 R37
  NEWTABLE R40 0 0
  SETTABLE R40 R31 R37
  NEWTABLE R40 0 0
  SETTABLE R40 R32 R37
  NEWTABLE R40 0 0
  SETTABLE R40 R33 R37
  MOVE R40 R38
  LOADNIL R41
  LOADNIL R42
  FORGPREP R40
  GETTABLEKS R47 R24 K26 ["Y"]
  SUBK R49 R43 K17 [0.5]
  GETUPVAL R51 4
  GETTABLEKS R50 R51 K16 ["VoxelResolution"]
  MUL R48 R49 R50
  ADD R46 R47 R48
  GETTABLEKS R47 R23 K26 ["Y"]
  SUB R45 R46 R47
  GETTABLE R46 R30 R37
  NEWTABLE R47 0 0
  SETTABLE R47 R46 R43
  GETTABLE R46 R31 R37
  NEWTABLE R47 0 0
  SETTABLE R47 R46 R43
  GETTABLE R46 R32 R37
  NEWTABLE R47 0 0
  SETTABLE R47 R46 R43
  GETTABLE R46 R33 R37
  NEWTABLE R47 0 0
  SETTABLE R47 R46 R43
  MOVE R46 R44
  LOADNIL R47
  LOADNIL R48
  FORGPREP R46
  MOVE R52 R37
  MOVE R53 R43
  MOVE R54 R49
  FASTCALL VECTOR [+2]
  GETIMPORT R51 K28 [Vector3.new]
  CALL R51 3 1
  GETTABLE R54 R28 R37
  GETTABLE R53 R54 R43
  GETTABLE R52 R53 R49
  MOVE R54 R39
  MOVE R55 R45
  GETTABLEKS R58 R24 K29 ["Z"]
  SUBK R60 R49 K17 [0.5]
  GETUPVAL R62 4
  GETTABLEKS R61 R62 K16 ["VoxelResolution"]
  MUL R59 R60 R61
  ADD R57 R58 R59
  GETTABLEKS R58 R23 K29 ["Z"]
  SUB R56 R57 R58
  FASTCALL VECTOR [+2]
  GETIMPORT R53 K28 [Vector3.new]
  CALL R53 3 1
  GETUPVAL R54 9
  MOVE R55 R53
  MOVE R56 R6
  MOVE R57 R7
  MOVE R58 R27
  CALL R54 4 2
  LOADN R56 20
  JUMPIFNOTLT R56 R6 [+4]
  SUBK R57 R6 K31 [20]
  DIVK R56 R57 K30 [5]
  MUL R55 R55 R56
  GETTABLE R57 R32 R37
  GETTABLE R56 R57 R43
  GETIMPORT R57 K35 [Enum.Material.Air]
  SETTABLE R57 R56 R49
  GETTABLE R57 R33 R37
  GETTABLE R56 R57 R43
  LOADN R57 0
  SETTABLE R57 R56 R49
  LOADN R56 0
  JUMPIFNOTLT R56 R54 [+42]
  JUMPIFNOT R9 [+4]
  GETIMPORT R56 K37 [Enum.Material.Water]
  JUMPIFEQ R52 R56 [+37]
  GETUPVAL R57 10
  GETTABLEKS R56 R57 K38 ["Paint"]
  JUMPIFNOTEQ R11 R56 [+8]
  GETTABLE R57 R31 R37
  GETTABLE R56 R57 R43
  SETTABLE R50 R56 R49
  GETTABLE R57 R30 R37
  GETTABLE R56 R57 R43
  SETTABLE R12 R56 R49
  JUMP [+30]
  GETUPVAL R57 10
  GETTABLEKS R56 R57 K39 ["Replace"]
  JUMPIFNOTEQ R11 R56 [+26]
  GETTABLE R57 R31 R37
  GETTABLE R56 R57 R43
  GETIMPORT R58 K35 [Enum.Material.Air]
  JUMPIFNOTEQ R12 R58 [+3]
  LOADN R57 1
  JUMP [+1]
  MOVE R57 R50
  SETTABLE R57 R56 R49
  GETTABLE R57 R30 R37
  GETTABLE R56 R57 R43
  JUMPIFNOTEQ R12 R52 [+3]
  MOVE R57 R13
  JUMP [+1]
  MOVE R57 R52
  SETTABLE R57 R56 R49
  JUMP [+6]
  GETTABLE R57 R31 R37
  GETTABLE R56 R57 R43
  SETTABLE R50 R56 R49
  GETTABLE R57 R30 R37
  GETTABLE R56 R57 R43
  SETTABLE R52 R56 R49
  FORGLOOP R46 2 [-99]
  FORGLOOP R40 2 [-132]
  FORGLOOP R34 2 [-161]
  GETIMPORT R34 K37 [Enum.Material.Water]
  JUMPIFEQ R12 R34 [+5]
  GETIMPORT R34 K37 [Enum.Material.Water]
  JUMPIFNOTEQ R13 R34 [+13]
  GETUPVAL R35 8
  GETTABLEKS R34 R35 K24 ["Terrain"]
  MOVE R36 R26
  GETUPVAL R38 4
  GETTABLEKS R37 R38 K16 ["VoxelResolution"]
  MOVE R38 R32
  MOVE R39 R33
  NAMECALL R34 R34 K40 ["WriteVoxels"]
  CALL R34 5 0
  GETUPVAL R35 8
  GETTABLEKS R34 R35 K24 ["Terrain"]
  MOVE R36 R26
  GETUPVAL R38 4
  GETTABLEKS R37 R38 K16 ["VoxelResolution"]
  MOVE R38 R30
  MOVE R39 R31
  NAMECALL R34 R34 K40 ["WriteVoxels"]
  CALL R34 5 0
  FORGLOOP R19 2 [-239]
  LOADB R19 1
  LOADN R20 0
  RETURN R19 2

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChangeHistoryService"]
  LOADK R4 K1 ["Paint"]
  NAMECALL R2 R2 K2 ["SetWaypoint"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K1 ["new"]
  DUPTABLE R6 K7 [{"Budget", "OnFinish", "OnStart", "OnStep", "Name"}]
  LOADK R7 K8 [0.005]
  SETTABLEKS R7 R6 K2 ["Budget"]
  SETTABLEKS R4 R6 K3 ["OnFinish"]
  SETTABLEKS R2 R6 K4 ["OnStart"]
  SETTABLEKS R3 R6 K5 ["OnStep"]
  SETTABLEKS R0 R6 K6 ["Name"]
  CALL R5 1 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K9 ["Util"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R2 K10 ["Operations"]
  GETTABLEKS R4 R5 K11 ["BaseOperation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K12 ["CalculateBrushPower"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K13 ["ClampVoxelBoundaries"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K14 ["ConvertForPivot"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K15 ["getDraggedPositions"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K16 ["Types"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K17 ["BrushShape"]
  GETTABLEKS R10 R8 K18 ["BrushSettings"]
  GETTABLEKS R11 R8 K19 ["Category"]
  GETTABLEKS R12 R8 K20 ["MaterialMode"]
  GETTABLEKS R13 R8 K21 ["MaterialSettings"]
  DUPCLOSURE R14 K22 [PROTO_3]
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R3
  RETURN R14 1
