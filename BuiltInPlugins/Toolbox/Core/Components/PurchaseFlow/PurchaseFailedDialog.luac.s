PROTO_0:
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 4 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnButtonClicked"]
  GETTABLEKS R3 R1 K2 ["OnClose"]
  GETTABLEKS R4 R1 K3 ["Name"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K4 ["Stylizer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K11 [{"AutomaticSize", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  LOADNIL R9
  JUMP [+2]
  GETIMPORT R9 K14 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K6 ["AutomaticSize"]
  GETTABLEKS R9 R1 K15 ["Localization"]
  LOADK R11 K16 ["Purchase"]
  LOADK R12 K17 ["BuyTitle"]
  NAMECALL R9 R9 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Title"]
  GETIMPORT R9 K21 [Vector2.new]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K22 ["PROMPT_SIZE"]
  GETTABLEKS R11 R12 K23 ["X"]
  GETTABLEKS R10 R11 K24 ["Offset"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K25 ["DETAILS_SIZE"]
  GETTABLEKS R12 R13 K13 ["Y"]
  GETTABLEKS R11 R12 K24 ["Offset"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K8 ["MinContentSize"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+18]
  NEWTABLE R9 0 1
  DUPTABLE R10 K28 [{"Key", "Text"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K26 ["Key"]
  GETTABLEKS R11 R1 K15 ["Localization"]
  LOADK R13 K29 ["Common"]
  LOADK R14 K30 ["OK"]
  NAMECALL R11 R11 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K27 ["Text"]
  SETLIST R9 R10 1 [1]
  JUMP [+33]
  NEWTABLE R9 0 2
  DUPTABLE R10 K28 [{"Key", "Text"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K26 ["Key"]
  GETTABLEKS R11 R1 K15 ["Localization"]
  LOADK R13 K16 ["Purchase"]
  LOADK R14 K31 ["Cancel"]
  NAMECALL R11 R11 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K27 ["Text"]
  DUPTABLE R11 K33 [{"Key", "Text", "Style"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K26 ["Key"]
  GETTABLEKS R12 R1 K15 ["Localization"]
  LOADK R14 K16 ["Purchase"]
  LOADK R15 K34 ["Retry"]
  NAMECALL R12 R12 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K27 ["Text"]
  LOADK R12 K35 ["RoundPrimary"]
  SETTABLEKS R12 R11 K32 ["Style"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K9 ["Buttons"]
  SETTABLEKS R2 R8 K10 ["OnButtonPressed"]
  SETTABLEKS R3 R8 K2 ["OnClose"]
  DUPTABLE R9 K39 [{"UIListLayout", "Header", "Details"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K36 ["UIListLayout"]
  DUPTABLE R12 K42 [{"FillDirection", "SortOrder"}]
  GETIMPORT R13 K44 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K40 ["FillDirection"]
  GETIMPORT R13 K46 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K41 ["SortOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K36 ["UIListLayout"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K47 ["TextLabel"]
  DUPTABLE R12 K55 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder", "Text", "TextSize", "Font", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  GETIMPORT R13 K14 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K6 ["AutomaticSize"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K56 ["HEADER_SIZE"]
  SETTABLEKS R13 R12 K48 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K49 ["BackgroundTransparency"]
  LOADN R13 1
  SETTABLEKS R13 R12 K45 ["LayoutOrder"]
  GETTABLEKS R13 R1 K15 ["Localization"]
  LOADK R15 K16 ["Purchase"]
  LOADK R16 K57 ["FailedHeader"]
  NAMECALL R13 R13 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K27 ["Text"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K58 ["FONT_SIZE_TITLE"]
  SETTABLEKS R13 R12 K50 ["TextSize"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K59 ["FONT_BOLD"]
  SETTABLEKS R13 R12 K51 ["Font"]
  GETIMPORT R13 K61 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K52 ["TextXAlignment"]
  GETIMPORT R13 K63 [Enum.TextYAlignment.Top]
  SETTABLEKS R13 R12 K53 ["TextYAlignment"]
  GETTABLEKS R14 R5 K64 ["purchaseDialog"]
  GETTABLEKS R13 R14 K65 ["promptText"]
  SETTABLEKS R13 R12 K54 ["TextColor3"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K37 ["Header"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K47 ["TextLabel"]
  DUPTABLE R12 K69 [{"AutomaticSize", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "LayoutOrder", "Text", "TextSize", "Font", "TextXAlignment", "TextColor3", "TextWrapped"}]
  GETIMPORT R13 K14 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K6 ["AutomaticSize"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K25 ["DETAILS_SIZE"]
  SETTABLEKS R13 R12 K48 ["Size"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K70 ["DETAILS_POSITION"]
  SETTABLEKS R13 R12 K66 ["Position"]
  GETIMPORT R13 K21 [Vector2.new]
  LOADN R14 0
  LOADK R15 K71 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K67 ["AnchorPoint"]
  LOADN R13 1
  SETTABLEKS R13 R12 K49 ["BackgroundTransparency"]
  LOADN R13 2
  SETTABLEKS R13 R12 K45 ["LayoutOrder"]
  GETTABLEKS R13 R1 K15 ["Localization"]
  LOADK R15 K16 ["Purchase"]
  LOADK R16 K72 ["FailedDetails"]
  DUPTABLE R17 K74 [{"name"}]
  SETTABLEKS R4 R17 K73 ["name"]
  NAMECALL R13 R13 K18 ["getText"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K27 ["Text"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K75 ["FONT_SIZE_LARGE"]
  SETTABLEKS R13 R12 K50 ["TextSize"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K76 ["FONT"]
  SETTABLEKS R13 R12 K51 ["Font"]
  GETIMPORT R13 K61 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K52 ["TextXAlignment"]
  GETTABLEKS R14 R5 K64 ["purchaseDialog"]
  GETTABLEKS R13 R14 K65 ["promptText"]
  SETTABLEKS R13 R12 K54 ["TextColor3"]
  LOADB R13 1
  SETTABLEKS R13 R12 K68 ["TextWrapped"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K38 ["Details"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["ContextServices"]
  GETTABLEKS R5 R4 K9 ["withContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R1 K7 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K10 ["UI"]
  GETTABLEKS R8 R7 K11 ["StyledDialog"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Core"]
  GETTABLEKS R11 R12 K13 ["Util"]
  GETTABLEKS R10 R11 K14 ["ContextHelper"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Core"]
  GETTABLEKS R12 R13 K13 ["Util"]
  GETTABLEKS R11 R12 K15 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K16 ["Dialog"]
  GETTABLEKS R12 R9 K17 ["withLocalization"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K12 ["Core"]
  GETTABLEKS R16 R17 K13 ["Util"]
  GETTABLEKS R15 R16 K18 ["SharedFlags"]
  GETTABLEKS R14 R15 K19 ["getFFlagToolboxCleanupLegacyContext"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K12 ["Core"]
  GETTABLEKS R17 R18 K13 ["Util"]
  GETTABLEKS R16 R17 K18 ["SharedFlags"]
  GETTABLEKS R15 R16 K20 ["getFFlagToolboxSeparatePurchaseStatusDialogsFromAssetPreview"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K21 ["PureComponent"]
  LOADK R17 K22 ["PurchaseDialog"]
  NAMECALL R15 R15 K23 ["extend"]
  CALL R15 2 1
  MOVE R16 R14
  CALL R16 0 1
  JUMPIFNOT R16 [+1]
  RETURN R15 1
  MOVE R16 R13
  CALL R16 0 1
  JUMPIF R16 [+4]
  DUPCLOSURE R16 K24 [PROTO_1]
  CAPTURE VAL R12
  SETTABLEKS R16 R15 K25 ["render"]
  MOVE R17 R13
  CALL R17 0 1
  JUMPIFNOT R17 [+2]
  LOADK R16 K25 ["render"]
  JUMP [+1]
  LOADK R16 K26 ["renderContent"]
  DUPCLOSURE R17 K27 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLE R17 R15 R16
  MOVE R16 R5
  DUPTABLE R17 K30 [{"Localization", "Stylizer"}]
  GETTABLEKS R18 R4 K28 ["Localization"]
  SETTABLEKS R18 R17 K28 ["Localization"]
  GETTABLEKS R18 R4 K29 ["Stylizer"]
  SETTABLEKS R18 R17 K29 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
