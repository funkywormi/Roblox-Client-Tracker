PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["plotToAbs"]
  GETIMPORT R3 K3 [Vector2.new]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["PlotAbsoluteSize"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["makeControlPoint"]
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K3 [table.insert]
  CALL R3 -1 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["X_MIN"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["EqHook"]
  GETTABLEKS R5 R6 K2 ["lowGain"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["plotToAbs"]
  GETIMPORT R7 K6 [Vector2.new]
  MOVE R8 R4
  MOVE R9 R5
  CALL R7 2 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["PlotAbsoluteSize"]
  CALL R6 2 1
  MOVE R3 R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["EqHook"]
  GETTABLEKS R6 R7 K9 ["lowThreshold"]
  DIVK R5 R6 K8 [1.5]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["EqHook"]
  GETTABLEKS R6 R7 K2 ["lowGain"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["plotToAbs"]
  GETIMPORT R8 K6 [Vector2.new]
  MOVE R9 R5
  MOVE R10 R6
  CALL R8 2 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["PlotAbsoluteSize"]
  CALL R7 2 1
  MOVE R4 R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["EqHook"]
  GETTABLEKS R7 R8 K9 ["lowThreshold"]
  MULK R6 R7 K8 [1.5]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["EqHook"]
  GETTABLEKS R7 R8 K10 ["midGain"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["plotToAbs"]
  GETIMPORT R9 K6 [Vector2.new]
  MOVE R10 R6
  MOVE R11 R7
  CALL R9 2 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["PlotAbsoluteSize"]
  CALL R8 2 1
  MOVE R5 R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["EqHook"]
  GETTABLEKS R8 R9 K11 ["highThreshold"]
  DIVK R7 R8 K8 [1.5]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["EqHook"]
  GETTABLEKS R8 R9 K10 ["midGain"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["plotToAbs"]
  GETIMPORT R10 K6 [Vector2.new]
  MOVE R11 R7
  MOVE R12 R8
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["PlotAbsoluteSize"]
  CALL R9 2 1
  MOVE R6 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["EqHook"]
  GETTABLEKS R9 R10 K11 ["highThreshold"]
  MULK R8 R9 K8 [1.5]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["EqHook"]
  GETTABLEKS R9 R10 K12 ["highGain"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["plotToAbs"]
  GETIMPORT R11 K6 [Vector2.new]
  MOVE R12 R8
  MOVE R13 R9
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["PlotAbsoluteSize"]
  CALL R10 2 1
  MOVE R7 R10
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K13 ["X_MAX"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["EqHook"]
  GETTABLEKS R10 R11 K12 ["highGain"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["plotToAbs"]
  GETIMPORT R12 K6 [Vector2.new]
  MOVE R13 R9
  MOVE R14 R10
  CALL R12 2 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K7 ["PlotAbsoluteSize"]
  CALL R11 2 1
  MOVE R8 R11
  GETIMPORT R9 K6 [Vector2.new]
  GETTABLEKS R12 R5 K15 ["X"]
  GETTABLEKS R13 R4 K15 ["X"]
  SUB R11 R12 R13
  DIVK R10 R11 K14 [2]
  LOADN R11 0
  CALL R9 2 1
  GETIMPORT R10 K6 [Vector2.new]
  GETTABLEKS R14 R5 K15 ["X"]
  GETTABLEKS R15 R4 K15 ["X"]
  SUB R13 R14 R15
  MINUS R12 R13
  DIVK R11 R12 K14 [2]
  LOADN R12 0
  CALL R10 2 1
  GETIMPORT R11 K6 [Vector2.new]
  GETTABLEKS R14 R7 K15 ["X"]
  GETTABLEKS R15 R6 K15 ["X"]
  SUB R13 R14 R15
  DIVK R12 R13 K14 [2]
  LOADN R13 0
  CALL R11 2 1
  GETIMPORT R12 K6 [Vector2.new]
  GETTABLEKS R16 R7 K15 ["X"]
  GETTABLEKS R17 R6 K15 ["X"]
  SUB R15 R16 R17
  MINUS R14 R15
  DIVK R13 R14 K14 [2]
  LOADN R14 0
  CALL R12 2 1
  GETTABLEKS R13 R3 K15 ["X"]
  GETTABLEKS R14 R4 K15 ["X"]
  JUMPIFNOTLT R13 R14 [+13]
  MOVE R14 R0
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K16 ["makeControlPoint"]
  MOVE R16 R3
  LOADNIL R17
  LOADNIL R18
  CALL R15 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K19 [table.insert]
  CALL R13 -1 0
  GETIMPORT R13 K6 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  MOVE R15 R0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K16 ["makeControlPoint"]
  MOVE R17 R4
  MOVE R18 R13
  MOVE R19 R9
  CALL R16 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K19 [table.insert]
  CALL R14 -1 0
  GETTABLEKS R13 R6 K15 ["X"]
  GETTABLEKS R14 R5 K15 ["X"]
  JUMPIFNOTLT R13 R14 [+49]
  GETTABLEKS R15 R5 K15 ["X"]
  GETTABLEKS R16 R6 K15 ["X"]
  SUB R14 R15 R16
  GETTABLEKS R16 R5 K15 ["X"]
  GETTABLEKS R17 R4 K15 ["X"]
  SUB R15 R16 R17
  DIV R13 R14 R15
  ADD R15 R4 R7
  DIVK R14 R15 K14 [2]
  LOADK R16 K20 [0.25]
  ADD R18 R7 R12
  SUB R17 R18 R14
  MUL R15 R16 R17
  GETIMPORT R16 K6 [Vector2.new]
  GETTABLEKS R17 R14 K15 ["X"]
  GETTABLEKS R18 R5 K21 ["Y"]
  CALL R16 2 1
  LOADN R20 1
  SUB R19 R20 R13
  MUL R18 R16 R19
  MUL R19 R14 R13
  ADD R17 R18 R19
  LOADN R21 1
  SUB R20 R21 R13
  MUL R19 R11 R20
  MUL R20 R15 R13
  ADD R18 R19 R20
  MINUS R19 R18
  MOVE R21 R0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K16 ["makeControlPoint"]
  MOVE R23 R17
  MOVE R24 R19
  MOVE R25 R18
  CALL R22 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R20 K19 [table.insert]
  CALL R20 -1 0
  JUMP [+34]
  GETIMPORT R13 K6 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  MOVE R15 R0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K16 ["makeControlPoint"]
  MOVE R17 R5
  MOVE R18 R10
  MOVE R19 R13
  CALL R16 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K19 [table.insert]
  CALL R14 -1 0
  GETIMPORT R13 K6 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  MOVE R15 R0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K16 ["makeControlPoint"]
  MOVE R17 R6
  MOVE R18 R13
  MOVE R19 R11
  CALL R16 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K19 [table.insert]
  CALL R14 -1 0
  GETIMPORT R13 K6 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  MOVE R15 R0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K16 ["makeControlPoint"]
  MOVE R17 R7
  MOVE R18 R12
  MOVE R19 R13
  CALL R16 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K19 [table.insert]
  CALL R14 -1 0
  GETTABLEKS R13 R8 K15 ["X"]
  GETTABLEKS R14 R7 K15 ["X"]
  JUMPIFNOTLT R14 R13 [+13]
  MOVE R14 R0
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K16 ["makeControlPoint"]
  MOVE R16 R8
  LOADNIL R17
  LOADNIL R18
  CALL R15 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K19 [table.insert]
  CALL R13 -1 0
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R3 0 2
  GETTABLEKS R4 R0 K0 ["EqHook"]
  GETTABLEKS R5 R0 K1 ["PlotAbsoluteSize"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["CanvasGroup"]
  DUPTABLE R4 K6 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R5 K9 [UDim2.fromScale]
  LOADN R6 1
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Size"]
  LOADN R5 1
  SETTABLEKS R5 R4 K5 ["BackgroundTransparency"]
  DUPTABLE R5 K11 [{"Curve"}]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K14 [{"ControlPoints", "Tag"}]
  SETTABLEKS R1 R8 K12 ["ControlPoints"]
  GETTABLEKS R10 R0 K15 ["Enabled"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K16 ["FullCurve"]
  JUMP [+1]
  LOADK R9 K17 ["FullCurveDisabled"]
  SETTABLEKS R9 R8 K13 ["Tag"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Curve"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["AudioEqualizerEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useMemo"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R0 K12 ["Path2DWrapper"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R1 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["Path2DUtil"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R1 K10 ["Src"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K15 ["PlotUtil"]
  CALL R7 1 1
  DUPCLOSURE R8 K16 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R8 1
