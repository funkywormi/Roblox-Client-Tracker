PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ToolMode"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["TOOL_MODE"]
  GETTABLEKS R2 R3 K3 ["Point"]
  JUMPIFEQ R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Stylizer"]
  GETTABLEKS R2 R0 K2 ["Localization"]
  NEWTABLE R3 0 0
  DUPTABLE R6 K5 [{"icon", "tooltip"}]
  GETTABLEKS R7 R1 K6 ["MeshPartVisibilityIcon"]
  SETTABLEKS R7 R6 K3 ["icon"]
  LOADK R9 K7 ["Opacity"]
  LOADK R10 K8 ["Mesh"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["tooltip"]
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K12 [table.insert]
  CALL R4 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["isCageEditingActive"]
  CALL R4 0 1
  JUMPIFNOT R4 [+18]
  DUPTABLE R6 K5 [{"icon", "tooltip"}]
  GETTABLEKS R7 R1 K14 ["CageVisibilityIcon"]
  SETTABLEKS R7 R6 K3 ["icon"]
  LOADK R9 K7 ["Opacity"]
  LOADK R10 K15 ["Cage"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["tooltip"]
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K12 [table.insert]
  CALL R4 2 0
  RETURN R3 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R4 R2 K2 ["Stylizer"]
  GETTABLEKS R5 R3 K3 ["icons"]
  GETUPVAL R6 0
  DUPTABLE R8 K5 [{"isCageSlider"}]
  GETTABLE R10 R5 R1
  JUMPIFNOT R10 [+10]
  GETTABLE R11 R5 R1
  GETTABLEKS R10 R11 K6 ["icon"]
  GETTABLEKS R11 R4 K7 ["CageVisibilityIcon"]
  JUMPIFEQ R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  JUMP [+1]
  LOADB R9 0
  SETTABLEKS R9 R8 K4 ["isCageSlider"]
  NAMECALL R6 R6 K8 ["setState"]
  CALL R6 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["EditingItemContext"]
  NAMECALL R1 R1 K2 ["getItem"]
  CALL R1 1 1
  JUMPIFNOT R1 [+16]
  GETTABLEKS R2 R1 K3 ["Parent"]
  JUMPIFNOT R2 [+13]
  GETUPVAL R2 1
  GETTABLEKS R4 R1 K3 ["Parent"]
  NAMECALL R2 R2 K4 ["focusCameraOnAvatar"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K5 ["Analytics"]
  LOADK R4 K6 ["ZoomToAvatar"]
  NAMECALL R2 R2 K7 ["getHandler"]
  CALL R2 2 1
  CALL R2 0 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"isCageSlider"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isCageSlider"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K3 ["isCageEditingActive"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["getMenuIcons"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onMenuOptionClicked"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K6 ["onFocusMannequinClicked"]
  RETURN R0 0

PROTO_5:
  DUPTABLE R4 K1 [{"icons"}]
  NAMECALL R5 R0 K2 ["getMenuIcons"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["icons"]
  NAMECALL R2 R0 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R1 K0 ["ToolMode"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K0 ["ToolMode"]
  JUMPIFEQ R2 R3 [+22]
  DUPTABLE R4 K4 [{"icons", "isCageSlider"}]
  NAMECALL R5 R0 K5 ["getMenuIcons"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K2 ["icons"]
  GETTABLEKS R6 R0 K6 ["isCageEditingActive"]
  CALL R6 0 1
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R0 K7 ["state"]
  GETTABLEKS R5 R6 K3 ["isCageSlider"]
  JUMP [+1]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["isCageSlider"]
  NAMECALL R2 R0 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["AnchorPoint"]
  GETTABLEKS R4 R1 K3 ["ToolMode"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["Localization"]
  GETTABLEKS R7 R1 K6 ["Offset"]
  GETTABLEKS R8 R1 K7 ["Stylizer"]
  GETTABLEKS R9 R1 K8 ["MenuOptions"]
  GETTABLEKS R10 R1 K9 ["OnMenuOptionClicked"]
  GETTABLEKS R11 R1 K10 ["ShowOptionsButton"]
  GETTABLEKS R12 R8 K11 ["Padding"]
  GETTABLEKS R13 R8 K12 ["PaddingSmall"]
  GETTABLEKS R14 R8 K13 ["ButtonSize"]
  GETTABLEKS R15 R2 K14 ["icons"]
  LOADN R18 2
  MUL R17 R18 R12
  ADD R16 R17 R14
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K15 ["TOOL_MODE"]
  GETTABLEKS R18 R19 K16 ["Point"]
  JUMPIFEQ R4 R18 [+2]
  LOADB R17 0 +1
  LOADB R17 1
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K17 ["new"]
  CALL R18 0 1
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K18 ["createElement"]
  GETUPVAL R20 3
  DUPTABLE R21 K25 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "Layout", "LayoutOrder", "HorizontalAlignment", "Spacing", "Padding"}]
  SETTABLEKS R3 R21 K2 ["AnchorPoint"]
  GETIMPORT R22 K27 [UDim2.new]
  LOADN R23 1
  MINUS R24 R7
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K19 ["Position"]
  GETIMPORT R22 K27 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  MOVE R26 R16
  CALL R22 4 1
  SETTABLEKS R22 R21 K20 ["Size"]
  GETIMPORT R22 K30 [Enum.AutomaticSize.X]
  SETTABLEKS R22 R21 K21 ["AutomaticSize"]
  GETIMPORT R22 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K22 ["Layout"]
  SETTABLEKS R5 R21 K4 ["LayoutOrder"]
  GETIMPORT R22 K35 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R22 R21 K23 ["HorizontalAlignment"]
  SETTABLEKS R12 R21 K24 ["Spacing"]
  SETTABLEKS R12 R21 K11 ["Padding"]
  DUPTABLE R22 K39 [{"OptionsDropdownButton", "TransparencySettingsContainer", "FocusMannequinButton"}]
  MOVE R23 R11
  JUMPIFNOT R23 [+21]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K18 ["createElement"]
  GETUPVAL R24 4
  DUPTABLE R25 K43 [{"ButtonSize", "Icon", "Items", "OnItemActivated", "LayoutOrder"}]
  SETTABLEKS R14 R25 K13 ["ButtonSize"]
  GETTABLEKS R26 R8 K44 ["OptionsIcon"]
  SETTABLEKS R26 R25 K40 ["Icon"]
  SETTABLEKS R9 R25 K41 ["Items"]
  SETTABLEKS R10 R25 K42 ["OnItemActivated"]
  NAMECALL R26 R18 K45 ["getNextOrder"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K4 ["LayoutOrder"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K36 ["OptionsDropdownButton"]
  MOVE R23 R17
  JUMPIFNOT R23 [+85]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K18 ["createElement"]
  GETUPVAL R24 3
  DUPTABLE R25 K47 [{"Layout", "Spacing", "HorizontalAlignment", "Size", "AutomaticSize", "Style", "LayoutOrder"}]
  GETIMPORT R26 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K22 ["Layout"]
  SETTABLEKS R13 R25 K24 ["Spacing"]
  GETIMPORT R26 K49 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R26 R25 K23 ["HorizontalAlignment"]
  GETIMPORT R26 K27 [UDim2.new]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 1
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K20 ["Size"]
  GETIMPORT R26 K30 [Enum.AutomaticSize.X]
  SETTABLEKS R26 R25 K21 ["AutomaticSize"]
  LOADK R26 K50 ["RoundBox"]
  SETTABLEKS R26 R25 K46 ["Style"]
  NAMECALL R26 R18 K45 ["getNextOrder"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K4 ["LayoutOrder"]
  DUPTABLE R26 K53 [{"TransparencyDropdownButton", "EditTransparencyView"}]
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R28 4
  DUPTABLE R29 K55 [{"ButtonSize", "Items", "IsIconList", "OnItemActivated", "LayoutOrder"}]
  SETTABLEKS R14 R29 K13 ["ButtonSize"]
  SETTABLEKS R15 R29 K41 ["Items"]
  LOADB R30 1
  SETTABLEKS R30 R29 K54 ["IsIconList"]
  GETTABLEKS R30 R0 K56 ["onMenuOptionClicked"]
  SETTABLEKS R30 R29 K42 ["OnItemActivated"]
  NAMECALL R30 R18 K45 ["getNextOrder"]
  CALL R30 1 1
  SETTABLEKS R30 R29 K4 ["LayoutOrder"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K51 ["TransparencyDropdownButton"]
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R28 5
  DUPTABLE R29 K58 [{"IsCageSlider", "LayoutOrder"}]
  GETTABLEKS R30 R0 K59 ["isCageEditingActive"]
  CALL R30 0 1
  JUMPIFNOT R30 [+4]
  GETTABLEKS R31 R0 K1 ["state"]
  GETTABLEKS R30 R31 K60 ["isCageSlider"]
  SETTABLEKS R30 R29 K57 ["IsCageSlider"]
  NAMECALL R30 R18 K45 ["getNextOrder"]
  CALL R30 1 1
  SETTABLEKS R30 R29 K4 ["LayoutOrder"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K52 ["EditTransparencyView"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K37 ["TransparencySettingsContainer"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K18 ["createElement"]
  GETUPVAL R24 6
  DUPTABLE R25 K63 [{"Style", "Size", "LayoutOrder", "OnClick", "Tooltip"}]
  LOADK R26 K64 ["Round"]
  SETTABLEKS R26 R25 K46 ["Style"]
  GETIMPORT R26 K66 [UDim2.fromOffset]
  MOVE R27 R14
  MOVE R28 R14
  CALL R26 2 1
  SETTABLEKS R26 R25 K20 ["Size"]
  NAMECALL R26 R18 K45 ["getNextOrder"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K4 ["LayoutOrder"]
  GETTABLEKS R26 R0 K67 ["onFocusMannequinClicked"]
  SETTABLEKS R26 R25 K61 ["OnClick"]
  LOADK R28 K68 ["Preview"]
  LOADK R29 K69 ["FocusCamera"]
  NAMECALL R26 R6 K70 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K62 ["Tooltip"]
  DUPTABLE R26 K72 [{"Settings"}]
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R28 7
  DUPTABLE R29 K74 [{"Image"}]
  GETTABLEKS R30 R8 K75 ["FocusMannequinIcon"]
  SETTABLEKS R30 R29 K73 ["Image"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K71 ["Settings"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K38 ["FocusMannequinButton"]
  CALL R19 3 -1
  RETURN R19 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["AvatarToolsShared"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Contexts"]
  GETTABLEKS R3 R4 K9 ["EditingItemContext"]
  GETTABLEKS R6 R2 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R4 R5 K12 ["AvatarUtil"]
  GETTABLEKS R6 R2 K13 ["Components"]
  GETTABLEKS R5 R6 K14 ["DropdownMenuButton"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K16 ["Editor"]
  GETTABLEKS R7 R8 K17 ["EditTransparencyView"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K5 ["Packages"]
  GETTABLEKS R8 R9 K18 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K19 ["ContextServices"]
  GETTABLEKS R9 R8 K20 ["withContext"]
  GETTABLEKS R11 R7 K10 ["Util"]
  GETTABLEKS R10 R11 K21 ["StyleModifier"]
  GETTABLEKS R11 R7 K22 ["UI"]
  GETTABLEKS R12 R11 K23 ["Pane"]
  GETTABLEKS R13 R11 K24 ["Button"]
  GETTABLEKS R14 R11 K25 ["IconButton"]
  GETTABLEKS R15 R11 K26 ["Image"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K15 ["Src"]
  GETTABLEKS R18 R19 K10 ["Util"]
  GETTABLEKS R17 R18 K27 ["Constants"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K28 ["PureComponent"]
  LOADK R19 K29 ["VisibilityControls"]
  NAMECALL R17 R17 K30 ["extend"]
  CALL R17 2 1
  GETTABLEKS R18 R7 K10 ["Util"]
  GETTABLEKS R19 R18 K31 ["LayoutOrderIterator"]
  DUPTABLE R20 K33 [{"Offset"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K32 ["Offset"]
  SETTABLEKS R20 R17 K34 ["defaultProps"]
  DUPCLOSURE R20 K35 [PROTO_4]
  CAPTURE VAL R16
  CAPTURE VAL R4
  SETTABLEKS R20 R17 K36 ["init"]
  DUPCLOSURE R20 K37 [PROTO_5]
  SETTABLEKS R20 R17 K38 ["didMount"]
  DUPCLOSURE R20 K39 [PROTO_6]
  SETTABLEKS R20 R17 K40 ["didUpdate"]
  DUPCLOSURE R20 K41 [PROTO_7]
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R15
  SETTABLEKS R20 R17 K42 ["render"]
  MOVE R20 R9
  DUPTABLE R21 K46 [{"Analytics", "EditingItemContext", "Localization", "Stylizer"}]
  GETTABLEKS R22 R8 K43 ["Analytics"]
  SETTABLEKS R22 R21 K43 ["Analytics"]
  SETTABLEKS R3 R21 K9 ["EditingItemContext"]
  GETTABLEKS R22 R8 K44 ["Localization"]
  SETTABLEKS R22 R21 K44 ["Localization"]
  GETTABLEKS R22 R8 K45 ["Stylizer"]
  SETTABLEKS R22 R21 K45 ["Stylizer"]
  CALL R20 1 1
  MOVE R21 R17
  CALL R20 1 1
  MOVE R17 R20
  RETURN R17 1
