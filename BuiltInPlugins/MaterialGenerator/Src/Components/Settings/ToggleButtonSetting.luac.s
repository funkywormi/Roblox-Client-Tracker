PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["OnValueChanged"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K1 ["OnValueChanged"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["valueChanged"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  LOADNIL R2
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+18]
  DUPTABLE R3 K4 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
  LOADN R4 16
  SETTABLEKS R4 R3 K1 ["HorizontalSpacing"]
  GETIMPORT R4 K7 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 30
  CALL R4 4 1
  SETTABLEKS R4 R3 K2 ["Size"]
  LOADN R4 30
  SETTABLEKS R4 R3 K3 ["ValueLabelWidth"]
  MOVE R2 R3
  JUMP [+4]
  GETTABLEKS R3 R1 K8 ["Stylizer"]
  GETTABLEKS R2 R3 K9 ["Setting"]
  GETTABLEKS R3 R1 K10 ["Disabled"]
  GETTABLEKS R4 R1 K11 ["LabelWidth"]
  GETUPVAL R5 1
  GETTABLEKS R6 R1 K2 ["Size"]
  GETTABLEKS R7 R2 K2 ["Size"]
  CALL R5 2 1
  JUMPIFNOT R3 [+4]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["Disabled"]
  JUMP [+1]
  LOADNIL R6
  GETTABLEKS R7 R1 K12 ["Value"]
  LOADNIL R8
  GETTABLEKS R9 R1 K13 ["UseCheckbox"]
  JUMPIFNOT R9 [+23]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K14 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K19 [{"Checked", "Disabled", "LayoutOrder", "OnClick", "Text"}]
  SETTABLEKS R7 R11 K15 ["Checked"]
  SETTABLEKS R3 R11 K10 ["Disabled"]
  LOADN R12 2
  SETTABLEKS R12 R11 K16 ["LayoutOrder"]
  GETTABLEKS R12 R0 K20 ["valueChanged"]
  SETTABLEKS R12 R11 K17 ["OnClick"]
  GETTABLEKS R12 R1 K21 ["CheckboxLabel"]
  SETTABLEKS R12 R11 K18 ["Text"]
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+18]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K14 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K23 [{"Disabled", "LayoutOrder", "OnClick", "Selected"}]
  SETTABLEKS R3 R11 K10 ["Disabled"]
  LOADN R12 2
  SETTABLEKS R12 R11 K16 ["LayoutOrder"]
  GETTABLEKS R12 R0 K20 ["valueChanged"]
  SETTABLEKS R12 R11 K17 ["OnClick"]
  SETTABLEKS R7 R11 K22 ["Selected"]
  CALL R9 2 1
  MOVE R8 R9
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K14 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K28 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R12 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K24 ["HorizontalAlignment"]
  GETIMPORT R12 K34 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K25 ["Layout"]
  GETTABLEKS R12 R1 K16 ["LayoutOrder"]
  SETTABLEKS R12 R11 K16 ["LayoutOrder"]
  SETTABLEKS R5 R11 K2 ["Size"]
  GETTABLEKS R12 R2 K1 ["HorizontalSpacing"]
  SETTABLEKS R12 R11 K26 ["Spacing"]
  GETIMPORT R12 K36 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K27 ["VerticalAlignment"]
  DUPTABLE R12 K39 [{"Label", "Toggle"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K14 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K42 [{"LayoutOrder", "Size", "StyleModifier", "Text", "TextXAlignment"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K16 ["LayoutOrder"]
  GETIMPORT R16 K7 [UDim2.new]
  LOADN R17 0
  MOVE R18 R4
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K2 ["Size"]
  SETTABLEKS R6 R15 K40 ["StyleModifier"]
  GETTABLEKS R16 R1 K18 ["Text"]
  SETTABLEKS R16 R15 K18 ["Text"]
  GETIMPORT R16 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K41 ["TextXAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K37 ["Label"]
  SETTABLEKS R8 R12 K38 ["Toggle"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R6 R1 K10 ["Style"]
  GETTABLEKS R5 R6 K11 ["Stylizer"]
  GETTABLEKS R6 R1 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Checkbox"]
  GETTABLEKS R8 R6 K14 ["Pane"]
  GETTABLEKS R9 R6 K15 ["TextLabel"]
  GETTABLEKS R10 R6 K16 ["ToggleButton"]
  GETTABLEKS R11 R1 K17 ["Util"]
  GETTABLEKS R12 R11 K18 ["StyleModifier"]
  GETTABLEKS R13 R11 K19 ["prioritize"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K21 ["Flags"]
  GETTABLEKS R15 R16 K22 ["getFFlagMaterialGeneratorNewUI"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K23 ["PureComponent"]
  LOADK R17 K24 ["ToggleButtonSetting"]
  NAMECALL R15 R15 K25 ["extend"]
  CALL R15 2 1
  DUPTABLE R16 K27 [{"Disabled"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K26 ["Disabled"]
  SETTABLEKS R16 R15 K28 ["defaultProps"]
  DUPCLOSURE R16 K29 [PROTO_1]
  SETTABLEKS R16 R15 K30 ["init"]
  DUPCLOSURE R16 K31 [PROTO_2]
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K32 ["render"]
  MOVE R16 R4
  DUPTABLE R17 K33 [{"Stylizer"}]
  SETTABLEKS R5 R17 K11 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 -1
  RETURN R16 -1
