PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["HistoryFrame"]
  JUMPIFEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETTABLEKS R2 R0 K2 ["SetScrubberOffset"]
  LOADN R3 0
  LOADN R4 1
  CALL R2 2 0
  JUMPIF R1 [+5]
  GETTABLEKS R2 R0 K2 ["SetScrubberOffset"]
  LOADNIL R3
  LOADNIL R4
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SetScrubberOffset"]
  LOADNIL R2
  LOADN R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SetScrubberOffset"]
  LOADNIL R2
  LOADN R3 255
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onPlayPauseClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onPreviousClicked"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onNextClicked"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["FrameBuffer"]
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  JUMPIFNOT R2 [+30]
  NAMECALL R6 R2 K2 ["getSize"]
  CALL R6 1 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["FRAMERATE"]
  DIV R3 R6 R7
  LOADN R6 1
  GETTABLEKS R9 R1 K5 ["HistoryOffset"]
  ORK R8 R9 K4 [0]
  DIV R7 R8 R3
  ADD R4 R6 R7
  GETTABLEKS R6 R2 K6 ["first"]
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R2 K7 ["last"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R7 R2 K7 ["last"]
  GETTABLEKS R6 R7 K8 ["timestamp"]
  GETTABLEKS R8 R2 K6 ["first"]
  GETTABLEKS R7 R8 K8 ["timestamp"]
  SUB R5 R6 R7
  JUMP [+1]
  LOADN R5 0
  GETTABLEKS R7 R1 K9 ["HistoryFrame"]
  JUMPIFEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K10 ["createElement"]
  GETUPVAL R8 2
  NEWTABLE R9 1 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["Tag"]
  LOADK R11 K12 ["Toolbar X-Fill X-RowS X-Middle"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K18 [{"Timeline", "Previous", "PlayPauseButton", "Next", "SettingsButton"}]
  JUMPIFNOT R2 [+76]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 3
  NEWTABLE R13 4 0
  GETIMPORT R14 K21 [UDim2.new]
  LOADN R15 1
  LOADN R16 156
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K22 ["Size"]
  SETTABLEKS R3 R13 K23 ["Timespan"]
  LOADN R14 1
  SETTABLEKS R14 R13 K24 ["LayoutOrder"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["Tag"]
  LOADK R15 K13 ["Timeline"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K27 [{"Scrubber", "BufferBar"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K10 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K30 [{"Position", "ZIndex"}]
  GETIMPORT R18 K32 [UDim2.fromScale]
  MOVE R19 R4
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K28 ["Position"]
  LOADN R18 2
  SETTABLEKS R18 R17 K29 ["ZIndex"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Scrubber"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K10 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K33 [{"ZIndex", "Size"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K29 ["ZIndex"]
  GETIMPORT R18 K21 [UDim2.new]
  DIV R20 R5 R3
  LOADN R21 0
  LOADN R22 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R19 K36 [math.clamp]
  CALL R19 3 1
  LOADN R20 0
  LOADN R21 0
  GETUPVAL R22 5
  LOADK R24 K37 ["BufferBarHeight"]
  NAMECALL R22 R22 K38 ["GetAttribute"]
  CALL R22 2 -1
  CALL R18 -1 1
  SETTABLEKS R18 R17 K22 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["BufferBar"]
  CALL R11 3 1
  JUMP [+15]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K39 [{"Size"}]
  GETIMPORT R14 K21 [UDim2.new]
  LOADN R15 1
  LOADN R16 156
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K22 ["Size"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["Timeline"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 6
  NEWTABLE R13 8 0
  LOADK R14 K40 ["Round"]
  SETTABLEKS R14 R13 K41 ["Style"]
  GETIMPORT R14 K43 [UDim2.fromOffset]
  LOADN R15 20
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Size"]
  LOADN R14 2
  SETTABLEKS R14 R13 K24 ["LayoutOrder"]
  GETTABLEKS R14 R0 K44 ["onPreviousClicked"]
  SETTABLEKS R14 R13 K45 ["OnClick"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["Tag"]
  LOADK R15 K46 ["MediaButton"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K48 [{"Icon"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K10 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K50 [{"Image"}]
  LOADK R18 K51 ["rbxasset://textures/CompositorDebugger/previous.png"]
  SETTABLEKS R18 R17 K49 ["Image"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["Icon"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["Previous"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K52 [{"Style", "Size", "LayoutOrder", "OnClick"}]
  LOADK R14 K40 ["Round"]
  SETTABLEKS R14 R13 K41 ["Style"]
  GETIMPORT R14 K43 [UDim2.fromOffset]
  LOADN R15 20
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Size"]
  LOADN R14 3
  SETTABLEKS R14 R13 K24 ["LayoutOrder"]
  GETTABLEKS R14 R0 K53 ["onPlayPauseClicked"]
  SETTABLEKS R14 R13 K45 ["OnClick"]
  DUPTABLE R14 K48 [{"Icon"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K10 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K55 [{"Size", "Position", "AnchorPoint", "Image"}]
  GETIMPORT R18 K43 [UDim2.fromOffset]
  LOADN R19 20
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K22 ["Size"]
  GETIMPORT R18 K32 [UDim2.fromScale]
  LOADK R19 K56 [0.5]
  LOADK R20 K56 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K28 ["Position"]
  GETIMPORT R18 K58 [Vector2.new]
  LOADK R19 K56 [0.5]
  LOADK R20 K56 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K54 ["AnchorPoint"]
  JUMPIFNOT R6 [+2]
  LOADK R18 K59 ["rbxasset://textures/CompositorDebugger/pause.png"]
  JUMP [+1]
  LOADK R18 K60 ["rbxasset://textures/CompositorDebugger/play.png"]
  SETTABLEKS R18 R17 K49 ["Image"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["Icon"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K15 ["PlayPauseButton"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K52 [{"Style", "Size", "LayoutOrder", "OnClick"}]
  LOADK R14 K40 ["Round"]
  SETTABLEKS R14 R13 K41 ["Style"]
  GETIMPORT R14 K43 [UDim2.fromOffset]
  LOADN R15 20
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Size"]
  LOADN R14 4
  SETTABLEKS R14 R13 K24 ["LayoutOrder"]
  GETTABLEKS R14 R0 K61 ["onNextClicked"]
  SETTABLEKS R14 R13 K45 ["OnClick"]
  DUPTABLE R14 K48 [{"Icon"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K10 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K55 [{"Size", "Position", "AnchorPoint", "Image"}]
  GETIMPORT R18 K43 [UDim2.fromOffset]
  LOADN R19 20
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K22 ["Size"]
  GETIMPORT R18 K32 [UDim2.fromScale]
  LOADK R19 K56 [0.5]
  LOADK R20 K56 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K28 ["Position"]
  GETIMPORT R18 K58 [Vector2.new]
  LOADK R19 K56 [0.5]
  LOADK R20 K56 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K54 ["AnchorPoint"]
  LOADK R18 K62 ["rbxasset://textures/CompositorDebugger/next.png"]
  SETTABLEKS R18 R17 K49 ["Image"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["Icon"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["Next"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 8
  DUPTABLE R13 K63 [{"Size", "FrameBuffer", "LayoutOrder", "AnchorPoint"}]
  GETIMPORT R14 K43 [UDim2.fromOffset]
  LOADN R15 20
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Size"]
  GETTABLEKS R14 R1 K1 ["FrameBuffer"]
  SETTABLEKS R14 R13 K1 ["FrameBuffer"]
  LOADN R14 5
  SETTABLEKS R14 R13 K24 ["LayoutOrder"]
  GETIMPORT R14 K58 [Vector2.new]
  LOADN R15 1
  LOADK R16 K56 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K54 ["AnchorPoint"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["SettingsButton"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_5:
  DUPTABLE R2 K2 [{"HistoryFrame", "HistoryOffset"}]
  GETTABLEKS R4 R0 K3 ["Status"]
  GETTABLEKS R3 R4 K0 ["HistoryFrame"]
  SETTABLEKS R3 R2 K0 ["HistoryFrame"]
  GETTABLEKS R4 R0 K3 ["Status"]
  GETTABLEKS R3 R4 K1 ["HistoryOffset"]
  SETTABLEKS R3 R2 K1 ["HistoryOffset"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"SetScrubberOffset"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetScrubberOffset"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
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
  GETTABLEKS R6 R4 K12 ["Analytics"]
  GETTABLEKS R7 R4 K13 ["Localization"]
  GETTABLEKS R8 R3 K14 ["Styling"]
  GETTABLEKS R9 R8 K15 ["joinTags"]
  GETTABLEKS R10 R3 K16 ["UI"]
  GETTABLEKS R11 R10 K17 ["Button"]
  GETTABLEKS R12 R10 K18 ["IconButton"]
  GETTABLEKS R13 R10 K19 ["Image"]
  GETTABLEKS R14 R10 K20 ["Pane"]
  GETTABLEKS R16 R0 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Thunks"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R15 K23 ["SetScrubberOffset"]
  CALL R16 1 1
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K24 ["Util"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R17 K25 ["Constants"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETIMPORT R21 K1 [script]
  GETTABLEKS R20 R21 K26 ["settingsButton"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K27 ["scrubber"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETIMPORT R23 K1 [script]
  GETTABLEKS R22 R23 K28 ["timeline"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K29 ["styles"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R25 R0 K21 ["Src"]
  GETTABLEKS R24 R25 K30 ["Types"]
  CALL R23 1 1
  GETTABLEKS R24 R1 K31 ["PureComponent"]
  LOADK R26 K32 ["Toolbar"]
  NAMECALL R24 R24 K33 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K34 [PROTO_3]
  SETTABLEKS R25 R24 K35 ["init"]
  DUPCLOSURE R25 K36 [PROTO_4]
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R19
  SETTABLEKS R25 R24 K37 ["render"]
  MOVE R25 R5
  DUPTABLE R26 K38 [{"Analytics", "Localization"}]
  SETTABLEKS R6 R26 K12 ["Analytics"]
  SETTABLEKS R7 R26 K13 ["Localization"]
  CALL R25 1 1
  MOVE R26 R24
  CALL R25 1 1
  MOVE R24 R25
  DUPCLOSURE R25 K39 [PROTO_5]
  DUPCLOSURE R26 K40 [PROTO_7]
  CAPTURE VAL R16
  GETTABLEKS R27 R2 K41 ["connect"]
  MOVE R28 R25
  MOVE R29 R26
  CALL R27 2 1
  MOVE R28 R24
  CALL R27 1 1
  MOVE R24 R27
  RETURN R24 1
