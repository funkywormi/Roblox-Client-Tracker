PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["startTourFromTutorialTile"]
  NAMECALL R0 R0 K1 ["report"]
  CALL R0 2 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K2 ["startTutorial"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["closeTutorialTile"]
  NAMECALL R0 R0 K1 ["report"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["OnClose"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["new"]
  CALL R3 0 1
  GETUPVAL R4 3
  LOADNIL R5
  CALL R4 1 2
  GETUPVAL R6 4
  LOADK R7 K2 ["PointingHand"]
  CALL R6 1 2
  MOVE R8 R4
  JUMPIFNOT R8 [+7]
  GETTABLEKS R9 R4 K3 ["X"]
  LOADN R10 238
  JUMPIFLT R9 R10 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K5 ["Frame"]
  NEWTABLE R11 4 0
  GETTABLEKS R12 R0 K6 ["Position"]
  SETTABLEKS R12 R11 K6 ["Position"]
  LOADB R12 1
  SETTABLEKS R12 R11 K7 ["ClipsDescendants"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K8 ["Tag"]
  LOADK R13 K9 ["X-FitY StartPage-NoBackground"]
  SETTABLE R13 R11 R12
  NEWTABLE R12 0 1
  GETTABLEKS R14 R0 K10 ["HasParentLoaded"]
  JUMPIFNOT R14 [+422]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K5 ["Frame"]
  NEWTABLE R15 1 0
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K8 ["Tag"]
  LOADK R17 K11 ["StartPage-NoBackground X-FitY"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K14 [{"Container", "CancelButton"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K4 ["createElement"]
  LOADK R18 K5 ["Frame"]
  NEWTABLE R19 2 0
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K15 ["Change"]
  GETTABLEKS R20 R21 K16 ["AbsoluteSize"]
  NEWCLOSURE R21 P0
  CAPTURE VAL R5
  SETTABLE R21 R19 R20
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K8 ["Tag"]
  LOADK R21 K17 ["X-FitY StartPage-RoundedCorner8 StartPage-NoBackground"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K20 [{"TextboxContainer", "CityImage"}]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K4 ["createElement"]
  LOADK R22 K5 ["Frame"]
  NEWTABLE R23 4 0
  GETIMPORT R24 K22 [UDim2.new]
  LOADN R25 0
  LOADN R26 158
  LOADN R27 0
  JUMPIFNOT R8 [+2]
  LOADN R28 178
  JUMP [+1]
  LOADN R28 146
  CALL R24 4 1
  SETTABLEKS R24 R23 K23 ["Size"]
  GETIMPORT R24 K22 [UDim2.new]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  JUMPIFNOT R8 [+2]
  LOADN R28 146
  JUMP [+1]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K6 ["Position"]
  LOADB R24 1
  SETTABLEKS R24 R23 K7 ["ClipsDescendants"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K8 ["Tag"]
  LOADK R26 K24 ["X-Column X-Left StartPage-NoBackground "]
  JUMPIFNOT R8 [+2]
  LOADK R27 K25 ["X-Top"]
  JUMP [+1]
  LOADK R27 K26 ["X-Middle"]
  CONCAT R25 R26 R27
  SETTABLE R25 R23 R24
  DUPTABLE R24 K30 [{"TakeTourText", "EmptySpace", "TakeTourButton"}]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K4 ["createElement"]
  LOADK R26 K5 ["Frame"]
  NEWTABLE R27 4 0
  GETIMPORT R28 K22 [UDim2.new]
  LOADN R29 0
  LOADN R30 158
  LOADN R31 0
  LOADN R32 88
  CALL R28 4 1
  SETTABLEKS R28 R27 K23 ["Size"]
  NAMECALL R28 R3 K31 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K32 ["LayoutOrder"]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K8 ["Tag"]
  LOADK R29 K33 ["X-Pad X-ColumnM StartPage-NoBackground"]
  SETTABLE R29 R27 R28
  DUPTABLE R28 K36 [{"Title", "Description"}]
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K4 ["createElement"]
  LOADK R30 K37 ["TextLabel"]
  NEWTABLE R31 8 0
  LOADK R34 K38 ["Plugin"]
  LOADK R35 K39 ["TutorialTile.TourTitle"]
  NAMECALL R32 R2 K40 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K41 ["Text"]
  LOADN R32 32
  SETTABLEKS R32 R31 K42 ["TextSize"]
  GETIMPORT R32 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R32 R31 K44 ["TextXAlignment"]
  NAMECALL R32 R3 K31 ["getNextOrder"]
  CALL R32 1 1
  SETTABLEKS R32 R31 K32 ["LayoutOrder"]
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K8 ["Tag"]
  LOADK R33 K47 ["X-Fit StartPage-FontExtraBold StartPage-NoBackground StartPage-TextColor"]
  SETTABLE R33 R31 R32
  CALL R29 2 1
  SETTABLEKS R29 R28 K34 ["Title"]
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K4 ["createElement"]
  LOADK R30 K37 ["TextLabel"]
  NEWTABLE R31 8 0
  LOADK R34 K38 ["Plugin"]
  LOADK R35 K48 ["TutorialTile.TourDesc"]
  NAMECALL R32 R2 K40 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K41 ["Text"]
  LOADB R32 1
  SETTABLEKS R32 R31 K49 ["TextWrapped"]
  GETIMPORT R32 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R32 R31 K44 ["TextXAlignment"]
  NAMECALL R32 R3 K31 ["getNextOrder"]
  CALL R32 1 1
  SETTABLEKS R32 R31 K32 ["LayoutOrder"]
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K8 ["Tag"]
  LOADK R33 K50 ["X-Fit X-Left X-Top StartPage-TextColor StartPage-Font StartPage-NoBackground StartPage-TextSize"]
  SETTABLE R33 R31 R32
  CALL R29 2 1
  SETTABLEKS R29 R28 K35 ["Description"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K27 ["TakeTourText"]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K4 ["createElement"]
  LOADK R26 K5 ["Frame"]
  NEWTABLE R27 4 0
  GETIMPORT R28 K22 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 32
  CALL R28 4 1
  SETTABLEKS R28 R27 K23 ["Size"]
  NAMECALL R28 R3 K31 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K32 ["LayoutOrder"]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K8 ["Tag"]
  LOADK R29 K51 ["StartPage-NoBackground"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K28 ["EmptySpace"]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K4 ["createElement"]
  LOADK R26 K5 ["Frame"]
  NEWTABLE R27 2 0
  NAMECALL R28 R3 K31 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K32 ["LayoutOrder"]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K8 ["Tag"]
  LOADK R29 K52 ["X-Fit X-Pad StartPage-NoBackground"]
  SETTABLE R29 R27 R28
  NEWTABLE R28 0 1
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K4 ["createElement"]
  LOADK R30 K53 ["ImageButton"]
  NEWTABLE R31 8 0
  GETIMPORT R32 K56 [Color3.fromHex]
  LOADK R33 K57 ["#3C64FA"]
  CALL R32 1 1
  SETTABLEKS R32 R31 K58 ["BackgroundColor3"]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K59 ["Event"]
  GETTABLEKS R32 R33 K60 ["Activated"]
  NEWCLOSURE R33 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  SETTABLE R33 R31 R32
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K59 ["Event"]
  GETTABLEKS R32 R33 K61 ["MouseEnter"]
  SETTABLE R6 R31 R32
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K59 ["Event"]
  GETTABLEKS R32 R33 K62 ["MouseLeave"]
  SETTABLE R7 R31 R32
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K8 ["Tag"]
  LOADK R33 K63 ["X-Fit X-Row X-Middle StartPage-ButtonPadding StartPage-RoundedCorner8"]
  SETTABLE R33 R31 R32
  NEWTABLE R32 0 1
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K4 ["createElement"]
  GETUPVAL R34 7
  NEWTABLE R35 4 0
  LOADK R38 K38 ["Plugin"]
  LOADK R39 K64 ["TutorialTile.StartButton"]
  NAMECALL R36 R2 K40 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K41 ["Text"]
  GETIMPORT R36 K67 [Enum.Font.BuilderSansBold]
  SETTABLEKS R36 R35 K65 ["Font"]
  LOADN R36 16
  SETTABLEKS R36 R35 K42 ["TextSize"]
  GETUPVAL R37 5
  GETTABLEKS R36 R37 K8 ["Tag"]
  LOADK R37 K68 ["X-Fit StartPage-StandardTextColor"]
  SETTABLE R37 R35 R36
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  SETTABLEKS R25 R24 K29 ["TakeTourButton"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K18 ["TextboxContainer"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K4 ["createElement"]
  LOADK R22 K5 ["Frame"]
  DUPTABLE R23 K70 [{"BackgroundTransparency", "Position", "Size"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K69 ["BackgroundTransparency"]
  JUMPIFNOT R8 [+8]
  GETIMPORT R24 K22 [UDim2.new]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  JUMP [+7]
  GETIMPORT R24 K22 [UDim2.new]
  LOADN R25 1
  LOADN R26 176
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K6 ["Position"]
  GETIMPORT R24 K22 [UDim2.new]
  LOADN R25 0
  LOADN R26 80
  LOADN R27 0
  LOADN R28 146
  CALL R24 4 1
  SETTABLEKS R24 R23 K23 ["Size"]
  NEWTABLE R24 0 1
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K4 ["createElement"]
  GETUPVAL R26 8
  DUPTABLE R27 K72 [{"Style", "Size"}]
  DUPTABLE R28 K74 [{"Image"}]
  LOADK R29 K75 ["rbxasset://textures/StartPage/CityImages.png"]
  SETTABLEKS R29 R28 K73 ["Image"]
  SETTABLEKS R28 R27 K71 ["Style"]
  GETIMPORT R28 K22 [UDim2.new]
  LOADN R29 0
  LOADN R30 80
  LOADN R31 0
  LOADN R32 146
  CALL R28 4 1
  SETTABLEKS R28 R27 K23 ["Size"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETTABLEKS R21 R20 K19 ["CityImage"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K12 ["Container"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K4 ["createElement"]
  LOADK R18 K5 ["Frame"]
  NEWTABLE R19 2 0
  GETIMPORT R20 K22 [UDim2.new]
  LOADN R21 1
  LOADN R22 232
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K6 ["Position"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K8 ["Tag"]
  LOADK R21 K76 ["StartPage-NoBackground X-Fill X-Pad"]
  SETTABLE R21 R19 R20
  NEWTABLE R20 0 1
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K4 ["createElement"]
  LOADK R22 K53 ["ImageButton"]
  NEWTABLE R23 4 0
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K59 ["Event"]
  GETTABLEKS R24 R25 K60 ["Activated"]
  NEWCLOSURE R25 P2
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLE R25 R23 R24
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K59 ["Event"]
  GETTABLEKS R24 R25 K61 ["MouseEnter"]
  SETTABLE R6 R23 R24
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K59 ["Event"]
  GETTABLEKS R24 R25 K62 ["MouseLeave"]
  SETTABLE R7 R23 R24
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K8 ["Tag"]
  LOADK R25 K77 ["StartPage-NoBackground StartPage-CancelIcon"]
  SETTABLE R25 R23 R24
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  SETTABLEKS R17 R16 K13 ["CancelButton"]
  CALL R13 3 1
  JUMP [+17]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R15 9
  GETTABLEKS R14 R15 K78 ["Component"]
  DUPTABLE R15 K79 [{"Size"}]
  GETIMPORT R16 K22 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 105
  CALL R16 4 1
  SETTABLEKS R16 R15 K23 ["Size"]
  CALL R13 2 1
  SETLIST R12 R13 1 [1]
  CALL R9 3 -1
  RETURN R9 -1

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
  GETTABLEKS R5 R6 K13 ["Analytics"]
  GETTABLEKS R7 R3 K12 ["ContextServices"]
  GETTABLEKS R6 R7 K14 ["Localization"]
  GETTABLEKS R7 R3 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["TextLabel"]
  GETTABLEKS R9 R7 K17 ["Image"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K18 ["Src"]
  GETTABLEKS R12 R13 K19 ["Components"]
  GETTABLEKS R11 R12 K20 ["Shimmer"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K18 ["Src"]
  GETTABLEKS R13 R14 K21 ["Hooks"]
  GETTABLEKS R12 R13 K22 ["useCursor"]
  CALL R11 1 1
  GETIMPORT R12 K24 [game]
  LOADK R14 K25 ["StartPageService"]
  NAMECALL R12 R12 K26 ["GetService"]
  CALL R12 2 1
  DUPCLOSURE R13 K27 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  RETURN R13 1
