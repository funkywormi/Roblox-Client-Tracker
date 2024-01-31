PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Expanded"]
  GETTABLEKS R4 R1 K3 ["Selected"]
  GETTABLEKS R5 R1 K4 ["RenderContent"]
  LOADNIL R6
  LOADNIL R7
  LOADNIL R8
  JUMPIFNOT R4 [+5]
  LOADK R8 K5 ["BorderBox"]
  GETTABLEKS R7 R2 K6 ["SelectedBorderColor"]
  GETTABLEKS R6 R2 K7 ["SelectedColor"]
  GETTABLEKS R9 R1 K8 ["LayoutOrder"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["new"]
  CALL R10 0 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K18 [{"BorderColor", "BackgroundColor3", "Style", "AutomaticSize", "Layout", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment"}]
  SETTABLEKS R7 R13 K11 ["BorderColor"]
  SETTABLEKS R6 R13 K12 ["BackgroundColor3"]
  SETTABLEKS R8 R13 K13 ["Style"]
  GETIMPORT R14 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K14 ["AutomaticSize"]
  GETIMPORT R14 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K15 ["Layout"]
  SETTABLEKS R9 R13 K8 ["LayoutOrder"]
  GETIMPORT R14 K26 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K16 ["HorizontalAlignment"]
  GETIMPORT R14 K28 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K17 ["VerticalAlignment"]
  DUPTABLE R14 K31 [{"Header", "Container"}]
  NAMECALL R17 R10 K32 ["getNextOrder"]
  CALL R17 1 -1
  NAMECALL R15 R0 K33 ["renderHeader"]
  CALL R15 -1 1
  SETTABLEKS R15 R14 K29 ["Header"]
  JUMPIFNOT R3 [+27]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K10 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K35 [{"LayoutOrder", "AutomaticSize", "Padding"}]
  NAMECALL R18 R10 K32 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K8 ["LayoutOrder"]
  GETIMPORT R18 K37 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K14 ["AutomaticSize"]
  GETTABLEKS R19 R2 K38 ["Content"]
  GETTABLEKS R18 R19 K34 ["Padding"]
  SETTABLEKS R18 R17 K34 ["Padding"]
  DUPTABLE R18 K39 [{"Content"}]
  MOVE R19 R5
  CALL R19 0 1
  SETTABLEKS R19 R18 K38 ["Content"]
  CALL R15 3 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K30 ["Container"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Stylizer"]
  GETTABLEKS R4 R3 K2 ["Header"]
  GETTABLEKS R5 R2 K3 ["Localization"]
  GETTABLEKS R6 R2 K4 ["Size"]
  GETTABLEKS R7 R2 K5 ["Selected"]
  GETTABLEKS R8 R2 K6 ["Expanded"]
  GETTABLEKS R9 R2 K7 ["StatusKey"]
  GETTABLEKS R10 R2 K8 ["OnClick"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["new"]
  CALL R11 0 1
  LOADNIL R12
  JUMPIFNOT R7 [+6]
  JUMPIFNOT R8 [+2]
  LOADNIL R12
  JUMP [+5]
  GETTABLEKS R12 R4 K10 ["BackgroundColor"]
  JUMP [+2]
  GETTABLEKS R12 R4 K10 ["BackgroundColor"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K19 [{"BackgroundColor3", "BorderSizePixel", "HorizontalAlignment", "LayoutOrder", "Layout", "Padding", "Size", "VerticalAlignment"}]
  SETTABLEKS R12 R15 K12 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K13 ["BorderSizePixel"]
  GETTABLEKS R16 R4 K14 ["HorizontalAlignment"]
  SETTABLEKS R16 R15 K14 ["HorizontalAlignment"]
  SETTABLEKS R1 R15 K15 ["LayoutOrder"]
  GETIMPORT R16 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K16 ["Layout"]
  GETTABLEKS R16 R4 K17 ["Padding"]
  SETTABLEKS R16 R15 K17 ["Padding"]
  SETTABLEKS R6 R15 K4 ["Size"]
  GETTABLEKS R16 R4 K18 ["VerticalAlignment"]
  SETTABLEKS R16 R15 K18 ["VerticalAlignment"]
  DUPTABLE R16 K26 [{"Checkbox", "MainElements"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K28 [{"Checked", "OnClick", "LayoutOrder"}]
  SETTABLEKS R7 R19 K27 ["Checked"]
  SETTABLEKS R10 R19 K8 ["OnClick"]
  NAMECALL R20 R11 K29 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K15 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K24 ["Checkbox"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K31 [{"BackgroundColor3", "BorderSizePixel", "HorizontalAlignment", "LayoutOrder", "Layout", "Size", "Spacing", "VerticalAlignment"}]
  SETTABLEKS R12 R19 K12 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K13 ["BorderSizePixel"]
  GETTABLEKS R20 R4 K14 ["HorizontalAlignment"]
  SETTABLEKS R20 R19 K14 ["HorizontalAlignment"]
  NAMECALL R20 R11 K29 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K15 ["LayoutOrder"]
  GETIMPORT R20 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K16 ["Layout"]
  GETIMPORT R20 K33 [UDim2.new]
  LOADN R21 1
  GETTABLEKS R24 R4 K17 ["Padding"]
  GETTABLEKS R23 R24 K34 ["Right"]
  MINUS R22 R23
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K4 ["Size"]
  GETTABLEKS R20 R4 K30 ["Spacing"]
  SETTABLEKS R20 R19 K30 ["Spacing"]
  GETTABLEKS R20 R4 K18 ["VerticalAlignment"]
  SETTABLEKS R20 R19 K18 ["VerticalAlignment"]
  DUPTABLE R20 K38 [{"Arrow", "Title", "Icon"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  LOADK R22 K39 ["TextButton"]
  NEWTABLE R23 8 0
  LOADN R24 1
  SETTABLEKS R24 R23 K40 ["BackgroundTransparency"]
  LOADK R24 K41 [""]
  SETTABLEKS R24 R23 K42 ["Text"]
  NAMECALL R24 R11 K29 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K15 ["LayoutOrder"]
  GETTABLEKS R25 R4 K35 ["Arrow"]
  GETTABLEKS R24 R25 K4 ["Size"]
  SETTABLEKS R24 R23 K4 ["Size"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K43 ["Event"]
  GETTABLEKS R24 R25 K44 ["MouseButton1Click"]
  GETTABLEKS R25 R2 K45 ["OnExpandedChanged"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K47 [{"Image"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K11 ["createElement"]
  GETUPVAL R26 4
  DUPTABLE R27 K50 [{"Style", "StyleModifier"}]
  GETTABLEKS R28 R4 K35 ["Arrow"]
  SETTABLEKS R28 R27 K48 ["Style"]
  GETTABLEKS R29 R2 K6 ["Expanded"]
  JUMPIFNOT R29 [+4]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K5 ["Selected"]
  JUMPIF R28 [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K49 ["StyleModifier"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K46 ["Image"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K35 ["Arrow"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  GETUPVAL R22 6
  DUPTABLE R23 K53 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextWrapped"}]
  GETIMPORT R24 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K51 ["AutomaticSize"]
  NAMECALL R24 R11 K29 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K15 ["LayoutOrder"]
  GETTABLEKS R24 R4 K42 ["Text"]
  SETTABLEKS R24 R23 K48 ["Style"]
  GETTABLEKS R24 R2 K42 ["Text"]
  SETTABLEKS R24 R23 K42 ["Text"]
  LOADB R24 1
  SETTABLEKS R24 R23 K52 ["TextWrapped"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K36 ["Title"]
  MOVE R21 R9
  JUMPIFNOT R21 [+43]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K57 [{"Image", "Size", "AnchorPoint", "LayoutOrder"}]
  GETTABLEKS R25 R3 K58 ["Icons"]
  GETTABLE R24 R25 R9
  SETTABLEKS R24 R23 K46 ["Image"]
  GETTABLEKS R24 R3 K59 ["StatusImageSize"]
  SETTABLEKS R24 R23 K4 ["Size"]
  GETIMPORT R24 K61 [Vector2.new]
  LOADN R25 1
  LOADK R26 K62 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K56 ["AnchorPoint"]
  NAMECALL R24 R11 K29 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K15 ["LayoutOrder"]
  DUPTABLE R24 K64 [{"Tooltip"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K11 ["createElement"]
  GETUPVAL R26 7
  DUPTABLE R27 K65 [{"Text"}]
  LOADK R30 K66 ["CharacterConversion"]
  MOVE R31 R9
  NAMECALL R28 R5 K67 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K42 ["Text"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K63 ["Tooltip"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K37 ["Icon"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K25 ["MainElements"]
  CALL R13 3 -1
  RETURN R13 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Pane"]
  GETTABLEKS R7 R5 K12 ["Tooltip"]
  GETTABLEKS R8 R5 K13 ["Image"]
  GETTABLEKS R9 R5 K14 ["TextLabel"]
  GETTABLEKS R10 R5 K15 ["Checkbox"]
  GETTABLEKS R11 R2 K16 ["Util"]
  GETTABLEKS R12 R11 K17 ["LayoutOrderIterator"]
  GETTABLEKS R13 R11 K18 ["StyleModifier"]
  GETTABLEKS R14 R1 K19 ["PureComponent"]
  LOADK R16 K20 ["ExpandableCharacterListItem"]
  NAMECALL R14 R14 K21 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K22 [PROTO_0]
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R15 R14 K23 ["render"]
  DUPCLOSURE R15 K24 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K25 ["renderHeader"]
  MOVE R15 R4
  DUPTABLE R16 K28 [{"Stylizer", "Localization"}]
  GETTABLEKS R17 R3 K26 ["Stylizer"]
  SETTABLEKS R17 R16 K26 ["Stylizer"]
  GETTABLEKS R17 R3 K27 ["Localization"]
  SETTABLEKS R17 R16 K27 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
