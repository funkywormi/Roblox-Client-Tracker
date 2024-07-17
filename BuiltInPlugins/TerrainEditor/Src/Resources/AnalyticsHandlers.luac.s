PROTO_0:
  DUPTABLE R2 K3 [{"studioSid", "placeId", "userId"}]
  GETUPVAL R3 0
  NAMECALL R3 R3 K4 ["GetSessionId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["studioSid"]
  GETIMPORT R4 K6 [game]
  GETTABLEKS R3 R4 K7 ["PlaceId"]
  SETTABLEKS R3 R2 K1 ["placeId"]
  GETUPVAL R3 1
  NAMECALL R3 R3 K8 ["GetUserId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["userId"]
  GETUPVAL R3 2
  GETUPVAL R4 3
  MOVE R5 R2
  MOVE R6 R1
  CALL R4 2 -1
  CALL R3 -1 1
  MOVE R1 R3
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K9 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+18]
  GETIMPORT R3 K11 [print]
  LOADK R5 K12 ["(EVENT) TerrainEditor reported event %* with payload %*"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K14 [tostring]
  CALL R7 1 1
  GETUPVAL R8 5
  MOVE R10 R1
  NAMECALL R8 R8 K15 ["JSONEncode"]
  CALL R8 2 1
  NAMECALL R5 R5 K16 ["format"]
  CALL R5 3 1
  MOVE R4 R5
  CALL R3 1 0
  GETUPVAL R3 0
  LOADK R5 K17 ["studio"]
  LOADK R6 K18 ["TerrainEditor"]
  MOVE R7 R0
  MOVE R8 R1
  NAMECALL R3 R3 K19 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  ORK R1 R1 K0 [1]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["LogAnalytics"]
  CALL R2 0 1
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K3 [print]
  LOADK R4 K4 ["Terrain ReportCounter counterName=%* count=%*"]
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  CALL R2 1 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K6 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["LogAnalytics"]
  CALL R2 0 1
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K2 [print]
  LOADK R4 K3 ["Terrain ReportCounter counterName=%* count=%*"]
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  CALL R2 1 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K5 ["ReportStats"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  LOADK R4 K0 ["%*ToolActivated"]
  MOVE R6 R1
  NAMECALL R4 R4 K1 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  MOVE R4 R2
  ORK R4 R4 K2 [1]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["LogAnalytics"]
  CALL R5 0 1
  JUMPIFNOT R5 [+10]
  GETIMPORT R5 K5 [print]
  LOADK R7 K6 ["Terrain ReportCounter counterName=%* count=%*"]
  MOVE R9 R3
  MOVE R10 R4
  NAMECALL R7 R7 K1 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  CALL R5 1 0
  GETUPVAL R5 1
  MOVE R7 R3
  MOVE R8 R4
  NAMECALL R5 R5 K7 ["ReportCounter"]
  CALL R5 3 0
  RETURN R0 0

PROTO_4:
  LOADK R4 K0 ["%*ToolUsage"]
  MOVE R6 R1
  NAMECALL R4 R4 K1 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  MOVE R4 R2
  ORK R4 R4 K2 [1]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["LogAnalytics"]
  CALL R5 0 1
  JUMPIFNOT R5 [+10]
  GETIMPORT R5 K5 [print]
  LOADK R7 K6 ["Terrain ReportCounter counterName=%* count=%*"]
  MOVE R9 R3
  MOVE R10 R4
  NAMECALL R7 R7 K1 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  CALL R5 1 0
  GETUPVAL R5 1
  MOVE R7 R3
  MOVE R8 R4
  NAMECALL R5 R5 K7 ["ReportCounter"]
  CALL R5 3 0
  RETURN R0 0

PROTO_5:
  LOADK R4 K0 ["%*ToolPerformance"]
  MOVE R6 R1
  NAMECALL R4 R4 K1 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["LogAnalytics"]
  CALL R4 0 1
  JUMPIFNOT R4 [+10]
  GETIMPORT R4 K4 [print]
  LOADK R6 K5 ["Terrain ReportCounter counterName=%* count=%*"]
  MOVE R8 R3
  MOVE R9 R2
  NAMECALL R6 R6 K1 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  CALL R4 1 0
  GETUPVAL R4 1
  MOVE R6 R3
  MOVE R7 R2
  NAMECALL R4 R4 K6 ["ReportStats"]
  CALL R4 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  LOADK R3 K0 ["terrainEditorBrushProperties"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  LOADK R3 K0 ["terrainEditorRegionProperties"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  LOADK R3 K0 ["terrainEditorMaterialProperties"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  DUPTABLE R4 K6 [{"Activated", "Usage", "Performance", "BrushProperties", "RegionProperties", "MaterialProperties"}]
  NEWCLOSURE R5 P3
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K0 ["Activated"]
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K1 ["Usage"]
  NEWCLOSURE R5 P5
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K2 ["Performance"]
  NEWCLOSURE R5 P6
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K3 ["BrushProperties"]
  NEWCLOSURE R5 P7
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K4 ["RegionProperties"]
  NEWCLOSURE R5 P8
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K5 ["MaterialProperties"]
  RETURN R4 1

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
  GETTABLEKS R2 R1 K8 ["join"]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Util"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["ConvertForAnalytics"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K12 ["DebugFlags"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K15 [game]
  LOADK R9 K16 ["HttpService"]
  NAMECALL R7 R7 K17 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K15 [game]
  LOADK R10 K18 ["StudioService"]
  NAMECALL R8 R8 K17 ["GetService"]
  CALL R8 2 1
  DUPCLOSURE R9 K19 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R7
  RETURN R9 1
