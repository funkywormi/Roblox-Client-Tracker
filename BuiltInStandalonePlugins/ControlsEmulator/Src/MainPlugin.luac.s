PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleEnabled"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"editMappingsVisible"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["state"]
  GETTABLEKS R4 R5 K0 ["editMappingsVisible"]
  NOT R3 R4
  SETTABLEKS R3 R2 K0 ["editMappingsVisible"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_8:
  DUPTABLE R2 K3 [{"enabled", "wrapperRef", "editMappingsVisible"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["wrapperRef"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["editMappingsVisible"]
  SETTABLEKS R2 R0 K4 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onWidgetEnabledChanged"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["onDockWidgetCreated"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K10 ["onDeviceMappingsActivated"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["Localization"]
  GETTABLEKS R2 R3 K12 ["new"]
  DUPTABLE R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K13 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K14 ["translationResourceTable"]
  LOADK R4 K17 ["ControlsEmulator"]
  SETTABLEKS R4 R3 K15 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K18 ["localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K19 ["Analytics"]
  GETTABLEKS R2 R3 K12 ["new"]
  DUPCLOSURE R3 K20 [PROTO_7]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K21 ["analytics"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K12 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K22 ["DEPRECATED_stylizer"]
  GETUPVAL R2 4
  GETTABLEKS R3 R1 K23 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K24 ["design"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  NAMECALL R0 R0 K2 ["SetGamepadEmulationEnabled"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["PluginLoaderContext"]
  GETTABLEKS R1 R2 K2 ["mainButton"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["enabled"]
  NAMECALL R1 R1 K5 ["SetActive"]
  CALL R1 2 0
  GETIMPORT R1 K7 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"editMappingsVisible"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["editMappingsVisible"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["provide"]
  NEWTABLE R2 0 5
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["new"]
  GETUPVAL R4 2
  CALL R3 1 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["new"]
  GETUPVAL R5 2
  NAMECALL R5 R5 K2 ["getMouse"]
  CALL R5 1 -1
  CALL R4 -1 1
  GETUPVAL R5 4
  CALL R5 0 1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K3 ["localization"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K4 ["analytics"]
  SETLIST R2 R3 5 [1]
  DUPTABLE R3 K7 [{"MainWidget", "MappingsDialog"}]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K8 ["createElement"]
  GETUPVAL R5 7
  NEWTABLE R6 16 0
  LOADK R7 K9 ["ControlsEmulator"]
  SETTABLEKS R7 R6 K10 ["Id"]
  GETUPVAL R7 8
  SETTABLEKS R7 R6 K11 ["Enabled"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K3 ["localization"]
  LOADK R9 K12 ["Plugin"]
  LOADK R10 K13 ["Name"]
  NAMECALL R7 R7 K14 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K15 ["Title"]
  GETIMPORT R7 K19 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R7 R6 K17 ["ZIndexBehavior"]
  GETIMPORT R7 K22 [Enum.InitialDockState.Bottom]
  SETTABLEKS R7 R6 K20 ["InitialDockState"]
  GETIMPORT R7 K24 [Vector2.new]
  LOADN R8 128
  LOADN R9 224
  CALL R7 2 1
  SETTABLEKS R7 R6 K25 ["Size"]
  GETIMPORT R7 K24 [Vector2.new]
  LOADN R8 250
  LOADN R9 200
  CALL R7 2 1
  SETTABLEKS R7 R6 K26 ["MinSize"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K27 ["onClose"]
  SETTABLEKS R7 R6 K28 ["OnClose"]
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K29 ["PluginLoaderContext"]
  GETTABLEKS R7 R8 K30 ["mainDockWidget"]
  SETTABLEKS R7 R6 K31 ["Widget"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K32 ["onDockWidgetCreated"]
  SETTABLEKS R7 R6 K33 ["OnWidgetCreated"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K34 ["Change"]
  GETTABLEKS R7 R8 K11 ["Enabled"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K35 ["onWidgetEnabledChanged"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K37 [{"MainWidget", "StyleLink"}]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 7
  NEWTABLE R10 16 0
  LOADK R11 K9 ["ControlsEmulator"]
  SETTABLEKS R11 R10 K10 ["Id"]
  GETUPVAL R11 8
  SETTABLEKS R11 R10 K11 ["Enabled"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K3 ["localization"]
  LOADK R13 K12 ["Plugin"]
  LOADK R14 K13 ["Name"]
  NAMECALL R11 R11 K14 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K15 ["Title"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K38 ["NAME"]
  SETTABLEKS R11 R10 K13 ["Name"]
  GETIMPORT R11 K19 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K17 ["ZIndexBehavior"]
  GETIMPORT R11 K22 [Enum.InitialDockState.Bottom]
  SETTABLEKS R11 R10 K20 ["InitialDockState"]
  GETIMPORT R11 K24 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["Size"]
  GETIMPORT R11 K24 [Vector2.new]
  LOADN R12 250
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["MinSize"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K27 ["onClose"]
  SETTABLEKS R11 R10 K28 ["OnClose"]
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K29 ["PluginLoaderContext"]
  GETTABLEKS R11 R12 K30 ["mainDockWidget"]
  SETTABLEKS R11 R10 K31 ["Widget"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K32 ["onDockWidgetCreated"]
  SETTABLEKS R11 R10 K33 ["OnWidgetCreated"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K34 ["Change"]
  GETTABLEKS R11 R12 K11 ["Enabled"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K35 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K40 [{"InputTrackingWrapper"}]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 11
  NEWTABLE R14 0 0
  DUPTABLE R15 K43 [{"WidgetHeader", "DeviceBlueprint"}]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 12
  NEWTABLE R18 2 0
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K44 ["Tag"]
  LOADK R20 K45 ["Component-WidgetHeader"]
  SETTABLE R20 R18 R19
  GETUPVAL R19 13
  NAMECALL R19 R19 K46 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K47 ["LayoutOrder"]
  DUPTABLE R19 K50 [{"DeviceDropdown", "MappingsButton"}]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K8 ["createElement"]
  GETUPVAL R21 14
  NEWTABLE R22 8 0
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K44 ["Tag"]
  LOADK R24 K51 ["DeviceSelectorDropdown"]
  SETTABLE R24 R22 R23
  GETUPVAL R23 13
  NAMECALL R23 R23 K46 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K47 ["LayoutOrder"]
  GETIMPORT R23 K53 [UDim2.new]
  LOADN R24 0
  LOADN R25 250
  LOADN R26 0
  LOADN R27 40
  CALL R23 4 1
  SETTABLEKS R23 R22 K25 ["Size"]
  GETUPVAL R24 15
  GETTABLEKS R23 R24 K54 ["connectGamepadId"]
  SETTABLEKS R23 R22 K55 ["onChanged"]
  GETUPVAL R23 16
  SETTABLEKS R23 R22 K56 ["deviceIds"]
  GETTABLEKS R23 R0 K57 ["gamepadId"]
  SETTABLEKS R23 R22 K58 ["selectedGamepadId"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K48 ["DeviceDropdown"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K8 ["createElement"]
  LOADK R21 K59 ["TextButton"]
  NEWTABLE R22 4 0
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K44 ["Tag"]
  LOADK R24 K60 ["DeviceSelectorMappingsButton"]
  SETTABLE R24 R22 R23
  GETUPVAL R23 13
  NAMECALL R23 R23 K46 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K47 ["LayoutOrder"]
  LOADK R23 K61 ["Device Mappings"]
  SETTABLEKS R23 R22 K62 ["Text"]
  GETUPVAL R25 6
  GETTABLEKS R24 R25 K63 ["Event"]
  GETTABLEKS R23 R24 K64 ["Activated"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K65 ["onDeviceMappingsActivated"]
  SETTABLE R24 R22 R23
  CALL R20 2 1
  SETTABLEKS R20 R19 K49 ["MappingsButton"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K41 ["WidgetHeader"]
  GETTABLEKS R17 R0 K57 ["gamepadId"]
  JUMPIFEQKNIL R17 [+24]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 17
  NEWTABLE R18 4 0
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K44 ["Tag"]
  LOADK R20 K66 ["Component-DeviceBlueprint"]
  SETTABLE R20 R18 R19
  GETUPVAL R19 13
  NAMECALL R19 R19 K46 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K47 ["LayoutOrder"]
  GETTABLEKS R19 R0 K57 ["gamepadId"]
  SETTABLEKS R19 R18 K58 ["selectedGamepadId"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K42 ["DeviceBlueprint"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K39 ["InputTrackingWrapper"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K5 ["MainWidget"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K36 ["StyleLink"]
  DUPTABLE R10 K68 [{"StyleSheet"}]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K69 ["design"]
  SETTABLEKS R11 R10 K67 ["StyleSheet"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K36 ["StyleLink"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K5 ["MainWidget"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K8 ["createElement"]
  GETUPVAL R5 7
  DUPTABLE R6 K70 [{"Id", "Enabled", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose"}]
  LOADK R7 K71 ["ControlsEmulatorMappings"]
  SETTABLEKS R7 R6 K10 ["Id"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K72 ["state"]
  GETTABLEKS R7 R8 K73 ["editMappingsVisible"]
  SETTABLEKS R7 R6 K11 ["Enabled"]
  LOADK R7 K74 ["Edit Mappings"]
  SETTABLEKS R7 R6 K15 ["Title"]
  GETIMPORT R7 K19 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R7 R6 K17 ["ZIndexBehavior"]
  GETIMPORT R7 K76 [Enum.InitialDockState.Float]
  SETTABLEKS R7 R6 K20 ["InitialDockState"]
  GETIMPORT R7 K24 [Vector2.new]
  LOADN R8 128
  LOADN R9 224
  CALL R7 2 1
  SETTABLEKS R7 R6 K25 ["Size"]
  GETIMPORT R7 K24 [Vector2.new]
  LOADN R8 250
  LOADN R9 200
  CALL R7 2 1
  SETTABLEKS R7 R6 K26 ["MinSize"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U5
  SETTABLEKS R7 R6 K28 ["OnClose"]
  DUPTABLE R7 K40 [{"InputTrackingWrapper"}]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 11
  NEWTABLE R10 0 0
  NEWTABLE R11 1 1
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 18
  CALL R12 1 1
  SETLIST R11 R12 1 [1]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K36 ["StyleLink"]
  DUPTABLE R15 K68 [{"StyleSheet"}]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K69 ["design"]
  SETTABLEKS R16 R15 K67 ["StyleSheet"]
  CALL R13 2 1
  SETTABLEKS R13 R11 K36 ["StyleLink"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K39 ["InputTrackingWrapper"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K6 ["MappingsDialog"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Consumer"]
  LOADNIL R3
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE VAL R0
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CALL R1 3 -1
  RETURN R1 -1

PROTO_14:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Consumer"]
  LOADNIL R7
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CALL R5 3 -1
  RETURN R5 -1

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  LOADNIL R3
  DUPTABLE R4 K2 [{"MainPlugin"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  MOVE R7 R0
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["MainPlugin"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R3 R4 K10 ["DockWidget"]
  GETTABLEKS R5 R2 K9 ["UI"]
  GETTABLEKS R4 R5 K11 ["IconButton"]
  GETTABLEKS R6 R2 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["LayoutOrderIterator"]
  GETTABLEKS R6 R5 K14 ["new"]
  CALL R6 0 1
  GETTABLEKS R7 R2 K15 ["ContextServices"]
  GETTABLEKS R8 R7 K16 ["Plugin"]
  GETTABLEKS R9 R7 K17 ["Mouse"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K18 ["Src"]
  GETTABLEKS R12 R13 K19 ["Resources"]
  GETTABLEKS R11 R12 K20 ["MakeTheme"]
  CALL R10 1 1
  GETTABLEKS R13 R2 K21 ["Style"]
  GETTABLEKS R12 R13 K22 ["Themes"]
  GETTABLEKS R11 R12 K23 ["StudioTheme"]
  GETTABLEKS R13 R2 K24 ["Styling"]
  GETTABLEKS R12 R13 K25 ["registerPluginStyles"]
  GETTABLEKS R14 R0 K18 ["Src"]
  GETTABLEKS R13 R14 K19 ["Resources"]
  GETTABLEKS R15 R13 K26 ["Localization"]
  GETTABLEKS R14 R15 K27 ["SourceStrings"]
  GETTABLEKS R16 R13 K26 ["Localization"]
  GETTABLEKS R15 R16 K28 ["LocalizedStrings"]
  GETTABLEKS R17 R0 K18 ["Src"]
  GETTABLEKS R16 R17 K29 ["Components"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R16 K30 ["DeviceBlueprint"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R16 K31 ["DeviceDropdown"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R16 K32 ["WidgetHeader"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K18 ["Src"]
  GETTABLEKS R22 R23 K12 ["Util"]
  GETTABLEKS R21 R22 K33 ["Constants"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K18 ["Src"]
  GETTABLEKS R23 R24 K29 ["Components"]
  GETTABLEKS R22 R23 K34 ["RootContainerInputContextProvider"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K18 ["Src"]
  GETTABLEKS R24 R25 K29 ["Components"]
  GETTABLEKS R23 R24 K35 ["MappingsContextProvider"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K18 ["Src"]
  GETTABLEKS R25 R26 K12 ["Util"]
  GETTABLEKS R24 R25 K36 ["MappingsContext"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K18 ["Src"]
  GETTABLEKS R26 R27 K12 ["Util"]
  GETTABLEKS R25 R26 K37 ["MappingsActionsContext"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K18 ["Src"]
  GETTABLEKS R27 R28 K29 ["Components"]
  GETTABLEKS R26 R27 K38 ["MappingsList"]
  CALL R25 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K18 ["Src"]
  GETTABLEKS R29 R30 K12 ["Util"]
  GETTABLEKS R28 R29 K39 ["MockableProxyPluginComponents"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K40 ["StudioDeviceEmulator"]
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K18 ["Src"]
  GETTABLEKS R29 R30 K29 ["Components"]
  GETTABLEKS R28 R29 K41 ["MappingsDialog"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R30 R0 K6 ["Packages"]
  GETTABLEKS R29 R30 K42 ["Dash"]
  CALL R28 1 1
  GETTABLEKS R29 R1 K43 ["PureComponent"]
  LOADK R31 K44 ["MainPlugin"]
  NAMECALL R29 R29 K45 ["extend"]
  CALL R29 2 1
  GETTABLEKS R30 R28 K46 ["values"]
  GETTABLEKS R31 R20 K47 ["GAMEPAD_TYPE_TO_ID"]
  CALL R30 1 1
  DUPCLOSURE R31 K48 [PROTO_8]
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R31 R29 K49 ["init"]
  DUPCLOSURE R31 K50 [PROTO_10]
  CAPTURE VAL R26
  SETTABLEKS R31 R29 K51 ["didUpdate"]
  DUPCLOSURE R31 K52 [PROTO_14]
  CAPTURE VAL R1
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R6
  CAPTURE VAL R18
  CAPTURE VAL R30
  CAPTURE VAL R17
  CAPTURE VAL R27
  SETTABLEKS R31 R29 K53 ["render"]
  GETTABLEKS R31 R20 K54 ["NAME"]
  SETTABLEKS R31 R29 K55 ["Name"]
  DUPCLOSURE R31 K56 [PROTO_15]
  CAPTURE VAL R1
  CAPTURE VAL R22
  CAPTURE VAL R29
  RETURN R31 1
