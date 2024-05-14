PROTO_0:
  DUPTABLE R0 K10 [{"_adornee", "_parent", "_light", "_handlesFolder", "_guidesFolder", "_handles", "_handlesPresent", "_listener", "_sizeListener", "_attachmentListener"}]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_adornee"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_parent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_light"]
  GETIMPORT R1 K13 [Instance.new]
  LOADK R2 K14 ["Folder"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["_handlesFolder"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_guidesFolder"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["_handles"]
  LOADB R1 0
  SETTABLEKS R1 R0 K6 ["_handlesPresent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_listener"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["_sizeListener"]
  LOADNIL R1
  SETTABLEKS R1 R0 K9 ["_attachmentListener"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K16 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  NAMECALL R1 R0 K0 ["_setListeners"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_setAncestry"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K2 ["_handlesPresent"]
  JUMPIF R1 [+3]
  NAMECALL R1 R0 K3 ["_setHandles"]
  CALL R1 1 0
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K6 [Vector3.new]
  CALL R1 0 1
  GETTABLEKS R2 R0 K7 ["_parent"]
  LOADK R4 K8 ["BasePart"]
  NAMECALL R2 R2 K9 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K7 ["_parent"]
  GETTABLEKS R1 R2 K10 ["Size"]
  GETTABLEKS R3 R0 K11 ["_light"]
  GETTABLEKS R2 R3 K12 ["Enabled"]
  GETTABLEKS R4 R0 K11 ["_light"]
  GETTABLEKS R3 R4 K13 ["Color"]
  GETTABLEKS R5 R0 K11 ["_light"]
  GETTABLEKS R4 R5 K14 ["Range"]
  GETTABLEKS R6 R0 K11 ["_light"]
  GETTABLEKS R5 R6 K15 ["Angle"]
  FASTCALL1 MATH_RAD R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K18 [math.rad]
  CALL R6 1 1
  DIVK R9 R6 K19 [2]
  FASTCALL1 MATH_COS R9 [+2]
  GETIMPORT R8 K21 [math.cos]
  CALL R8 1 1
  MUL R7 R4 R8
  LOADN R9 2
  DIVK R12 R6 K19 [2]
  FASTCALL1 MATH_SIN R12 [+2]
  GETIMPORT R11 K23 [math.sin]
  CALL R11 1 1
  MUL R10 R4 R11
  MUL R8 R9 R10
  GETIMPORT R9 K25 [Vector3.fromNormalId]
  GETTABLEKS R11 R0 K11 ["_light"]
  GETTABLEKS R10 R11 K26 ["Face"]
  CALL R9 1 1
  GETIMPORT R13 K29 [CFrame.Angles]
  LOADN R14 0
  GETTABLEKS R18 R9 K32 ["Y"]
  SUBK R17 R18 K31 [1]
  MULK R16 R17 K30 [3.14159265358979]
  DIVK R15 R16 K19 [2]
  GETTABLEKS R20 R9 K33 ["Z"]
  SUBK R19 R20 K31 [1]
  GETTABLEKS R21 R9 K34 ["X"]
  SUBK R20 R21 K31 [1]
  MUL R18 R19 R20
  MULK R17 R18 K30 [3.14159265358979]
  DIVK R16 R17 K19 [2]
  CALL R13 3 1
  MUL R12 R13 R9
  MUL R11 R1 R12
  GETTABLEKS R10 R11 K35 ["magnitude"]
  GETIMPORT R14 K29 [CFrame.Angles]
  GETTABLEKS R18 R9 K34 ["X"]
  SUBK R17 R18 K31 [1]
  MULK R16 R17 K30 [3.14159265358979]
  DIVK R15 R16 K19 [2]
  LOADN R16 0
  GETTABLEKS R21 R9 K33 ["Z"]
  SUBK R20 R21 K31 [1]
  GETTABLEKS R22 R9 K32 ["Y"]
  SUBK R21 R22 K31 [1]
  MUL R19 R20 R21
  MULK R18 R19 K30 [3.14159265358979]
  DIVK R17 R18 K19 [2]
  CALL R14 3 1
  MUL R13 R14 R9
  MUL R12 R1 R13
  GETTABLEKS R11 R12 K35 ["magnitude"]
  ADD R12 R10 R8
  ADD R13 R11 R8
  GETIMPORT R16 K25 [Vector3.fromNormalId]
  GETTABLEKS R18 R0 K11 ["_light"]
  GETTABLEKS R17 R18 K26 ["Face"]
  CALL R16 1 1
  MUL R15 R1 R16
  GETTABLEKS R14 R15 K35 ["magnitude"]
  SUB R17 R12 R10
  DIVK R16 R17 K19 [2]
  FASTCALL2K MATH_POW R16 K19 [+4]
  LOADK R17 K19 [2]
  GETIMPORT R15 K37 [math.pow]
  CALL R15 2 1
  SUB R18 R13 R11
  DIVK R17 R18 K19 [2]
  FASTCALL2K MATH_POW R17 K19 [+4]
  LOADK R18 K19 [2]
  GETIMPORT R16 K37 [math.pow]
  CALL R16 2 1
  FASTCALL2K MATH_POW R7 K19 [+5]
  MOVE R18 R7
  LOADK R19 K19 [2]
  GETIMPORT R17 K37 [math.pow]
  CALL R17 2 1
  ADD R20 R15 R16
  ADD R19 R20 R17
  FASTCALL1 MATH_SQRT R19 [+2]
  GETIMPORT R18 K39 [math.sqrt]
  CALL R18 1 1
  GETTABLEKS R20 R0 K40 ["_handles"]
  GETTABLEKS R19 R20 K41 ["innerTopOutline"]
  GETTABLEKS R21 R0 K40 ["_handles"]
  GETTABLEKS R20 R21 K42 ["innerBottomOutline"]
  GETTABLEKS R22 R0 K40 ["_handles"]
  GETTABLEKS R21 R22 K43 ["innerLeftOutline"]
  GETTABLEKS R23 R0 K40 ["_handles"]
  GETTABLEKS R22 R23 K44 ["innerRightOutline"]
  GETTABLEKS R24 R0 K40 ["_handles"]
  GETTABLEKS R23 R24 K45 ["outerTopOutline"]
  GETTABLEKS R25 R0 K40 ["_handles"]
  GETTABLEKS R24 R25 K46 ["outerBottomOutline"]
  GETTABLEKS R26 R0 K40 ["_handles"]
  GETTABLEKS R25 R26 K47 ["outerLeftOutline"]
  GETTABLEKS R27 R0 K40 ["_handles"]
  GETTABLEKS R26 R27 K48 ["outerRightOutline"]
  GETTABLEKS R28 R0 K40 ["_handles"]
  GETTABLEKS R27 R28 K49 ["topLeftOutline"]
  GETTABLEKS R29 R0 K40 ["_handles"]
  GETTABLEKS R28 R29 K50 ["topRightOutline"]
  GETTABLEKS R30 R0 K40 ["_handles"]
  GETTABLEKS R29 R30 K51 ["bottomLeftOutline"]
  GETTABLEKS R31 R0 K40 ["_handles"]
  GETTABLEKS R30 R31 K52 ["bottomRightOutline"]
  GETTABLEKS R32 R0 K40 ["_handles"]
  GETTABLEKS R31 R32 K53 ["centerOutline"]
  SETTABLEKS R10 R19 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R19 K56 ["Adornee"]
  SETTABLEKS R2 R19 K57 ["Visible"]
  SETTABLEKS R3 R19 K58 ["Color3"]
  SETTABLEKS R10 R20 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R20 K56 ["Adornee"]
  SETTABLEKS R2 R20 K57 ["Visible"]
  SETTABLEKS R3 R20 K58 ["Color3"]
  SETTABLEKS R11 R21 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R21 K56 ["Adornee"]
  SETTABLEKS R2 R21 K57 ["Visible"]
  SETTABLEKS R3 R21 K58 ["Color3"]
  SETTABLEKS R11 R22 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R22 K56 ["Adornee"]
  SETTABLEKS R2 R22 K57 ["Visible"]
  SETTABLEKS R3 R22 K58 ["Color3"]
  SETTABLEKS R12 R23 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R23 K56 ["Adornee"]
  SETTABLEKS R2 R23 K57 ["Visible"]
  SETTABLEKS R3 R23 K58 ["Color3"]
  SETTABLEKS R12 R24 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R24 K56 ["Adornee"]
  SETTABLEKS R2 R24 K57 ["Visible"]
  SETTABLEKS R3 R24 K58 ["Color3"]
  SETTABLEKS R13 R25 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R25 K56 ["Adornee"]
  SETTABLEKS R2 R25 K57 ["Visible"]
  SETTABLEKS R3 R25 K58 ["Color3"]
  SETTABLEKS R13 R26 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R26 K56 ["Adornee"]
  SETTABLEKS R2 R26 K57 ["Visible"]
  SETTABLEKS R3 R26 K58 ["Color3"]
  SETTABLEKS R18 R27 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R27 K56 ["Adornee"]
  SETTABLEKS R2 R27 K57 ["Visible"]
  SETTABLEKS R3 R27 K58 ["Color3"]
  SETTABLEKS R18 R28 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R28 K56 ["Adornee"]
  SETTABLEKS R2 R28 K57 ["Visible"]
  SETTABLEKS R3 R28 K58 ["Color3"]
  SETTABLEKS R18 R29 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R29 K56 ["Adornee"]
  SETTABLEKS R2 R29 K57 ["Visible"]
  SETTABLEKS R3 R29 K58 ["Color3"]
  SETTABLEKS R18 R30 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R30 K56 ["Adornee"]
  SETTABLEKS R2 R30 K57 ["Visible"]
  SETTABLEKS R3 R30 K58 ["Color3"]
  SETTABLEKS R4 R31 K54 ["Height"]
  GETTABLEKS R32 R0 K55 ["_adornee"]
  SETTABLEKS R32 R31 K56 ["Adornee"]
  SETTABLEKS R2 R31 K57 ["Visible"]
  SETTABLEKS R3 R31 K58 ["Color3"]
  GETUPVAL R35 0
  GETTABLEKS R37 R0 K11 ["_light"]
  GETTABLEKS R36 R37 K26 ["Face"]
  GETTABLE R34 R35 R36
  MOVE R35 R10
  MOVE R36 R11
  MOVE R37 R12
  MOVE R38 R13
  MOVE R39 R14
  MOVE R40 R4
  MOVE R41 R7
  NAMECALL R32 R0 K59 ["_setCFrameValues"]
  CALL R32 9 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_handlesFolder"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Wireframe already pooled"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K4 ["_light"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Wireframe already pooled"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["_handlesFolder"]
  LOADK R2 K5 ["pooled"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETTABLEKS R1 R0 K0 ["_handlesFolder"]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["Parent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_light"]
  NAMECALL R1 R0 K8 ["_removeListeners"]
  CALL R1 1 0
  RETURN R0 1

PROTO_3:
  FASTCALL2K ASSERT R1 K0 [+5]
  MOVE R3 R1
  LOADK R4 K0 ["Can't adorn nil"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R4 R0 K3 ["_light"]
  NOT R3 R4
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Wireframe already adorned"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  SETTABLEKS R1 R0 K3 ["_light"]
  GETTABLEKS R2 R0 K5 ["_handlesFolder"]
  GETTABLEKS R3 R1 K6 ["name"]
  SETTABLEKS R3 R2 K7 ["Name"]
  GETTABLEKS R2 R0 K5 ["_handlesFolder"]
  GETTABLEKS R3 R0 K8 ["_guidesFolder"]
  SETTABLEKS R3 R2 K9 ["Parent"]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+24]
  GETTABLEKS R2 R1 K9 ["Parent"]
  JUMPIFNOT R2 [+16]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R2 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R2 K9 ["Parent"]
  SETTABLEKS R3 R0 K12 ["_adornee"]
  GETTABLEKS R3 R2 K13 ["CFrame"]
  SETTABLEKS R3 R0 K14 ["_offset"]
  SETTABLEKS R2 R0 K15 ["_parent"]
  JUMP [+13]
  SETTABLEKS R2 R0 K12 ["_adornee"]
  SETTABLEKS R2 R0 K15 ["_parent"]
  JUMP [+8]
  GETTABLEKS R2 R1 K9 ["Parent"]
  SETTABLEKS R2 R0 K12 ["_adornee"]
  GETTABLEKS R2 R1 K9 ["Parent"]
  SETTABLEKS R2 R0 K15 ["_parent"]
  NAMECALL R2 R0 K16 ["_setListeners"]
  CALL R2 1 0
  RETURN R0 1

PROTO_4:
  NAMECALL R1 R0 K0 ["_removeHandles"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_removeListeners"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_handlesFolder"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_handlesFolder"]
  RETURN R0 0

PROTO_5:
  SETTABLEKS R1 R0 K0 ["_guidesFolder"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_light"]
  GETTABLEKS R1 R2 K1 ["Parent"]
  GETIMPORT R2 K4 [CFrame.new]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K6 [Vector3.new]
  CALL R3 0 1
  CALL R2 1 1
  JUMPIF R1 [+2]
  LOADB R3 0
  RETURN R3 1
  FASTCALL2K ASSERT R1 K7 [+5]
  MOVE R4 R1
  LOADK R5 K7 ["Trapezoidal Prism Wireframe should have valid Adornee."]
  GETIMPORT R3 K9 [assert]
  CALL R3 2 0
  GETUPVAL R3 0
  JUMPIFNOT R3 [+44]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+23]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  GETTABLEKS R1 R3 K1 ["Parent"]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  GETTABLEKS R2 R3 K2 ["CFrame"]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R1 K2 ["CFrame"]
  MUL R2 R3 R2
  GETTABLEKS R1 R1 K1 ["Parent"]
  JUMPBACK [-11]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+68]
  LOADK R5 K12 ["BasePart"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+63]
  NAMECALL R3 R0 K13 ["_removeHandles"]
  CALL R3 1 0
  LOADB R3 0
  RETURN R3 1
  JUMP [+57]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+22]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  GETTABLEKS R1 R3 K1 ["Parent"]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  GETTABLEKS R2 R3 K2 ["CFrame"]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  NAMECALL R3 R0 K13 ["_removeHandles"]
  CALL R3 1 0
  LOADB R3 0
  RETURN R3 1
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R3 K11 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+9]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  LOADK R5 K12 ["BasePart"]
  NAMECALL R3 R3 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  GETUPVAL R3 1
  JUMPIFNOT R3 [+10]
  LOADK R5 K10 ["Attachment"]
  NAMECALL R3 R1 K11 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  NAMECALL R3 R0 K13 ["_removeHandles"]
  CALL R3 1 0
  LOADB R3 0
  RETURN R3 1
  SETTABLEKS R1 R0 K14 ["_adornee"]
  SETTABLEKS R2 R0 K15 ["_offset"]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["Parent"]
  SETTABLEKS R3 R0 K16 ["_parent"]
  LOADB R3 1
  RETURN R3 1

PROTO_7:
  SUB R13 R4 R2
  DIVK R12 R13 K1 [2]
  MULK R11 R12 K0 [1.4142135623731]
  DIV R10 R11 R8
  FASTCALL1 MATH_ATAN R10 [+2]
  GETIMPORT R9 K4 [math.atan]
  CALL R9 1 1
  DIVK R10 R3 K1 [2]
  DIVK R11 R6 K1 [2]
  DIVK R12 R2 K1 [2]
  DIVK R13 R5 K1 [2]
  DIVK R14 R4 K1 [2]
  DIVK R16 R6 K1 [2]
  ADD R15 R16 R8
  ADD R17 R2 R4
  DIVK R16 R17 K5 [4]
  ADD R18 R3 R5
  DIVK R17 R18 K5 [4]
  ADD R19 R6 R8
  DIVK R18 R19 K1 [2]
  ADD R20 R6 R7
  DIVK R19 R20 K1 [2]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K7 ["innerTopOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R25 K11 [CFrame.new]
  LOADN R26 0
  MOVE R27 R10
  MOVE R28 R11
  CALL R25 3 1
  MUL R24 R1 R25
  GETIMPORT R25 K13 [CFrame.Angles]
  LOADN R26 0
  LOADK R27 K14 [1.5707963267949]
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K15 ["innerBottomOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R25 K11 [CFrame.new]
  LOADN R26 0
  MINUS R27 R10
  MOVE R28 R11
  CALL R25 3 1
  MUL R24 R1 R25
  GETIMPORT R25 K13 [CFrame.Angles]
  LOADN R26 0
  LOADK R27 K14 [1.5707963267949]
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K16 ["innerRightOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R25 K11 [CFrame.new]
  MOVE R26 R12
  LOADN R27 0
  MOVE R28 R11
  CALL R25 3 1
  MUL R24 R1 R25
  GETIMPORT R25 K13 [CFrame.Angles]
  LOADK R26 K14 [1.5707963267949]
  LOADN R27 0
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K17 ["innerLeftOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R25 K11 [CFrame.new]
  MINUS R26 R12
  LOADN R27 0
  MOVE R28 R11
  CALL R25 3 1
  MUL R24 R1 R25
  GETIMPORT R25 K13 [CFrame.Angles]
  LOADK R26 K14 [1.5707963267949]
  LOADN R27 0
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K18 ["outerTopOutline"]
  GETTABLEKS R24 R0 K8 ["_offset"]
  MUL R23 R24 R1
  GETIMPORT R24 K11 [CFrame.new]
  LOADN R25 0
  MOVE R26 R13
  MOVE R27 R15
  CALL R24 3 1
  MUL R22 R23 R24
  GETIMPORT R23 K13 [CFrame.Angles]
  LOADN R24 0
  LOADK R25 K14 [1.5707963267949]
  LOADN R26 0
  CALL R23 3 1
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K19 ["outerBottomOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R25 K11 [CFrame.new]
  LOADN R26 0
  MINUS R27 R13
  MOVE R28 R15
  CALL R25 3 1
  MUL R24 R1 R25
  GETIMPORT R25 K13 [CFrame.Angles]
  LOADN R26 0
  LOADK R27 K14 [1.5707963267949]
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K20 ["outerLeftOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R25 K11 [CFrame.new]
  MOVE R26 R14
  LOADN R27 0
  MOVE R28 R15
  CALL R25 3 1
  MUL R24 R1 R25
  GETIMPORT R25 K13 [CFrame.Angles]
  LOADK R26 K14 [1.5707963267949]
  LOADN R27 0
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K21 ["outerRightOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R25 K11 [CFrame.new]
  MINUS R26 R14
  LOADN R27 0
  MOVE R28 R15
  CALL R25 3 1
  MUL R24 R1 R25
  GETIMPORT R25 K13 [CFrame.Angles]
  LOADK R26 K14 [1.5707963267949]
  LOADN R27 0
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K22 ["topLeftOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R26 K11 [CFrame.new]
  MOVE R27 R16
  MOVE R28 R17
  MOVE R29 R18
  CALL R26 3 1
  MUL R25 R1 R26
  GETIMPORT R26 K13 [CFrame.Angles]
  LOADN R27 0
  LOADN R28 0
  LOADK R29 K23 [-0.785398163397448]
  CALL R26 3 1
  MUL R24 R25 R26
  GETIMPORT R25 K13 [CFrame.Angles]
  MINUS R26 R9
  LOADN R27 0
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K24 ["topRightOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R26 K11 [CFrame.new]
  MINUS R27 R16
  MOVE R28 R17
  MOVE R29 R18
  CALL R26 3 1
  MUL R25 R1 R26
  GETIMPORT R26 K13 [CFrame.Angles]
  LOADN R27 0
  LOADN R28 0
  LOADK R29 K25 [0.785398163397448]
  CALL R26 3 1
  MUL R24 R25 R26
  GETIMPORT R25 K13 [CFrame.Angles]
  MINUS R26 R9
  LOADN R27 0
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K26 ["bottomLeftOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R26 K11 [CFrame.new]
  MOVE R27 R16
  MINUS R28 R17
  MOVE R29 R18
  CALL R26 3 1
  MUL R25 R1 R26
  GETIMPORT R26 K13 [CFrame.Angles]
  LOADN R27 0
  LOADN R28 0
  LOADK R29 K25 [0.785398163397448]
  CALL R26 3 1
  MUL R24 R25 R26
  GETIMPORT R25 K13 [CFrame.Angles]
  MOVE R26 R9
  LOADN R27 0
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K27 ["bottomRightOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R26 K11 [CFrame.new]
  MINUS R27 R16
  MINUS R28 R17
  MOVE R29 R18
  CALL R26 3 1
  MUL R25 R1 R26
  GETIMPORT R26 K13 [CFrame.Angles]
  LOADN R27 0
  LOADN R28 0
  LOADK R29 K23 [-0.785398163397448]
  CALL R26 3 1
  MUL R24 R25 R26
  GETIMPORT R25 K13 [CFrame.Angles]
  MOVE R26 R9
  LOADN R27 0
  LOADN R28 0
  CALL R25 3 1
  MUL R23 R24 R25
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  GETTABLEKS R21 R0 K6 ["_handles"]
  GETTABLEKS R20 R21 K28 ["centerOutline"]
  GETTABLEKS R22 R0 K8 ["_offset"]
  GETIMPORT R24 K11 [CFrame.new]
  LOADN R25 0
  LOADN R26 0
  MOVE R27 R19
  CALL R24 3 1
  MUL R23 R1 R24
  MUL R21 R22 R23
  SETTABLEKS R21 R20 K9 ["CFrame"]
  RETURN R0 0

PROTO_8:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["CylinderHandleAdornment"]
  CALL R1 1 1
  GETUPVAL R3 0
  MULK R2 R3 K4 [0.5]
  SETTABLEKS R2 R1 K5 ["Radius"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K6 ["Transparency"]
  GETTABLEKS R2 R0 K7 ["_handlesFolder"]
  SETTABLEKS R2 R1 K8 ["Parent"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["CylinderHandleAdornment"]
  CALL R2 1 1
  GETUPVAL R4 0
  MULK R3 R4 K4 [0.5]
  SETTABLEKS R3 R2 K5 ["Radius"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K6 ["Transparency"]
  GETTABLEKS R3 R0 K7 ["_handlesFolder"]
  SETTABLEKS R3 R2 K8 ["Parent"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["CylinderHandleAdornment"]
  CALL R3 1 1
  GETUPVAL R5 0
  MULK R4 R5 K4 [0.5]
  SETTABLEKS R4 R3 K5 ["Radius"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K6 ["Transparency"]
  GETTABLEKS R4 R0 K7 ["_handlesFolder"]
  SETTABLEKS R4 R3 K8 ["Parent"]
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K3 ["CylinderHandleAdornment"]
  CALL R4 1 1
  GETUPVAL R6 0
  MULK R5 R6 K4 [0.5]
  SETTABLEKS R5 R4 K5 ["Radius"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K6 ["Transparency"]
  GETTABLEKS R5 R0 K7 ["_handlesFolder"]
  SETTABLEKS R5 R4 K8 ["Parent"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K3 ["CylinderHandleAdornment"]
  CALL R5 1 1
  GETUPVAL R7 0
  MULK R6 R7 K4 [0.5]
  SETTABLEKS R6 R5 K5 ["Radius"]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K6 ["Transparency"]
  GETTABLEKS R6 R0 K7 ["_handlesFolder"]
  SETTABLEKS R6 R5 K8 ["Parent"]
  GETIMPORT R6 K2 [Instance.new]
  LOADK R7 K3 ["CylinderHandleAdornment"]
  CALL R6 1 1
  GETUPVAL R8 0
  MULK R7 R8 K4 [0.5]
  SETTABLEKS R7 R6 K5 ["Radius"]
  GETUPVAL R7 1
  SETTABLEKS R7 R6 K6 ["Transparency"]
  GETTABLEKS R7 R0 K7 ["_handlesFolder"]
  SETTABLEKS R7 R6 K8 ["Parent"]
  GETIMPORT R7 K2 [Instance.new]
  LOADK R8 K3 ["CylinderHandleAdornment"]
  CALL R7 1 1
  GETUPVAL R9 0
  MULK R8 R9 K4 [0.5]
  SETTABLEKS R8 R7 K5 ["Radius"]
  GETUPVAL R8 1
  SETTABLEKS R8 R7 K6 ["Transparency"]
  GETTABLEKS R8 R0 K7 ["_handlesFolder"]
  SETTABLEKS R8 R7 K8 ["Parent"]
  GETIMPORT R8 K2 [Instance.new]
  LOADK R9 K3 ["CylinderHandleAdornment"]
  CALL R8 1 1
  GETUPVAL R10 0
  MULK R9 R10 K4 [0.5]
  SETTABLEKS R9 R8 K5 ["Radius"]
  GETUPVAL R9 1
  SETTABLEKS R9 R8 K6 ["Transparency"]
  GETTABLEKS R9 R0 K7 ["_handlesFolder"]
  SETTABLEKS R9 R8 K8 ["Parent"]
  GETIMPORT R9 K2 [Instance.new]
  LOADK R10 K3 ["CylinderHandleAdornment"]
  CALL R9 1 1
  GETUPVAL R11 0
  MULK R10 R11 K4 [0.5]
  SETTABLEKS R10 R9 K5 ["Radius"]
  GETUPVAL R10 1
  SETTABLEKS R10 R9 K6 ["Transparency"]
  GETTABLEKS R10 R0 K7 ["_handlesFolder"]
  SETTABLEKS R10 R9 K8 ["Parent"]
  GETIMPORT R10 K2 [Instance.new]
  LOADK R11 K3 ["CylinderHandleAdornment"]
  CALL R10 1 1
  GETUPVAL R12 0
  MULK R11 R12 K4 [0.5]
  SETTABLEKS R11 R10 K5 ["Radius"]
  GETUPVAL R11 1
  SETTABLEKS R11 R10 K6 ["Transparency"]
  GETTABLEKS R11 R0 K7 ["_handlesFolder"]
  SETTABLEKS R11 R10 K8 ["Parent"]
  GETIMPORT R11 K2 [Instance.new]
  LOADK R12 K3 ["CylinderHandleAdornment"]
  CALL R11 1 1
  GETUPVAL R13 0
  MULK R12 R13 K4 [0.5]
  SETTABLEKS R12 R11 K5 ["Radius"]
  GETUPVAL R12 1
  SETTABLEKS R12 R11 K6 ["Transparency"]
  GETTABLEKS R12 R0 K7 ["_handlesFolder"]
  SETTABLEKS R12 R11 K8 ["Parent"]
  GETIMPORT R12 K2 [Instance.new]
  LOADK R13 K3 ["CylinderHandleAdornment"]
  CALL R12 1 1
  GETUPVAL R14 0
  MULK R13 R14 K4 [0.5]
  SETTABLEKS R13 R12 K5 ["Radius"]
  GETUPVAL R13 1
  SETTABLEKS R13 R12 K6 ["Transparency"]
  GETTABLEKS R13 R0 K7 ["_handlesFolder"]
  SETTABLEKS R13 R12 K8 ["Parent"]
  GETIMPORT R13 K2 [Instance.new]
  LOADK R14 K3 ["CylinderHandleAdornment"]
  CALL R13 1 1
  GETUPVAL R15 0
  MULK R14 R15 K4 [0.5]
  SETTABLEKS R14 R13 K5 ["Radius"]
  GETUPVAL R14 1
  SETTABLEKS R14 R13 K6 ["Transparency"]
  GETTABLEKS R14 R0 K7 ["_handlesFolder"]
  SETTABLEKS R14 R13 K8 ["Parent"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R1 R14 K10 ["innerTopOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R2 R14 K11 ["innerBottomOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R3 R14 K12 ["innerLeftOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R4 R14 K13 ["innerRightOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R5 R14 K14 ["outerTopOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R6 R14 K15 ["outerBottomOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R7 R14 K16 ["outerLeftOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R8 R14 K17 ["outerRightOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R9 R14 K18 ["topLeftOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R10 R14 K19 ["topRightOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R11 R14 K20 ["bottomLeftOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R12 R14 K21 ["bottomRightOutline"]
  GETTABLEKS R14 R0 K9 ["_handles"]
  SETTABLEKS R13 R14 K22 ["centerOutline"]
  LOADB R14 1
  SETTABLEKS R14 R0 K23 ["_handlesPresent"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_handles"]
  JUMPIFNOT R1 [+97]
  GETTABLEKS R1 R0 K1 ["_handlesPresent"]
  JUMPIFNOT R1 [+94]
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K2 ["innerTopOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K4 ["innerBottomOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K5 ["innerLeftOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K6 ["innerRightOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K7 ["outerTopOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K8 ["outerBottomOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K9 ["outerLeftOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K10 ["outerRightOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K11 ["topLeftOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K12 ["topRightOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K13 ["bottomLeftOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K14 ["bottomRightOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K15 ["centerOutline"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["_handlesPresent"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_removeListeners"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["_setListeners"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+99]
  GETTABLEKS R1 R0 K0 ["_listener"]
  JUMPIF R1 [+11]
  GETTABLEKS R2 R0 K1 ["_light"]
  GETTABLEKS R1 R2 K2 ["Changed"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["_listener"]
  GETTABLEKS R1 R0 K4 ["_sizeListener"]
  JUMPIF R1 [+27]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K6 ["Attachment"]
  NAMECALL R1 R1 K7 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+20]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K8 ["BasePart"]
  NAMECALL R1 R1 K7 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K9 ["Size"]
  NAMECALL R1 R1 K10 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_sizeListener"]
  GETTABLEKS R1 R0 K11 ["_attachmentListeners"]
  JUMPIF R1 [+119]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K6 ["Attachment"]
  NAMECALL R1 R1 K7 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+112]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K11 ["_attachmentListeners"]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R4 K6 ["Attachment"]
  NAMECALL R2 R1 K7 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+101]
  GETTABLEKS R3 R0 K11 ["_attachmentListeners"]
  LOADK R6 K12 ["CFrame"]
  NAMECALL R4 R1 K10 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  NEWCLOSURE R6 P2
  CAPTURE VAL R0
  NAMECALL R4 R4 K3 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K15 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K11 ["_attachmentListeners"]
  LOADK R6 K16 ["Parent"]
  NAMECALL R4 R1 K10 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  NEWCLOSURE R6 P3
  CAPTURE VAL R0
  NAMECALL R4 R4 K3 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K15 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R1 R1 K16 ["Parent"]
  JUMPBACK [-38]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_listener"]
  JUMPIF R1 [+11]
  GETTABLEKS R2 R0 K1 ["_light"]
  GETTABLEKS R1 R2 K2 ["Changed"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["_listener"]
  GETTABLEKS R1 R0 K4 ["_sizeListener"]
  JUMPIF R1 [+27]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K6 ["Attachment"]
  NAMECALL R1 R1 K7 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+20]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K8 ["BasePart"]
  NAMECALL R1 R1 K7 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K9 ["Size"]
  NAMECALL R1 R1 K10 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P5
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_sizeListener"]
  GETTABLEKS R1 R0 K17 ["_attachmentListener"]
  JUMPIF R1 [+20]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K6 ["Attachment"]
  NAMECALL R1 R1 K7 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K12 ["CFrame"]
  NAMECALL R1 R1 K10 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P6
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K17 ["_attachmentListener"]
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+39]
  GETTABLEKS R1 R0 K0 ["_listener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_listener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_listener"]
  GETTABLEKS R1 R0 K2 ["_sizeListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_sizeListener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_sizeListener"]
  GETTABLEKS R1 R0 K3 ["_attachmentListeners"]
  JUMPIFNOT R1 [+47]
  GETTABLEKS R1 R0 K3 ["_attachmentListeners"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NAMECALL R6 R5 K1 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_attachmentListeners"]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_listener"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["_listener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_sizeListener"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["_sizeListener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K4 ["_attachmentListener"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K4 ["_attachmentListener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_listener"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_sizeListener"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_attachmentListener"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K7 ["Utility"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K8 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K9 ["Flags"]
  GETTABLEKS R5 R6 K10 ["getFFlagLightGuidesRenderErrors"]
  CALL R4 1 1
  MOVE R5 R4
  CALL R5 0 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K9 ["Flags"]
  GETTABLEKS R7 R8 K11 ["getFFlagLightGuidesHideNestedAttachments"]
  CALL R6 1 1
  MOVE R7 R6
  CALL R7 0 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K5 ["Src"]
  GETTABLEKS R10 R11 K9 ["Flags"]
  GETTABLEKS R9 R10 K12 ["getFFlagLightGuidesSupportNestedAttachments"]
  CALL R8 1 1
  MOVE R9 R8
  CALL R9 0 1
  NEWTABLE R10 8 0
  GETIMPORT R11 K16 [Enum.NormalId.Back]
  GETIMPORT R12 K19 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K22 [Vector3.new]
  CALL R13 0 1
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K22 [Vector3.new]
  CALL R14 3 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K22 [Vector3.new]
  CALL R15 3 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K22 [Vector3.new]
  CALL R16 3 1
  CALL R12 4 1
  SETTABLE R12 R10 R11
  GETIMPORT R11 K24 [Enum.NormalId.Front]
  GETIMPORT R12 K19 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K22 [Vector3.new]
  CALL R13 0 1
  LOADN R15 255
  LOADN R16 0
  LOADN R17 0
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K22 [Vector3.new]
  CALL R14 3 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K22 [Vector3.new]
  CALL R15 3 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 255
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K22 [Vector3.new]
  CALL R16 3 1
  CALL R12 4 1
  SETTABLE R12 R10 R11
  GETIMPORT R11 K26 [Enum.NormalId.Right]
  GETIMPORT R12 K19 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K22 [Vector3.new]
  CALL R13 0 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 255
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K22 [Vector3.new]
  CALL R14 3 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K22 [Vector3.new]
  CALL R15 3 1
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K22 [Vector3.new]
  CALL R16 3 1
  CALL R12 4 1
  SETTABLE R12 R10 R11
  GETIMPORT R11 K28 [Enum.NormalId.Left]
  GETIMPORT R12 K19 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K22 [Vector3.new]
  CALL R13 0 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K22 [Vector3.new]
  CALL R14 3 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K22 [Vector3.new]
  CALL R15 3 1
  LOADN R17 255
  LOADN R18 0
  LOADN R19 0
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K22 [Vector3.new]
  CALL R16 3 1
  CALL R12 4 1
  SETTABLE R12 R10 R11
  GETIMPORT R11 K30 [Enum.NormalId.Bottom]
  GETIMPORT R12 K19 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K22 [Vector3.new]
  CALL R13 0 1
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K22 [Vector3.new]
  CALL R14 3 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 1
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K22 [Vector3.new]
  CALL R15 3 1
  LOADN R17 0
  LOADN R18 255
  LOADN R19 0
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K22 [Vector3.new]
  CALL R16 3 1
  CALL R12 4 1
  SETTABLE R12 R10 R11
  GETIMPORT R11 K32 [Enum.NormalId.Top]
  GETIMPORT R12 K19 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K22 [Vector3.new]
  CALL R13 0 1
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K22 [Vector3.new]
  CALL R14 3 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 255
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K22 [Vector3.new]
  CALL R15 3 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K22 [Vector3.new]
  CALL R16 3 1
  CALL R12 4 1
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R3 K33 ["THICKNESS"]
  GETTABLEKS R12 R3 K34 ["TRANSPARENCY"]
  NEWTABLE R13 16 0
  SETTABLEKS R13 R13 K35 ["__index"]
  DUPCLOSURE R14 K36 [PROTO_0]
  CAPTURE VAL R13
  SETTABLEKS R14 R13 K21 ["new"]
  DUPCLOSURE R14 K37 [PROTO_1]
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K38 ["render"]
  DUPCLOSURE R14 K39 [PROTO_2]
  SETTABLEKS R14 R13 K40 ["pool"]
  DUPCLOSURE R14 K41 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K42 ["adorn"]
  DUPCLOSURE R14 K43 [PROTO_4]
  SETTABLEKS R14 R13 K44 ["destroy"]
  DUPCLOSURE R14 K45 [PROTO_5]
  SETTABLEKS R14 R13 K46 ["setGuidesFolder"]
  DUPCLOSURE R14 K47 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K48 ["_setAncestry"]
  DUPCLOSURE R14 K49 [PROTO_7]
  SETTABLEKS R14 R13 K50 ["_setCFrameValues"]
  DUPCLOSURE R14 K51 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K52 ["_setHandles"]
  DUPCLOSURE R14 K53 [PROTO_9]
  SETTABLEKS R14 R13 K54 ["_removeHandles"]
  DUPCLOSURE R14 K55 [PROTO_17]
  CAPTURE VAL R9
  SETTABLEKS R14 R13 K56 ["_setListeners"]
  DUPCLOSURE R14 K57 [PROTO_18]
  CAPTURE VAL R9
  SETTABLEKS R14 R13 K58 ["_removeListeners"]
  RETURN R13 1
