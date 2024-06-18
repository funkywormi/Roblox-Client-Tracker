PROTO_0:
  FASTCALL2K STRING_SUB R0 K0 [+5]
  MOVE R2 R0
  LOADK R3 K0 [-1]
  GETIMPORT R1 K3 [string.sub]
  CALL R1 2 1
  JUMPIFNOTEQKS R1 K4 ["*"] [+9]
  MOVE R2 R0
  LOADN R3 1
  LOADN R4 254
  FASTCALL STRING_SUB [+2]
  GETIMPORT R1 K3 [string.sub]
  CALL R1 3 1
  MOVE R0 R1
  RETURN R0 1

PROTO_1:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["Stylizer"]
  GETTABLEKS R4 R5 K2 ["TopBar"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["PresetController"]
  LOADNIL R6
  MOVE R8 R0
  FASTCALL2K STRING_SUB R8 K4 [+5]
  MOVE R10 R8
  LOADK R11 K4 [-1]
  GETIMPORT R9 K7 [string.sub]
  CALL R9 2 1
  JUMPIFNOTEQKS R9 K8 ["*"] [+9]
  MOVE R10 R8
  LOADN R11 1
  LOADN R12 254
  FASTCALL STRING_SUB [+2]
  GETIMPORT R9 K7 [string.sub]
  CALL R9 3 1
  MOVE R8 R9
  MOVE R7 R8
  MOVE R10 R7
  NAMECALL R8 R5 K9 ["isStudioDefault"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  LOADN R6 1
  JUMP [+9]
  MOVE R10 R7
  NAMECALL R8 R5 K10 ["isLastImport"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  LOADN R6 2
  JUMP [+2]
  LOADN R8 2
  ADD R6 R8 R1
  JUMPIFNOT R3 [+4]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K11 ["Hover"]
  JUMP [+1]
  LOADNIL R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K17 [{"LayoutOrder", "OnClick", "Size", "StyleModifier"}]
  SETTABLEKS R6 R11 K13 ["LayoutOrder"]
  SETTABLEKS R2 R11 K14 ["OnClick"]
  GETTABLEKS R12 R4 K18 ["MenuItemSize"]
  SETTABLEKS R12 R11 K15 ["Size"]
  SETTABLEKS R8 R11 K16 ["StyleModifier"]
  DUPTABLE R12 K20 [{"TextLabel"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K24 [{"Text", "TextXAlignment", "Size", "TextTruncate", "StyleModifier"}]
  SETTABLEKS R7 R15 K21 ["Text"]
  GETIMPORT R16 K27 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K22 ["TextXAlignment"]
  GETIMPORT R16 K30 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K15 ["Size"]
  GETIMPORT R16 K32 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R16 R15 K23 ["TextTruncate"]
  SETTABLEKS R8 R15 K16 ["StyleModifier"]
  DUPTABLE R16 K34 [{"Padding"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K35 ["UIPadding"]
  DUPTABLE R19 K38 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R4 K33 ["Padding"]
  GETTABLEKS R22 R23 K26 ["Left"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K36 ["PaddingLeft"]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R4 K33 ["Padding"]
  GETTABLEKS R22 R23 K42 ["Right"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K37 ["PaddingRight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["Padding"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K19 ["TextLabel"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_2:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+12]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["PresetController"]
  MOVE R5 R0
  GETTABLEKS R6 R2 K2 ["ActiveQueueItem"]
  NAMECALL R3 R3 K3 ["resolvePreset"]
  CALL R3 3 0
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["SetCurrentPreset"]
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["PresetController"]
  MOVE R4 R0
  NAMECALL R2 R2 K5 ["DEPRECATED_resolvePreset"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K0 ["renderDropdownItem"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onItemActivated"]
  RETURN R0 0

PROTO_4:
  MOVE R3 R0
  FASTCALL2K STRING_SUB R3 K0 [+5]
  MOVE R5 R3
  LOADK R6 K0 [-1]
  GETIMPORT R4 K3 [string.sub]
  CALL R4 2 1
  JUMPIFNOTEQKS R4 K4 ["*"] [+9]
  MOVE R5 R3
  LOADN R6 1
  LOADN R7 254
  FASTCALL STRING_SUB [+2]
  GETIMPORT R4 K3 [string.sub]
  CALL R4 3 1
  MOVE R3 R4
  MOVE R2 R3
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["TopBar"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R1 K3 ["ActiveQueueItem"]
  GETTABLEKS R3 R4 K4 ["currentPreset"]
  JUMP [+2]
  GETTABLEKS R3 R1 K5 ["CurrentPreset"]
  GETTABLEKS R4 R1 K6 ["PresetController"]
  MOVE R6 R3
  NAMECALL R4 R4 K7 ["getNameList"]
  CALL R4 2 1
  GETTABLEKS R5 R1 K6 ["PresetController"]
  MOVE R7 R3
  NAMECALL R5 R5 K8 ["isLastImport"]
  CALL R5 2 1
  LOADNIL R6
  JUMPIFNOT R5 [+8]
  GETTABLEKS R7 R1 K9 ["Localization"]
  LOADK R9 K10 ["Templates"]
  LOADK R10 K11 ["LastImportTooltip"]
  NAMECALL R7 R7 K12 ["getText"]
  CALL R7 3 1
  MOVE R6 R7
  GETTABLEKS R7 R1 K13 ["SettingsChanged"]
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R1 K9 ["Localization"]
  LOADK R9 K10 ["Templates"]
  LOADK R10 K14 ["ModifiedTemplateTooltip"]
  NAMECALL R7 R7 K12 ["getText"]
  CALL R7 3 1
  MOVE R6 R7
  GETUPVAL R7 1
  MOVE R8 R4
  NEWCLOSURE R9 P0
  CAPTURE VAL R3
  CALL R7 2 1
  GETTABLEKS R9 R1 K15 ["Size"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R8 R1 K15 ["Size"]
  JUMP [+5]
  GETIMPORT R8 K18 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K19 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K28 [{"Items", "LayoutOrder", "OnRenderItem", "OnItemActivated", "SelectedIndex", "Size", "Width", "Enabled", "TextTruncate"}]
  SETTABLEKS R4 R11 K20 ["Items"]
  GETTABLEKS R12 R1 K21 ["LayoutOrder"]
  SETTABLEKS R12 R11 K21 ["LayoutOrder"]
  GETTABLEKS R12 R0 K29 ["renderDropdownItem"]
  SETTABLEKS R12 R11 K22 ["OnRenderItem"]
  GETTABLEKS R12 R0 K30 ["onItemActivated"]
  SETTABLEKS R12 R11 K23 ["OnItemActivated"]
  SETTABLEKS R7 R11 K24 ["SelectedIndex"]
  GETUPVAL R13 0
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  MOVE R12 R8
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K15 ["Size"]
  GETUPVAL R13 0
  CALL R13 0 1
  JUMPIF R13 [+7]
  GETTABLEKS R14 R2 K31 ["TemplateDropDown"]
  GETTABLEKS R13 R14 K32 ["X"]
  GETTABLEKS R12 R13 K33 ["Offset"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K25 ["Width"]
  GETUPVAL R13 0
  CALL R13 0 1
  JUMPIFNOT R13 [+3]
  GETTABLEKS R12 R1 K26 ["Enabled"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K26 ["Enabled"]
  GETIMPORT R12 K36 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R12 R11 K27 ["TextTruncate"]
  CALL R9 2 1
  GETUPVAL R10 0
  CALL R10 0 1
  JUMPIF R10 [+29]
  JUMPIFNOT R6 [+28]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K19 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K37 [{"LayoutOrder", "Size"}]
  LOADN R13 3
  SETTABLEKS R13 R12 K21 ["LayoutOrder"]
  GETTABLEKS R13 R2 K31 ["TemplateDropDown"]
  SETTABLEKS R13 R12 K15 ["Size"]
  NEWTABLE R13 0 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K19 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K40 [{"Text", "Child"}]
  SETTABLEKS R6 R16 K38 ["Text"]
  SETTABLEKS R9 R16 K39 ["Child"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  RETURN R10 -1
  RETURN R9 1

PROTO_6:
  DUPTABLE R1 K3 [{"CurrentPreset", "SettingsChanged", "Checked"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K4 ["Preview"]
  GETTABLEKS R2 R3 K5 ["currentPreset"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["CurrentPreset"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K4 ["Preview"]
  GETTABLEKS R2 R3 K6 ["settingsChanged"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["SettingsChanged"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+8]
  GETTABLEKS R3 R0 K4 ["Preview"]
  GETTABLEKS R2 R3 K7 ["importDataChecked"]
  JUMPIF R2 [+4]
  NEWTABLE R2 0 0
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["Checked"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"SetCurrentPreset"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+4]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["SetCurrentPreset"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R8 R3 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R3 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Button"]
  GETTABLEKS R10 R8 K17 ["SelectInput"]
  GETTABLEKS R11 R8 K18 ["Pane"]
  GETTABLEKS R12 R8 K19 ["Tooltip"]
  GETTABLEKS R13 R8 K20 ["TextLabel"]
  GETTABLEKS R15 R3 K21 ["Dash"]
  GETTABLEKS R14 R15 K22 ["findIndex"]
  GETTABLEKS R15 R3 K23 ["Util"]
  GETTABLEKS R16 R15 K24 ["StyleModifier"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K25 ["Src"]
  GETTABLEKS R19 R20 K26 ["Controllers"]
  GETTABLEKS R18 R19 K27 ["PresetController"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K25 ["Src"]
  GETTABLEKS R20 R21 K28 ["Actions"]
  GETTABLEKS R19 R20 K29 ["SetCurrentPreset"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K25 ["Src"]
  GETTABLEKS R21 R22 K30 ["Flags"]
  GETTABLEKS R20 R21 K31 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K32 ["PureComponent"]
  LOADK R22 K33 ["PresetSelector"]
  NAMECALL R20 R20 K34 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K35 [PROTO_0]
  MOVE R22 R19
  CALL R22 0 1
  JUMPIFNOT R22 [+6]
  DUPTABLE R22 K37 [{"Enabled"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K36 ["Enabled"]
  SETTABLEKS R22 R20 K38 ["defaultProps"]
  DUPCLOSURE R22 K39 [PROTO_3]
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R19
  SETTABLEKS R22 R20 K40 ["init"]
  DUPCLOSURE R22 K41 [PROTO_5]
  CAPTURE VAL R19
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R22 R20 K42 ["render"]
  MOVE R22 R5
  DUPTABLE R23 K43 [{"Localization", "Stylizer", "PresetController"}]
  SETTABLEKS R6 R23 K12 ["Localization"]
  SETTABLEKS R7 R23 K14 ["Stylizer"]
  SETTABLEKS R17 R23 K27 ["PresetController"]
  CALL R22 1 1
  MOVE R23 R20
  CALL R22 1 1
  MOVE R20 R22
  DUPCLOSURE R22 K44 [PROTO_6]
  CAPTURE VAL R19
  DUPCLOSURE R23 K45 [PROTO_8]
  CAPTURE VAL R19
  CAPTURE VAL R18
  GETTABLEKS R24 R2 K46 ["connect"]
  MOVE R25 R22
  MOVE R26 R23
  CALL R24 2 1
  MOVE R25 R20
  CALL R24 1 -1
  RETURN R24 -1
