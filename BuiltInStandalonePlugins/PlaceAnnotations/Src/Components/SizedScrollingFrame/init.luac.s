PROTO_0:
  NAMECALL R1 R0 K0 ["GetChildren"]
  CALL R1 1 1
  LOADN R2 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADK R10 K1 ["GuiObject"]
  NAMECALL R8 R7 K2 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+6]
  GETTABLEKS R10 R7 K4 ["AbsoluteSize"]
  GETTABLEKS R9 R10 K5 ["Y"]
  ADDK R8 R9 K3 [10]
  ADD R2 R2 R8
  FORGLOOP R3 2 [-12]
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["current"]
  CALL R1 1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  NAMECALL R5 R4 K0 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [-4]
  GETIMPORT R0 K3 [table.clear]
  GETUPVAL R1 0
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K4 ["current"]
  JUMPIFNOT R0 [+34]
  GETUPVAL R0 2
  GETUPVAL R1 3
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["current"]
  CALL R1 1 1
  CALL R0 1 0
  GETUPVAL R0 4
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  LOADK R7 K5 ["GuiObject"]
  NAMECALL R5 R4 K6 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+16]
  GETUPVAL R6 0
  LOADK R9 K7 ["AbsoluteSize"]
  NAMECALL R7 R4 K8 ["GetPropertyChangedSignal"]
  CALL R7 2 1
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  NAMECALL R7 R7 K9 ["Connect"]
  CALL R7 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K11 [table.insert]
  CALL R5 -1 0
  FORGLOOP R0 2 [-22]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADN R3 0
  CALL R2 1 2
  NEWTABLE R4 0 0
  GETTABLEKS R5 R1 K2 ["current"]
  JUMPIFNOT R5 [+6]
  GETTABLEKS R5 R1 K2 ["current"]
  NAMECALL R5 R5 K3 ["GetChildren"]
  CALL R5 1 1
  MOVE R4 R5
  NEWTABLE R5 0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["useEffect"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE REF R4
  NEWTABLE R8 0 1
  MOVE R9 R4
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETTABLEKS R7 R0 K5 ["MaxY"]
  JUMPIFNOT R7 [+15]
  GETIMPORT R6 K8 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R12 R0 K5 ["MaxY"]
  FASTCALL2 MATH_MIN R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K11 [math.min]
  CALL R10 2 1
  CALL R6 4 1
  JUMP [+5]
  GETIMPORT R6 K13 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["createElement"]
  LOADK R8 K15 ["ScrollingFrame"]
  NEWTABLE R9 8 0
  GETTABLEKS R10 R0 K16 ["LayoutOrder"]
  SETTABLEKS R10 R9 K16 ["LayoutOrder"]
  SETTABLEKS R6 R9 K17 ["Size"]
  GETIMPORT R10 K8 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  MOVE R14 R2
  CALL R10 4 1
  SETTABLEKS R10 R9 K18 ["CanvasSize"]
  SETTABLEKS R1 R9 K19 ["ref"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K20 ["Tag"]
  GETUPVAL R11 2
  LOADK R12 K21 ["Component-SizedScrollingFrame X-Center X-ColumnM"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K20 ["Tag"]
  GETTABLE R13 R0 R14
  CALL R11 2 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R0 K22 ["children"]
  CALL R7 3 -1
  CLOSEUPVALS R4
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Styling"]
  GETTABLEKS R3 R4 K10 ["joinTags"]
  DUPCLOSURE R4 K11 [PROTO_0]
  DUPCLOSURE R5 K12 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
