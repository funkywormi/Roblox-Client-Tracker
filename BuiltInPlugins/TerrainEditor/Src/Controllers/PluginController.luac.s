PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Activation"]
  LOADB R2 0
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["_enabled"]
  RETURN R0 0

PROTO_1:
  JUMPIF R1 [+7]
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R3 R0
  LOADK R4 K0 ["PluginController.new() requires a plugin"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  DUPTABLE R3 K8 [{"_mock", "_plugin", "_store", "Activation", "Focused"}]
  SETTABLEKS R1 R3 K3 ["_mock"]
  SETTABLEKS R0 R3 K4 ["_plugin"]
  NEWTABLE R4 4 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["SelectionSettings"]
  NEWTABLE R6 4 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K10 ["Size"]
  LOADN R9 64
  LOADN R10 32
  LOADN R11 64
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K13 [Vector3.new]
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K14 ["SnapToVoxels"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K15 ["Transform"]
  GETIMPORT R8 K17 [CFrame.new]
  CALL R8 0 1
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K18 ["TransformSettings"]
  NEWTABLE R6 4 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["Size"]
  LOADN R9 64
  LOADN R10 32
  LOADN R11 64
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K13 [Vector3.new]
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["SnapToVoxels"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["Transform"]
  GETIMPORT R8 K17 [CFrame.new]
  CALL R8 0 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K19 ["TransformMode"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K20 ["Move"]
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K21 ["BrushSettings"]
  NEWTABLE R6 4 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K22 ["ManualPlaneLock"]
  LOADB R8 0
  SETTABLE R8 R6 R7
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K23 ["PlaneLock"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K24 ["Off"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K25 ["PlaneTransform"]
  GETIMPORT R8 K27 [CFrame.Angles]
  LOADK R9 K28 [1.5707963267949]
  LOADN R10 0
  LOADN R11 0
  CALL R8 3 1
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K29 ["BuildSettings"]
  GETUPVAL R7 6
  CALL R7 0 1
  JUMPIFNOT R7 [+10]
  NEWTABLE R6 1 0
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K30 ["TerrainType"]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K31 ["None"]
  SETTABLE R8 R6 R7
  JUMP [+1]
  LOADNIL R6
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K5 ["_store"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K12 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K6 ["Activation"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K12 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K7 ["Focused"]
  GETUPVAL R4 10
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K33 [setmetatable]
  CALL R2 2 1
  GETUPVAL R3 11
  CALL R3 0 1
  JUMPIFNOT R3 [+25]
  GETUPVAL R4 12
  GETTABLEKS R3 R4 K34 ["IsDebuggingSavedSettings"]
  JUMPIF R3 [+45]
  GETUPVAL R3 13
  GETTABLEKS R4 R2 K4 ["_plugin"]
  LOADK R6 K35 ["Global"]
  NAMECALL R4 R4 K36 ["GetSetting"]
  CALL R4 2 1
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  CALL R3 1 1
  GETUPVAL R5 14
  GETTABLEKS R4 R5 K37 ["join"]
  GETTABLEKS R5 R2 K5 ["_store"]
  MOVE R6 R3
  CALL R4 2 1
  SETTABLEKS R4 R2 K5 ["_store"]
  JUMP [+24]
  GETUPVAL R4 12
  GETTABLEKS R3 R4 K34 ["IsDebuggingSavedSettings"]
  JUMPIFNOT R3 [+20]
  GETUPVAL R3 13
  GETTABLEKS R4 R2 K4 ["_plugin"]
  LOADK R6 K35 ["Global"]
  NAMECALL R4 R4 K36 ["GetSetting"]
  CALL R4 2 1
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  CALL R3 1 1
  GETUPVAL R5 14
  GETTABLEKS R4 R5 K37 ["join"]
  GETTABLEKS R5 R2 K5 ["_store"]
  MOVE R6 R3
  CALL R4 2 1
  SETTABLEKS R4 R2 K5 ["_store"]
  GETTABLEKS R4 R2 K4 ["_plugin"]
  GETTABLEKS R3 R4 K38 ["Deactivation"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  NAMECALL R3 R3 K39 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K40 ["_deactivationListener"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_mock"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_plugin"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_enabled"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_plugin"]
  LOADK R2 K1 ["Global"]
  GETUPVAL R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["_store"]
  CALL R3 1 -1
  NAMECALL R0 R0 K3 ["SetSetting"]
  CALL R0 -1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_saveSettingsTask"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R4 R0 K0 ["_store"]
  GETTABLE R5 R4 R1
  SETTABLE R3 R5 R2
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+21]
  GETTABLEKS R5 R0 K1 ["_saveSettingsTask"]
  JUMPIFNOT R5 [+8]
  GETIMPORT R5 K4 [task.cancel]
  GETTABLEKS R6 R0 K1 ["_saveSettingsTask"]
  CALL R5 1 0
  LOADNIL R5
  SETTABLEKS R5 R0 K1 ["_saveSettingsTask"]
  GETIMPORT R5 K6 [task.delay]
  LOADN R6 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CALL R5 2 1
  SETTABLEKS R5 R0 K1 ["_saveSettingsTask"]
  RETURN R0 0
  GETTABLEKS R5 R0 K7 ["_plugin"]
  LOADK R7 K8 ["Global"]
  GETUPVAL R8 1
  GETTABLEKS R9 R0 K0 ["_store"]
  CALL R8 1 -1
  NAMECALL R5 R5 K9 ["SetSetting"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["_store"]
  GETTABLE R5 R3 R1
  GETTABLE R4 R5 R2
  RETURN R4 1

PROTO_9:
  GETTABLEKS R3 R0 K0 ["_plugin"]
  MOVE R5 R1
  GETUPVAL R6 0
  MOVE R7 R2
  CALL R6 1 -1
  NAMECALL R3 R3 K1 ["SetSetting"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["_plugin"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["GetSetting"]
  CALL R3 2 1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R2 1 -1
  RETURN R2 -1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_enabled"]
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K1 ["disable"]
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K2 ["enable"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_enabled"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_enabled"]
  GETTABLEKS R1 R0 K1 ["_plugin"]
  LOADB R3 1
  NAMECALL R1 R1 K2 ["Activate"]
  CALL R1 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_enabled"]
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_enabled"]
  GETTABLEKS R1 R0 K1 ["_plugin"]
  NAMECALL R1 R1 K2 ["Deactivate"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["Focused"]
  LOADB R3 1
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K2 ["Activation"]
  LOADB R3 1
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["Focused"]
  LOADB R3 0
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_deactivationListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_deactivationListener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_deactivationListener"]
  NAMECALL R1 R0 K2 ["disable"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  SETTABLEKS R1 R0 K0 ["_root"]
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["_root"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETTABLEKS R3 R4 K10 ["ContextItem"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["BrushSettings"]
  GETTABLEKS R6 R4 K14 ["BuildSettings"]
  GETTABLEKS R7 R4 K15 ["Category"]
  GETTABLEKS R8 R4 K16 ["PlaneLock"]
  GETTABLEKS R9 R4 K17 ["SelectionSettings"]
  GETTABLEKS R10 R4 K18 ["TerrainType"]
  GETTABLEKS R11 R4 K19 ["TransformMode"]
  GETTABLEKS R12 R4 K20 ["TransformSettings"]
  GETTABLEKS R13 R2 K21 ["Util"]
  GETTABLEKS R14 R13 K22 ["Signal"]
  GETTABLEKS R17 R0 K11 ["Src"]
  GETTABLEKS R16 R17 K21 ["Util"]
  GETTABLEKS R15 R16 K23 ["Serialization"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R15 K24 ["Serialize"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R15 K25 ["Deserialize"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K11 ["Src"]
  GETTABLEKS R20 R21 K26 ["Resources"]
  GETTABLEKS R19 R20 K27 ["Constants"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K11 ["Src"]
  GETTABLEKS R21 R22 K28 ["Flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagTerrainEditorGenerationFeature"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K11 ["Src"]
  GETTABLEKS R22 R23 K28 ["Flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagTerrainEditorBrushPerformanceEnhancements"]
  CALL R20 1 1
  LOADK R23 K31 ["PluginController"]
  NAMECALL R21 R3 K32 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K33 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R19
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R1
  SETTABLEKS R22 R21 K34 ["new"]
  DUPCLOSURE R22 K35 [PROTO_2]
  CAPTURE VAL R21
  SETTABLEKS R22 R21 K36 ["mock"]
  DUPCLOSURE R22 K37 [PROTO_3]
  SETTABLEKS R22 R21 K38 ["isMocking"]
  DUPCLOSURE R22 K39 [PROTO_4]
  SETTABLEKS R22 R21 K40 ["getPlugin"]
  DUPCLOSURE R22 K41 [PROTO_5]
  SETTABLEKS R22 R21 K42 ["getEnabled"]
  DUPCLOSURE R22 K43 [PROTO_7]
  CAPTURE VAL R20
  CAPTURE VAL R16
  SETTABLEKS R22 R21 K44 ["setGlobal"]
  DUPCLOSURE R22 K45 [PROTO_8]
  SETTABLEKS R22 R21 K46 ["getGlobal"]
  DUPCLOSURE R22 K47 [PROTO_9]
  CAPTURE VAL R16
  SETTABLEKS R22 R21 K48 ["setSetting"]
  DUPCLOSURE R22 K49 [PROTO_10]
  CAPTURE VAL R17
  SETTABLEKS R22 R21 K50 ["getSetting"]
  DUPCLOSURE R22 K51 [PROTO_11]
  SETTABLEKS R22 R21 K52 ["toggle"]
  DUPCLOSURE R22 K53 [PROTO_12]
  SETTABLEKS R22 R21 K54 ["enable"]
  DUPCLOSURE R22 K55 [PROTO_13]
  SETTABLEKS R22 R21 K56 ["disable"]
  DUPCLOSURE R22 K57 [PROTO_14]
  SETTABLEKS R22 R21 K58 ["resume"]
  DUPCLOSURE R22 K59 [PROTO_15]
  SETTABLEKS R22 R21 K60 ["pause"]
  DUPCLOSURE R22 K61 [PROTO_16]
  SETTABLEKS R22 R21 K62 ["destroy"]
  DUPCLOSURE R22 K63 [PROTO_17]
  SETTABLEKS R22 R21 K64 ["setRoot"]
  DUPCLOSURE R22 K65 [PROTO_18]
  SETTABLEKS R22 R21 K66 ["getRoot"]
  RETURN R21 1
