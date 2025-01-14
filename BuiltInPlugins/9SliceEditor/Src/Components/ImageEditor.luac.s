PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["dragOrientation"]
  GETUPVAL R3 1
  JUMPIFNOTEQ R2 R3 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["draggerHandlingMovement"]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K0 ["dragOrientation"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["updateDraggedPosition"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["mouseMoveInputObjectConnection"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["mouseMoveInputObjectConnection"]
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["mouseMoveInputObjectConnection"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["dragging"]
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"dragging"}]
  SETTABLEKS R0 R3 K0 ["dragging"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dragging"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["onDragging"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Position"]
  GETUPVAL R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  SETTABLEKS R0 R4 K0 ["obj"]
  GETUPVAL R4 0
  LOADB R5 1
  SETTABLEKS R5 R4 K1 ["draggerHandlingMovement"]
  GETUPVAL R4 0
  SETTABLEKS R1 R4 K2 ["dragOrientation"]
  GETUPVAL R4 0
  SETTABLEKS R2 R4 K3 ["mousePosition"]
  GETUPVAL R4 0
  SETTABLEKS R3 R4 K4 ["draggerPosition"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["setDraggingState"]
  LOADB R5 1
  CALL R4 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["setLocked"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["props"]
  GETTABLEKS R5 R6 K8 ["Mouse"]
  LOADB R6 1
  CALL R4 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["lastMouseMoveInputObject"]
  JUMPIFEQKNIL R4 [+19]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["disconnectMouseMoveInputObject"]
  CALL R5 0 0
  GETUPVAL R5 0
  LOADK R8 K11 ["Position"]
  NAMECALL R6 R4 K12 ["GetPropertyChangedSignal"]
  CALL R6 2 1
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R4
  CAPTURE VAL R1
  NAMECALL R6 R6 K13 ["Connect"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["mouseMoveInputObjectConnection"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["sliceRect"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["pixelDimensions"]
  GETTABLEKS R4 R0 K3 ["UserInputType"]
  GETIMPORT R5 K6 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R4 R5 [+153]
  LOADNIL R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["dragOrientation"]
  GETUPVAL R6 1
  JUMPIFNOTEQ R5 R6 [+24]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["leftPos"]
  GETTABLEKS R8 R3 K9 ["X"]
  MUL R6 R7 R8
  FASTCALL1 MATH_ROUND R6 [+2]
  GETIMPORT R5 K12 [math.round]
  CALL R5 1 1
  NEWTABLE R6 0 4
  MOVE R7 R5
  GETUPVAL R9 2
  GETTABLE R8 R2 R9
  GETUPVAL R10 3
  GETTABLE R9 R2 R10
  GETUPVAL R11 4
  GETTABLE R10 R2 R11
  SETLIST R6 R7 4 [1]
  MOVE R4 R6
  JUMP [+86]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["dragOrientation"]
  GETUPVAL R6 2
  JUMPIFNOTEQ R5 R6 [+24]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["rightPos"]
  GETTABLEKS R8 R3 K9 ["X"]
  MUL R6 R7 R8
  FASTCALL1 MATH_ROUND R6 [+2]
  GETIMPORT R5 K12 [math.round]
  CALL R5 1 1
  NEWTABLE R6 0 4
  GETUPVAL R8 1
  GETTABLE R7 R2 R8
  MOVE R8 R5
  GETUPVAL R10 3
  GETTABLE R9 R2 R10
  GETUPVAL R11 4
  GETTABLE R10 R2 R11
  SETLIST R6 R7 4 [1]
  MOVE R4 R6
  JUMP [+57]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["dragOrientation"]
  GETUPVAL R6 3
  JUMPIFNOTEQ R5 R6 [+24]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["topPos"]
  GETTABLEKS R8 R3 K15 ["Y"]
  MUL R6 R7 R8
  FASTCALL1 MATH_ROUND R6 [+2]
  GETIMPORT R5 K12 [math.round]
  CALL R5 1 1
  NEWTABLE R6 0 4
  GETUPVAL R8 1
  GETTABLE R7 R2 R8
  GETUPVAL R9 2
  GETTABLE R8 R2 R9
  MOVE R9 R5
  GETUPVAL R11 4
  GETTABLE R10 R2 R11
  SETLIST R6 R7 4 [1]
  MOVE R4 R6
  JUMP [+28]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["dragOrientation"]
  GETUPVAL R6 4
  JUMPIFNOTEQ R5 R6 [+23]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K16 ["bottomPos"]
  GETTABLEKS R8 R3 K15 ["Y"]
  MUL R6 R7 R8
  FASTCALL1 MATH_ROUND R6 [+2]
  GETIMPORT R5 K12 [math.round]
  CALL R5 1 1
  NEWTABLE R6 0 4
  GETUPVAL R8 1
  GETTABLE R7 R2 R8
  GETUPVAL R9 2
  GETTABLE R8 R2 R9
  GETUPVAL R10 3
  GETTABLE R9 R2 R10
  MOVE R10 R5
  SETLIST R6 R7 4 [1]
  MOVE R4 R6
  JUMPIFNOT R4 [+8]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K17 ["setSliceRect"]
  MOVE R6 R4
  LOADB R7 1
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K18 ["disconnectMouseMoveInputObject"]
  CALL R5 0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K19 ["setDraggingState"]
  LOADB R6 0
  CALL R5 1 0
  GETUPVAL R5 0
  LOADB R6 0
  SETTABLEKS R6 R5 K20 ["uncertainDragStarted"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K21 ["updateHoverDragger"]
  CALL R5 0 0
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K22 ["setLocked"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K23 ["Mouse"]
  LOADB R7 0
  CALL R5 2 0
  GETUPVAL R4 0
  LOADB R5 0
  SETTABLEKS R5 R4 K24 ["draggerHandlingMovement"]
  RETURN R0 0

PROTO_6:
  LOADNIL R0
  LOADNIL R1
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R5 0
  GETTABLEKS R3 R5 K2 ["priorityDragCandidates"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  JUMPIFEQKNIL R0 [+5]
  GETTABLEKS R7 R6 K3 ["priority"]
  JUMPIFNOTLT R0 R7 [+4]
  GETTABLEKS R0 R6 K3 ["priority"]
  MOVE R1 R6
  FORGLOOP R2 2 [-10]
  RETURN R1 1

PROTO_7:
  LOADNIL R0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K2 ["uncertainDragCandidates"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  JUMPIFEQKNIL R0 [+5]
  GETTABLEKS R6 R5 K3 ["priority"]
  JUMPIFNOTLT R0 R6 [+3]
  GETTABLEKS R0 R5 K3 ["priority"]
  FORGLOOP R1 2 [-9]
  LOADNIL R1
  LOADNIL R2
  GETIMPORT R3 K1 [pairs]
  GETUPVAL R6 0
  GETTABLEKS R4 R6 K2 ["uncertainDragCandidates"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R7 K3 ["priority"]
  JUMPIFNOTEQ R8 R0 [+10]
  JUMPIFEQKNIL R1 [+5]
  GETTABLEKS R8 R7 K4 ["distance"]
  JUMPIFNOTLT R8 R1 [+4]
  GETTABLEKS R1 R7 K4 ["distance"]
  MOVE R2 R7
  FORGLOOP R3 2 [-14]
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["uncertainDragStarted"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["uncertainDragStarted"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["getBestUncertainDragCandidate"]
  CALL R1 0 1
  JUMPIFNOT R1 [+30]
  GETTABLEKS R2 R1 K2 ["instance"]
  GETIMPORT R3 K5 [Vector2.new]
  GETTABLEKS R6 R2 K6 ["Position"]
  GETTABLEKS R5 R6 K7 ["X"]
  GETTABLEKS R4 R5 K8 ["Scale"]
  GETTABLEKS R7 R2 K6 ["Position"]
  GETTABLEKS R6 R7 K9 ["Y"]
  GETTABLEKS R5 R6 K8 ["Scale"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["onDragBegin"]
  MOVE R5 R2
  GETTABLEKS R6 R1 K11 ["orientation"]
  MOVE R7 R0
  MOVE R8 R3
  CALL R4 4 0
  GETUPVAL R4 0
  LOADB R5 0
  SETTABLEKS R5 R4 K12 ["draggerHandlingMovement"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["dragging"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  LOADN R2 255
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["getBestPriorityDragCandidate"]
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R3 K2 ["orientation"]
  JUMP [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["getBestUncertainDragCandidate"]
  CALL R4 0 1
  JUMPIFNOT R4 [+2]
  GETTABLEKS R2 R4 K2 ["orientation"]
  GETUPVAL R4 0
  DUPTABLE R6 K5 [{"hoveringDraggerOrientation"}]
  SETTABLEKS R2 R6 K4 ["hoveringDraggerOrientation"]
  NAMECALL R4 R4 K6 ["setState"]
  CALL R4 2 0
  GETUPVAL R4 1
  JUMPIFEQ R2 R4 [+4]
  GETUPVAL R4 2
  JUMPIFNOTEQ R2 R4 [+16]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["setCursor"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["props"]
  GETTABLEKS R5 R6 K9 ["Mouse"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K10 ["MOUSE_CURSORS"]
  GETTABLEKS R6 R7 K11 ["EW"]
  CALL R4 2 0
  JUMP [+20]
  GETUPVAL R4 5
  JUMPIFEQ R2 R4 [+4]
  GETUPVAL R4 6
  JUMPIFNOTEQ R2 R4 [+15]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["setCursor"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["props"]
  GETTABLEKS R5 R6 K9 ["Mouse"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K10 ["MOUSE_CURSORS"]
  GETTABLEKS R6 R7 K12 ["NS"]
  CALL R4 2 0
  JUMPIFNOTEQKN R2 K13 [-1] [+10]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K14 ["resetCursor"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["props"]
  GETTABLEKS R5 R6 K9 ["Mouse"]
  CALL R4 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["uncertainDragCandidates"]
  DUPTABLE R6 K5 [{"distance", "instance", "orientation", "priority"}]
  SETTABLEKS R2 R6 K1 ["distance"]
  SETTABLEKS R3 R6 K2 ["instance"]
  SETTABLEKS R1 R6 K3 ["orientation"]
  ORK R7 R4 K6 [0]
  SETTABLEKS R7 R6 K4 ["priority"]
  SETTABLE R6 R5 R0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["updateHoverDragger"]
  CALL R5 0 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["uncertainDragCandidates"]
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["updateHoverDragger"]
  CALL R1 0 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["dragging"]
  JUMPIFNOT R2 [+17]
  GETTABLEKS R2 R1 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["draggerHandlingMovement"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["updateDraggedPosition"]
  GETTABLEKS R3 R1 K7 ["Position"]
  CALL R2 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["uncertainDragStarted"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["onDragEnd"]
  MOVE R3 R1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["dragOrientation"]
  CALL R2 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["sliceRect"]
  GETIMPORT R3 K4 [Vector2.new]
  GETTABLEKS R4 R0 K5 ["X"]
  GETTABLEKS R5 R0 K6 ["Y"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["mousePosition"]
  SUB R2 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["state"]
  GETTABLEKS R3 R4 K9 ["fitImageSize"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["draggerPosition"]
  DIV R7 R2 R3
  ADD R5 R6 R7
  SETTABLEKS R5 R4 K11 ["newPosition"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K12 ["pixelDimensions"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["dragOrientation"]
  GETUPVAL R6 1
  JUMPIFNOTEQ R5 R6 [+41]
  GETUPVAL R7 2
  GETTABLE R6 R1 R7
  GETTABLEKS R7 R4 K5 ["X"]
  DIV R5 R6 R7
  GETUPVAL R6 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["newPosition"]
  GETTABLEKS R8 R9 K5 ["X"]
  LOADN R9 0
  MOVE R10 R5
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K16 [math.clamp]
  CALL R7 3 1
  SETTABLEKS R7 R6 K17 ["leftPos"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K18 ["obj"]
  GETIMPORT R7 K21 [UDim2.fromScale]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K17 ["leftPos"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K18 ["obj"]
  GETTABLEKS R11 R12 K22 ["Position"]
  GETTABLEKS R10 R11 K6 ["Y"]
  GETTABLEKS R9 R10 K23 ["Scale"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K22 ["Position"]
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["dragOrientation"]
  GETUPVAL R6 2
  JUMPIFNOTEQ R5 R6 [+41]
  GETUPVAL R7 1
  GETTABLE R6 R1 R7
  GETTABLEKS R7 R4 K5 ["X"]
  DIV R5 R6 R7
  GETUPVAL R6 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["newPosition"]
  GETTABLEKS R8 R9 K5 ["X"]
  MOVE R9 R5
  LOADN R10 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K16 [math.clamp]
  CALL R7 3 1
  SETTABLEKS R7 R6 K24 ["rightPos"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K18 ["obj"]
  GETIMPORT R7 K21 [UDim2.fromScale]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K24 ["rightPos"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K18 ["obj"]
  GETTABLEKS R11 R12 K22 ["Position"]
  GETTABLEKS R10 R11 K6 ["Y"]
  GETTABLEKS R9 R10 K23 ["Scale"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K22 ["Position"]
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["dragOrientation"]
  GETUPVAL R6 3
  JUMPIFNOTEQ R5 R6 [+41]
  GETUPVAL R7 4
  GETTABLE R6 R1 R7
  GETTABLEKS R7 R4 K6 ["Y"]
  DIV R5 R6 R7
  GETUPVAL R6 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["newPosition"]
  GETTABLEKS R8 R9 K6 ["Y"]
  LOADN R9 0
  MOVE R10 R5
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K16 [math.clamp]
  CALL R7 3 1
  SETTABLEKS R7 R6 K25 ["topPos"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K18 ["obj"]
  GETIMPORT R7 K21 [UDim2.fromScale]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K18 ["obj"]
  GETTABLEKS R10 R11 K22 ["Position"]
  GETTABLEKS R9 R10 K5 ["X"]
  GETTABLEKS R8 R9 K23 ["Scale"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K25 ["topPos"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K22 ["Position"]
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["dragOrientation"]
  GETUPVAL R6 4
  JUMPIFNOTEQ R5 R6 [+40]
  GETUPVAL R7 3
  GETTABLE R6 R1 R7
  GETTABLEKS R7 R4 K6 ["Y"]
  DIV R5 R6 R7
  GETUPVAL R6 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["newPosition"]
  GETTABLEKS R8 R9 K6 ["Y"]
  MOVE R9 R5
  LOADN R10 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K16 [math.clamp]
  CALL R7 3 1
  SETTABLEKS R7 R6 K26 ["bottomPos"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K18 ["obj"]
  GETIMPORT R7 K21 [UDim2.fromScale]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K18 ["obj"]
  GETTABLEKS R10 R11 K22 ["Position"]
  GETTABLEKS R9 R10 K5 ["X"]
  GETTABLEKS R8 R9 K23 ["Scale"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K26 ["bottomPos"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K22 ["Position"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["priorityDragCandidates"]
  DUPTABLE R4 K4 [{"priority", "instance", "orientation"}]
  SETTABLEKS R1 R4 K1 ["priority"]
  SETTABLEKS R2 R4 K2 ["instance"]
  SETTABLEKS R0 R4 K3 ["orientation"]
  SETTABLE R4 R3 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["updateHoverDragger"]
  CALL R3 0 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["priorityDragCandidates"]
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["updateHoverDragger"]
  CALL R1 0 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["lastMouseMoveInputObject"]
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["pixelDimensions"]
  LOADB R2 0
  JUMPIFNOT R1 [+10]
  GETTABLEKS R4 R0 K2 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K3 ["X"]
  GETTABLEKS R4 R1 K3 ["X"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R3 0
  DUPTABLE R5 K6 [{"fitImageSize", "isEnlarged"}]
  GETTABLEKS R6 R0 K2 ["AbsoluteSize"]
  SETTABLEKS R6 R5 K4 ["fitImageSize"]
  SETTABLEKS R2 R5 K5 ["isEnlarged"]
  NAMECALL R3 R3 K7 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_19:
  LOADB R2 0
  SETTABLEKS R2 R0 K0 ["draggerHandlingMovement"]
  GETUPVAL R2 0
  SETTABLEKS R2 R0 K1 ["dragOrientation"]
  DUPTABLE R4 K3 [{"hoveringDraggerOrientation"}]
  LOADN R5 255
  SETTABLEKS R5 R4 K2 ["hoveringDraggerOrientation"]
  NAMECALL R2 R0 K4 ["setState"]
  CALL R2 2 0
  GETTABLEKS R4 R1 K5 ["pixelDimensions"]
  GETTABLEKS R3 R4 K6 ["X"]
  GETTABLEKS R5 R1 K5 ["pixelDimensions"]
  GETTABLEKS R4 R5 K7 ["Y"]
  FASTCALL2 MATH_MAX R3 R4 [+3]
  GETIMPORT R2 K10 [math.max]
  CALL R2 2 1
  LOADN R3 0
  JUMPIFNOTLE R2 R3 [+14]
  LOADN R2 0
  SETTABLEKS R2 R0 K11 ["leftPos"]
  LOADN R2 1
  SETTABLEKS R2 R0 K12 ["rightPos"]
  LOADN R2 0
  SETTABLEKS R2 R0 K13 ["topPos"]
  LOADN R2 1
  SETTABLEKS R2 R0 K14 ["bottomPos"]
  JUMP [+78]
  GETTABLEKS R2 R1 K5 ["pixelDimensions"]
  GETTABLEKS R5 R2 K6 ["X"]
  LOADN R6 0
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K16 [assert]
  CALL R3 1 0
  GETTABLEKS R5 R2 K7 ["Y"]
  LOADN R6 0
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K16 [assert]
  CALL R3 1 0
  GETTABLEKS R3 R1 K17 ["sliceRect"]
  GETUPVAL R7 1
  GETTABLE R6 R3 R7
  GETTABLEKS R7 R2 K6 ["X"]
  DIV R5 R6 R7
  LOADN R6 0
  LOADN R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K19 [math.clamp]
  CALL R4 3 1
  SETTABLEKS R4 R0 K11 ["leftPos"]
  GETUPVAL R7 2
  GETTABLE R6 R3 R7
  GETTABLEKS R7 R2 K6 ["X"]
  DIV R5 R6 R7
  LOADN R6 0
  LOADN R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K19 [math.clamp]
  CALL R4 3 1
  SETTABLEKS R4 R0 K12 ["rightPos"]
  GETUPVAL R7 3
  GETTABLE R6 R3 R7
  GETTABLEKS R7 R2 K7 ["Y"]
  DIV R5 R6 R7
  LOADN R6 0
  LOADN R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K19 [math.clamp]
  CALL R4 3 1
  SETTABLEKS R4 R0 K13 ["topPos"]
  GETUPVAL R7 4
  GETTABLE R6 R3 R7
  GETTABLEKS R7 R2 K7 ["Y"]
  DIV R5 R6 R7
  LOADN R6 0
  LOADN R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K19 [math.clamp]
  CALL R4 3 1
  SETTABLEKS R4 R0 K14 ["bottomPos"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K20 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K21 ["backgroundImageRef"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K22 ["onDragging"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K23 ["disconnectMouseMoveInputObject"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K24 ["setDraggingState"]
  GETTABLEKS R2 R0 K24 ["setDraggingState"]
  LOADB R3 0
  CALL R2 1 0
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R0 K25 ["onDragBegin"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  SETTABLEKS R2 R0 K26 ["onDragEnd"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K27 ["priorityDragCandidates"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K28 ["getBestPriorityDragCandidate"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K29 ["uncertainDragCandidates"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K30 ["getBestUncertainDragCandidate"]
  LOADB R2 0
  SETTABLEKS R2 R0 K31 ["uncertainDragStarted"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K32 ["startUncertainDrag"]
  LOADNIL R2
  SETTABLEKS R2 R0 K33 ["priorityHoverOrientation"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K34 ["updateHoverDragger"]
  NEWCLOSURE R2 P9
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K35 ["addDragCandidateWithId"]
  NEWCLOSURE R2 P10
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K36 ["removeDragCandidateWithId"]
  NEWCLOSURE R2 P11
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K37 ["onBackgroundInputChanged"]
  NEWCLOSURE R2 P12
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K38 ["onBackgroundInputEnded"]
  NEWCLOSURE R2 P13
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K39 ["updateDraggedPosition"]
  NEWCLOSURE R2 P14
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K40 ["addPriorityDragCandidate"]
  NEWCLOSURE R2 P15
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K41 ["removePriorityDragCandidate"]
  NEWCLOSURE R2 P16
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K42 ["setMostRecentMouseMoveInputObject"]
  NEWCLOSURE R2 P17
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K43 ["onFitImageSizeChanged"]
  RETURN R0 0

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K15 [{"orientation", "pixelDimensions", "sliceRect", "onDragBegin", "onDragging", "onDragEnd", "addDragCandidateWithId", "removeDragCandidateWithId", "isHovering", "isDragging", "addPriorityDragCandidate", "removePriorityDragCandidate", "startUncertainDrag", "setMostRecentMouseMoveInputObject"}]
  SETTABLEKS R1 R4 K1 ["orientation"]
  GETTABLEKS R6 R0 K16 ["props"]
  GETTABLEKS R5 R6 K2 ["pixelDimensions"]
  SETTABLEKS R5 R4 K2 ["pixelDimensions"]
  GETTABLEKS R6 R0 K16 ["props"]
  GETTABLEKS R5 R6 K3 ["sliceRect"]
  SETTABLEKS R5 R4 K3 ["sliceRect"]
  GETTABLEKS R5 R0 K4 ["onDragBegin"]
  SETTABLEKS R5 R4 K4 ["onDragBegin"]
  GETTABLEKS R5 R0 K5 ["onDragging"]
  SETTABLEKS R5 R4 K5 ["onDragging"]
  GETTABLEKS R5 R0 K6 ["onDragEnd"]
  SETTABLEKS R5 R4 K6 ["onDragEnd"]
  GETTABLEKS R5 R0 K7 ["addDragCandidateWithId"]
  SETTABLEKS R5 R4 K7 ["addDragCandidateWithId"]
  GETTABLEKS R5 R0 K8 ["removeDragCandidateWithId"]
  SETTABLEKS R5 R4 K8 ["removeDragCandidateWithId"]
  GETTABLEKS R7 R0 K17 ["state"]
  GETTABLEKS R6 R7 K18 ["hoveringDraggerOrientation"]
  JUMPIFEQ R6 R1 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K9 ["isHovering"]
  GETTABLEKS R6 R0 K17 ["state"]
  GETTABLEKS R5 R6 K19 ["dragging"]
  SETTABLEKS R5 R4 K10 ["isDragging"]
  GETTABLEKS R5 R0 K11 ["addPriorityDragCandidate"]
  SETTABLEKS R5 R4 K11 ["addPriorityDragCandidate"]
  GETTABLEKS R5 R0 K12 ["removePriorityDragCandidate"]
  SETTABLEKS R5 R4 K12 ["removePriorityDragCandidate"]
  GETTABLEKS R5 R0 K13 ["startUncertainDrag"]
  SETTABLEKS R5 R4 K13 ["startUncertainDrag"]
  GETTABLEKS R5 R0 K14 ["setMostRecentMouseMoveInputObject"]
  SETTABLEKS R5 R4 K14 ["setMostRecentMouseMoveInputObject"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["onFitImageSizeChanged"]
  GETTABLEKS R2 R0 K1 ["backgroundImageRef"]
  NAMECALL R2 R2 K2 ["getValue"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_22:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["selectedObject"]
  GETTABLEKS R4 R1 K3 ["pixelDimensions"]
  FASTCALL1 ASSERT R3 [+3]
  MOVE R6 R3
  GETIMPORT R5 K5 [assert]
  CALL R5 1 0
  FASTCALL1 ASSERT R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K5 [assert]
  CALL R5 1 0
  LOADB R6 0
  GETTABLEKS R7 R4 K6 ["X"]
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+8]
  GETTABLEKS R7 R4 K7 ["Y"]
  LOADN R8 0
  JUMPIFLT R8 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL1 ASSERT R6 [+2]
  GETIMPORT R5 K5 [assert]
  CALL R5 1 0
  GETTABLEKS R7 R0 K8 ["state"]
  GETTABLEKS R6 R7 K9 ["isEnlarged"]
  JUMPIFNOT R6 [+3]
  GETIMPORT R5 K13 [Enum.ResamplerMode.Pixelated]
  JUMPIF R5 [+2]
  GETIMPORT R5 K15 [Enum.ResamplerMode.Default]
  GETTABLEKS R7 R4 K6 ["X"]
  GETTABLEKS R8 R4 K7 ["Y"]
  DIV R6 R7 R8
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K16 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K22 [{"Position", "Size", "Style", "BackgroundColor", "Padding"}]
  GETTABLEKS R10 R1 K23 ["position"]
  SETTABLEKS R10 R9 K17 ["Position"]
  GETTABLEKS R10 R1 K24 ["size"]
  SETTABLEKS R10 R9 K18 ["Size"]
  LOADK R10 K25 ["RoundBox"]
  SETTABLEKS R10 R9 K19 ["Style"]
  GETTABLEKS R10 R2 K26 ["PaneBackgroundColor"]
  SETTABLEKS R10 R9 K20 ["BackgroundColor"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K27 ["IMAGE_PREVIEW_WINDOW_PADDING"]
  SETTABLEKS R10 R9 K21 ["Padding"]
  DUPTABLE R10 K29 [{"BackgroundCheckboardImage"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K16 ["createElement"]
  LOADK R12 K30 ["ImageButton"]
  NEWTABLE R13 16 0
  LOADN R14 1
  SETTABLEKS R14 R13 K31 ["BackgroundTransparency"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K32 ["IMAGES"]
  GETTABLEKS R14 R15 K33 ["BACKGROUND_GRID"]
  SETTABLEKS R14 R13 K34 ["Image"]
  GETIMPORT R14 K37 [Enum.ScaleType.Tile]
  SETTABLEKS R14 R13 K35 ["ScaleType"]
  GETIMPORT R14 K40 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["Size"]
  GETIMPORT R14 K42 [UDim2.fromOffset]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K43 ["BACKGROUND_TILE_SIZE"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K43 ["BACKGROUND_TILE_SIZE"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K44 ["TileSize"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K45 ["Event"]
  GETTABLEKS R14 R15 K46 ["InputChanged"]
  GETTABLEKS R15 R0 K47 ["onBackgroundInputChanged"]
  SETTABLE R15 R13 R14
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K45 ["Event"]
  GETTABLEKS R14 R15 K48 ["InputEnded"]
  GETTABLEKS R15 R0 K49 ["onBackgroundInputEnded"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R1 K50 ["layoutOrder"]
  SETTABLEKS R14 R13 K51 ["LayoutOrder"]
  GETIMPORT R14 K54 [Vector2.new]
  LOADK R15 K55 [0.5]
  LOADK R16 K55 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K56 ["AnchorPoint"]
  GETIMPORT R14 K40 [UDim2.fromScale]
  LOADK R15 K55 [0.5]
  LOADK R16 K55 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K17 ["Position"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K57 ["Change"]
  GETTABLEKS R14 R15 K58 ["AbsoluteSize"]
  GETTABLEKS R15 R0 K59 ["onFitImageSizeChanged"]
  SETTABLE R15 R13 R14
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K60 ["Ref"]
  GETTABLEKS R15 R0 K61 ["backgroundImageRef"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K65 [{"AspectRatioConstraint", "ImagePreview", "border"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K16 ["createElement"]
  LOADK R16 K66 ["UIAspectRatioConstraint"]
  DUPTABLE R17 K70 [{"AspectRatio", "AspectType", "DominantAxis"}]
  SETTABLEKS R6 R17 K67 ["AspectRatio"]
  GETIMPORT R18 K72 [Enum.AspectType.FitWithinMaxSize]
  SETTABLEKS R18 R17 K68 ["AspectType"]
  GETIMPORT R18 K74 [Enum.DominantAxis.Width]
  SETTABLEKS R18 R17 K69 ["DominantAxis"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K62 ["AspectRatioConstraint"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K16 ["createElement"]
  LOADK R16 K75 ["ImageLabel"]
  DUPTABLE R17 K80 [{"BackgroundTransparency", "Image", "ImageColor3", "Position", "ScaleType", "ResampleMode", "ImageRectOffset", "ImageRectSize", "Size"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K31 ["BackgroundTransparency"]
  GETTABLEKS R18 R3 K34 ["Image"]
  SETTABLEKS R18 R17 K34 ["Image"]
  GETTABLEKS R18 R1 K81 ["imageColor3"]
  SETTABLEKS R18 R17 K76 ["ImageColor3"]
  GETIMPORT R18 K40 [UDim2.fromScale]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K17 ["Position"]
  GETIMPORT R18 K83 [Enum.ScaleType.Fit]
  SETTABLEKS R18 R17 K35 ["ScaleType"]
  SETTABLEKS R5 R17 K77 ["ResampleMode"]
  GETTABLEKS R18 R1 K84 ["imageRectOffset"]
  SETTABLEKS R18 R17 K78 ["ImageRectOffset"]
  GETTABLEKS R18 R1 K85 ["imageRectSize"]
  SETTABLEKS R18 R17 K79 ["ImageRectSize"]
  GETIMPORT R18 K40 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K18 ["Size"]
  DUPTABLE R18 K90 [{"LeftDragSlider", "RightDragSlider", "TopDragSlider", "BottomDragSlider"}]
  GETUPVAL R21 3
  NAMECALL R19 R0 K91 ["createDragger"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K86 ["LeftDragSlider"]
  GETUPVAL R21 4
  NAMECALL R19 R0 K91 ["createDragger"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K87 ["RightDragSlider"]
  GETUPVAL R21 5
  NAMECALL R19 R0 K91 ["createDragger"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K88 ["TopDragSlider"]
  GETUPVAL R21 6
  NAMECALL R19 R0 K91 ["createDragger"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K89 ["BottomDragSlider"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K63 ["ImagePreview"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K16 ["createElement"]
  LOADK R16 K92 ["UIStroke"]
  DUPTABLE R17 K96 [{"Thickness", "Color", "Transparency"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K93 ["Thickness"]
  GETTABLEKS R18 R2 K97 ["PaneBorderColor"]
  SETTABLEKS R18 R17 K94 ["Color"]
  LOADN R18 0
  SETTABLEKS R18 R17 K95 ["Transparency"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K64 ["border"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K28 ["BackgroundCheckboardImage"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K11 ["Orientation"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K12 ["MouseCursorManager"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K14 ["ImageDragger"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K15 ["ContextServices"]
  GETTABLEKS R8 R7 K16 ["withContext"]
  GETTABLEKS R9 R7 K17 ["Analytics"]
  GETTABLEKS R10 R7 K18 ["Localization"]
  GETTABLEKS R11 R2 K19 ["UI"]
  GETTABLEKS R12 R11 K20 ["Pane"]
  GETTABLEKS R13 R1 K21 ["PureComponent"]
  LOADK R15 K22 ["ImageEditor"]
  NAMECALL R13 R13 K23 ["extend"]
  CALL R13 2 1
  GETTABLEKS R15 R4 K24 ["Left"]
  GETTABLEKS R14 R15 K25 ["rawValue"]
  CALL R14 0 1
  GETTABLEKS R16 R4 K26 ["Right"]
  GETTABLEKS R15 R16 K25 ["rawValue"]
  CALL R15 0 1
  GETTABLEKS R17 R4 K27 ["Top"]
  GETTABLEKS R16 R17 K25 ["rawValue"]
  CALL R16 0 1
  GETTABLEKS R18 R4 K28 ["Bottom"]
  GETTABLEKS R17 R18 K25 ["rawValue"]
  CALL R17 0 1
  GETTABLEKS R19 R4 K29 ["Undefined"]
  GETTABLEKS R18 R19 K25 ["rawValue"]
  CALL R18 0 1
  DUPCLOSURE R19 K30 [PROTO_19]
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R19 R13 K31 ["init"]
  DUPCLOSURE R19 K32 [PROTO_20]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R19 R13 K33 ["createDragger"]
  DUPCLOSURE R19 K34 [PROTO_21]
  SETTABLEKS R19 R13 K35 ["didMount"]
  DUPCLOSURE R19 K36 [PROTO_22]
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R19 R13 K37 ["render"]
  MOVE R19 R8
  DUPTABLE R20 K40 [{"Analytics", "Localization", "Stylizer", "Mouse"}]
  SETTABLEKS R9 R20 K17 ["Analytics"]
  SETTABLEKS R10 R20 K18 ["Localization"]
  GETTABLEKS R21 R7 K38 ["Stylizer"]
  SETTABLEKS R21 R20 K38 ["Stylizer"]
  GETTABLEKS R21 R7 K39 ["Mouse"]
  SETTABLEKS R21 R20 K39 ["Mouse"]
  CALL R19 1 1
  MOVE R20 R13
  CALL R19 1 1
  MOVE R13 R19
  RETURN R13 1
