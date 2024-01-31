PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Get"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["SelectionSettings"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Storage"]
  GETTABLEKS R4 R0 K3 ["_pluginController"]
  GETTABLEKS R5 R0 K4 ["_persistentUserSettings"]
  CALL R1 4 1
  GETTABLEKS R2 R0 K5 ["_analytics"]
  LOADK R4 K6 ["regionAction"]
  LOADK R5 K7 ["Copy"]
  NAMECALL R2 R2 K8 ["report"]
  CALL R2 3 0
  GETTABLEKS R3 R0 K9 ["_services"]
  GETTABLEKS R2 R3 K10 ["Terrain"]
  GETUPVAL R4 3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K11 ["Transform"]
  GETTABLE R5 R1 R6
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["Size"]
  GETTABLE R6 R1 R7
  LOADB R7 1
  CALL R4 3 -1
  NAMECALL R2 R2 K13 ["CopyRegion"]
  CALL R2 -1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["Set"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["TransformSettings"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K2 ["Storage"]
  GETTABLEKS R6 R0 K3 ["_pluginController"]
  NEWTABLE R7 4 0
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K16 ["TerrainRegionBuffer"]
  SETTABLE R2 R7 R8
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K17 ["TerrainRegionBufferSize"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K12 ["Size"]
  GETTABLE R9 R1 R10
  SETTABLE R9 R7 R8
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K18 ["TerrainRegionBufferTransform"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K11 ["Transform"]
  GETTABLE R9 R1 R10
  SETTABLE R9 R7 R8
  CALL R3 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Get"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["SelectionSettings"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Storage"]
  GETTABLEKS R4 R0 K3 ["_pluginController"]
  GETTABLEKS R5 R0 K4 ["_persistentUserSettings"]
  CALL R1 4 1
  GETTABLEKS R2 R0 K5 ["_analytics"]
  LOADK R4 K6 ["regionAction"]
  LOADK R5 K7 ["Cut"]
  NAMECALL R2 R2 K8 ["report"]
  CALL R2 3 0
  GETTABLEKS R3 R0 K9 ["_services"]
  GETTABLEKS R2 R3 K10 ["Terrain"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K11 ["Transform"]
  GETTABLE R4 R1 R5
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K12 ["Size"]
  GETTABLE R5 R1 R6
  GETIMPORT R6 K16 [Enum.Material.Air]
  NAMECALL R2 R2 K17 ["SetMaterialInTransform"]
  CALL R2 4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Get"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["SelectionSettings"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Storage"]
  GETTABLEKS R4 R0 K3 ["_pluginController"]
  GETTABLEKS R5 R0 K4 ["_persistentUserSettings"]
  CALL R1 4 1
  GETTABLEKS R2 R0 K5 ["_analytics"]
  LOADK R4 K6 ["regionAction"]
  LOADK R5 K7 ["Cut"]
  NAMECALL R2 R2 K8 ["report"]
  CALL R2 3 0
  GETTABLEKS R3 R0 K9 ["_services"]
  GETTABLEKS R2 R3 K10 ["Terrain"]
  GETUPVAL R4 3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K11 ["Transform"]
  GETTABLE R5 R1 R6
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["Size"]
  GETTABLE R6 R1 R7
  LOADB R7 1
  CALL R4 3 -1
  NAMECALL R2 R2 K13 ["CopyRegion"]
  CALL R2 -1 1
  GETTABLEKS R4 R0 K9 ["_services"]
  GETTABLEKS R3 R4 K10 ["Terrain"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K11 ["Transform"]
  GETTABLE R5 R1 R6
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["Size"]
  GETTABLE R6 R1 R7
  GETIMPORT R7 K17 [Enum.Material.Air]
  NAMECALL R3 R3 K18 ["SetMaterialInTransform"]
  CALL R3 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K19 ["Set"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K20 ["TransformSettings"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K2 ["Storage"]
  GETTABLEKS R6 R0 K3 ["_pluginController"]
  NEWTABLE R7 4 0
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K21 ["TerrainRegionBuffer"]
  SETTABLE R2 R7 R8
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K22 ["TerrainRegionBufferSize"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K12 ["Size"]
  GETTABLE R9 R1 R10
  SETTABLE R9 R7 R8
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K23 ["TerrainRegionBufferTransform"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K11 ["Transform"]
  GETTABLE R9 R1 R10
  SETTABLE R9 R7 R8
  CALL R3 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Get"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["TransformSettings"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Storage"]
  GETTABLEKS R4 R0 K3 ["_pluginController"]
  GETTABLEKS R5 R0 K4 ["_persistentUserSettings"]
  CALL R1 4 1
  GETTABLEKS R2 R0 K5 ["_analytics"]
  LOADK R4 K6 ["regionAction"]
  LOADK R5 K7 ["Paste"]
  NAMECALL R2 R2 K8 ["report"]
  CALL R2 3 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K9 ["TerrainRegionBuffer"]
  GETTABLE R2 R1 R3
  JUMPIFNOT R2 [+29]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["Set"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["TransformSettings"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["Storage"]
  GETTABLEKS R5 R0 K3 ["_pluginController"]
  NEWTABLE R6 1 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["TransformMode"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K7 ["Paste"]
  SETTABLE R8 R6 R7
  CALL R2 4 0
  GETTABLEKS R3 R0 K12 ["_toolController"]
  GETTABLEKS R2 R3 K13 ["selectTool"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K14 ["Transform"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Get"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["SelectionSettings"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Storage"]
  GETTABLEKS R4 R0 K3 ["_pluginController"]
  GETTABLEKS R5 R0 K4 ["_persistentUserSettings"]
  CALL R1 4 1
  GETTABLEKS R2 R0 K5 ["_analytics"]
  LOADK R4 K6 ["regionAction"]
  LOADK R5 K7 ["Duplicate"]
  NAMECALL R2 R2 K8 ["report"]
  CALL R2 3 0
  GETTABLEKS R3 R0 K9 ["_services"]
  GETTABLEKS R2 R3 K10 ["Terrain"]
  GETUPVAL R4 3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K11 ["Transform"]
  GETTABLE R5 R1 R6
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["Size"]
  GETTABLE R6 R1 R7
  LOADB R7 1
  CALL R4 3 -1
  NAMECALL R2 R2 K13 ["CopyRegion"]
  CALL R2 -1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["Set"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["TransformSettings"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K2 ["Storage"]
  GETTABLEKS R6 R0 K3 ["_pluginController"]
  NEWTABLE R7 4 0
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K16 ["TerrainRegion"]
  SETTABLE R2 R7 R8
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K17 ["TerrainRegionSize"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K12 ["Size"]
  GETTABLE R9 R1 R10
  SETTABLE R9 R7 R8
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K18 ["TerrainRegionTransform"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K11 ["Transform"]
  GETTABLE R9 R1 R10
  SETTABLE R9 R7 R8
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K19 ["TransformMode"]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K7 ["Duplicate"]
  SETTABLE R9 R7 R8
  CALL R3 4 0
  GETTABLEKS R4 R0 K20 ["_toolController"]
  GETTABLEKS R3 R4 K21 ["selectTool"]
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K11 ["Transform"]
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["copy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["cut"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["delete"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["paste"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["duplicate"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_services"]
  GETTABLEKS R0 R1 K1 ["Selection"]
  NEWTABLE R2 0 0
  NAMECALL R0 R0 K2 ["Set"]
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R0 K2 [task.defer]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  NEWTABLE R1 8 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["CopySelected"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  SETTABLE R3 R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["CutSelected"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  SETTABLE R3 R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["DeleteSelected"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  SETTABLE R3 R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["PasteSelected"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R0
  SETTABLE R3 R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["DuplicateSelected"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R0
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K6 ["_pluginActions"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K7 ["_connections"]
  GETTABLEKS R1 R0 K6 ["_pluginActions"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R0 K7 ["_connections"]
  GETTABLEKS R7 R0 K8 ["_shortcutController"]
  MOVE R9 R4
  MOVE R10 R5
  NAMECALL R7 R7 K9 ["Connect"]
  CALL R7 3 1
  SETTABLE R7 R6 R4
  GETTABLEKS R6 R0 K8 ["_shortcutController"]
  MOVE R8 R4
  NAMECALL R6 R6 K10 ["Enable"]
  CALL R6 2 0
  FORGLOOP R1 2 [-17]
  GETTABLEKS R2 R0 K11 ["_services"]
  GETTABLEKS R1 R2 K12 ["Selection"]
  NAMECALL R1 R1 K13 ["Get"]
  CALL R1 1 1
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K14 ["_selection"]
  GETTABLEKS R2 R0 K11 ["_services"]
  GETTABLEKS R1 R2 K12 ["Selection"]
  NEWTABLE R3 0 0
  NAMECALL R1 R1 K15 ["Set"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K16 ["_onSelectionChanged"]
  JUMPIF R1 [+13]
  GETTABLEKS R3 R0 K11 ["_services"]
  GETTABLEKS R2 R3 K12 ["Selection"]
  GETTABLEKS R1 R2 K17 ["SelectionChanged"]
  NEWCLOSURE R3 P5
  CAPTURE VAL R0
  NAMECALL R1 R1 K9 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K16 ["_onSelectionChanged"]
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_onSelectionChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_onSelectionChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_onSelectionChanged"]
  GETTABLEKS R2 R0 K2 ["_services"]
  GETTABLEKS R1 R2 K3 ["Selection"]
  GETTABLEKS R3 R0 K4 ["_selection"]
  NAMECALL R1 R1 K5 ["Set"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K7 ["_pluginActions"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R0 K8 ["_shortcutController"]
  MOVE R8 R4
  NAMECALL R6 R6 K9 ["Disable"]
  CALL R6 2 0
  FORGLOOP R1 1 [-7]
  GETTABLEKS R1 R0 K10 ["_connections"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NAMECALL R6 R5 K1 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["_connections"]
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
  GETTABLEKS R2 R3 K7 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Schemas"]
  GETTABLEKS R4 R5 K10 ["Settings"]
  GETTABLEKS R3 R4 K11 ["Selection"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Schemas"]
  GETTABLEKS R5 R6 K10 ["Settings"]
  GETTABLEKS R4 R5 K12 ["Transform"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K13 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["Category"]
  GETTABLEKS R6 R4 K15 ["Gizmo"]
  GETTABLEKS R7 R4 K16 ["PluginAction"]
  GETTABLEKS R8 R4 K17 ["SelectionSettings"]
  GETTABLEKS R9 R4 K18 ["Tab"]
  GETTABLEKS R10 R4 K19 ["Tool"]
  GETTABLEKS R11 R4 K20 ["TransformMode"]
  GETTABLEKS R12 R4 K21 ["TransformSettings"]
  GETTABLEKS R14 R0 K8 ["Src"]
  GETTABLEKS R13 R14 K22 ["Util"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R13 K23 ["ConvertTransformToRegion"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R13 K24 ["SettingsHelper"]
  CALL R15 1 1
  NEWTABLE R16 0 1
  DUPTABLE R17 K28 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K25 ["Defaults"]
  GETTABLEKS R18 R5 K17 ["SelectionSettings"]
  SETTABLEKS R18 R17 K26 ["Id"]
  SETTABLEKS R2 R17 K27 ["Schema"]
  SETLIST R16 R17 1 [1]
  NEWTABLE R17 0 1
  DUPTABLE R18 K29 [{"Id", "Schema"}]
  GETTABLEKS R19 R6 K30 ["Region"]
  SETTABLEKS R19 R18 K26 ["Id"]
  DUPTABLE R19 K34 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R20 R6 K30 ["Region"]
  SETTABLEKS R20 R19 K31 ["Type"]
  LOADB R20 1
  SETTABLEKS R20 R19 K32 ["Wireframe"]
  LOADB R20 0
  SETTABLEKS R20 R19 K33 ["Rotation"]
  SETTABLEKS R19 R18 K27 ["Schema"]
  SETLIST R17 R18 1 [1]
  GETTABLEKS R20 R10 K35 ["Select"]
  GETTABLEKS R21 R9 K36 ["Edit"]
  MOVE R22 R16
  MOVE R23 R17
  NAMECALL R18 R1 K37 ["new"]
  CALL R18 5 1
  DUPCLOSURE R19 K38 [PROTO_0]
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R12
  SETTABLEKS R19 R18 K39 ["copy"]
  DUPCLOSURE R19 K40 [PROTO_1]
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K41 ["delete"]
  DUPCLOSURE R19 K42 [PROTO_2]
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R12
  SETTABLEKS R19 R18 K43 ["cut"]
  DUPCLOSURE R19 K44 [PROTO_3]
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K45 ["paste"]
  DUPCLOSURE R19 K46 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K47 ["duplicate"]
  DUPCLOSURE R19 K48 [PROTO_12]
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R19 R18 K49 ["activate"]
  DUPCLOSURE R19 K50 [PROTO_13]
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K51 ["deactivate"]
  RETURN R18 1
