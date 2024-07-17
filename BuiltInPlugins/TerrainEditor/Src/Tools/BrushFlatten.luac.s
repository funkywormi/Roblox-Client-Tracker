PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["PlaneLock"]
  DUPTABLE R7 K4 [{"Hidden"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K3 ["Hidden"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["ManualPlaneLock"]
  DUPTABLE R7 K4 [{"Hidden"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K3 ["Hidden"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K6 ["_overrides"]
  LOADN R3 0
  SETTABLEKS R3 R0 K7 ["_brushUsages"]
  LOADN R3 0
  SETTABLEKS R3 R0 K8 ["_brushTime"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveForm"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_operation"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["_operation"]
  NAMECALL R4 R0 K2 ["getPayload"]
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["updatePayload"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveGizmos"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_operation"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["_operation"]
  NAMECALL R4 R0 K2 ["getPayload"]
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["updatePayload"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  LOADK R3 K0 ["Flatten"]
  GETTABLEKS R4 R0 K1 ["_services"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["_operation"]
  GETTABLEKS R2 R0 K2 ["_operation"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["join"]
  DUPTABLE R5 K5 [{"Payload"}]
  NAMECALL R6 R0 K6 ["getPayload"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["Payload"]
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K7 ["start"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  JUMPIFNOT R0 [+50]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K1 ["isRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+43]
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K2 ["_brushUsages"]
  ADDK R1 R1 K3 [1]
  SETTABLEKS R1 R0 K2 ["_brushUsages"]
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_operation"]
  NAMECALL R2 R2 K4 ["getCurrentTimeTaken"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_operation"]
  NAMECALL R3 R3 K5 ["getStepsTaken"]
  CALL R3 1 1
  DIV R1 R2 R3
  SETTABLEKS R1 R0 K6 ["_brushTime"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K7 ["getTimeStatistic"]
  CALL R0 1 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["_brushStatistic"]
  ORK R3 R4 K8 [0]
  ADD R2 R3 R0
  SETTABLEKS R2 R1 K9 ["_brushStatistic"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_operation"]
  NAMECALL R1 R1 K10 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_shortcutController"]
  NAMECALL R1 R1 K2 ["getMouse"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_shortcutController"]
  GETTABLEKS R2 R3 K3 ["MouseDownAction"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_mouseDownConnection"]
  GETTABLEKS R2 R1 K6 ["Button1Up"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_mouseUpConnection"]
  GETTABLEKS R2 R0 K8 ["_analytics"]
  LOADK R4 K9 ["Activated"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["Flatten"]
  NAMECALL R2 R2 K11 ["report"]
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_mouseDownConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_mouseUpConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_operation"]
  JUMPIFNOT R1 [+44]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K4 ["isRunning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+38]
  GETTABLEKS R1 R0 K5 ["_brushUsages"]
  ADDK R1 R1 K6 [1]
  SETTABLEKS R1 R0 K5 ["_brushUsages"]
  GETTABLEKS R1 R0 K7 ["_brushTime"]
  GETTABLEKS R3 R0 K3 ["_operation"]
  NAMECALL R3 R3 K8 ["getCurrentTimeTaken"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K3 ["_operation"]
  NAMECALL R4 R4 K9 ["getStepsTaken"]
  CALL R4 1 1
  DIV R2 R3 R4
  ADD R1 R1 R2
  SETTABLEKS R1 R0 K7 ["_brushTime"]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K10 ["getTimeStatistic"]
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  GETTABLEKS R4 R0 K12 ["_brushStatistic"]
  ORK R3 R4 K11 [0]
  ADD R2 R3 R1
  SETTABLEKS R2 R0 K12 ["_brushStatistic"]
  GETTABLEKS R2 R0 K3 ["_operation"]
  NAMECALL R2 R2 K13 ["destroy"]
  CALL R2 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K14 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  JUMPIFNOT R2 [+54]
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+50]
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K3 ["BrushProperties"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["getBrushPayload"]
  MOVE R6 R1
  GETTABLEKS R7 R0 K1 ["_brushTime"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["Flatten"]
  CALL R5 3 -1
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K7 ["Usage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Flatten"]
  GETTABLEKS R6 R0 K8 ["_brushUsages"]
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 4 0
  GETTABLEKS R2 R0 K9 ["_brushStatistic"]
  JUMPIFNOT R2 [+19]
  GETTABLEKS R2 R0 K8 ["_brushUsages"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+15]
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K10 ["Performance"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Flatten"]
  GETTABLEKS R7 R0 K9 ["_brushStatistic"]
  GETTABLEKS R8 R0 K8 ["_brushUsages"]
  DIV R6 R7 R8
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 4 0
  LOADN R2 0
  SETTABLEKS R2 R0 K9 ["_brushStatistic"]
  LOADN R2 0
  SETTABLEKS R2 R0 K8 ["_brushUsages"]
  LOADN R2 0
  SETTABLEKS R2 R0 K1 ["_brushTime"]
  RETURN R0 0

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
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["BaseTool"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["AnalyticsHelper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K13 ["Operations"]
  GETTABLEKS R5 R6 K14 ["FlattenOperation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K15 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K16 ["BrushSettings"]
  GETTABLEKS R7 R5 K17 ["BrushShape"]
  GETTABLEKS R8 R5 K18 ["Category"]
  GETTABLEKS R9 R5 K19 ["FlattenMode"]
  GETTABLEKS R10 R5 K20 ["FlattenPlane"]
  GETTABLEKS R11 R5 K21 ["Gizmo"]
  GETTABLEKS R12 R5 K22 ["PivotPosition"]
  GETTABLEKS R13 R5 K23 ["Snapping"]
  GETTABLEKS R14 R5 K24 ["Tab"]
  GETTABLEKS R15 R5 K25 ["Tool"]
  NEWTABLE R16 0 1
  DUPTABLE R17 K28 [{"Defaults", "Id"}]
  NEWTABLE R18 16 0
  GETTABLEKS R19 R6 K17 ["BrushShape"]
  GETTABLEKS R20 R7 K29 ["Sphere"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K30 ["BrushSize"]
  DUPTABLE R20 K34 [{"Height", "Locked", "Size"}]
  LOADN R21 6
  SETTABLEKS R21 R20 K31 ["Height"]
  LOADB R21 1
  SETTABLEKS R21 R20 K32 ["Locked"]
  LOADN R21 6
  SETTABLEKS R21 R20 K33 ["Size"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K35 ["Strength"]
  LOADN R20 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K36 ["FixedYPlane"]
  LOADN R20 0
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K19 ["FlattenMode"]
  GETTABLEKS R20 R9 K37 ["Both"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K20 ["FlattenPlane"]
  GETTABLEKS R20 R10 K38 ["Auto"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K22 ["PivotPosition"]
  GETTABLEKS R20 R12 K39 ["Center"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K23 ["Snapping"]
  GETTABLEKS R20 R13 K40 ["Off"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K41 ["State"]
  DUPTABLE R20 K43 [{"Position"}]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  FASTCALL VECTOR [+2]
  GETIMPORT R21 K46 [Vector3.new]
  CALL R21 3 1
  SETTABLEKS R21 R20 K42 ["Position"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K47 ["IgnoreWater"]
  LOADB R20 0
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K48 ["IgnoreParts"]
  LOADB R20 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K49 ["PullTerrain"]
  LOADB R20 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R6 K50 ["WaterAutofill"]
  LOADB R20 0
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K26 ["Defaults"]
  GETTABLEKS R18 R8 K16 ["BrushSettings"]
  SETTABLEKS R18 R17 K27 ["Id"]
  SETLIST R16 R17 1 [1]
  NEWTABLE R17 0 2
  DUPTABLE R18 K52 [{"Id", "Schema"}]
  GETTABLEKS R19 R11 K53 ["Plane"]
  SETTABLEKS R19 R18 K27 ["Id"]
  DUPTABLE R19 K55 [{"Type"}]
  GETTABLEKS R20 R11 K53 ["Plane"]
  SETTABLEKS R20 R19 K54 ["Type"]
  SETTABLEKS R19 R18 K51 ["Schema"]
  DUPTABLE R19 K52 [{"Id", "Schema"}]
  GETTABLEKS R20 R11 K56 ["Brush"]
  SETTABLEKS R20 R19 K27 ["Id"]
  DUPTABLE R20 K55 [{"Type"}]
  GETTABLEKS R21 R11 K56 ["Brush"]
  SETTABLEKS R21 R20 K54 ["Type"]
  SETTABLEKS R20 R19 K51 ["Schema"]
  SETLIST R17 R18 2 [1]
  GETTABLEKS R20 R15 K57 ["Flatten"]
  GETTABLEKS R21 R14 K58 ["Edit"]
  MOVE R22 R16
  MOVE R23 R17
  NAMECALL R18 R2 K45 ["new"]
  CALL R18 5 1
  DUPCLOSURE R19 K59 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R19 R18 K60 ["init"]
  DUPCLOSURE R19 K61 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K62 ["saveForm"]
  DUPCLOSURE R19 K63 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K64 ["saveGizmos"]
  DUPCLOSURE R19 K65 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K66 ["startOperation"]
  DUPCLOSURE R19 K67 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R15
  SETTABLEKS R19 R18 K68 ["activate"]
  DUPCLOSURE R19 K69 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K70 ["deactivate"]
  DUPCLOSURE R19 K71 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R15
  SETTABLEKS R19 R18 K72 ["reportAnalytics"]
  RETURN R18 1
