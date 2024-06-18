PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["Material"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K1 ["Material"]
  GETTABLEKS R1 R2 K1 ["Material"]
  JUMP [+7]
  GETTABLEKS R1 R0 K2 ["MaterialServiceController"]
  GETTABLEKS R3 R0 K3 ["Path"]
  NAMECALL R1 R1 K4 ["getCategoryDefaultMaterial"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+1]
  JUMP [+2]
  GETIMPORT R1 K7 [Enum.Material.Plastic]
  GETTABLEKS R2 R0 K8 ["Search"]
  GETTABLEKS R3 R0 K9 ["GeneralServiceController"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K10 ["createMaterialVariant"]
  CALL R3 3 1
  NEWTABLE R4 1 0
  GETUPVAL R5 2
  MOVE R6 R1
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["BaseMaterial"]
  GETTABLEKS R5 R0 K12 ["Analytics"]
  LOADK R7 K13 ["newMaterialVariant"]
  MOVE R8 R4
  GETUPVAL R9 3
  NAMECALL R5 R5 K14 ["report"]
  CALL R5 4 0
  GETTABLEKS R5 R0 K12 ["Analytics"]
  LOADK R7 K15 ["newMaterialVariantCounter"]
  NAMECALL R5 R5 K14 ["report"]
  CALL R5 2 0
  GETTABLEKS R5 R0 K2 ["MaterialServiceController"]
  GETUPVAL R7 4
  MOVE R8 R1
  CALL R7 1 -1
  NAMECALL R5 R5 K16 ["setPath"]
  CALL R5 -1 0
  GETTABLEKS R5 R0 K17 ["dispatchSetMaterialVariant"]
  MOVE R6 R3
  CALL R5 1 0
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K18 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K21 [{"LayoutOrder", "Size"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K19 ["LayoutOrder"]
  GETIMPORT R8 K24 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["Size"]
  CALL R5 2 1
  SETUPVAL R5 5
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Material"]
  JUMPIFNOT R1 [+24]
  GETTABLEKS R2 R0 K1 ["Material"]
  GETTABLEKS R1 R2 K2 ["MaterialVariant"]
  JUMPIFNOT R1 [+19]
  GETTABLEKS R1 R0 K3 ["GeneralServiceController"]
  NEWTABLE R3 0 1
  GETTABLEKS R5 R0 K1 ["Material"]
  GETTABLEKS R4 R5 K2 ["MaterialVariant"]
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K4 ["SetSelection"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K5 ["Analytics"]
  LOADK R3 K6 ["showInExplorer"]
  NAMECALL R1 R1 K7 ["report"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["DEPRECATED_ActiveAsTool"]
  JUMPIF R1 [+9]
  GETTABLEKS R1 R0 K2 ["Material"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K3 ["PluginController"]
  NAMECALL R1 R1 K4 ["DEPRECATED_toggleMaterialAsTool"]
  CALL R1 1 0
  JUMP [+8]
  GETTABLEKS R1 R0 K1 ["DEPRECATED_ActiveAsTool"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K3 ["PluginController"]
  NAMECALL R1 R1 K5 ["DEPRECATED_untoggleMaterialAsTool"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K6 ["Analytics"]
  LOADK R3 K7 ["materialAsTool"]
  NAMECALL R1 R1 K8 ["report"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["MaterialServiceController"]
  MOVE R4 R0
  NAMECALL R2 R2 K2 ["setSearch"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K3 ["Analytics"]
  LOADK R4 K4 ["searchBar"]
  NAMECALL R2 R2 K5 ["report"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K0 ["createMaterialVariant"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["showInExplorer"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["DEPRECATED_materialAsTool"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["setSearch"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["TopBar"]
  GETTABLEKS R3 R1 K3 ["LayoutOrder"]
  GETTABLEKS R4 R1 K4 ["Size"]
  GETTABLEKS R5 R1 K5 ["Localization"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["new"]
  CALL R6 0 1
  GETTABLEKS R7 R2 K7 ["CreateNewVariant"]
  GETTABLEKS R8 R2 K8 ["ShowInExplorer"]
  GETUPVAL R10 1
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  LOADNIL R9
  JUMP [+2]
  GETTABLEKS R9 R2 K9 ["DEPRECATED_MaterialAsToolMouseIcon"]
  GETTABLEKS R10 R2 K10 ["BackgroundColor"]
  GETTABLEKS R13 R2 K11 ["ButtonSize"]
  GETTABLEKS R12 R13 K12 ["X"]
  GETTABLEKS R11 R12 K13 ["Offset"]
  GETTABLEKS R12 R2 K14 ["Padding"]
  GETTABLEKS R13 R2 K15 ["SpacerWidth"]
  GETTABLEKS R14 R2 K16 ["SearchBarMaxWidth"]
  GETTABLEKS R15 R2 K17 ["TopBarButtonWidth"]
  GETTABLEKS R18 R2 K18 ["ViewTypeSize"]
  GETTABLEKS R17 R18 K12 ["X"]
  GETTABLEKS R16 R17 K13 ["Offset"]
  GETTABLEKS R19 R1 K19 ["AbsoluteSize"]
  GETTABLEKS R18 R19 K12 ["X"]
  GETUPVAL R21 2
  ADD R22 R11 R12
  MUL R20 R21 R22
  ADD R21 R16 R12
  ADD R19 R20 R21
  SUB R17 R18 R19
  LOADN R19 1
  LOADN R23 2
  MUL R22 R23 R13
  ADD R21 R22 R14
  DIV R20 R17 R21
  FASTCALL2 MATH_MIN R19 R20 [+3]
  GETIMPORT R18 K22 [math.min]
  CALL R18 2 1
  GETTABLEKS R20 R1 K23 ["Material"]
  JUMPIFNOT R20 [+5]
  GETTABLEKS R21 R1 K23 ["Material"]
  GETTABLEKS R20 R21 K24 ["MaterialVariant"]
  JUMPIF R20 [+2]
  LOADB R19 1
  JUMP [+1]
  LOADB R19 0
  GETUPVAL R21 1
  CALL R21 0 1
  JUMPIFNOT R21 [+2]
  LOADNIL R20
  JUMP [+2]
  GETTABLEKS R20 R1 K25 ["DEPRECATED_ActiveAsTool"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K26 ["createElement"]
  GETUPVAL R22 4
  GETUPVAL R23 5
  DUPTABLE R24 K30 [{"BackgroundColor", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding", "Size", "Spacing"}]
  SETTABLEKS R10 R24 K10 ["BackgroundColor"]
  GETIMPORT R25 K34 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K27 ["Layout"]
  GETIMPORT R25 K36 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R25 R24 K28 ["HorizontalAlignment"]
  SETTABLEKS R3 R24 K3 ["LayoutOrder"]
  SETTABLEKS R12 R24 K14 ["Padding"]
  SETTABLEKS R4 R24 K4 ["Size"]
  SETTABLEKS R12 R24 K29 ["Spacing"]
  GETTABLEKS R25 R1 K37 ["WrapperProps"]
  CALL R23 2 1
  DUPTABLE R24 K42 [{"CreateMaterialVariant", "ShowInExplorer", "MaterialAsTool", "RestPane", "ViewType"}]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K26 ["createElement"]
  GETUPVAL R26 6
  DUPTABLE R27 K47 [{"ImageStyle", "IsDisabled", "LayoutOrder", "OnClick", "TooltipText"}]
  SETTABLEKS R7 R27 K43 ["ImageStyle"]
  LOADB R28 0
  SETTABLEKS R28 R27 K44 ["IsDisabled"]
  NAMECALL R28 R6 K48 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K3 ["LayoutOrder"]
  GETTABLEKS R28 R0 K49 ["createMaterialVariant"]
  SETTABLEKS R28 R27 K45 ["OnClick"]
  LOADK R30 K2 ["TopBar"]
  LOADK R31 K50 ["Create"]
  NAMECALL R28 R5 K51 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K46 ["TooltipText"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K38 ["CreateMaterialVariant"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K26 ["createElement"]
  GETUPVAL R26 6
  DUPTABLE R27 K47 [{"ImageStyle", "IsDisabled", "LayoutOrder", "OnClick", "TooltipText"}]
  SETTABLEKS R8 R27 K43 ["ImageStyle"]
  SETTABLEKS R19 R27 K44 ["IsDisabled"]
  NAMECALL R28 R6 K48 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K3 ["LayoutOrder"]
  GETTABLEKS R28 R0 K52 ["showInExplorer"]
  SETTABLEKS R28 R27 K45 ["OnClick"]
  LOADK R30 K2 ["TopBar"]
  LOADK R31 K53 ["Show"]
  NAMECALL R28 R5 K51 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K46 ["TooltipText"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K8 ["ShowInExplorer"]
  GETUPVAL R26 1
  CALL R26 0 1
  JUMPIFNOT R26 [+2]
  LOADNIL R25
  JUMP [+32]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K26 ["createElement"]
  GETUPVAL R26 6
  DUPTABLE R27 K55 [{"ImageStyle", "IsPressed", "LayoutOrder", "OnClick", "TooltipText"}]
  SETTABLEKS R9 R27 K43 ["ImageStyle"]
  GETUPVAL R29 1
  CALL R29 0 1
  JUMPIFNOT R29 [+2]
  LOADNIL R28
  JUMP [+1]
  MOVE R28 R20
  SETTABLEKS R28 R27 K54 ["IsPressed"]
  NAMECALL R28 R6 K48 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K3 ["LayoutOrder"]
  GETTABLEKS R28 R0 K56 ["DEPRECATED_materialAsTool"]
  SETTABLEKS R28 R27 K45 ["OnClick"]
  LOADK R30 K2 ["TopBar"]
  LOADK R31 K39 ["MaterialAsTool"]
  NAMECALL R28 R5 K51 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K46 ["TooltipText"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K39 ["MaterialAsTool"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K26 ["createElement"]
  GETUPVAL R26 4
  DUPTABLE R27 K57 [{"Size", "LayoutOrder"}]
  GETIMPORT R28 K59 [UDim2.new]
  LOADN R29 1
  GETUPVAL R33 2
  ADD R34 R11 R12
  MUL R32 R33 R34
  ADD R33 R16 R12
  ADD R31 R32 R33
  MINUS R30 R31
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K4 ["Size"]
  NAMECALL R28 R6 K48 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K3 ["LayoutOrder"]
  DUPTABLE R28 K61 [{"SearchBar"}]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K26 ["createElement"]
  GETUPVAL R30 7
  DUPTABLE R31 K68 [{"Position", "AnchorPoint", "OnSearchRequested", "PlaceholderText", "ShowSearchButton", "ShowSearchIcon", "Size"}]
  GETIMPORT R32 K59 [UDim2.new]
  LOADK R33 K69 [0.5]
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K62 ["Position"]
  GETIMPORT R32 K71 [Vector2.new]
  LOADK R33 K69 [0.5]
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K63 ["AnchorPoint"]
  GETTABLEKS R32 R0 K72 ["setSearch"]
  SETTABLEKS R32 R31 K64 ["OnSearchRequested"]
  LOADK R34 K2 ["TopBar"]
  LOADK R35 K73 ["Search"]
  NAMECALL R32 R5 K51 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K65 ["PlaceholderText"]
  LOADB R32 0
  SETTABLEKS R32 R31 K66 ["ShowSearchButton"]
  LOADB R32 1
  SETTABLEKS R32 R31 K67 ["ShowSearchIcon"]
  GETIMPORT R32 K59 [UDim2.new]
  LOADN R33 0
  MUL R34 R14 R18
  LOADN R35 0
  MOVE R36 R15
  CALL R32 4 1
  SETTABLEKS R32 R31 K4 ["Size"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K60 ["SearchBar"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K40 ["RestPane"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K26 ["createElement"]
  GETUPVAL R26 8
  DUPTABLE R27 K74 [{"LayoutOrder"}]
  NAMECALL R28 R6 K48 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K3 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K41 ["ViewType"]
  CALL R21 3 -1
  RETURN R21 -1

PROTO_6:
  DUPTABLE R1 K4 [{"DEPRECATED_ActiveAsTool", "Material", "Path", "Search"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+4]
  GETTABLEKS R3 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R2 R3 K0 ["DEPRECATED_ActiveAsTool"]
  SETTABLEKS R2 R1 K0 ["DEPRECATED_ActiveAsTool"]
  GETTABLEKS R3 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R2 R3 K1 ["Material"]
  SETTABLEKS R2 R1 K1 ["Material"]
  GETTABLEKS R3 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R2 R3 K2 ["Path"]
  SETTABLEKS R2 R1 K2 ["Path"]
  GETTABLEKS R3 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R2 R3 K3 ["Search"]
  SETTABLEKS R2 R1 K3 ["Search"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"dispatchSetMaterialVariant"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetMaterialVariant"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["Util"]
  GETTABLEKS R6 R5 K12 ["LayoutOrderIterator"]
  GETTABLEKS R7 R4 K13 ["ContextServices"]
  GETTABLEKS R8 R7 K14 ["withContext"]
  GETTABLEKS R9 R7 K15 ["Analytics"]
  GETTABLEKS R10 R7 K16 ["Localization"]
  GETTABLEKS R12 R4 K17 ["Wrappers"]
  GETTABLEKS R11 R12 K18 ["withAbsoluteSize"]
  GETTABLEKS R13 R4 K19 ["Dash"]
  GETTABLEKS R12 R13 K20 ["join"]
  GETTABLEKS R14 R4 K21 ["Style"]
  GETTABLEKS R13 R14 K22 ["Stylizer"]
  GETTABLEKS R14 R4 K23 ["UI"]
  GETTABLEKS R15 R14 K24 ["SearchBar"]
  GETTABLEKS R16 R14 K25 ["Pane"]
  GETTABLEKS R18 R0 K5 ["Src"]
  GETTABLEKS R17 R18 K26 ["Actions"]
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R17 K27 ["SetMaterialVariant"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K5 ["Src"]
  GETTABLEKS R21 R22 K28 ["Reducers"]
  GETTABLEKS R20 R21 K29 ["MainReducer"]
  CALL R19 1 1
  GETTABLEKS R21 R0 K5 ["Src"]
  GETTABLEKS R20 R21 K30 ["Controllers"]
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R20 K31 ["GeneralServiceController"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R20 K32 ["MaterialServiceController"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R20 K33 ["PluginController"]
  CALL R23 1 1
  GETTABLEKS R25 R0 K5 ["Src"]
  GETTABLEKS R24 R25 K34 ["Components"]
  GETIMPORT R25 K4 [require]
  GETTABLEKS R27 R24 K35 ["MaterialBrowser"]
  GETTABLEKS R26 R27 K36 ["MaterialEditor"]
  CALL R25 1 1
  GETTABLEKS R27 R24 K35 ["MaterialBrowser"]
  GETTABLEKS R26 R27 K37 ["TopBar"]
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R26 K38 ["ActionButton"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R29 R26 K39 ["ViewTypeSelector"]
  CALL R28 1 1
  GETTABLEKS R31 R0 K5 ["Src"]
  GETTABLEKS R30 R31 K40 ["Resources"]
  GETTABLEKS R29 R30 K41 ["Constants"]
  GETIMPORT R30 K4 [require]
  GETTABLEKS R31 R29 K42 ["getMaterialName"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R32 R29 K43 ["getMaterialPath"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R33 R29 K44 ["getSupportedMaterials"]
  CALL R32 1 1
  GETTABLEKS R34 R0 K5 ["Src"]
  GETTABLEKS R33 R34 K45 ["Flags"]
  GETIMPORT R34 K4 [require]
  GETTABLEKS R35 R33 K46 ["getFFlagMaterialActionAsTool"]
  CALL R34 1 1
  GETIMPORT R35 K48 [game]
  LOADK R37 K49 ["InfluxReportMaterialManagerHundrethPercent2"]
  NAMECALL R35 R35 K50 ["GetFastInt"]
  CALL R35 2 1
  MOVE R36 R32
  CALL R36 0 1
  GETTABLEKS R37 R2 K51 ["PureComponent"]
  LOADK R39 K37 ["TopBar"]
  NAMECALL R37 R37 K52 ["extend"]
  CALL R37 2 1
  MOVE R39 R34
  CALL R39 0 1
  JUMPIFNOT R39 [+2]
  LOADN R38 2
  JUMP [+1]
  LOADN R38 3
  NEWCLOSURE R39 P0
  CAPTURE VAL R36
  CAPTURE VAL R30
  CAPTURE VAL R35
  CAPTURE VAL R31
  CAPTURE REF R25
  CAPTURE VAL R2
  SETTABLEKS R39 R37 K53 ["init"]
  DUPCLOSURE R39 K54 [PROTO_5]
  CAPTURE VAL R6
  CAPTURE VAL R34
  CAPTURE VAL R38
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R27
  CAPTURE VAL R15
  CAPTURE VAL R28
  SETTABLEKS R39 R37 K55 ["render"]
  MOVE R39 R8
  DUPTABLE R40 K56 [{"Analytics", "GeneralServiceController", "Localization", "MaterialServiceController", "PluginController", "Stylizer"}]
  SETTABLEKS R9 R40 K15 ["Analytics"]
  SETTABLEKS R21 R40 K31 ["GeneralServiceController"]
  SETTABLEKS R10 R40 K16 ["Localization"]
  SETTABLEKS R22 R40 K32 ["MaterialServiceController"]
  SETTABLEKS R23 R40 K33 ["PluginController"]
  SETTABLEKS R13 R40 K22 ["Stylizer"]
  CALL R39 1 1
  MOVE R40 R37
  CALL R39 1 1
  MOVE R37 R39
  GETTABLEKS R39 R3 K57 ["connect"]
  DUPCLOSURE R40 K58 [PROTO_6]
  CAPTURE VAL R34
  DUPCLOSURE R41 K59 [PROTO_8]
  CAPTURE VAL R18
  CALL R39 2 1
  MOVE R40 R11
  MOVE R41 R37
  CALL R40 1 -1
  CALL R39 -1 -1
  CLOSEUPVALS R25
  RETURN R39 -1
