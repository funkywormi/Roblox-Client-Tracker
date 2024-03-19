PROTO_0:
  DUPTABLE R5 K4 [{"_name", "_category", "_configuration", "_gizmos"}]
  SETTABLEKS R1 R5 K0 ["_name"]
  SETTABLEKS R2 R5 K1 ["_category"]
  SETTABLEKS R3 R5 K2 ["_configuration"]
  SETTABLEKS R4 R5 K3 ["_gizmos"]
  FASTCALL2 SETMETATABLE R5 R0 [+5]
  MOVE R7 R5
  MOVE R8 R0
  GETIMPORT R6 K6 [setmetatable]
  CALL R6 2 0
  SETTABLEKS R0 R0 K7 ["__index"]
  RETURN R5 1

PROTO_1:
  GETTABLEKS R3 R1 K0 ["Analytics"]
  GETTABLEKS R4 R1 K1 ["Localization"]
  GETTABLEKS R5 R1 K2 ["PluginController"]
  GETTABLEKS R6 R1 K3 ["ShortcutController"]
  GETTABLEKS R7 R1 K4 ["Stylizer"]
  GETTABLEKS R8 R1 K5 ["ToolController"]
  MOVE R11 R5
  NAMECALL R9 R0 K6 ["registerSettings"]
  CALL R9 2 2
  GETTABLEKS R13 R0 K7 ["_name"]
  MOVE R14 R9
  NAMECALL R11 R5 K8 ["setSetting"]
  CALL R11 3 0
  SETTABLEKS R3 R0 K9 ["_analytics"]
  SETTABLEKS R4 R0 K10 ["_localization"]
  SETTABLEKS R5 R0 K11 ["_pluginController"]
  SETTABLEKS R6 R0 K12 ["_shortcutController"]
  SETTABLEKS R7 R0 K13 ["_stylizer"]
  SETTABLEKS R8 R0 K14 ["_toolController"]
  SETTABLEKS R2 R0 K15 ["_services"]
  DUPTABLE R11 K18 [{"icon", "name"}]
  DUPTABLE R12 K20 [{"Image"}]
  LOADK R14 K21 ["%*.png"]
  LOADK R17 K22 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/%s/Large/"]
  GETTABLEKS R18 R0 K7 ["_name"]
  CONCAT R16 R17 R18
  NAMECALL R14 R14 K23 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K19 ["Image"]
  SETTABLEKS R12 R11 K16 ["icon"]
  LOADK R14 K24 ["BaseTool"]
  GETTABLEKS R15 R0 K7 ["_name"]
  NAMECALL R12 R4 K25 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K17 ["name"]
  SETTABLEKS R11 R0 K26 ["_tile"]
  SETTABLEKS R9 R0 K27 ["_persistentUserSettings"]
  SETTABLEKS R10 R0 K28 ["_sessionUserSettings"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R0 K29 ["_overrides"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K30 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K31 ["OnFormChanged"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K30 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K32 ["OnGizmoChanged"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K30 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K33 ["OnNoteChanged"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K30 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K34 ["OnShortcutChanged"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K30 ["new"]
  CALL R11 0 1
  SETTABLEKS R11 R0 K35 ["OnOperationChanged"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R0 K36 ["_shortcutConnections"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R0 K37 ["_shortcuts"]
  NAMECALL R11 R0 K38 ["registerShortcuts"]
  CALL R11 1 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+5]
  GETTABLEKS R4 R0 K0 ["_name"]
  NAMECALL R2 R1 K1 ["getSetting"]
  CALL R2 2 1
  MOVE R3 R2
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  GETTABLEKS R5 R0 K2 ["_configuration"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R11 R9 K3 ["Id"]
  GETTABLE R10 R3 R11
  JUMPIF R10 [+6]
  GETTABLEKS R10 R9 K3 ["Id"]
  GETTABLEKS R11 R9 K4 ["Defaults"]
  SETTABLE R11 R3 R10
  JUMP [+17]
  GETTABLEKS R13 R9 K3 ["Id"]
  GETTABLE R10 R3 R13
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLEKS R16 R9 K4 ["Defaults"]
  GETTABLE R15 R16 R13
  JUMPIF R15 [+5]
  GETTABLEKS R16 R9 K3 ["Id"]
  GETTABLE R15 R3 R16
  LOADNIL R16
  SETTABLE R16 R15 R13
  FORGLOOP R10 2 [-10]
  GETUPVAL R11 1
  CALL R11 0 1
  JUMPIFNOT R11 [+7]
  GETUPVAL R12 2
  GETTABLEKS R13 R9 K3 ["Id"]
  GETTABLE R11 R12 R13
  GETTABLEKS R10 R11 K5 ["Storage"]
  JUMP [+4]
  GETTABLEKS R11 R9 K6 ["Schema"]
  GETTABLEKS R10 R11 K5 ["Storage"]
  GETTABLEKS R11 R9 K3 ["Id"]
  NEWTABLE R12 0 0
  SETTABLE R12 R4 R11
  GETTABLEKS R11 R9 K4 ["Defaults"]
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  GETTABLE R16 R10 R14
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K7 ["LocalSession"]
  JUMPIFNOTEQ R16 R17 [+6]
  GETTABLEKS R17 R9 K3 ["Id"]
  GETTABLE R16 R4 R17
  SETTABLE R15 R16 R14
  JUMP [+24]
  GETTABLEKS R18 R9 K3 ["Id"]
  GETTABLE R17 R3 R18
  GETTABLE R16 R17 R14
  JUMPIFNOT R16 [+15]
  GETTABLEKS R19 R9 K3 ["Id"]
  GETTABLE R18 R3 R19
  GETTABLE R17 R18 R14
  FASTCALL1 TYPEOF R17 [+2]
  GETIMPORT R16 K9 [typeof]
  CALL R16 1 1
  FASTCALL1 TYPEOF R15 [+3]
  MOVE R18 R15
  GETIMPORT R17 K9 [typeof]
  CALL R17 1 1
  JUMPIFEQ R16 R17 [+5]
  GETTABLEKS R17 R9 K3 ["Id"]
  GETTABLE R16 R3 R17
  SETTABLE R15 R16 R14
  FORGLOOP R11 2 [-36]
  FORGLOOP R5 2 [-89]
  RETURN R3 2

PROTO_3:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R0 K1 ["_shortcutController"]
  MOVE R14 R10
  NAMECALL R12 R12 K2 ["supportsShortcut"]
  CALL R12 2 1
  JUMPIFNOT R12 [+18]
  GETTABLEKS R13 R0 K3 ["_shortcuts"]
  GETTABLE R12 R13 R5
  JUMPIF R12 [+5]
  GETTABLEKS R12 R0 K3 ["_shortcuts"]
  NEWTABLE R13 0 0
  SETTABLE R13 R12 R5
  GETTABLEKS R14 R0 K3 ["_shortcuts"]
  GETTABLE R13 R14 R5
  FASTCALL2 TABLE_INSERT R13 R10 [+4]
  MOVE R14 R10
  GETIMPORT R12 K6 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-26]
  FORGLOOP R2 2 [-32]
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K2 [{"_configuration", "_name"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["_configuration"]
  LOADK R2 K3 ["Empty"]
  SETTABLEKS R2 R1 K1 ["_name"]
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K5 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_5:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["_configuration"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+22]
  GETTABLEKS R7 R6 K1 ["Id"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["Get"]
  GETTABLEKS R9 R6 K1 ["Id"]
  GETTABLEKS R10 R0 K3 ["_pluginController"]
  GETTABLEKS R12 R0 K4 ["_persistentUserSettings"]
  GETTABLEKS R13 R6 K1 ["Id"]
  GETTABLE R11 R12 R13
  GETTABLEKS R13 R0 K5 ["_sessionUserSettings"]
  GETTABLEKS R14 R6 K1 ["Id"]
  GETTABLE R12 R13 R14
  CALL R8 4 1
  SETTABLE R8 R1 R7
  JUMP [+25]
  GETTABLEKS R7 R6 K1 ["Id"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["Get"]
  GETTABLEKS R9 R6 K1 ["Id"]
  GETTABLEKS R11 R6 K6 ["Schema"]
  GETTABLEKS R10 R11 K7 ["Storage"]
  GETTABLEKS R11 R0 K3 ["_pluginController"]
  GETTABLEKS R13 R0 K4 ["_persistentUserSettings"]
  GETTABLEKS R14 R6 K1 ["Id"]
  GETTABLE R12 R13 R14
  GETTABLEKS R14 R0 K5 ["_sessionUserSettings"]
  GETTABLEKS R15 R6 K1 ["Id"]
  GETTABLE R13 R14 R15
  CALL R8 5 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-51]
  RETURN R1 1

PROTO_6:
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  GETTABLE R7 R8 R5
  JUMPIFNOT R7 [+58]
  GETUPVAL R7 1
  CALL R7 0 1
  JUMPIFNOT R7 [+27]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["Set"]
  MOVE R8 R5
  GETTABLEKS R9 R0 K1 ["_pluginController"]
  MOVE R10 R6
  CALL R7 3 2
  GETTABLEKS R9 R0 K2 ["_persistentUserSettings"]
  GETUPVAL R10 3
  GETTABLEKS R12 R0 K2 ["_persistentUserSettings"]
  GETTABLE R11 R12 R5
  MOVE R12 R7
  CALL R10 2 1
  SETTABLE R10 R9 R5
  GETTABLEKS R9 R0 K3 ["_sessionUserSettings"]
  GETUPVAL R10 3
  GETTABLEKS R12 R0 K3 ["_sessionUserSettings"]
  GETTABLE R11 R12 R5
  MOVE R12 R8
  CALL R10 2 1
  SETTABLE R10 R9 R5
  JUMP [+28]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["Set"]
  MOVE R8 R5
  GETUPVAL R10 0
  GETTABLE R9 R10 R5
  GETTABLEKS R10 R0 K1 ["_pluginController"]
  MOVE R11 R6
  CALL R7 4 2
  GETTABLEKS R9 R0 K2 ["_persistentUserSettings"]
  GETUPVAL R10 4
  GETTABLEKS R12 R0 K2 ["_persistentUserSettings"]
  GETTABLE R11 R12 R5
  MOVE R12 R7
  CALL R10 2 1
  SETTABLE R10 R9 R5
  GETTABLEKS R9 R0 K3 ["_sessionUserSettings"]
  GETUPVAL R10 4
  GETTABLEKS R12 R0 K3 ["_sessionUserSettings"]
  GETTABLE R11 R12 R5
  MOVE R12 R8
  CALL R10 2 1
  SETTABLE R10 R9 R5
  FORGLOOP R2 2 [-62]
  GETTABLEKS R2 R0 K1 ["_pluginController"]
  GETTABLEKS R4 R0 K4 ["_name"]
  GETTABLEKS R5 R0 K2 ["_persistentUserSettings"]
  NAMECALL R2 R2 K5 ["setSetting"]
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K0 ["Id"]
  GETUPVAL R9 0
  GETTABLE R8 R9 R7
  DUPTABLE R9 K3 [{"Id", "Label", "Children"}]
  SETTABLEKS R7 R9 K0 ["Id"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["_localization"]
  LOADK R12 K5 ["Category"]
  GETTABLEKS R13 R6 K0 ["Id"]
  NAMECALL R10 R10 K6 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K1 ["Label"]
  GETTABLEKS R10 R8 K7 ["Generator"]
  DUPTABLE R11 K10 [{"Localization", "Stylizer"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K4 ["_localization"]
  SETTABLEKS R12 R11 K8 ["Localization"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K11 ["_stylizer"]
  SETTABLEKS R12 R11 K9 ["Stylizer"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K12 ["Get"]
  GETTABLEKS R13 R6 K0 ["Id"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K13 ["_pluginController"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K14 ["_persistentUserSettings"]
  GETTABLEKS R17 R6 K0 ["Id"]
  GETTABLE R15 R16 R17
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K15 ["_sessionUserSettings"]
  GETTABLEKS R18 R6 K0 ["Id"]
  GETTABLE R16 R17 R18
  CALL R12 4 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K16 ["_name"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K17 ["_overrides"]
  GETTABLEKS R16 R6 K0 ["Id"]
  GETTABLE R14 R15 R16
  JUMPIF R14 [+2]
  NEWTABLE R14 0 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K2 ["Children"]
  FASTCALL2 TABLE_INSERT R1 R9 [+5]
  MOVE R11 R1
  MOVE R12 R9
  GETIMPORT R10 K20 [table.insert]
  CALL R10 2 0
  FORGLOOP R2 2 [-75]
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  MOVE R2 R1
  GETTABLEKS R3 R0 K0 ["_configuration"]
  CALL R2 1 1
  RETURN R2 1
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["_configuration"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K5 [{"Id", "Label", "Children", "Schema"}]
  GETTABLEKS R10 R6 K1 ["Id"]
  SETTABLEKS R10 R9 K1 ["Id"]
  GETTABLEKS R10 R0 K6 ["_localization"]
  LOADK R12 K7 ["Category"]
  GETTABLEKS R13 R6 K1 ["Id"]
  NAMECALL R10 R10 K8 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K2 ["Label"]
  GETTABLEKS R11 R6 K4 ["Schema"]
  GETTABLEKS R10 R11 K9 ["Generator"]
  DUPTABLE R11 K12 [{"Localization", "Stylizer"}]
  GETTABLEKS R12 R0 K6 ["_localization"]
  SETTABLEKS R12 R11 K10 ["Localization"]
  GETTABLEKS R12 R0 K13 ["_stylizer"]
  SETTABLEKS R12 R11 K11 ["Stylizer"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K14 ["Get"]
  GETTABLEKS R13 R6 K1 ["Id"]
  GETTABLEKS R15 R6 K4 ["Schema"]
  GETTABLEKS R14 R15 K15 ["Storage"]
  GETTABLEKS R15 R0 K16 ["_pluginController"]
  GETTABLEKS R17 R0 K17 ["_persistentUserSettings"]
  GETTABLEKS R18 R6 K1 ["Id"]
  GETTABLE R16 R17 R18
  GETTABLEKS R18 R0 K18 ["_sessionUserSettings"]
  GETTABLEKS R19 R6 K1 ["Id"]
  GETTABLE R17 R18 R19
  CALL R12 5 1
  GETTABLEKS R13 R0 K19 ["_name"]
  GETTABLEKS R15 R0 K20 ["_overrides"]
  GETTABLEKS R16 R6 K1 ["Id"]
  GETTABLE R14 R15 R16
  JUMPIF R14 [+2]
  NEWTABLE R14 0 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K3 ["Children"]
  GETTABLEKS R10 R6 K4 ["Schema"]
  SETTABLEKS R10 R9 K4 ["Schema"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K23 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-74]
  RETURN R1 1

PROTO_9:
  NEWTABLE R1 0 0
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["_gizmos"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K5 [{"Id", "Schema", "Value"}]
  GETTABLEKS R11 R7 K2 ["Id"]
  SETTABLEKS R11 R10 K2 ["Id"]
  GETTABLEKS R11 R7 K3 ["Schema"]
  SETTABLEKS R11 R10 K3 ["Schema"]
  SETTABLEKS R2 R10 K4 ["Value"]
  FASTCALL2 TABLE_INSERT R1 R10 [+4]
  MOVE R9 R1
  GETIMPORT R8 K8 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-18]
  RETURN R1 1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["setPayload"]
  CALL R2 2 0
  GETIMPORT R2 K3 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["setPayload"]
  CALL R2 2 0
  GETIMPORT R2 K3 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_category"]
  RETURN R1 1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_tile"]
  RETURN R1 1

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnShortcutChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  NEWTABLE R1 1 0
  GETUPVAL R2 0
  NEWTABLE R3 1 0
  GETUPVAL R4 1
  SETTABLE R0 R3 R4
  SETTABLE R3 R1 R2
  GETUPVAL R2 2
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["setPayload"]
  CALL R2 2 0
  GETIMPORT R2 K3 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CALL R2 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["deactivateShortcuts"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["activateShortcuts"]
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_shortcuts"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R13 R0 K2 ["_shortcutConnections"]
  GETTABLEKS R14 R0 K3 ["_shortcutController"]
  MOVE R16 R11
  GETTABLE R18 R1 R5
  GETTABLE R17 R18 R11
  NEWCLOSURE R18 P0
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R0
  NAMECALL R14 R14 K4 ["registerShortcut"]
  CALL R14 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K7 [table.insert]
  CALL R12 -1 0
  FORGLOOP R7 2 [-19]
  FORGLOOP R2 2 [-25]
  GETTABLEKS R2 R0 K8 ["OnFormChanged"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["_refreshShortcuts"]
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["_shortcutConnections"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  NAMECALL R11 R10 K1 ["Disconnect"]
  CALL R11 1 0
  FORGLOOP R6 2 [-4]
  FORGLOOP R1 2 [-10]
  GETTABLEKS R1 R0 K2 ["_refreshShortcuts"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["_refreshShortcuts"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  NAMECALL R1 R0 K0 ["activateShortcuts"]
  CALL R1 1 0
  RETURN R0 0

PROTO_22:
  RETURN R0 0

PROTO_23:
  NAMECALL R1 R0 K0 ["deactivateShortcuts"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["reportAnalytics"]
  CALL R1 1 0
  RETURN R0 0

PROTO_24:
  RETURN R0 0

PROTO_25:
  RETURN R0 0

PROTO_26:
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
  GETTABLEKS R2 R1 K8 ["join"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETTABLEKS R6 R3 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["deepJoin"]
  GETTABLEKS R6 R4 K14 ["Storage"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K12 ["Util"]
  GETTABLEKS R8 R9 K15 ["SettingsHelper"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K12 ["Util"]
  GETTABLEKS R9 R8 K16 ["Signal"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K17 ["Schemas"]
  GETTABLEKS R11 R12 K18 ["Settings"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K17 ["Schemas"]
  GETTABLEKS R12 R13 K19 ["StorageTypes"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K20 ["Flags"]
  GETTABLEKS R13 R14 K21 ["getFFlagTerrainEditorDebugSavedSettings"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K20 ["Flags"]
  GETTABLEKS R14 R15 K22 ["getFFlagTerrainEditorRemoveSchema"]
  CALL R13 1 1
  NEWTABLE R14 32 0
  SETTABLEKS R14 R14 K23 ["__index"]
  DUPCLOSURE R15 K24 [PROTO_0]
  SETTABLEKS R15 R14 K25 ["new"]
  DUPCLOSURE R15 K26 [PROTO_1]
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K27 ["init"]
  DUPCLOSURE R15 K28 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R6
  SETTABLEKS R15 R14 K29 ["registerSettings"]
  DUPCLOSURE R15 K30 [PROTO_3]
  SETTABLEKS R15 R14 K31 ["registerShortcuts"]
  DUPCLOSURE R15 K32 [PROTO_4]
  CAPTURE VAL R14
  SETTABLEKS R15 R14 K33 ["empty"]
  DUPCLOSURE R15 K34 [PROTO_5]
  CAPTURE VAL R13
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K35 ["getPayload"]
  DUPCLOSURE R15 K36 [PROTO_6]
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R15 R14 K37 ["setPayload"]
  DUPCLOSURE R15 K38 [PROTO_8]
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K39 ["form"]
  DUPCLOSURE R15 K40 [PROTO_9]
  SETTABLEKS R15 R14 K41 ["gizmos"]
  DUPCLOSURE R15 K42 [PROTO_11]
  SETTABLEKS R15 R14 K43 ["saveForm"]
  DUPCLOSURE R15 K44 [PROTO_13]
  SETTABLEKS R15 R14 K45 ["saveGizmos"]
  DUPCLOSURE R15 K46 [PROTO_14]
  SETTABLEKS R15 R14 K47 ["getCategory"]
  DUPCLOSURE R15 K48 [PROTO_15]
  SETTABLEKS R15 R14 K49 ["getTile"]
  DUPCLOSURE R15 K50 [PROTO_19]
  SETTABLEKS R15 R14 K51 ["activateShortcuts"]
  DUPCLOSURE R15 K52 [PROTO_20]
  SETTABLEKS R15 R14 K53 ["deactivateShortcuts"]
  DUPCLOSURE R15 K54 [PROTO_21]
  SETTABLEKS R15 R14 K55 ["activate"]
  DUPCLOSURE R15 K56 [PROTO_22]
  SETTABLEKS R15 R14 K57 ["reportAnalytics"]
  DUPCLOSURE R15 K58 [PROTO_23]
  SETTABLEKS R15 R14 K59 ["deactivate"]
  DUPCLOSURE R15 K60 [PROTO_24]
  SETTABLEKS R15 R14 K61 ["startOperation"]
  DUPCLOSURE R15 K62 [PROTO_25]
  SETTABLEKS R15 R14 K63 ["operation"]
  DUPCLOSURE R15 K64 [PROTO_26]
  SETTABLEKS R15 R14 K65 ["note"]
  RETURN R14 1
