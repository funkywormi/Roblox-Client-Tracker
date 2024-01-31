PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["backedupScripts"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R6 1
  MOVE R8 R5
  NAMECALL R6 R6 K2 ["RemoveScriptBackupChunks"]
  CALL R6 2 0
  FORGLOOP R1 2 [-6]
  GETTABLEKS R1 R0 K3 ["removeBackups"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Plugin"]
  GETTABLEKS R2 R0 K2 ["Localization"]
  GETUPVAL R3 1
  MOVE R4 R1
  MOVE R5 R2
  GETUPVAL R6 2
  DUPTABLE R7 K4 [{"OnConfirm"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["onCommitClicked"]
  SETTABLEKS R8 R7 K3 ["OnConfirm"]
  CALL R3 4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["backedupScripts"]
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+3]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["onCommitClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K1 ["openDialog"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["commitEnabled"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Analytics"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["addAdapters"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["removeAdapters"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADK R4 K0 [""]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["adapted"]
  GETTABLEKS R5 R1 K4 ["adaptedWithScripts"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K13 [{"BackgroundTransparency", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding", "Spacing"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K7 ["BackgroundTransparency"]
  GETIMPORT R10 K17 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K8 ["Layout"]
  GETIMPORT R10 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K9 ["HorizontalAlignment"]
  GETIMPORT R10 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K10 ["VerticalAlignment"]
  GETTABLEKS R10 R2 K22 ["PanePadding"]
  SETTABLEKS R10 R9 K11 ["Padding"]
  GETTABLEKS R10 R2 K12 ["Spacing"]
  SETTABLEKS R10 R9 K12 ["Spacing"]
  DUPTABLE R10 K25 [{"ToggleButton", "ContentPane"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K30 [{"Disabled", "Selected", "OnClick", "LayoutOrder"}]
  NOT R14 R4
  SETTABLEKS R14 R13 K26 ["Disabled"]
  SETTABLEKS R5 R13 K27 ["Selected"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K28 ["OnClick"]
  NAMECALL R14 R6 K31 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K29 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["ToggleButton"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K33 [{"Size", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment", "LayoutOrder"}]
  GETIMPORT R14 K35 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K32 ["Size"]
  GETTABLEKS R14 R2 K36 ["VerticalTextSpacing"]
  SETTABLEKS R14 R13 K12 ["Spacing"]
  GETIMPORT R14 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K8 ["Layout"]
  GETIMPORT R14 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K9 ["HorizontalAlignment"]
  GETIMPORT R14 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K10 ["VerticalAlignment"]
  NAMECALL R14 R6 K31 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K29 ["LayoutOrder"]
  DUPTABLE R14 K44 [{"InstructionsLabel", "TestingHintLabel", "RemovalInstructionsPane", "CommitButton", "CommitTextPane"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K51 [{"LayoutOrder", "Text", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R18 R6 K31 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K29 ["LayoutOrder"]
  LOADK R20 K52 ["AdapterPane"]
  LOADK R21 K53 ["AdapterInserted"]
  NAMECALL R18 R3 K54 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K45 ["Text"]
  GETIMPORT R18 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K46 ["AutomaticSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K7 ["BackgroundTransparency"]
  LOADB R18 1
  SETTABLEKS R18 R17 K47 ["TextWrapped"]
  GETIMPORT R18 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K48 ["TextXAlignment"]
  DUPTABLE R18 K60 [{"TextSize", "Font"}]
  GETTABLEKS R19 R2 K58 ["TextSize"]
  SETTABLEKS R19 R18 K58 ["TextSize"]
  GETTABLEKS R19 R2 K59 ["Font"]
  SETTABLEKS R19 R18 K59 ["Font"]
  SETTABLEKS R18 R17 K49 ["TextProps"]
  NEWTABLE R18 1 0
  DUPTABLE R19 K63 [{"LinkText", "LinkCallback"}]
  LOADK R22 K52 ["AdapterPane"]
  LOADK R23 K64 ["LearnMore"]
  NAMECALL R20 R3 K54 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K61 ["LinkText"]
  DUPCLOSURE R20 K65 [PROTO_5]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R20 R19 K62 ["LinkCallback"]
  SETTABLEKS R19 R18 K66 ["[link1]"]
  SETTABLEKS R18 R17 K50 ["LinkMap"]
  GETIMPORT R18 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K9 ["HorizontalAlignment"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K39 ["InstructionsLabel"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K67 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R18 R6 K31 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K29 ["LayoutOrder"]
  LOADK R20 K52 ["AdapterPane"]
  JUMPIFNOT R5 [+2]
  LOADK R21 K68 ["SeamlessTestingText"]
  JUMP [+1]
  LOADK R21 K69 ["FindRemainingCharactersText"]
  NAMECALL R18 R3 K54 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K45 ["Text"]
  GETIMPORT R18 K35 [UDim2.new]
  LOADN R19 0
  LOADN R20 144
  LOADN R21 0
  LOADN R22 30
  CALL R18 4 1
  SETTABLEKS R18 R17 K32 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K7 ["BackgroundTransparency"]
  LOADB R18 1
  SETTABLEKS R18 R17 K47 ["TextWrapped"]
  GETIMPORT R18 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K48 ["TextXAlignment"]
  DUPTABLE R18 K70 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R19 R2 K71 ["SubTextSize"]
  SETTABLEKS R19 R18 K58 ["TextSize"]
  GETTABLEKS R19 R2 K59 ["Font"]
  SETTABLEKS R19 R18 K59 ["Font"]
  GETIMPORT R19 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K48 ["TextXAlignment"]
  SETTABLEKS R18 R17 K49 ["TextProps"]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K50 ["LinkMap"]
  GETIMPORT R18 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K9 ["HorizontalAlignment"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K40 ["TestingHintLabel"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K72 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  NAMECALL R18 R6 K31 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K29 ["LayoutOrder"]
  GETIMPORT R18 K35 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  GETTABLEKS R22 R2 K73 ["RemovalInstructionsHeight"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K32 ["Size"]
  GETIMPORT R18 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K8 ["Layout"]
  GETIMPORT R18 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K9 ["HorizontalAlignment"]
  GETIMPORT R18 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K10 ["VerticalAlignment"]
  DUPTABLE R18 K76 [{"RemovalLabelHeader", "RemovalLabel"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K51 [{"LayoutOrder", "Text", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R22 R6 K31 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K29 ["LayoutOrder"]
  LOADK R24 K52 ["AdapterPane"]
  LOADK R25 K77 ["RemovalHeaderText"]
  NAMECALL R22 R3 K54 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K45 ["Text"]
  GETIMPORT R22 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K46 ["AutomaticSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K7 ["BackgroundTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K47 ["TextWrapped"]
  GETIMPORT R22 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K48 ["TextXAlignment"]
  DUPTABLE R22 K70 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R23 R2 K71 ["SubTextSize"]
  SETTABLEKS R23 R22 K58 ["TextSize"]
  GETTABLEKS R23 R2 K78 ["BoldFont"]
  SETTABLEKS R23 R22 K59 ["Font"]
  GETIMPORT R23 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K48 ["TextXAlignment"]
  SETTABLEKS R22 R21 K49 ["TextProps"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K50 ["LinkMap"]
  GETIMPORT R22 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K9 ["HorizontalAlignment"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K74 ["RemovalLabelHeader"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K51 [{"LayoutOrder", "Text", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R22 R6 K31 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K29 ["LayoutOrder"]
  LOADK R24 K52 ["AdapterPane"]
  LOADK R25 K79 ["RemovalText"]
  NAMECALL R22 R3 K54 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K45 ["Text"]
  GETIMPORT R22 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K46 ["AutomaticSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K7 ["BackgroundTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K47 ["TextWrapped"]
  GETIMPORT R22 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K48 ["TextXAlignment"]
  DUPTABLE R22 K70 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R23 R2 K71 ["SubTextSize"]
  SETTABLEKS R23 R22 K58 ["TextSize"]
  GETTABLEKS R23 R2 K59 ["Font"]
  SETTABLEKS R23 R22 K59 ["Font"]
  GETIMPORT R23 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K48 ["TextXAlignment"]
  SETTABLEKS R22 R21 K49 ["TextProps"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K50 ["LinkMap"]
  GETIMPORT R22 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K9 ["HorizontalAlignment"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K75 ["RemovalLabel"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K41 ["RemovalInstructionsPane"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K81 [{"Size", "Text", "OnClick", "StyleModifier", "LayoutOrder"}]
  GETTABLEKS R18 R2 K82 ["CommitButtonSize"]
  SETTABLEKS R18 R17 K32 ["Size"]
  LOADK R20 K52 ["AdapterPane"]
  LOADK R21 K83 ["Commit"]
  NAMECALL R18 R3 K54 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K45 ["Text"]
  GETTABLEKS R18 R0 K84 ["openDialog"]
  SETTABLEKS R18 R17 K28 ["OnClick"]
  GETTABLEKS R19 R0 K85 ["commitEnabled"]
  CALL R19 0 1
  JUMPIF R19 [+4]
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K26 ["Disabled"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K80 ["StyleModifier"]
  NAMECALL R18 R6 K31 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K29 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["CommitButton"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K33 [{"Size", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment", "LayoutOrder"}]
  GETIMPORT R18 K35 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  GETTABLEKS R22 R2 K86 ["CommitTextHeight"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K32 ["Size"]
  GETTABLEKS R18 R2 K36 ["VerticalTextSpacing"]
  SETTABLEKS R18 R17 K12 ["Spacing"]
  GETIMPORT R18 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K8 ["Layout"]
  GETIMPORT R18 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K9 ["HorizontalAlignment"]
  GETIMPORT R18 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K10 ["VerticalAlignment"]
  NAMECALL R18 R6 K31 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K29 ["LayoutOrder"]
  DUPTABLE R18 K88 [{"CommitText"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K51 [{"LayoutOrder", "Text", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R22 R6 K31 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K29 ["LayoutOrder"]
  LOADK R24 K52 ["AdapterPane"]
  LOADK R25 K87 ["CommitText"]
  NAMECALL R22 R3 K54 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K45 ["Text"]
  GETIMPORT R22 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K46 ["AutomaticSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K7 ["BackgroundTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K47 ["TextWrapped"]
  GETIMPORT R22 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K48 ["TextXAlignment"]
  DUPTABLE R22 K70 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R23 R2 K71 ["SubTextSize"]
  SETTABLEKS R23 R22 K58 ["TextSize"]
  GETTABLEKS R23 R2 K59 ["Font"]
  SETTABLEKS R23 R22 K59 ["Font"]
  GETIMPORT R23 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K48 ["TextXAlignment"]
  SETTABLEKS R22 R21 K49 ["TextProps"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K50 ["LinkMap"]
  GETIMPORT R22 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K9 ["HorizontalAlignment"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K87 ["CommitText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K43 ["CommitTextPane"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K24 ["ContentPane"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_7:
  DUPTABLE R1 K3 [{"adapted", "adaptedWithScripts", "backedupScripts"}]
  GETTABLEKS R3 R0 K4 ["Adapter"]
  GETTABLEKS R2 R3 K0 ["adapted"]
  SETTABLEKS R2 R1 K0 ["adapted"]
  GETTABLEKS R3 R0 K4 ["Adapter"]
  GETTABLEKS R2 R3 K1 ["adaptedWithScripts"]
  SETTABLEKS R2 R1 K1 ["adaptedWithScripts"]
  GETTABLEKS R3 R0 K5 ["ScriptConversion"]
  GETTABLEKS R2 R3 K2 ["backedupScripts"]
  SETTABLEKS R2 R1 K2 ["backedupScripts"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K3 [{"addAdapters", "removeAdapters", "removeBackups"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["addAdapters"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["removeAdapters"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["removeBackups"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpRbxApiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R2 K10 ["Packages"]
  GETTABLEKS R6 R7 K13 ["RoactRodux"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K14 ["ContextServices"]
  GETTABLEKS R7 R3 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["Pane"]
  GETTABLEKS R9 R7 K17 ["ToggleButton"]
  GETTABLEKS R10 R7 K18 ["TextWithLinks"]
  GETTABLEKS R11 R7 K19 ["Button"]
  GETTABLEKS R12 R3 K20 ["Util"]
  GETTABLEKS R13 R12 K21 ["LayoutOrderIterator"]
  GETTABLEKS R14 R12 K22 ["StyleModifier"]
  GETTABLEKS R16 R2 K23 ["Src"]
  GETTABLEKS R15 R16 K24 ["Thunks"]
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R15 K25 ["AddAdapters"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R18 R15 K26 ["RemoveAdapters"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R2 K23 ["Src"]
  GETTABLEKS R20 R21 K27 ["Actions"]
  GETTABLEKS R19 R20 K28 ["ResetScriptBackups"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R23 R2 K23 ["Src"]
  GETTABLEKS R22 R23 K20 ["Util"]
  GETTABLEKS R21 R22 K29 ["ScriptHistory"]
  GETTABLEKS R20 R21 K30 ["ChunkUtil"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R23 R2 K23 ["Src"]
  GETTABLEKS R22 R23 K31 ["Components"]
  GETTABLEKS R21 R22 K32 ["ConfirmCommitDialog"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R24 R2 K23 ["Src"]
  GETTABLEKS R23 R24 K20 ["Util"]
  GETTABLEKS R22 R23 K33 ["showDialog"]
  CALL R21 1 1
  GETTABLEKS R22 R4 K34 ["PureComponent"]
  LOADK R24 K35 ["AdapterPane"]
  NAMECALL R22 R22 K36 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K37 [PROTO_3]
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R20
  SETTABLEKS R23 R22 K38 ["init"]
  DUPCLOSURE R23 K39 [PROTO_6]
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R14
  SETTABLEKS R23 R22 K40 ["render"]
  DUPCLOSURE R23 K41 [PROTO_7]
  DUPCLOSURE R24 K42 [PROTO_11]
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  GETTABLEKS R25 R6 K43 ["withContext"]
  DUPTABLE R26 K48 [{"Stylizer", "Plugin", "Localization", "Analytics"}]
  GETTABLEKS R27 R6 K44 ["Stylizer"]
  SETTABLEKS R27 R26 K44 ["Stylizer"]
  GETTABLEKS R27 R6 K45 ["Plugin"]
  SETTABLEKS R27 R26 K45 ["Plugin"]
  GETTABLEKS R27 R6 K46 ["Localization"]
  SETTABLEKS R27 R26 K46 ["Localization"]
  GETTABLEKS R27 R6 K47 ["Analytics"]
  SETTABLEKS R27 R26 K47 ["Analytics"]
  CALL R25 1 1
  MOVE R26 R22
  CALL R25 1 1
  MOVE R22 R25
  GETTABLEKS R25 R5 K49 ["connect"]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  MOVE R26 R22
  CALL R25 1 -1
  RETURN R25 -1
