PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsMouseDown"]
  CALL R0 1 1
  JUMPIF R0 [+15]
  GETIMPORT R0 K3 [CFrame.lookAt]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["Position"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Position"]
  GETUPVAL R4 2
  CALL R4 0 1
  ADD R2 R3 R4
  CALL R0 2 1
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R7 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["BrushSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["BrushSize"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K3 ["Size"]
  DIVK R3 R4 K0 [2]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["VoxelResolution"]
  MUL R2 R3 R4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["TerrainCacheMultiplier"]
  MUL R1 R2 R3
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K6 ["TerrainCacheMaxRadius"]
  FASTCALL2 MATH_MIN R1 R2 [+3]
  GETIMPORT R0 K9 [math.min]
  CALL R0 2 1
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Draw"]
  JUMPIFNOTEQ R0 R1 [+11]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["BrushSettings"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["TemporarySmooth"]
  GETTABLE R0 R1 R2
  JUMPIFNOT R0 [+17]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["Paint"]
  JUMPIFNOTEQ R0 R1 [+29]
  GETUPVAL R0 5
  JUMPIFNOT R0 [+26]
  GETUPVAL R1 5
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K4 ["TargetMaterial"]
  GETTABLE R0 R1 R2
  GETIMPORT R1 K8 [Enum.Material.Air]
  JUMPIFNOTEQ R0 R1 [+18]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K9 ["PlaneLock"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K10 ["Off"]
  JUMPIFEQ R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1

PROTO_3:
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["BrushShape"]
  GETTABLE R1 R2 R3
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["BrushSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["BrushSize"]
  GETTABLE R2 R3 R4
  GETTABLEKS R4 R2 K3 ["Size"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["VoxelResolution"]
  MUL R3 R4 R5
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K5 ["Sphere"]
  JUMPIFNOTEQ R1 R5 [+3]
  MOVE R4 R3
  JUMP [+6]
  GETTABLEKS R5 R2 K6 ["Height"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K4 ["VoxelResolution"]
  MUL R4 R5 R6
  GETUPVAL R5 5
  GETUPVAL R8 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["BrushSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["PivotPosition"]
  GETTABLE R6 R7 R8
  GETTABLEKS R7 R0 K8 ["Position"]
  MOVE R8 R4
  CALL R5 3 1
  GETUPVAL R6 6
  LOADK R8 K9 ["Central"]
  LOADB R9 1
  NAMECALL R6 R6 K10 ["FindFirstChild"]
  CALL R6 3 1
  JUMPIFNOT R6 [+35]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K11 ["Cylinder"]
  JUMPIFNOTEQ R1 R8 [+9]
  GETIMPORT R8 K14 [CFrame.Angles]
  LOADK R9 K15 [1.5707963267949]
  LOADN R10 0
  LOADN R11 0
  CALL R8 3 1
  ADD R7 R8 R5
  JUMP [+4]
  GETIMPORT R7 K17 [CFrame.new]
  MOVE R8 R5
  CALL R7 1 1
  SETTABLEKS R7 R6 K12 ["CFrame"]
  GETUPVAL R8 6
  LOADK R10 K18 ["OnTop"]
  LOADB R11 1
  NAMECALL R8 R8 K10 ["FindFirstChild"]
  CALL R8 3 1
  SETTABLEKS R7 R8 K12 ["CFrame"]
  GETUPVAL R8 6
  LOADK R10 K19 ["Outline"]
  LOADB R11 1
  NAMECALL R8 R8 K10 ["FindFirstChild"]
  CALL R8 3 1
  SETTABLEKS R7 R8 K12 ["CFrame"]
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["BrushSettings"]
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["State"]
  SETTABLE R0 R3 R4
  SETTABLE R3 R1 R2
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  GETUPVAL R2 3
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K2 ["Build"]
  JUMPIFEQ R2 R3 [+4]
  GETUPVAL R2 5
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R2 6
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R2 7
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K3 [{"CacheID", "CachePoint"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K1 ["CacheID"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K2 ["CachePoint"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Origin"]
  GETTABLEKS R0 R1 K1 ["Position"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["UnitRay"]
  GETTABLEKS R1 R2 K3 ["Direction"]
  GETIMPORT R2 K6 [RaycastParams.new]
  CALL R2 0 1
  GETUPVAL R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["BrushSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["IgnoreParts"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+25]
  NEWTABLE R3 0 1
  GETUPVAL R4 4
  SETLIST R3 R4 1 [1]
  GETUPVAL R4 5
  LOADK R6 K9 ["Baseplate"]
  NAMECALL R4 R4 K10 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+7]
  FASTCALL2 TABLE_INSERT R3 R4 [+5]
  MOVE R6 R3
  MOVE R7 R4
  GETIMPORT R5 K13 [table.insert]
  CALL R5 2 0
  GETIMPORT R5 K17 [Enum.RaycastFilterType.Whitelist]
  SETTABLEKS R5 R2 K18 ["FilterType"]
  SETTABLEKS R3 R2 K19 ["FilterDescendantsInstances"]
  JUMP [+29]
  NEWTABLE R3 0 0
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K20 ["LocalPlayer"]
  JUMPIFNOT R4 [+17]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K20 ["LocalPlayer"]
  GETTABLEKS R4 R5 K21 ["Character"]
  JUMPIFNOT R4 [+11]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K20 ["LocalPlayer"]
  GETTABLEKS R6 R7 K21 ["Character"]
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K13 [table.insert]
  CALL R4 2 0
  GETIMPORT R4 K23 [Enum.RaycastFilterType.Blacklist]
  SETTABLEKS R4 R2 K18 ["FilterType"]
  SETTABLEKS R3 R2 K19 ["FilterDescendantsInstances"]
  GETUPVAL R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["BrushSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K24 ["IgnoreWater"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K24 ["IgnoreWater"]
  LOADB R3 1
  SETTABLEKS R3 R2 K25 ["BruteForceAllSlow"]
  GETUPVAL R3 5
  MOVE R5 R0
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K26 ["RayLength"]
  MUL R6 R1 R7
  MOVE R7 R2
  NAMECALL R3 R3 K27 ["Raycast"]
  CALL R3 4 1
  GETUPVAL R4 8
  NAMECALL R4 R4 K28 ["IsMouseDown"]
  CALL R4 1 1
  JUMPIFNOT R4 [+60]
  GETUPVAL R4 9
  CALL R4 0 1
  JUMPIFNOT R4 [+57]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R4 R3 K1 ["Position"]
  JUMP [+3]
  GETUPVAL R5 10
  GETTABLEKS R4 R5 K1 ["Position"]
  GETUPVAL R7 11
  GETTABLEKS R6 R7 K29 ["CachePoint"]
  SUB R5 R4 R6
  GETTABLEKS R6 R5 K30 ["magnitude"]
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K31 ["CacheID"]
  GETUPVAL R9 12
  CALL R9 0 1
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K32 ["TerrainCacheUpdateThreshold"]
  MUL R8 R9 R10
  JUMPIFLT R8 R6 [+2]
  JUMPIF R7 [+18]
  GETUPVAL R8 5
  GETUPVAL R12 11
  GETTABLEKS R11 R12 K31 ["CacheID"]
  ORK R10 R11 K33 [""]
  MOVE R11 R4
  GETUPVAL R12 12
  CALL R12 0 -1
  NAMECALL R8 R8 K34 ["CacheCurrentTerrain"]
  CALL R8 -1 1
  MOVE R7 R8
  GETUPVAL R8 13
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U14
  CAPTURE REF R7
  CAPTURE VAL R4
  CALL R8 1 0
  GETUPVAL R8 5
  MOVE R10 R7
  MOVE R11 R0
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K26 ["RayLength"]
  MUL R12 R1 R13
  LOADB R13 1
  MOVE R14 R2
  NAMECALL R8 R8 K35 ["RaycastCachedTerrain"]
  CALL R8 6 1
  MOVE R3 R8
  CLOSEUPVALS R7
  JUMPIFNOT R3 [+26]
  DUPTABLE R4 K40 [{"Distance", "Instance", "Material", "Normal", "Position"}]
  GETTABLEKS R7 R3 K1 ["Position"]
  SUB R6 R7 R0
  GETTABLEKS R5 R6 K41 ["Magnitude"]
  SETTABLEKS R5 R4 K36 ["Distance"]
  GETTABLEKS R5 R3 K37 ["Instance"]
  SETTABLEKS R5 R4 K37 ["Instance"]
  GETTABLEKS R5 R3 K38 ["Material"]
  SETTABLEKS R5 R4 K38 ["Material"]
  GETTABLEKS R5 R3 K39 ["Normal"]
  SETTABLEKS R5 R4 K39 ["Normal"]
  GETTABLEKS R5 R3 K1 ["Position"]
  SETTABLEKS R5 R4 K1 ["Position"]
  MOVE R3 R4
  JUMP [+43]
  GETUPVAL R4 15
  CALL R4 0 1
  GETUPVAL R5 16
  MOVE R6 R0
  MOVE R7 R1
  GETIMPORT R8 K44 [Vector3.zero]
  GETIMPORT R9 K46 [Vector3.yAxis]
  CALL R5 4 2
  JUMPIFNOT R5 [+16]
  JUMPIFNOT R6 [+15]
  LOADN R7 0
  JUMPIFNOTLE R7 R6 [+13]
  DUPTABLE R7 K47 [{"Distance", "Normal", "Position"}]
  SUB R9 R5 R0
  GETTABLEKS R8 R9 K41 ["Magnitude"]
  SETTABLEKS R8 R7 K36 ["Distance"]
  SETTABLEKS R4 R7 K39 ["Normal"]
  SETTABLEKS R5 R7 K1 ["Position"]
  MOVE R3 R7
  JUMP [+16]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K26 ["RayLength"]
  MUL R8 R1 R9
  ADD R7 R0 R8
  DUPTABLE R8 K47 [{"Distance", "Normal", "Position"}]
  SUB R10 R7 R0
  GETTABLEKS R9 R10 K41 ["Magnitude"]
  SETTABLEKS R9 R8 K36 ["Distance"]
  SETTABLEKS R4 R8 K39 ["Normal"]
  SETTABLEKS R7 R8 K1 ["Position"]
  MOVE R3 R8
  GETUPVAL R4 17
  GETUPVAL R5 1
  GETUPVAL R7 8
  NAMECALL R7 R7 K28 ["IsMouseDown"]
  CALL R7 1 1
  JUMPIFNOT R7 [+2]
  GETUPVAL R6 18
  JUMP [+10]
  GETIMPORT R6 K50 [CFrame.lookAt]
  GETTABLEKS R7 R3 K1 ["Position"]
  GETTABLEKS R9 R3 K1 ["Position"]
  GETUPVAL R10 15
  CALL R10 0 1
  ADD R8 R9 R10
  CALL R6 2 1
  GETUPVAL R7 0
  CALL R4 3 1
  JUMPIFNOT R4 [+1]
  MOVE R3 R4
  GETUPVAL R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["BrushSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K51 ["Snapping"]
  GETTABLE R5 R6 R7
  GETUPVAL R6 19
  GETIMPORT R7 K53 [table.clone]
  MOVE R8 R3
  CALL R7 1 -1
  CALL R6 -1 0
  JUMPIFEQKNIL R5 [+45]
  GETUPVAL R7 20
  GETTABLEKS R6 R7 K54 ["Off"]
  JUMPIFEQ R5 R6 [+40]
  GETUPVAL R6 21
  GETTABLEKS R7 R3 K1 ["Position"]
  CALL R6 1 1
  GETUPVAL R9 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["BrushSettings"]
  GETTABLE R8 R9 R10
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K55 ["FixedYPlane"]
  GETTABLE R7 R8 R9
  JUMPIFNOT R7 [+18]
  GETTABLEKS R8 R6 K56 ["X"]
  GETUPVAL R11 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K7 ["BrushSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K57 ["FixedYPlanePosition"]
  GETTABLE R9 R10 R11
  GETTABLEKS R10 R6 K58 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K59 [Vector3.new]
  CALL R7 3 1
  MOVE R6 R7
  SUB R8 R6 R0
  GETTABLEKS R7 R8 K41 ["Magnitude"]
  SETTABLEKS R7 R3 K36 ["Distance"]
  SETTABLEKS R6 R3 K1 ["Position"]
  RETURN R3 1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["CacheID"]
  JUMPIFNOT R1 [+1]
  RETURN R0 1
  DUPTABLE R1 K2 [{"CacheID", "CachePoint"}]
  GETUPVAL R2 0
  LOADK R4 K3 [""]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Position"]
  GETUPVAL R6 2
  CALL R6 0 -1
  NAMECALL R2 R2 K5 ["CacheCurrentTerrain"]
  CALL R2 -1 1
  SETTABLEKS R2 R1 K0 ["CacheID"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Position"]
  SETTABLEKS R2 R1 K1 ["CachePoint"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CacheID"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["CacheID"]
  NAMECALL R0 R0 K1 ["ClearCachedTerrain"]
  CALL R0 2 0
  GETUPVAL R0 2
  DUPTABLE R1 K3 [{"CachePoint"}]
  GETIMPORT R2 K6 [Vector3.zero]
  SETTABLEKS R2 R1 K2 ["CachePoint"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+3]
  GETUPVAL R0 1
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isMouseMoveReserved"]
  CALL R0 1 1
  JUMPIF R0 [+9]
  GETUPVAL R0 1
  GETUPVAL R1 2
  GETUPVAL R2 0
  NAMECALL R2 R2 K1 ["IsMouseDown"]
  CALL R2 1 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0
  GETUPVAL R0 3
  JUMPIF R0 [+3]
  GETUPVAL R0 4
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  LOADK R2 K0 ["TerrainRaycast"]
  NAMECALL R0 R0 K1 ["UnbindFromRenderStep"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+15]
  GETUPVAL R0 1
  LOADK R2 K0 ["TerrainRaycast"]
  LOADN R3 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NAMECALL R0 R0 K1 ["BindToRenderStep"]
  CALL R0 4 0
  DUPCLOSURE R0 K2 [PROTO_12]
  CAPTURE UPVAL U1
  RETURN R0 1
  DUPCLOSURE R0 K3 [PROTO_13]
  RETURN R0 1

PROTO_15:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isMouseMoveReserved"]
  CALL R0 1 1
  JUMPIF R0 [+9]
  GETUPVAL R0 1
  GETUPVAL R1 2
  GETUPVAL R2 0
  NAMECALL R2 R2 K1 ["IsMouseDown"]
  CALL R2 1 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0
  GETUPVAL R0 3
  JUMPIF R0 [+3]
  GETUPVAL R0 4
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+9]
  GETIMPORT R0 K2 [task.defer]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R3 0
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 1 1
  NAMECALL R4 R3 K1 ["getMouse"]
  CALL R4 1 1
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"Distance", "Normal", "Position"}]
  GETTABLEKS R9 R4 K6 ["Origin"]
  GETTABLEKS R8 R9 K4 ["Position"]
  GETTABLEKS R7 R8 K7 ["Magnitude"]
  SETTABLEKS R7 R6 K2 ["Distance"]
  GETIMPORT R7 K10 [Vector3.yAxis]
  SETTABLEKS R7 R6 K3 ["Normal"]
  GETIMPORT R7 K12 [Vector3.zero]
  SETTABLEKS R7 R6 K4 ["Position"]
  CALL R5 1 2
  GETUPVAL R7 1
  DUPTABLE R8 K5 [{"Distance", "Normal", "Position"}]
  GETTABLEKS R11 R4 K6 ["Origin"]
  GETTABLEKS R10 R11 K4 ["Position"]
  GETTABLEKS R9 R10 K7 ["Magnitude"]
  SETTABLEKS R9 R8 K2 ["Distance"]
  GETIMPORT R9 K10 [Vector3.yAxis]
  SETTABLEKS R9 R8 K3 ["Normal"]
  GETIMPORT R9 K12 [Vector3.zero]
  SETTABLEKS R9 R8 K4 ["Position"]
  CALL R7 1 2
  GETUPVAL R9 1
  GETIMPORT R10 K15 [CFrame.lookAt]
  GETTABLEKS R11 R5 K4 ["Position"]
  GETTABLEKS R13 R5 K4 ["Position"]
  GETIMPORT R14 K10 [Vector3.yAxis]
  ADD R12 R13 R14
  CALL R10 2 -1
  CALL R9 -1 2
  GETUPVAL R11 2
  NEWCLOSURE R12 P0
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE UPVAL U3
  CAPTURE VAL R10
  NEWTABLE R13 0 2
  MOVE R14 R0
  MOVE R15 R5
  SETLIST R13 R14 2 [1]
  CALL R11 2 0
  GETUPVAL R11 1
  DUPTABLE R12 K18 [{"CacheID", "CachePoint"}]
  LOADNIL R13
  SETTABLEKS R13 R12 K16 ["CacheID"]
  GETIMPORT R13 K12 [Vector3.zero]
  SETTABLEKS R13 R12 K17 ["CachePoint"]
  CALL R11 1 2
  GETUPVAL R13 1
  NAMECALL R14 R3 K19 ["isMouseMoveReserved"]
  CALL R14 1 -1
  CALL R13 -1 2
  GETUPVAL R15 4
  CALL R15 0 1
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K20 ["MaterialSettings"]
  GETTABLE R16 R1 R17
  GETUPVAL R17 6
  NEWCLOSURE R18 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  NEWTABLE R19 0 1
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K21 ["BrushSettings"]
  GETTABLE R21 R1 R22
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K22 ["BrushSize"]
  GETTABLE R20 R21 R22
  SETLIST R19 R20 1 [1]
  CALL R17 2 1
  GETUPVAL R18 6
  NEWCLOSURE R19 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE VAL R16
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  NEWTABLE R20 0 4
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K21 ["BrushSettings"]
  GETTABLE R22 R1 R23
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K23 ["TemporarySmooth"]
  GETTABLE R21 R22 R23
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K21 ["BrushSettings"]
  GETTABLE R23 R1 R24
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K24 ["PlaneLock"]
  GETTABLE R22 R23 R24
  JUMPIFNOT R16 [+5]
  GETUPVAL R25 10
  GETTABLEKS R24 R25 K25 ["TargetMaterial"]
  GETTABLE R23 R16 R24
  JUMP [+1]
  LOADB R23 1
  MOVE R24 R0
  SETLIST R20 R21 4 [1]
  CALL R18 2 1
  GETUPVAL R19 6
  NEWCLOSURE R20 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  NEWTABLE R21 0 1
  MOVE R22 R1
  SETLIST R21 R22 1 [1]
  CALL R19 2 1
  GETUPVAL R20 6
  NEWCLOSURE R21 P4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE UPVAL U15
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE VAL R19
  CAPTURE VAL R6
  CAPTURE VAL R2
  NEWTABLE R22 0 4
  MOVE R23 R9
  MOVE R24 R2
  MOVE R25 R0
  MOVE R26 R19
  SETLIST R22 R23 4 [1]
  CALL R20 2 1
  GETUPVAL R21 6
  NEWCLOSURE R22 P5
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE VAL R15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U8
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE UPVAL U18
  CAPTURE UPVAL U3
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE UPVAL U21
  CAPTURE UPVAL U22
  NEWTABLE R23 0 11
  NAMECALL R25 R3 K26 ["IsMouseDown"]
  CALL R25 1 1
  JUMPIFNOT R25 [+2]
  MOVE R24 R9
  JUMP [+1]
  LOADB R24 1
  MOVE R25 R11
  MOVE R26 R17
  MOVE R27 R18
  GETUPVAL R31 5
  GETTABLEKS R30 R31 K21 ["BrushSettings"]
  GETTABLE R29 R1 R30
  GETUPVAL R31 7
  GETTABLEKS R30 R31 K27 ["IgnoreParts"]
  GETTABLE R28 R29 R30
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K21 ["BrushSettings"]
  GETTABLE R30 R1 R31
  GETUPVAL R32 7
  GETTABLEKS R31 R32 K28 ["IgnoreWater"]
  GETTABLE R29 R30 R31
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K21 ["BrushSettings"]
  GETTABLE R31 R1 R32
  GETUPVAL R33 7
  GETTABLEKS R32 R33 K29 ["Snapping"]
  GETTABLE R30 R31 R32
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K21 ["BrushSettings"]
  GETTABLE R32 R1 R33
  GETUPVAL R34 7
  GETTABLEKS R33 R34 K30 ["FixedYPlane"]
  GETTABLE R31 R32 R33
  GETUPVAL R35 5
  GETTABLEKS R34 R35 K21 ["BrushSettings"]
  GETTABLE R33 R1 R34
  GETUPVAL R35 7
  GETTABLEKS R34 R35 K31 ["FixedYPlanePosition"]
  GETTABLE R32 R33 R34
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K21 ["BrushSettings"]
  GETTABLE R34 R1 R35
  GETUPVAL R36 7
  GETTABLEKS R35 R36 K32 ["PlaneTransform"]
  GETTABLE R33 R34 R35
  GETUPVAL R37 5
  GETTABLEKS R36 R37 K21 ["BrushSettings"]
  GETTABLE R35 R1 R36
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K24 ["PlaneLock"]
  GETTABLE R34 R35 R36
  SETLIST R23 R24 11 [1]
  CALL R21 2 1
  GETUPVAL R22 23
  GETTABLEKS R23 R4 K33 ["Button1Down"]
  NEWCLOSURE R24 P6
  CAPTURE VAL R18
  CAPTURE VAL R12
  CAPTURE UPVAL U16
  CAPTURE VAL R5
  CAPTURE VAL R17
  NEWTABLE R25 0 1
  MOVE R26 R5
  SETLIST R25 R26 1 [1]
  CALL R22 3 0
  GETUPVAL R22 23
  GETTABLEKS R23 R4 K34 ["Button1Up"]
  NEWCLOSURE R24 P7
  CAPTURE VAL R11
  CAPTURE UPVAL U16
  CAPTURE VAL R12
  NEWTABLE R25 0 1
  MOVE R26 R11
  SETLIST R25 R26 1 [1]
  CALL R22 3 0
  GETUPVAL R22 23
  GETTABLEKS R23 R3 K35 ["MouseMoveAction"]
  NEWCLOSURE R24 P8
  CAPTURE VAL R13
  CAPTURE VAL R14
  NEWTABLE R25 0 1
  MOVE R26 R13
  SETLIST R25 R26 1 [1]
  CALL R22 3 0
  GETUPVAL R22 2
  NEWCLOSURE R23 P9
  CAPTURE UPVAL U15
  CAPTURE UPVAL U24
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R13
  CAPTURE VAL R14
  NEWTABLE R24 0 1
  MOVE R25 R20
  SETLIST R24 R25 1 [1]
  CALL R22 2 0
  GETUPVAL R22 2
  NEWCLOSURE R23 P10
  CAPTURE UPVAL U15
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R13
  CAPTURE VAL R14
  NEWTABLE R24 0 5
  MOVE R25 R0
  MOVE R26 R21
  MOVE R27 R20
  MOVE R28 R5
  MOVE R29 R13
  SETLIST R24 R25 5 [1]
  CALL R22 2 0
  MOVE R22 R5
  MOVE R23 R7
  RETURN R22 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useCallback"]
  GETTABLEKS R4 R2 K10 ["useEffect"]
  GETTABLEKS R5 R2 K11 ["useState"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Controllers"]
  GETTABLEKS R7 R8 K14 ["ShortcutController"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K15 ["Hooks"]
  GETTABLEKS R8 R9 K16 ["useEventConnection"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K15 ["Hooks"]
  GETTABLEKS R9 R10 K17 ["useTerrain"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K18 ["Resources"]
  GETTABLEKS R10 R11 K19 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K20 ["Util"]
  GETTABLEKS R11 R12 K21 ["ApplyPlaneLock"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K20 ["Util"]
  GETTABLEKS R12 R13 K22 ["ConvertForPivot"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K20 ["Util"]
  GETTABLEKS R13 R14 K23 ["getCameraLookPlane"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K12 ["Src"]
  GETTABLEKS R15 R16 K20 ["Util"]
  GETTABLEKS R14 R15 K24 ["getPlaneIntersection"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K12 ["Src"]
  GETTABLEKS R16 R17 K20 ["Util"]
  GETTABLEKS R15 R16 K25 ["getSnappedToVoxel"]
  CALL R14 1 1
  GETIMPORT R15 K27 [game]
  LOADK R17 K28 ["CoreGui"]
  NAMECALL R15 R15 K29 ["GetService"]
  CALL R15 2 1
  GETIMPORT R16 K27 [game]
  LOADK R18 K30 ["Players"]
  NAMECALL R16 R16 K29 ["GetService"]
  CALL R16 2 1
  GETIMPORT R17 K27 [game]
  LOADK R19 K31 ["RunService"]
  NAMECALL R17 R17 K29 ["GetService"]
  CALL R17 2 1
  GETIMPORT R18 K27 [game]
  LOADK R20 K32 ["Workspace"]
  NAMECALL R18 R18 K29 ["GetService"]
  CALL R18 2 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R21 R0 K12 ["Src"]
  GETTABLEKS R20 R21 K33 ["Types"]
  CALL R19 1 1
  GETTABLEKS R20 R19 K34 ["BrushSettings"]
  GETTABLEKS R21 R19 K35 ["BrushShape"]
  GETTABLEKS R22 R19 K36 ["Category"]
  GETTABLEKS R23 R19 K37 ["MaterialSettings"]
  GETTABLEKS R24 R19 K38 ["PlaneLock"]
  GETTABLEKS R25 R19 K39 ["Snapping"]
  GETTABLEKS R26 R19 K40 ["Tool"]
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K12 ["Src"]
  GETTABLEKS R29 R30 K41 ["Flags"]
  GETTABLEKS R28 R29 K42 ["getFFlagTerrainEditorBrushPerformanceEnhancements"]
  CALL R27 1 1
  DUPCLOSURE R28 K43 [PROTO_17]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R22
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R9
  CAPTURE VAL R26
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R21
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R27
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R25
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R17
  RETURN R28 1
