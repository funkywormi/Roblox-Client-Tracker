PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["StoreProvider"]
  DUPTABLE R2 K3 [{"store"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K2 ["store"]
  DUPTABLE R3 K5 [{"AvatarImporter"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K7 [{"pluginGui"}]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K6 ["pluginGui"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["AvatarImporter"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["plugin"]
  GETTABLEKS R1 R2 K1 ["enabled"]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["SetActive"]
  CALL R2 2 0
  GETUPVAL R2 1
  SETTABLEKS R1 R2 K3 ["Enabled"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["update"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R2 0 -1
  CALL R0 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["DebugEnableRobloxAvatarItemConfigurer"]
  LOADB R4 0
  NAMECALL R1 R1 K6 ["DefineFastFlag"]
  CALL R1 3 0
  GETIMPORT R1 K8 [pcall]
  DUPCLOSURE R2 K9 [PROTO_0]
  CALL R1 1 2
  AND R3 R1 R2
  GETIMPORT R4 K4 [game]
  LOADK R6 K5 ["DebugEnableRobloxAvatarItemConfigurer"]
  NAMECALL R4 R4 K10 ["GetFastFlag"]
  CALL R4 2 1
  JUMPIFNOT R4 [+1]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R0 K13 ["Bin"]
  GETTABLEKS R5 R6 K14 ["defineLuaFlags"]
  CALL R4 1 0
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R0 K15 ["src"]
  GETTABLEKS R5 R6 K16 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R0 K15 ["src"]
  GETTABLEKS R6 R7 K17 ["Globals"]
  CALL R5 1 1
  GETIMPORT R6 K19 [plugin]
  SETTABLEKS R6 R5 K18 ["plugin"]
  GETTABLEKS R6 R5 K18 ["plugin"]
  GETTABLEKS R8 R4 K20 ["TOOLBAR_NAME"]
  NAMECALL R6 R6 K21 ["CreateToolbar"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K22 ["toolbar"]
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R0 K23 ["Packages"]
  GETTABLEKS R7 R8 K24 ["Roact"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R0 K23 ["Packages"]
  GETTABLEKS R8 R9 K25 ["Rodux"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R10 R0 K23 ["Packages"]
  GETTABLEKS R9 R10 K26 ["RoactRodux"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R12 R0 K15 ["src"]
  GETTABLEKS R11 R12 K27 ["components"]
  GETTABLEKS R10 R11 K28 ["AvatarImporter"]
  CALL R9 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R12 R0 K15 ["src"]
  GETTABLEKS R11 R12 K29 ["reducers"]
  CALL R10 1 1
  GETIMPORT R11 K12 [require]
  GETTABLEKS R14 R0 K15 ["src"]
  GETTABLEKS R13 R14 K30 ["actions"]
  GETTABLEKS R12 R13 K31 ["ClosePlugin"]
  CALL R11 1 1
  GETIMPORT R12 K12 [require]
  GETTABLEKS R15 R0 K15 ["src"]
  GETTABLEKS R14 R15 K30 ["actions"]
  GETTABLEKS R13 R14 K32 ["TogglePlugin"]
  CALL R12 1 1
  GETTABLEKS R14 R7 K33 ["Store"]
  GETTABLEKS R13 R14 K34 ["new"]
  MOVE R14 R10
  LOADNIL R15
  NEWTABLE R16 0 1
  GETTABLEKS R17 R7 K35 ["thunkMiddleware"]
  SETLIST R16 R17 1 [1]
  CALL R13 3 1
  GETTABLEKS R14 R5 K18 ["plugin"]
  GETTABLEKS R16 R4 K36 ["NAME"]
  DUPTABLE R17 K42 [{"Enabled", "Title", "Name", "Modal", "Size"}]
  LOADB R18 0
  SETTABLEKS R18 R17 K37 ["Enabled"]
  GETTABLEKS R18 R4 K43 ["TITLE"]
  SETTABLEKS R18 R17 K38 ["Title"]
  GETTABLEKS R18 R4 K36 ["NAME"]
  SETTABLEKS R18 R17 K39 ["Name"]
  LOADB R18 1
  SETTABLEKS R18 R17 K40 ["Modal"]
  GETIMPORT R18 K45 [Vector2.new]
  GETTABLEKS R19 R4 K46 ["BACKGROUND_WIDTH"]
  GETTABLEKS R20 R4 K47 ["BACKGROUND_HEIGHT"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K41 ["Size"]
  NAMECALL R14 R14 K48 ["CreateQWidgetPluginGui"]
  CALL R14 3 1
  GETTABLEKS R15 R4 K36 ["NAME"]
  SETTABLEKS R15 R14 K39 ["Name"]
  DUPCLOSURE R17 K49 [PROTO_1]
  CAPTURE VAL R13
  CAPTURE VAL R11
  NAMECALL R15 R14 K50 ["BindToClose"]
  CALL R15 2 0
  DUPCLOSURE R15 K51 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R14
  GETTABLEKS R16 R6 K52 ["mount"]
  MOVE R17 R15
  CALL R17 0 1
  MOVE R18 R14
  CALL R16 2 1
  GETTABLEKS R17 R5 K22 ["toolbar"]
  GETTABLEKS R19 R4 K53 ["BUTTON_NAME"]
  GETTABLEKS R20 R4 K54 ["BUTTON_TOOLTIP"]
  LOADK R21 K55 ["rbxlocaltheme://AvatarImporter"]
  NAMECALL R17 R17 K56 ["CreateButton"]
  CALL R17 4 1
  GETTABLEKS R18 R17 K57 ["Click"]
  DUPCLOSURE R20 K58 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R12
  NAMECALL R18 R18 K59 ["Connect"]
  CALL R18 2 0
  GETTABLEKS R18 R13 K60 ["changed"]
  DUPCLOSURE R20 K61 [PROTO_4]
  CAPTURE VAL R17
  CAPTURE VAL R14
  NAMECALL R18 R18 K62 ["connect"]
  CALL R18 2 0
  GETIMPORT R20 K64 [settings]
  CALL R20 0 1
  GETTABLEKS R19 R20 K65 ["Studio"]
  GETTABLEKS R18 R19 K66 ["ThemeChanged"]
  DUPCLOSURE R20 K67 [PROTO_5]
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R15
  NAMECALL R18 R18 K59 ["Connect"]
  CALL R18 2 0
  LOADNIL R18
  RETURN R18 1
