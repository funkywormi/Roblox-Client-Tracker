PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Selection"]
  GETTABLEKS R0 R1 K1 ["new"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Transform"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Size"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  NEWTABLE R2 1 0
  GETUPVAL R4 0
  GETUPVAL R5 1
  GETTABLE R3 R4 R5
  NEWTABLE R4 4 0
  GETUPVAL R7 2
  GETUPVAL R8 1
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K0 ["OperationSource"]
  SETTABLE R1 R4 R5
  GETUPVAL R7 2
  GETUPVAL R8 1
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K1 ["Size"]
  GETTABLEKS R6 R0 K1 ["Size"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 2
  GETUPVAL R8 1
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K2 ["Transform"]
  GETTABLEKS R6 R0 K2 ["Transform"]
  SETTABLE R6 R4 R5
  SETTABLE R4 R2 R3
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R3 1 0
  GETUPVAL R3 1
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K2 ["Transform"]
  JUMPIFNOTEQ R3 R4 [+74]
  GETUPVAL R5 6
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K3 ["SelectionSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 8
  GETTABLEKS R5 R6 K1 ["Size"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K4 ["TransformSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K5 ["TransformMode"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K6 ["Paste"]
  JUMPIFNOTEQ R4 R5 [+11]
  GETUPVAL R6 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K4 ["TransformSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K7 ["TerrainRegionBufferSize"]
  GETTABLE R3 R5 R6
  JUMP [+34]
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K8 ["Import"]
  JUMPIFEQ R4 R5 [+6]
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K9 ["Duplicate"]
  JUMPIFNOTEQ R4 R5 [+11]
  GETUPVAL R6 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K4 ["TransformSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K10 ["TerrainRegionSize"]
  GETTABLE R3 R5 R6
  JUMP [+14]
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K11 ["Move"]
  JUMPIFNOTEQ R4 R5 [+10]
  GETUPVAL R6 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K3 ["SelectionSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 8
  GETTABLEKS R6 R7 K1 ["Size"]
  GETTABLE R3 R5 R6
  GETTABLEKS R5 R0 K1 ["Size"]
  GETUPVAL R6 11
  DIV R7 R5 R3
  CALL R6 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K12 ["Select"]
  JUMPIFNOTEQ R3 R4 [+5]
  GETUPVAL R3 11
  GETIMPORT R4 K15 [Vector3.one]
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["History"]
  CALL R1 2 0
  GETUPVAL R1 2
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["SetRegionSignal"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  GETUPVAL R6 3
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K0 ["SnapToVoxels"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+29]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K2 ["GridSize"]
  DIVK R4 R5 K1 [4]
  FASTCALL1 MATH_ROUND R4 [+2]
  GETIMPORT R3 K5 [math.round]
  CALL R3 1 1
  MULK R2 R3 K1 [4]
  LOADN R3 0
  JUMPIFNOTLE R2 R3 [+2]
  LOADN R2 4
  SUBK R4 R2 K6 [0.01]
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K8 [math.abs]
  CALL R3 1 1
  LOADK R4 K9 [0.001]
  JUMPIFNOTLT R3 R4 [+2]
  RETURN R1 1
  DIV R5 R1 R2
  FASTCALL1 MATH_ROUND R5 [+2]
  GETIMPORT R4 K5 [math.round]
  CALL R4 1 1
  MUL R3 R4 R2
  RETURN R3 1
  RETURN R1 1

PROTO_5:
  DUPTABLE R2 K2 [{"Size", "Transform"}]
  SETTABLEKS R1 R2 K0 ["Size"]
  SETTABLEKS R0 R2 K1 ["Transform"]
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["SetRegion"]
  CALL R3 2 0
  GETUPVAL R3 1
  MOVE R4 R2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["Gizmo"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["SetRegion"]
  CALL R1 2 0
  GETUPVAL R1 1
  MOVE R2 R0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Gizmo"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["selectionOnDragPoint"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["isMocking"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  DUPTABLE R0 K2 [{"Mock"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["Mock"]
  JUMP [+13]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["new"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K6 [game]
  GETIMPORT R3 K8 [settings]
  CALL R3 0 1
  GETUPVAL R4 3
  CALL R0 4 1
  GETUPVAL R1 4
  SETTABLEKS R1 R0 K9 ["snapToGridSize"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["endSelectionOnDrag"]
  GETUPVAL R1 5
  SETTABLEKS R1 R0 K11 ["updateRegion"]
  GETUPVAL R1 6
  SETTABLEKS R1 R0 K12 ["updateSelectionOnDrag"]
  GETUPVAL R1 7
  SETTABLEKS R1 R0 K13 ["addWaypoint"]
  NEWTABLE R1 0 2
  GETUPVAL R3 8
  GETTABLEKS R2 R3 K3 ["new"]
  MOVE R3 R0
  DUPTABLE R4 K16 [{"ShowBoundingBox", "Summonable"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K14 ["ShowBoundingBox"]
  LOADB R5 0
  SETTABLEKS R5 R4 K15 ["Summonable"]
  GETUPVAL R6 9
  CALL R6 0 1
  JUMPIFNOT R6 [+25]
  GETUPVAL R6 10
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K17 ["Build"]
  JUMPIFNOTEQ R6 R7 [+20]
  GETUPVAL R7 12
  GETTABLEKS R6 R7 K18 ["ExtrudeHandlesImplementation"]
  GETTABLEKS R5 R6 K3 ["new"]
  MOVE R6 R0
  LOADNIL R7
  GETIMPORT R10 K21 [Vector3.one]
  GETUPVAL R12 13
  GETTABLEKS R11 R12 K22 ["MaxBuildRegion"]
  MUL R9 R10 R11
  GETUPVAL R11 13
  GETTABLEKS R10 R11 K23 ["VoxelResolution"]
  MUL R8 R9 R10
  CALL R5 3 1
  JUMP [+7]
  GETUPVAL R7 12
  GETTABLEKS R6 R7 K18 ["ExtrudeHandlesImplementation"]
  GETTABLEKS R5 R6 K3 ["new"]
  MOVE R6 R0
  CALL R5 1 1
  CALL R2 3 1
  GETUPVAL R4 14
  GETTABLEKS R3 R4 K3 ["new"]
  MOVE R4 R0
  DUPTABLE R5 K25 [{"ShowBoundingBox", "Summonable", "Outset"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K14 ["ShowBoundingBox"]
  LOADB R6 0
  SETTABLEKS R6 R5 K15 ["Summonable"]
  LOADN R6 1
  SETTABLEKS R6 R5 K24 ["Outset"]
  GETUPVAL R8 12
  GETTABLEKS R7 R8 K26 ["TransformHandlesImplementation"]
  GETTABLEKS R6 R7 K3 ["new"]
  MOVE R7 R0
  CALL R6 1 -1
  CALL R3 -1 -1
  SETLIST R1 R2 -1 [1]
  GETUPVAL R2 15
  JUMPIFNOT R2 [+27]
  MOVE R3 R1
  GETUPVAL R5 16
  GETTABLEKS R4 R5 K3 ["new"]
  MOVE R5 R0
  DUPTABLE R6 K25 [{"ShowBoundingBox", "Summonable", "Outset"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K14 ["ShowBoundingBox"]
  LOADB R7 0
  SETTABLEKS R7 R6 K15 ["Summonable"]
  LOADN R7 1
  SETTABLEKS R7 R6 K24 ["Outset"]
  GETUPVAL R9 12
  GETTABLEKS R8 R9 K26 ["TransformHandlesImplementation"]
  GETTABLEKS R7 R8 K3 ["new"]
  MOVE R8 R0
  CALL R7 1 -1
  CALL R4 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K29 [table.insert]
  CALL R2 -1 0
  DUPTABLE R2 K34 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["Parent"]
  NAMECALL R3 R3 K35 ["GetMouse"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K30 ["Mouse"]
  SETTABLEKS R0 R2 K31 ["DraggerContext"]
  GETUPVAL R3 12
  SETTABLEKS R3 R2 K32 ["DraggerSchema"]
  DUPTABLE R3 K43 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowDragSelect", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
  LOADK R4 K44 ["TerrainEditorRegion"]
  SETTABLEKS R4 R3 K36 ["AnalyticsName"]
  LOADB R4 1
  SETTABLEKS R4 R3 K37 ["AllowDragSelect"]
  LOADB R4 0
  SETTABLEKS R4 R3 K38 ["AllowFreeformDrag"]
  LOADB R4 0
  SETTABLEKS R4 R3 K39 ["ShowDragSelect"]
  LOADB R4 1
  SETTABLEKS R4 R3 K40 ["ShowLocalSpaceIndicator"]
  LOADB R4 1
  SETTABLEKS R4 R3 K41 ["ShowPivotIndicator"]
  SETTABLEKS R1 R3 K42 ["HandlesList"]
  SETTABLEKS R3 R2 K33 ["DraggerSettings"]
  RETURN R2 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerContext"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K1 ["addWaypoint"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerContext"]
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K2 ["updateRegion"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerContext"]
  GETUPVAL R1 3
  SETTABLEKS R1 R0 K3 ["updateSelectionOnDrag"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerContext"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K1 ["snapToGridSize"]
  RETURN R0 0

PROTO_11:
  DUPTABLE R0 K2 [{"Size", "Transform"}]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K0 ["Size"]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K0 ["Size"]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K1 ["Transform"]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K1 ["Transform"]
  GETTABLEKS R1 R0 K0 ["Size"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K0 ["Size"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETTABLEKS R1 R0 K1 ["Transform"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K1 ["Transform"]
  JUMPIFEQ R1 R2 [+12]
  GETUPVAL R1 5
  MOVE R3 R0
  NAMECALL R1 R1 K3 ["SetRegionSignal"]
  CALL R1 2 0
  GETUPVAL R1 6
  MOVE R2 R0
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K4 ["Gizmo"]
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R0 K2 [{"Size", "Transform"}]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K0 ["Size"]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K0 ["Size"]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K1 ["Transform"]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K1 ["Transform"]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K3 ["SnapToVoxels"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+95]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K3 ["SnapToVoxels"]
  GETTABLE R1 R2 R3
  GETUPVAL R2 4
  JUMPIFNOTEQ R1 R2 [+15]
  GETTABLEKS R1 R0 K0 ["Size"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K0 ["Size"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETTABLEKS R1 R0 K1 ["Transform"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K1 ["Transform"]
  JUMPIFEQ R1 R2 [+68]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K6 ["GridSize"]
  DIVK R4 R5 K4 [4]
  ADDK R3 R4 K5 [0.5]
  FASTCALL1 MATH_FLOOR R3 [+2]
  GETIMPORT R2 K9 [math.floor]
  CALL R2 1 1
  MULK R1 R2 K4 [4]
  LOADN R2 0
  JUMPIFNOTLE R1 R2 [+2]
  LOADN R1 4
  GETUPVAL R2 7
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETUPVAL R8 2
  GETTABLE R6 R7 R8
  GETTABLE R4 R5 R6
  GETUPVAL R7 3
  GETUPVAL R8 2
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K1 ["Transform"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 0
  GETUPVAL R8 1
  GETUPVAL R9 2
  GETTABLE R7 R8 R9
  GETTABLE R5 R6 R7
  GETUPVAL R8 3
  GETUPVAL R9 2
  GETTABLE R7 R8 R9
  GETTABLEKS R6 R7 K0 ["Size"]
  GETTABLE R4 R5 R6
  MOVE R5 R1
  CALL R2 3 2
  DUPTABLE R4 K2 [{"Size", "Transform"}]
  SETTABLEKS R3 R4 K0 ["Size"]
  SETTABLEKS R2 R4 K1 ["Transform"]
  GETTABLEKS R5 R4 K0 ["Size"]
  GETTABLEKS R6 R0 K0 ["Size"]
  JUMPIFNOTEQ R5 R6 [+7]
  GETTABLEKS R5 R4 K1 ["Transform"]
  GETTABLEKS R6 R0 K1 ["Transform"]
  JUMPIFEQ R5 R6 [+12]
  GETUPVAL R5 8
  MOVE R7 R4
  NAMECALL R5 R5 K10 ["SetRegionSignal"]
  CALL R5 2 0
  GETUPVAL R5 9
  MOVE R6 R4
  GETUPVAL R8 10
  GETTABLEKS R7 R8 K11 ["Gizmo"]
  CALL R5 2 0
  GETUPVAL R1 11
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  GETUPVAL R6 3
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K3 ["SnapToVoxels"]
  GETTABLE R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R4 0
  NAMECALL R4 R4 K0 ["use"]
  CALL R4 1 1
  GETUPVAL R5 1
  DUPTABLE R6 K3 [{"Size", "Transform"}]
  GETUPVAL R10 2
  GETTABLE R9 R10 R0
  GETTABLE R8 R1 R9
  GETUPVAL R11 3
  GETTABLE R10 R11 R0
  GETTABLEKS R9 R10 K1 ["Size"]
  GETTABLE R7 R8 R9
  SETTABLEKS R7 R6 K1 ["Size"]
  GETUPVAL R10 2
  GETTABLE R9 R10 R0
  GETTABLE R8 R1 R9
  GETUPVAL R11 3
  GETTABLE R10 R11 R0
  GETTABLEKS R9 R10 K2 ["Transform"]
  GETTABLE R7 R8 R9
  SETTABLEKS R7 R6 K2 ["Transform"]
  CALL R5 1 2
  GETUPVAL R7 1
  LOADN R9 1
  LOADN R10 1
  LOADN R11 1
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K6 [Vector3.new]
  CALL R8 3 1
  CALL R7 1 2
  GETUPVAL R9 4
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R5
  NEWTABLE R11 0 1
  MOVE R12 R0
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  GETUPVAL R10 1
  LOADNIL R11
  CALL R10 1 2
  GETUPVAL R12 6
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R8
  NEWTABLE R14 0 3
  MOVE R15 R2
  MOVE R16 R0
  MOVE R17 R1
  SETLIST R14 R15 3 [1]
  CALL R12 2 1
  GETUPVAL R13 12
  MOVE R14 R5
  NEWCLOSURE R15 P2
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  CAPTURE VAL R9
  NEWTABLE R16 0 1
  MOVE R17 R0
  SETLIST R16 R17 1 [1]
  CALL R13 3 1
  GETUPVAL R14 6
  NEWCLOSURE R15 P3
  CAPTURE VAL R13
  CAPTURE VAL R5
  NEWTABLE R16 0 2
  MOVE R17 R13
  MOVE R18 R5
  SETLIST R16 R17 2 [1]
  CALL R14 2 1
  GETUPVAL R15 6
  NEWCLOSURE R16 P4
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U14
  NEWTABLE R17 0 1
  GETUPVAL R21 2
  GETTABLE R20 R21 R0
  GETTABLE R19 R1 R20
  GETUPVAL R22 3
  GETTABLE R21 R22 R0
  GETTABLEKS R20 R21 K7 ["SnapToVoxels"]
  GETTABLE R18 R19 R20
  SETLIST R17 R18 1 [1]
  CALL R15 2 1
  GETUPVAL R16 6
  NEWCLOSURE R17 P5
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  NEWTABLE R18 0 1
  MOVE R19 R12
  SETLIST R18 R19 1 [1]
  CALL R16 2 1
  GETUPVAL R17 6
  NEWCLOSURE R18 P6
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  NEWTABLE R19 0 1
  MOVE R20 R12
  SETLIST R19 R20 1 [1]
  CALL R17 2 1
  GETUPVAL R18 4
  NEWCLOSURE R19 P7
  CAPTURE VAL R4
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U5
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE VAL R3
  CAPTURE UPVAL U21
  NEWTABLE R20 0 1
  MOVE R21 R0
  SETLIST R20 R21 1 [1]
  CALL R18 2 1
  GETUPVAL R19 22
  NEWCLOSURE R20 P8
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R17
  NEWTABLE R21 0 3
  MOVE R22 R5
  MOVE R23 R12
  MOVE R24 R13
  SETLIST R21 R22 3 [1]
  CALL R19 2 0
  GETUPVAL R19 22
  NEWCLOSURE R20 P9
  CAPTURE VAL R18
  CAPTURE VAL R15
  NEWTABLE R21 0 1
  MOVE R22 R15
  SETLIST R21 R22 1 [1]
  CALL R19 2 0
  GETUPVAL R19 22
  NEWCLOSURE R20 P10
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  NEWTABLE R21 0 3
  MOVE R22 R0
  GETUPVAL R26 2
  GETTABLE R25 R26 R0
  GETTABLE R24 R1 R25
  GETUPVAL R27 3
  GETTABLE R26 R27 R0
  GETTABLEKS R25 R26 K1 ["Size"]
  GETTABLE R23 R24 R25
  GETUPVAL R27 2
  GETTABLE R26 R27 R0
  GETTABLE R25 R1 R26
  GETUPVAL R28 3
  GETTABLE R27 R28 R0
  GETTABLEKS R26 R27 K2 ["Transform"]
  GETTABLE R24 R25 R26
  SETLIST R21 R22 3 [1]
  CALL R19 2 0
  GETUPVAL R19 22
  NEWCLOSURE R20 P11
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE UPVAL U14
  CAPTURE UPVAL U23
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  CAPTURE VAL R11
  NEWTABLE R21 0 3
  GETUPVAL R25 2
  GETTABLE R24 R25 R0
  GETTABLE R23 R1 R24
  GETUPVAL R26 3
  GETTABLE R25 R26 R0
  GETTABLEKS R24 R25 K7 ["SnapToVoxels"]
  GETTABLE R22 R23 R24
  GETUPVAL R26 2
  GETTABLE R25 R26 R0
  GETTABLE R24 R1 R25
  GETUPVAL R27 3
  GETTABLE R26 R27 R0
  GETTABLEKS R25 R26 K1 ["Size"]
  GETTABLE R23 R24 R25
  GETUPVAL R27 2
  GETTABLE R26 R27 R0
  GETTABLE R25 R1 R26
  GETUPVAL R28 3
  GETTABLE R27 R28 R0
  GETTABLEKS R26 R27 K2 ["Transform"]
  GETTABLE R24 R25 R26
  SETLIST R21 R22 3 [1]
  CALL R19 2 0
  MOVE R19 R18
  MOVE R20 R5
  MOVE R21 R7
  RETURN R19 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["DraggerFramework"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K4 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useCallback"]
  GETTABLEKS R4 R2 K10 ["useEffect"]
  GETTABLEKS R5 R2 K11 ["useMemo"]
  GETTABLEKS R6 R2 K12 ["useState"]
  GETIMPORT R7 K7 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Schemas"]
  GETTABLEKS R8 R9 K15 ["Region"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R10 R1 K16 ["Implementation"]
  GETTABLEKS R9 R10 K17 ["DraggerContext_PluginImpl"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R11 R1 K18 ["Handles"]
  GETTABLEKS R10 R11 K19 ["MoveHandles"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R12 R1 K18 ["Handles"]
  GETTABLEKS R11 R12 K20 ["RotateHandles"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R13 R1 K18 ["Handles"]
  GETTABLEKS R12 R13 K21 ["ExtrudeHandles"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R15 R0 K13 ["Src"]
  GETTABLEKS R14 R15 K22 ["Util"]
  GETTABLEKS R13 R14 K23 ["getVoxelAlignedRegion"]
  CALL R12 1 1
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K24 ["Hooks"]
  GETIMPORT R14 K7 [require]
  GETTABLEKS R15 R13 K25 ["useHistory"]
  CALL R14 1 1
  GETIMPORT R15 K7 [require]
  GETTABLEKS R18 R0 K13 ["Src"]
  GETTABLEKS R17 R18 K26 ["Resources"]
  GETTABLEKS R16 R17 K27 ["Constants"]
  CALL R15 1 1
  GETIMPORT R16 K7 [require]
  GETTABLEKS R18 R0 K13 ["Src"]
  GETTABLEKS R17 R18 K28 ["Types"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K29 ["BuildSettings"]
  GETTABLEKS R18 R16 K30 ["Category"]
  GETTABLEKS R19 R16 K31 ["OperationSource"]
  GETTABLEKS R20 R16 K32 ["SeaLevelSettings"]
  GETTABLEKS R21 R16 K33 ["SelectionSettings"]
  GETTABLEKS R22 R16 K34 ["Tool"]
  GETTABLEKS R23 R16 K35 ["TransformMode"]
  GETTABLEKS R24 R16 K36 ["TransformSettings"]
  GETIMPORT R25 K7 [require]
  GETTABLEKS R28 R0 K13 ["Src"]
  GETTABLEKS R27 R28 K37 ["Controllers"]
  GETTABLEKS R26 R27 K38 ["PluginController"]
  CALL R25 1 1
  GETIMPORT R26 K7 [require]
  GETTABLEKS R29 R0 K13 ["Src"]
  GETTABLEKS R28 R29 K39 ["Flags"]
  GETTABLEKS R27 R28 K40 ["getFFlagTerrainEditorGenerationFeature"]
  CALL R26 1 1
  GETIMPORT R27 K42 [game]
  LOADK R29 K43 ["StudioService"]
  NAMECALL R27 R27 K44 ["GetService"]
  CALL R27 2 1
  NEWTABLE R28 8 0
  GETTABLEKS R29 R22 K45 ["Build"]
  MOVE R31 R26
  CALL R31 0 1
  JUMPIFNOT R31 [+3]
  GETTABLEKS R30 R18 K29 ["BuildSettings"]
  JUMP [+1]
  LOADNIL R30
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R22 K46 ["Transform"]
  GETTABLEKS R30 R18 K36 ["TransformSettings"]
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R22 K47 ["Select"]
  GETTABLEKS R30 R18 K33 ["SelectionSettings"]
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R22 K48 ["Generate"]
  GETTABLEKS R30 R18 K33 ["SelectionSettings"]
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R22 K49 ["Fill"]
  GETTABLEKS R30 R18 K33 ["SelectionSettings"]
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R22 K50 ["Import"]
  GETTABLEKS R30 R18 K33 ["SelectionSettings"]
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R22 K51 ["SeaLevel"]
  GETTABLEKS R30 R18 K32 ["SeaLevelSettings"]
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R22 K52 ["Mock"]
  GETTABLEKS R30 R18 K33 ["SelectionSettings"]
  SETTABLE R30 R28 R29
  NEWTABLE R29 8 0
  GETTABLEKS R30 R22 K45 ["Build"]
  MOVE R32 R26
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  MOVE R31 R17
  JUMP [+1]
  LOADNIL R31
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K46 ["Transform"]
  SETTABLE R24 R29 R30
  GETTABLEKS R30 R22 K47 ["Select"]
  SETTABLE R21 R29 R30
  GETTABLEKS R30 R22 K48 ["Generate"]
  SETTABLE R21 R29 R30
  GETTABLEKS R30 R22 K49 ["Fill"]
  SETTABLE R21 R29 R30
  GETTABLEKS R30 R22 K50 ["Import"]
  SETTABLE R21 R29 R30
  GETTABLEKS R30 R22 K51 ["SeaLevel"]
  SETTABLE R20 R29 R30
  GETTABLEKS R30 R22 K52 ["Mock"]
  SETTABLE R21 R29 R30
  DUPCLOSURE R30 K53 [PROTO_13]
  CAPTURE VAL R25
  CAPTURE VAL R6
  CAPTURE VAL R28
  CAPTURE VAL R29
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R22
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R27
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R11
  CAPTURE VAL R26
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R12
  RETURN R30 1
