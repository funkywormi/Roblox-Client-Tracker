PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADK R2 K0 ["Main"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 1
  CALL R0 0 1
  SETUPVAL R0 0
  GETUPVAL R0 0
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K0 ["Parent"]
  GETIMPORT R0 K4 [Enum.FinishRecordingOperation.Commit]
  RETURN R0 1

PROTO_2:
  LOADNIL R0
  GETUPVAL R1 0
  DUPTABLE R2 K3 [{"Name", "DisplayName", "DoChange"}]
  LOADK R3 K4 ["StyleEditor.CreateDesignSystem"]
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADK R3 K5 ["Style Editor - Create Design"]
  SETTABLEKS R3 R2 K1 ["DisplayName"]
  NEWCLOSURE R3 P0
  CAPTURE REF R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K2 ["DoChange"]
  CALL R1 1 0
  GETUPVAL R1 3
  GETUPVAL R2 4
  GETTABLEKS R3 R0 K6 ["Design"]
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 3
  GETUPVAL R2 5
  LOADK R3 K7 ["Main"]
  CALL R2 1 -1
  CALL R1 -1 0
  CLOSEUPVALS R0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["https://devforum.roblox.com/"]
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 2 0
  GETUPVAL R0 1
  GETUPVAL R1 2
  GETUPVAL R2 3
  CALL R2 0 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  LOADK R3 K0 ["StyleSheet"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K2 ["Main"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetDescendants"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R7 K1 ["StyleSheet"]
  NAMECALL R5 R4 K2 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+17]
  LOADK R7 K3 ["StyleCategory"]
  NAMECALL R5 R4 K4 ["GetAttribute"]
  CALL R5 2 1
  JUMPIFNOTEQKS R5 K5 ["Designs"] [+12]
  GETUPVAL R6 1
  GETUPVAL R7 2
  MOVE R8 R4
  CALL R7 1 -1
  CALL R6 -1 0
  GETUPVAL R6 1
  GETUPVAL R7 3
  LOADK R8 K6 ["Main"]
  CALL R7 1 -1
  CALL R6 -1 0
  JUMP [+2]
  FORGLOOP R0 2 [-23]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K7 ["DescendantAdded"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  NAMECALL R0 R0 K8 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_7:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R1 1
  CALL R1 0 1
  GETTABLEKS R2 R1 K0 ["Localization"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  GETUPVAL R6 10
  NEWCLOSURE R7 P3
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  NEWTABLE R8 0 0
  CALL R6 2 0
  GETUPVAL R7 11
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 12
  DUPTABLE R8 K4 [{"AutomaticSize", "Size"}]
  GETIMPORT R9 K7 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K2 ["AutomaticSize"]
  GETIMPORT R9 K10 [UDim2.fromScale]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K3 ["Size"]
  DUPTABLE R9 K12 [{"Column"}]
  GETUPVAL R11 11
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 13
  NEWTABLE R12 1 0
  GETUPVAL R14 11
  GETTABLEKS R13 R14 K13 ["Tag"]
  LOADK R14 K14 ["OnboardingPage X-ColumnM X-Fit X-PadL"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K20 [{"CloseContainer", "StylingImage", "Title", "Description", "ButtonContainer"}]
  GETUPVAL R15 11
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 13
  NEWTABLE R16 2 0
  LOADN R17 1
  SETTABLEKS R17 R16 K21 ["LayoutOrder"]
  GETUPVAL R18 11
  GETTABLEKS R17 R18 K13 ["Tag"]
  LOADK R18 K22 ["X-FitY"]
  SETTABLE R18 R16 R17
  DUPTABLE R17 K24 [{"Close"}]
  GETUPVAL R19 11
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 14
  NEWTABLE R20 4 0
  LOADK R21 K25 ["PointingHand"]
  SETTABLEKS R21 R20 K26 ["Cursor"]
  NEWTABLE R21 2 0
  GETUPVAL R23 15
  GETTABLEKS R22 R23 K27 ["close"]
  CALL R22 0 1
  SETTABLEKS R22 R21 K28 ["Image"]
  GETUPVAL R23 11
  GETTABLEKS R22 R23 K13 ["Tag"]
  LOADK R23 K29 ["Icon22"]
  SETTABLE R23 R21 R22
  SETTABLEKS R21 R20 K30 ["LeftIcon"]
  SETTABLEKS R3 R20 K31 ["OnClick"]
  GETUPVAL R22 11
  GETTABLEKS R21 R22 K13 ["Tag"]
  LOADK R22 K32 ["Compact IconOnly PositionRight"]
  SETTABLE R22 R20 R21
  CALL R18 2 1
  SETTABLEKS R18 R17 K23 ["Close"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K15 ["CloseContainer"]
  GETUPVAL R15 11
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 16
  DUPTABLE R16 K33 [{"Image", "LayoutOrder"}]
  GETUPVAL R18 15
  GETTABLEKS R17 R18 K34 ["onboarding"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K28 ["Image"]
  LOADN R17 2
  SETTABLEKS R17 R16 K21 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["StylingImage"]
  GETUPVAL R15 11
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 17
  NEWTABLE R16 4 0
  LOADN R17 3
  SETTABLEKS R17 R16 K21 ["LayoutOrder"]
  LOADK R19 K35 ["Onboarding"]
  LOADK R20 K17 ["Title"]
  NAMECALL R17 R2 K36 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K37 ["Text"]
  GETUPVAL R18 11
  GETTABLEKS R17 R18 K13 ["Tag"]
  LOADK R18 K38 ["Subtitle X-Fit"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  SETTABLEKS R14 R13 K17 ["Title"]
  GETUPVAL R15 11
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 17
  NEWTABLE R16 4 0
  LOADN R17 4
  SETTABLEKS R17 R16 K21 ["LayoutOrder"]
  LOADK R19 K35 ["Onboarding"]
  LOADK R20 K18 ["Description"]
  NAMECALL R17 R2 K36 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K37 ["Text"]
  GETUPVAL R18 11
  GETTABLEKS R17 R18 K13 ["Tag"]
  LOADK R18 K39 ["TextXAlignLeft X-FitY"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["Description"]
  GETUPVAL R15 11
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 13
  DUPTABLE R16 K40 [{"LayoutOrder"}]
  LOADN R17 5
  SETTABLEKS R17 R16 K21 ["LayoutOrder"]
  DUPTABLE R17 K43 [{"Link", "BlankButton"}]
  GETUPVAL R19 11
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 18
  DUPTABLE R20 K44 [{"OnClick", "Text"}]
  SETTABLEKS R5 R20 K31 ["OnClick"]
  LOADK R23 K35 ["Onboarding"]
  LOADK R24 K45 ["LearnMore"]
  NAMECALL R21 R2 K36 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K37 ["Text"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K41 ["Link"]
  GETUPVAL R19 11
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 14
  NEWTABLE R20 4 0
  LOADK R21 K25 ["PointingHand"]
  SETTABLEKS R21 R20 K26 ["Cursor"]
  SETTABLEKS R4 R20 K31 ["OnClick"]
  LOADK R23 K35 ["Onboarding"]
  LOADK R24 K46 ["CreateDesign"]
  NAMECALL R21 R2 K36 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K37 ["Text"]
  GETUPVAL R22 11
  GETTABLEKS R21 R22 K13 ["Tag"]
  LOADK R22 K47 ["PositionRight PrimaryBrand"]
  SETTABLE R22 R20 R21
  CALL R18 2 1
  SETTABLEKS R18 R17 K42 ["BlankButton"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K19 ["ButtonContainer"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["Column"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ReplicatedStorage"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R3 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["React"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["useEffect"]
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R3 K11 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["DropShadow"]
  GETTABLEKS R9 R7 K17 ["IconButton"]
  GETTABLEKS R10 R7 K18 ["Image"]
  GETTABLEKS R11 R7 K19 ["LinkText"]
  GETTABLEKS R12 R7 K20 ["Pane"]
  GETTABLEKS R13 R7 K21 ["TextLabel"]
  GETIMPORT R14 K10 [require]
  GETTABLEKS R17 R3 K22 ["Src"]
  GETTABLEKS R16 R17 K23 ["Reducers"]
  GETTABLEKS R15 R16 K24 ["RootReducer"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETTABLEKS R18 R3 K22 ["Src"]
  GETTABLEKS R17 R18 K25 ["Util"]
  GETTABLEKS R16 R17 K26 ["createBlankSystem"]
  CALL R15 1 1
  GETIMPORT R16 K10 [require]
  GETTABLEKS R19 R3 K22 ["Src"]
  GETTABLEKS R18 R19 K25 ["Util"]
  GETTABLEKS R17 R18 K27 ["recordChange"]
  CALL R16 1 1
  MOVE R17 R0
  CALL R16 1 1
  GETIMPORT R17 K10 [require]
  GETTABLEKS R20 R3 K22 ["Src"]
  GETTABLEKS R19 R20 K28 ["Resources"]
  GETTABLEKS R18 R19 K29 ["ModernIcons"]
  CALL R17 1 1
  GETIMPORT R18 K10 [require]
  GETTABLEKS R22 R3 K22 ["Src"]
  GETTABLEKS R21 R22 K28 ["Resources"]
  GETTABLEKS R20 R21 K30 ["Telemetry"]
  GETTABLEKS R19 R20 K31 ["OnboardingLearnLinkClickedEvent"]
  CALL R18 1 1
  GETTABLEKS R20 R3 K22 ["Src"]
  GETTABLEKS R19 R20 K32 ["Actions"]
  GETIMPORT R20 K10 [require]
  GETTABLEKS R22 R19 K33 ["Window"]
  GETTABLEKS R21 R22 K34 ["SetRootRoute"]
  CALL R20 1 1
  GETIMPORT R21 K10 [require]
  GETTABLEKS R23 R19 K33 ["Window"]
  GETTABLEKS R22 R23 K35 ["SetDesignSheet"]
  CALL R21 1 1
  GETTABLEKS R23 R3 K22 ["Src"]
  GETTABLEKS R22 R23 K36 ["Thunks"]
  GETIMPORT R23 K10 [require]
  GETTABLEKS R25 R22 K30 ["Telemetry"]
  GETTABLEKS R24 R25 K37 ["SendTelemetryEvent"]
  CALL R23 1 1
  GETIMPORT R24 K10 [require]
  GETTABLEKS R27 R3 K22 ["Src"]
  GETTABLEKS R26 R27 K38 ["Hooks"]
  GETTABLEKS R25 R26 K39 ["useFrameworkContext"]
  CALL R24 1 1
  GETIMPORT R25 K10 [require]
  GETTABLEKS R28 R3 K22 ["Src"]
  GETTABLEKS R27 R28 K38 ["Hooks"]
  GETTABLEKS R26 R27 K40 ["useDispatch"]
  CALL R25 1 1
  DUPCLOSURE R26 K41 [PROTO_7]
  CAPTURE VAL R25
  CAPTURE VAL R24
  CAPTURE VAL R20
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R1
  CAPTURE VAL R23
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R11
  RETURN R26 1
