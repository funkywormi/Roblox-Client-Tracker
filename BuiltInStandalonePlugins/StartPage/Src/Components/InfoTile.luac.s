PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClick"]
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R0 2
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsolutePosition"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R3 K1 ["PointingHand"]
  CALL R2 1 2
  GETUPVAL R4 2
  LOADB R5 0
  CALL R4 1 2
  GETUPVAL R6 2
  LOADNIL R7
  CALL R6 1 2
  GETUPVAL R8 2
  GETIMPORT R9 K4 [Vector2.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 -1
  CALL R8 -1 2
  GETTABLEKS R10 R0 K5 ["Cell"]
  GETTABLEKS R11 R10 K6 ["IsPlaceholder"]
  JUMPIFNOT R11 [+17]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K8 ["Component"]
  DUPTABLE R13 K11 [{"Size", "Position"}]
  GETTABLEKS R14 R0 K9 ["Size"]
  SETTABLEKS R14 R13 K9 ["Size"]
  GETTABLEKS R14 R0 K10 ["Position"]
  SETTABLEKS R14 R13 K10 ["Position"]
  CALL R11 2 -1
  RETURN R11 -1
  LOADNIL R11
  GETTABLEKS R12 R10 K12 ["Updated"]
  JUMPIFNOT R12 [+5]
  GETUPVAL R12 5
  GETTABLEKS R13 R10 K12 ["Updated"]
  CALL R12 1 1
  MOVE R11 R12
  NEWTABLE R12 0 0
  GETTABLEKS R13 R10 K13 ["TeamCreatePresence"]
  JUMPIFNOT R13 [+168]
  LOADN R15 1
  GETTABLEKS R18 R10 K13 ["TeamCreatePresence"]
  LENGTH R17 R18
  FASTCALL2K MATH_MIN R17 K14 [+4]
  LOADK R18 K14 [2]
  GETIMPORT R16 K17 [math.min]
  CALL R16 2 1
  MOVE R13 R16
  LOADN R14 1
  FORNPREP R13
  MOVE R17 R12
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K7 ["createElement"]
  LOADK R19 K18 ["Frame"]
  NEWTABLE R20 2 0
  GETIMPORT R21 K20 [UDim2.new]
  LOADN R22 0
  LOADN R23 35
  LOADN R24 0
  LOADN R25 35
  CALL R21 4 1
  SETTABLEKS R21 R20 K9 ["Size"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K21 ["Tag"]
  LOADK R22 K22 ["X-Fit X-Middle X-Center StartPage-TeamCreateOnlineBackground StartPage-Circular"]
  SETTABLE R22 R20 R21
  NEWTABLE R21 0 1
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K7 ["createElement"]
  LOADK R23 K18 ["Frame"]
  NEWTABLE R24 2 0
  GETIMPORT R25 K20 [UDim2.new]
  LOADN R26 0
  LOADN R27 30
  LOADN R28 0
  LOADN R29 30
  CALL R25 4 1
  SETTABLEKS R25 R24 K9 ["Size"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K21 ["Tag"]
  LOADK R26 K23 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
  SETTABLE R26 R24 R25
  NEWTABLE R25 0 1
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K7 ["createElement"]
  GETUPVAL R27 6
  DUPTABLE R28 K25 [{"Style", "Size"}]
  DUPTABLE R29 K27 [{"Image"}]
  GETTABLEKS R31 R10 K13 ["TeamCreatePresence"]
  GETTABLE R30 R31 R15
  SETTABLEKS R30 R29 K26 ["Image"]
  SETTABLEKS R29 R28 K24 ["Style"]
  GETIMPORT R29 K20 [UDim2.new]
  LOADN R30 0
  LOADN R31 30
  LOADN R32 0
  LOADN R33 30
  CALL R29 4 1
  SETTABLEKS R29 R28 K9 ["Size"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R16 K30 [table.insert]
  CALL R16 -1 0
  FORNLOOP R13
  GETTABLEKS R14 R10 K13 ["TeamCreatePresence"]
  LENGTH R13 R14
  LOADN R14 2
  JUMPIFNOTLT R14 R13 [+71]
  MOVE R14 R12
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K7 ["createElement"]
  LOADK R16 K18 ["Frame"]
  NEWTABLE R17 2 0
  GETIMPORT R18 K20 [UDim2.new]
  LOADN R19 0
  LOADN R20 35
  LOADN R21 0
  LOADN R22 35
  CALL R18 4 1
  SETTABLEKS R18 R17 K9 ["Size"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K21 ["Tag"]
  LOADK R19 K23 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
  SETTABLE R19 R17 R18
  NEWTABLE R18 0 1
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K7 ["createElement"]
  LOADK R20 K31 ["TextLabel"]
  NEWTABLE R21 8 0
  GETIMPORT R22 K20 [UDim2.new]
  LOADN R23 0
  LOADN R24 30
  LOADN R25 0
  LOADN R26 30
  CALL R22 4 1
  SETTABLEKS R22 R21 K9 ["Size"]
  LOADK R23 K32 ["+"]
  GETTABLEKS R27 R10 K13 ["TeamCreatePresence"]
  LENGTH R26 R27
  SUBK R25 R26 K14 [2]
  FASTCALL1 TOSTRING R25 [+2]
  GETIMPORT R24 K34 [tostring]
  CALL R24 1 1
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K35 ["Text"]
  GETIMPORT R22 K39 [Enum.Font.BuilderSans]
  SETTABLEKS R22 R21 K37 ["Font"]
  LOADN R22 18
  SETTABLEKS R22 R21 K40 ["TextSize"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K21 ["Tag"]
  LOADK R23 K41 ["X-Fit StartPage-NoBackground StartPage-StandardDarkTextColor"]
  SETTABLE R23 R21 R22
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K30 [table.insert]
  CALL R13 -1 0
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K3 ["new"]
  CALL R13 0 1
  GETTABLEKS R15 R10 K42 ["SetNetworkResults"]
  FASTCALL2K ASSERT R15 K43 [+4]
  LOADK R16 K43 ["Cell must have a SetNetworkResults callback (temporary hack)"]
  GETIMPORT R14 K45 [assert]
  CALL R14 2 0
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K7 ["createElement"]
  LOADK R15 K46 ["TextButton"]
  NEWTABLE R16 8 0
  GETTABLEKS R17 R0 K10 ["Position"]
  SETTABLEKS R17 R16 K10 ["Position"]
  GETTABLEKS R17 R0 K9 ["Size"]
  SETTABLEKS R17 R16 K9 ["Size"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K47 ["Event"]
  GETTABLEKS R17 R18 K48 ["Activated"]
  NEWCLOSURE R18 P0
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE VAL R5
  SETTABLE R18 R16 R17
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K47 ["Event"]
  GETTABLEKS R17 R18 K49 ["MouseEnter"]
  SETTABLE R2 R16 R17
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K47 ["Event"]
  GETTABLEKS R17 R18 K50 ["MouseLeave"]
  SETTABLE R3 R16 R17
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K21 ["Tag"]
  LOADK R18 K51 ["StartPage-NoBackground"]
  SETTABLE R18 R16 R17
  NEWTABLE R17 0 1
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K7 ["createElement"]
  LOADK R19 K18 ["Frame"]
  NEWTABLE R20 1 0
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K21 ["Tag"]
  LOADK R22 K52 ["X-Fill StartPage-TileBackground StartPage-TilePadding StartPage-RoundedCorner8 X-Column"]
  SETTABLE R22 R20 R21
  DUPTABLE R21 K54 [{"Image", "Body"}]
  GETTABLEKS R23 R10 K55 ["ImageUrl"]
  JUMPIFNOT R23 [+46]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K7 ["createElement"]
  GETUPVAL R23 6
  NEWTABLE R24 4 0
  DUPTABLE R25 K27 [{"Image"}]
  GETTABLEKS R26 R10 K55 ["ImageUrl"]
  SETTABLEKS R26 R25 K26 ["Image"]
  SETTABLEKS R25 R24 K24 ["Style"]
  GETTABLEKS R25 R0 K56 ["ImageSize"]
  SETTABLEKS R25 R24 K9 ["Size"]
  NAMECALL R25 R13 K57 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K58 ["LayoutOrder"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K21 ["Tag"]
  LOADK R26 K59 ["X-Corner X-Bottom X-Right"]
  SETTABLE R26 R24 R25
  NEWTABLE R25 0 1
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K7 ["createElement"]
  LOADK R27 K18 ["Frame"]
  NEWTABLE R28 1 0
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K21 ["Tag"]
  LOADK R30 K60 ["X-Pad X-Fit X-Row StartPage-NoBackground"]
  SETTABLE R30 R28 R29
  MOVE R29 R12
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  JUMP [+55]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K7 ["createElement"]
  LOADK R23 K18 ["Frame"]
  NEWTABLE R24 4 0
  GETTABLEKS R25 R0 K56 ["ImageSize"]
  SETTABLEKS R25 R24 K9 ["Size"]
  LOADK R25 K61 [0.84]
  SETTABLEKS R25 R24 K62 ["BackgroundTransparency"]
  NAMECALL R25 R13 K57 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K58 ["LayoutOrder"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K21 ["Tag"]
  LOADK R26 K63 ["X-Corner X-Center X-Middle StartPage-StandardDarkBackground"]
  SETTABLE R26 R24 R25
  NEWTABLE R25 0 1
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K7 ["createElement"]
  GETUPVAL R27 6
  NEWTABLE R28 4 0
  DUPTABLE R29 K27 [{"Image"}]
  LOADK R30 K64 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
  SETTABLEKS R30 R29 K26 ["Image"]
  SETTABLEKS R29 R28 K24 ["Style"]
  GETIMPORT R29 K20 [UDim2.new]
  LOADN R30 0
  LOADN R31 100
  LOADN R32 0
  LOADN R33 100
  CALL R29 4 1
  SETTABLEKS R29 R28 K9 ["Size"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K21 ["Tag"]
  LOADK R30 K65 ["X-Corner"]
  SETTABLE R30 R28 R29
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  SETTABLEKS R22 R21 K26 ["Image"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K7 ["createElement"]
  LOADK R23 K18 ["Frame"]
  NEWTABLE R24 2 0
  NAMECALL R25 R13 K57 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K58 ["LayoutOrder"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K21 ["Tag"]
  LOADK R26 K66 ["X-Fit X-Row StartPage-DescPadding StartPage-NoBackground"]
  SETTABLE R26 R24 R25
  DUPTABLE R25 K70 [{"Options", "Kebab", "Focus"}]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K7 ["createElement"]
  LOADK R27 K18 ["Frame"]
  NEWTABLE R28 4 0
  GETIMPORT R29 K20 [UDim2.new]
  LOADN R30 0
  LOADN R31 170
  LOADN R32 1
  LOADN R33 56
  CALL R29 4 1
  SETTABLEKS R29 R28 K9 ["Size"]
  NAMECALL R29 R13 K57 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K58 ["LayoutOrder"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K21 ["Tag"]
  LOADK R30 K71 ["X-Fit X-Top StartPage-SearchResultRowColumn StartPage-NoBackground"]
  SETTABLE R30 R28 R29
  DUPTABLE R29 K77 [{"Privacy", "Title", "FormattedDate", "Description", "CreatorName"}]
  GETTABLEKS R31 R0 K78 ["IsPrivacyVisible"]
  JUMPIFNOT R31 [+77]
  GETTABLEKS R31 R10 K79 ["PrivacyType"]
  JUMPIFNOT R31 [+74]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K7 ["createElement"]
  LOADK R31 K18 ["Frame"]
  NEWTABLE R32 2 0
  NAMECALL R33 R13 K57 ["getNextOrder"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K58 ["LayoutOrder"]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K21 ["Tag"]
  LOADK R34 K80 ["X-RowS X-Fit StartPage-NoBackground"]
  SETTABLE R34 R32 R33
  NEWTABLE R33 0 2
  GETUPVAL R35 3
  GETTABLEKS R34 R35 K7 ["createElement"]
  GETUPVAL R35 8
  NEWTABLE R36 2 0
  LOADK R39 K81 ["Plugin"]
  LOADK R41 K82 ["PrivacyType.%*"]
  GETTABLEKS R43 R10 K79 ["PrivacyType"]
  NAMECALL R41 R41 K83 ["format"]
  CALL R41 2 1
  MOVE R40 R41
  NAMECALL R37 R1 K84 ["getText"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K35 ["Text"]
  GETUPVAL R38 3
  GETTABLEKS R37 R38 K21 ["Tag"]
  LOADK R38 K85 ["X-Fit"]
  SETTABLE R38 R36 R37
  CALL R34 2 1
  GETTABLEKS R36 R10 K86 ["AgeRecommendation"]
  JUMPIFNOT R36 [+23]
  GETTABLEKS R36 R10 K86 ["AgeRecommendation"]
  JUMPIFNOTEQKN R36 K87 [17] [+20]
  GETUPVAL R36 3
  GETTABLEKS R35 R36 K7 ["createElement"]
  GETUPVAL R36 8
  NEWTABLE R37 2 0
  GETTABLEKS R39 R10 K86 ["AgeRecommendation"]
  LOADK R40 K32 ["+"]
  CONCAT R38 R39 R40
  SETTABLEKS R38 R37 K35 ["Text"]
  GETUPVAL R39 3
  GETTABLEKS R38 R39 K21 ["Tag"]
  LOADK R39 K85 ["X-Fit"]
  SETTABLE R39 R37 R38
  CALL R35 2 1
  JUMP [+1]
  LOADNIL R35
  SETLIST R33 R34 2 [1]
  CALL R30 3 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K72 ["Privacy"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K7 ["createElement"]
  LOADK R31 K31 ["TextLabel"]
  NEWTABLE R32 8 0
  GETTABLEKS R33 R10 K88 ["Name"]
  SETTABLEKS R33 R32 K35 ["Text"]
  LOADB R33 1
  SETTABLEKS R33 R32 K89 ["TextWrapped"]
  GETIMPORT R33 K92 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R33 R32 K90 ["TextTruncate"]
  GETIMPORT R33 K95 [Enum.TextXAlignment.Left]
  SETTABLEKS R33 R32 K93 ["TextXAlignment"]
  GETIMPORT R33 K20 [UDim2.new]
  LOADN R34 1
  LOADN R35 226
  LOADN R36 0
  LOADN R37 18
  CALL R33 4 1
  SETTABLEKS R33 R32 K9 ["Size"]
  NAMECALL R33 R13 K57 ["getNextOrder"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K58 ["LayoutOrder"]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K21 ["Tag"]
  LOADK R34 K96 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold StartPage-NoBackground"]
  SETTABLE R34 R32 R33
  CALL R30 2 1
  SETTABLEKS R30 R29 K73 ["Title"]
  JUMPIFNOT R11 [+38]
  GETTABLEKS R31 R0 K97 ["IsDateModifiedVisible"]
  JUMPIFNOT R31 [+35]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K7 ["createElement"]
  LOADK R31 K31 ["TextLabel"]
  NEWTABLE R32 8 0
  LOADK R35 K81 ["Plugin"]
  LOADK R36 K98 ["LastModified"]
  DUPTABLE R37 K100 [{"lastModified"}]
  SETTABLEKS R11 R37 K99 ["lastModified"]
  NAMECALL R33 R1 K84 ["getText"]
  CALL R33 4 1
  SETTABLEKS R33 R32 K35 ["Text"]
  LOADN R33 12
  SETTABLEKS R33 R32 K40 ["TextSize"]
  GETIMPORT R33 K95 [Enum.TextXAlignment.Left]
  SETTABLEKS R33 R32 K93 ["TextXAlignment"]
  NAMECALL R33 R13 K57 ["getNextOrder"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K58 ["LayoutOrder"]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K21 ["Tag"]
  LOADK R34 K101 ["X-Fit StartPage-MutedTextColor StartPage-NoBackground StartPage-Font"]
  SETTABLE R34 R32 R33
  CALL R30 2 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K74 ["FormattedDate"]
  GETTABLEKS R31 R10 K75 ["Description"]
  JUMPIFNOT R31 [+35]
  GETTABLEKS R31 R0 K102 ["IsDescriptionVisible"]
  JUMPIFNOT R31 [+32]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K7 ["createElement"]
  LOADK R31 K31 ["TextLabel"]
  NEWTABLE R32 8 0
  GETTABLEKS R33 R10 K75 ["Description"]
  SETTABLEKS R33 R32 K35 ["Text"]
  LOADN R33 12
  SETTABLEKS R33 R32 K40 ["TextSize"]
  LOADB R33 1
  SETTABLEKS R33 R32 K89 ["TextWrapped"]
  GETIMPORT R33 K95 [Enum.TextXAlignment.Left]
  SETTABLEKS R33 R32 K93 ["TextXAlignment"]
  NAMECALL R33 R13 K57 ["getNextOrder"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K58 ["LayoutOrder"]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K21 ["Tag"]
  LOADK R34 K101 ["X-Fit StartPage-MutedTextColor StartPage-NoBackground StartPage-Font"]
  SETTABLE R34 R32 R33
  CALL R30 2 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K75 ["Description"]
  GETTABLEKS R31 R10 K76 ["CreatorName"]
  JUMPIFNOT R31 [+37]
  GETTABLEKS R31 R0 K103 ["IsCreatorNameVisible"]
  JUMPIFNOT R31 [+34]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K7 ["createElement"]
  LOADK R31 K31 ["TextLabel"]
  NEWTABLE R32 8 0
  LOADK R34 K104 ["@"]
  GETTABLEKS R35 R10 K76 ["CreatorName"]
  CONCAT R33 R34 R35
  SETTABLEKS R33 R32 K35 ["Text"]
  LOADN R33 12
  SETTABLEKS R33 R32 K40 ["TextSize"]
  LOADB R33 1
  SETTABLEKS R33 R32 K89 ["TextWrapped"]
  GETIMPORT R33 K95 [Enum.TextXAlignment.Left]
  SETTABLEKS R33 R32 K93 ["TextXAlignment"]
  NAMECALL R33 R13 K57 ["getNextOrder"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K58 ["LayoutOrder"]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K21 ["Tag"]
  LOADK R34 K101 ["X-Fit StartPage-MutedTextColor StartPage-NoBackground StartPage-Font"]
  SETTABLE R34 R32 R33
  CALL R30 2 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K76 ["CreatorName"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K67 ["Options"]
  GETTABLEKS R27 R0 K105 ["IsDropdownMenuVisible"]
  JUMPIFNOT R27 [+60]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K7 ["createElement"]
  LOADK R27 K106 ["ImageButton"]
  NEWTABLE R28 8 0
  GETIMPORT R29 K20 [UDim2.new]
  LOADN R30 1
  LOADN R31 224
  LOADN R32 0
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K10 ["Position"]
  LOADB R29 0
  SETTABLEKS R29 R28 K107 ["Selectable"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K47 ["Event"]
  GETTABLEKS R29 R30 K48 ["Activated"]
  NEWCLOSURE R30 P1
  CAPTURE VAL R5
  SETTABLE R30 R28 R29
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K47 ["Event"]
  GETTABLEKS R29 R30 K49 ["MouseEnter"]
  SETTABLE R2 R28 R29
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K47 ["Event"]
  GETTABLEKS R29 R30 K50 ["MouseLeave"]
  SETTABLE R3 R28 R29
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K108 ["Change"]
  GETTABLEKS R29 R30 K109 ["AbsolutePosition"]
  NEWCLOSURE R30 P2
  CAPTURE VAL R7
  SETTABLE R30 R28 R29
  NAMECALL R29 R13 K57 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K58 ["LayoutOrder"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K21 ["Tag"]
  LOADK R30 K110 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
  SETTABLE R30 R28 R29
  NEWTABLE R29 0 0
  CALL R26 3 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K68 ["Kebab"]
  JUMPIFNOT R4 [+78]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K7 ["createElement"]
  GETUPVAL R27 9
  NEWTABLE R28 2 0
  NEWCLOSURE R29 P3
  CAPTURE VAL R5
  SETTABLEKS R29 R28 K111 ["OnFocusLost"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K21 ["Tag"]
  LOADK R30 K112 ["X-Fill StartPage-NoBackground"]
  SETTABLE R30 R28 R29
  NEWTABLE R29 0 1
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K7 ["createElement"]
  GETUPVAL R31 10
  DUPTABLE R32 K117 [{"Position", "Hide", "KebabMenu", "SetNetworkResults", "Cell", "OnItemActivated", "MenuContainerSizeChanged"}]
  GETIMPORT R33 K20 [UDim2.new]
  LOADN R34 0
  GETTABLEKS R37 R6 K119 ["X"]
  GETTABLEKS R38 R8 K119 ["X"]
  SUB R36 R37 R38
  ADDK R35 R36 K118 [32]
  LOADN R36 0
  GETTABLEKS R38 R6 K120 ["Y"]
  GETTABLEKS R39 R8 K120 ["Y"]
  SUB R37 R38 R39
  CALL R33 4 1
  SETTABLEKS R33 R32 K10 ["Position"]
  NOT R33 R4
  JUMPIF R33 [+11]
  LOADB R33 1
  GETTABLEKS R34 R8 K119 ["X"]
  JUMPIFEQKN R34 K121 [0] [+7]
  GETTABLEKS R34 R8 K120 ["Y"]
  JUMPIFEQKN R34 K121 [0] [+2]
  LOADB R33 0 +1
  LOADB R33 1
  SETTABLEKS R33 R32 K113 ["Hide"]
  GETTABLEKS R33 R0 K114 ["KebabMenu"]
  SETTABLEKS R33 R32 K114 ["KebabMenu"]
  GETTABLEKS R33 R10 K42 ["SetNetworkResults"]
  SETTABLEKS R33 R32 K42 ["SetNetworkResults"]
  SETTABLEKS R10 R32 K5 ["Cell"]
  NEWCLOSURE R33 P4
  CAPTURE VAL R5
  SETTABLEKS R33 R32 K115 ["OnItemActivated"]
  NEWCLOSURE R33 P5
  CAPTURE VAL R9
  SETTABLEKS R33 R32 K116 ["MenuContainerSizeChanged"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K69 ["Focus"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K53 ["Body"]
  CALL R18 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useState"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["LayoutOrderIterator"]
  GETTABLEKS R6 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R6 K13 ["Localization"]
  GETTABLEKS R6 R3 K14 ["UI"]
  GETTABLEKS R7 R6 K15 ["Image"]
  GETTABLEKS R8 R6 K16 ["CaptureFocus"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K17 ["Src"]
  GETTABLEKS R10 R11 K18 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K19 ["Components"]
  GETTABLEKS R11 R12 K20 ["Shimmer"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K19 ["Components"]
  GETTABLEKS R12 R13 K21 ["ContextMenu"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K19 ["Components"]
  GETTABLEKS R13 R14 K22 ["Pill"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K17 ["Src"]
  GETTABLEKS R15 R16 K23 ["Hooks"]
  GETTABLEKS R14 R15 K24 ["useCursor"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K10 ["Util"]
  GETTABLEKS R15 R16 K25 ["formatISOTimestamp"]
  CALL R14 1 1
  DUPCLOSURE R15 K26 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R11
  RETURN R15 1
