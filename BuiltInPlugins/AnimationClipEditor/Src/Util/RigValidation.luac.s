PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getMotors"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["getBones"]
  MOVE R3 R0
  CALL R2 1 1
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  MOVE R6 R1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R10 K2 ["Part0"]
  JUMPIFNOT R11 [+4]
  GETTABLEKS R11 R10 K2 ["Part0"]
  LOADB R12 1
  SETTABLE R12 R3 R11
  GETTABLEKS R11 R10 K3 ["Part1"]
  JUMPIFNOT R11 [+4]
  GETTABLEKS R11 R10 K3 ["Part1"]
  LOADB R12 1
  SETTABLE R12 R3 R11
  FORGLOOP R6 2 [-15]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+27]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["getAnimationConstraints"]
  MOVE R7 R0
  CALL R6 1 1
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["getPart0"]
  MOVE R13 R11
  CALL R12 1 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["getPart1"]
  MOVE R14 R11
  CALL R13 1 1
  JUMPIFNOT R12 [+2]
  LOADB R14 1
  SETTABLE R14 R3 R12
  JUMPIFNOT R13 [+2]
  LOADB R14 1
  SETTABLE R14 R3 R13
  FORGLOOP R7 2 [-17]
  MOVE R6 R3
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R12 R9 K7 ["Name"]
  GETTABLE R11 R4 R12
  JUMPIFNOT R11 [+13]
  NEWTABLE R11 0 1
  DUPTABLE R12 K9 [{"ID"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K10 ["RIG_ERRORS"]
  GETTABLEKS R13 R14 K11 ["NameCollision"]
  SETTABLEKS R13 R12 K8 ["ID"]
  SETLIST R11 R12 1 [1]
  RETURN R11 1
  GETTABLEKS R11 R9 K7 ["Name"]
  LOADB R12 1
  SETTABLE R12 R4 R11
  FORGLOOP R6 2 [-22]
  MOVE R6 R2
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R12 R10 K7 ["Name"]
  GETTABLE R11 R5 R12
  JUMPIFNOT R11 [+13]
  NEWTABLE R11 0 1
  DUPTABLE R12 K9 [{"ID"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K10 ["RIG_ERRORS"]
  GETTABLEKS R13 R14 K12 ["BoneNameCollision"]
  SETTABLEKS R13 R12 K8 ["ID"]
  SETLIST R11 R12 1 [1]
  RETURN R11 1
  GETTABLEKS R11 R10 K7 ["Name"]
  LOADB R12 1
  SETTABLE R12 R5 R11
  FORGLOOP R6 2 [-22]
  NEWTABLE R6 0 0
  RETURN R6 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["motors"]
  GETTABLEKS R2 R0 K1 ["motorsWithMissingPart0"]
  GETTABLEKS R3 R0 K2 ["motorsWithMissingPart1"]
  GETTABLEKS R4 R0 K3 ["partsWithMultipleParents"]
  GETTABLEKS R5 R0 K4 ["rig"]
  GETTABLEKS R6 R0 K5 ["motorsMap"]
  GETIMPORT R7 K7 [pairs]
  MOVE R8 R1
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETTABLEKS R12 R11 K8 ["Part0"]
  GETTABLEKS R13 R11 K9 ["Part1"]
  JUMPIFNOT R12 [+5]
  JUMPIFNOT R12 [+11]
  GETTABLEKS R14 R12 K10 ["Parent"]
  JUMPIFNOTEQKNIL R14 [+8]
  FASTCALL2 TABLE_INSERT R2 R11 [+5]
  MOVE R15 R2
  MOVE R16 R11
  GETIMPORT R14 K13 [table.insert]
  CALL R14 2 0
  JUMPIFNOT R13 [+5]
  JUMPIFNOT R13 [+11]
  GETTABLEKS R14 R13 K10 ["Parent"]
  JUMPIFNOTEQKNIL R14 [+8]
  FASTCALL2 TABLE_INSERT R3 R11 [+5]
  MOVE R15 R3
  MOVE R16 R11
  GETIMPORT R14 K13 [table.insert]
  CALL R14 2 0
  JUMPIFNOT R12 [+10]
  JUMPIFNOT R13 [+9]
  GETTABLEKS R14 R12 K14 ["Anchored"]
  JUMPIFNOT R14 [+3]
  GETTABLEKS R14 R13 K14 ["Anchored"]
  JUMPIF R14 [+3]
  LOADB R14 1
  SETTABLEKS R14 R0 K15 ["unanchoredPartExists"]
  JUMPIFNOT R12 [+26]
  JUMPIFNOT R13 [+25]
  GETTABLEKS R16 R12 K16 ["Name"]
  LOADB R17 1
  NAMECALL R14 R5 K17 ["FindFirstChild"]
  CALL R14 3 1
  JUMPIFNOT R14 [+18]
  GETTABLEKS R16 R13 K16 ["Name"]
  LOADB R17 1
  NAMECALL R14 R5 K17 ["FindFirstChild"]
  CALL R14 3 1
  JUMPIFNOT R14 [+11]
  GETTABLE R14 R6 R13
  JUMPIFNOT R14 [+8]
  FASTCALL2 TABLE_INSERT R4 R13 [+5]
  MOVE R15 R4
  MOVE R16 R13
  GETIMPORT R14 K13 [table.insert]
  CALL R14 2 0
  JUMP [+1]
  SETTABLE R11 R6 R13
  FORGLOOP R7 2 [-69]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["animConstraints"]
  GETTABLEKS R2 R0 K1 ["animConstraintsWithMissingAttachment0"]
  GETTABLEKS R3 R0 K2 ["animConstraintsWithMissingAttachment1"]
  GETTABLEKS R4 R0 K3 ["partsWithMultipleParents"]
  GETTABLEKS R5 R0 K4 ["rig"]
  GETTABLEKS R6 R0 K5 ["animConstraintsMap"]
  MOVE R7 R1
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["getPart0"]
  MOVE R13 R11
  CALL R12 1 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["getPart1"]
  MOVE R14 R11
  CALL R13 1 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R14 R12 K8 ["Parent"]
  JUMPIF R14 [+7]
  FASTCALL2 TABLE_INSERT R2 R11 [+5]
  MOVE R15 R2
  MOVE R16 R11
  GETIMPORT R14 K11 [table.insert]
  CALL R14 2 0
  JUMPIFNOT R13 [+3]
  GETTABLEKS R14 R13 K8 ["Parent"]
  JUMPIF R14 [+7]
  FASTCALL2 TABLE_INSERT R3 R11 [+5]
  MOVE R15 R3
  MOVE R16 R11
  GETIMPORT R14 K11 [table.insert]
  CALL R14 2 0
  JUMPIFNOT R12 [+10]
  JUMPIFNOT R13 [+9]
  GETTABLEKS R14 R12 K12 ["Anchored"]
  JUMPIFNOT R14 [+3]
  GETTABLEKS R14 R13 K12 ["Anchored"]
  JUMPIF R14 [+3]
  LOADB R14 1
  SETTABLEKS R14 R0 K13 ["unanchoredPartExists"]
  JUMPIFNOT R12 [+26]
  JUMPIFNOT R13 [+25]
  GETTABLEKS R16 R12 K14 ["Name"]
  LOADB R17 1
  NAMECALL R14 R5 K15 ["FindFirstChild"]
  CALL R14 3 1
  JUMPIFNOT R14 [+18]
  GETTABLEKS R16 R13 K14 ["Name"]
  LOADB R17 1
  NAMECALL R14 R5 K15 ["FindFirstChild"]
  CALL R14 3 1
  JUMPIFNOT R14 [+11]
  GETTABLE R14 R6 R13
  JUMPIFNOT R14 [+8]
  FASTCALL2 TABLE_INSERT R4 R13 [+5]
  MOVE R15 R4
  MOVE R16 R13
  GETIMPORT R14 K11 [table.insert]
  CALL R14 2 0
  JUMP [+1]
  SETTABLE R11 R6 R13
  FORGLOOP R7 2 [-71]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["parts"]
  GETTABLEKS R2 R0 K1 ["root"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R3 K3 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R8 R7 K4 ["Name"]
  GETTABLEKS R9 R2 K4 ["Name"]
  JUMPIFNOTEQ R8 R9 [+19]
  JUMPIFEQ R7 R2 [+17]
  GETTABLEKS R9 R0 K5 ["errorList"]
  DUPTABLE R10 K7 [{"ID"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K8 ["RIG_ERRORS"]
  GETTABLEKS R11 R12 K9 ["NameCollision"]
  SETTABLEKS R11 R10 K6 ["ID"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K12 [table.insert]
  CALL R8 2 0
  RETURN R0 0
  GETIMPORT R8 K3 [ipairs]
  MOVE R9 R1
  CALL R8 1 3
  FORGPREP_INEXT R8
  JUMPIFEQ R7 R12 [+23]
  GETTABLEKS R13 R7 K4 ["Name"]
  GETTABLEKS R14 R12 K4 ["Name"]
  JUMPIFNOTEQ R13 R14 [+17]
  GETTABLEKS R14 R0 K5 ["errorList"]
  DUPTABLE R15 K7 [{"ID"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K8 ["RIG_ERRORS"]
  GETTABLEKS R16 R17 K9 ["NameCollision"]
  SETTABLEKS R16 R15 K6 ["ID"]
  FASTCALL2 TABLE_INSERT R14 R15 [+3]
  GETIMPORT R13 K12 [table.insert]
  CALL R13 2 0
  JUMP [+2]
  FORGLOOP R8 2 [inext] [-25]
  FORGLOOP R3 2 [inext] [-56]
  RETURN R0 0

PROTO_4:
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K2 ["Part0"]
  JUMPIFNOT R7 [+5]
  JUMPIFNOT R5 [+4]
  JUMPIFNOTEQ R7 R5 [+3]
  LOADB R8 1
  RETURN R8 1
  NEWTABLE R8 0 0
  JUMPIFEQKNIL R7 [+32]
  GETIMPORT R10 K4 [game]
  GETTABLEKS R9 R10 K5 ["Workspace"]
  JUMPIFEQ R7 R9 [+26]
  GETTABLE R9 R0 R7
  JUMPIFNOT R9 [+23]
  GETTABLEKS R7 R9 K2 ["Part0"]
  GETUPVAL R10 0
  CALL R10 0 1
  JUMPIFNOT R10 [+7]
  GETTABLE R10 R8 R9
  JUMPIFNOT R10 [+2]
  LOADB R10 1
  RETURN R10 1
  LOADB R10 1
  SETTABLE R10 R8 R9
  JUMP [+10]
  GETTABLE R10 R8 R9
  JUMPIF R10 [+4]
  NEWTABLE R10 0 0
  SETTABLE R10 R8 R9
  JUMP [+4]
  LOADB R10 1
  RETURN R10 1
  JUMP [+1]
  JUMP [+1]
  JUMPBACK [-33]
  FORGLOOP R2 2 [-44]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+45]
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["getPart0"]
  MOVE R8 R6
  CALL R7 1 1
  JUMPIFNOT R7 [+5]
  JUMPIFNOT R5 [+4]
  JUMPIFNOTEQ R7 R5 [+3]
  LOADB R8 1
  RETURN R8 1
  NEWTABLE R8 0 0
  JUMPIFEQKNIL R7 [+24]
  GETIMPORT R10 K4 [game]
  GETTABLEKS R9 R10 K5 ["Workspace"]
  JUMPIFEQ R7 R9 [+18]
  GETTABLE R9 R1 R7
  JUMPIFNOT R9 [+15]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["getPart0"]
  MOVE R11 R9
  CALL R10 1 1
  MOVE R7 R10
  GETTABLE R10 R8 R9
  JUMPIFNOT R10 [+2]
  LOADB R10 1
  RETURN R10 1
  LOADB R10 1
  SETTABLE R10 R8 R9
  JUMP [+1]
  JUMP [+1]
  JUMPBACK [-25]
  FORGLOOP R2 2 [-39]
  LOADB R2 0
  RETURN R2 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["bones"]
  GETTABLEKS R2 R0 K1 ["motors"]
  GETTABLEKS R3 R0 K2 ["animConstraints"]
  GETTABLEKS R4 R0 K3 ["unanchoredPartExists"]
  GETTABLEKS R5 R0 K4 ["motorsWithMissingPart0"]
  GETTABLEKS R6 R0 K5 ["motorsWithMissingPart1"]
  GETTABLEKS R7 R0 K6 ["partsWithMultipleParents"]
  GETTABLEKS R8 R0 K7 ["rig"]
  GETTABLEKS R9 R0 K8 ["motorsMap"]
  GETTABLEKS R10 R0 K9 ["animConstraintsMap"]
  GETTABLEKS R11 R0 K10 ["animConstraintsWithMissingAttachment0"]
  GETTABLEKS R12 R0 K11 ["animConstraintsWithMissingAttachment1"]
  GETTABLEKS R13 R0 K12 ["errorList"]
  GETTABLEKS R14 R0 K13 ["root"]
  LOADB R15 0
  JUMPIFEQKNIL R1 [+7]
  LENGTH R16 R1
  LOADN R17 0
  JUMPIFLT R17 R16 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  LENGTH R16 R2
  JUMPIFNOTEQKN R16 K14 [0] [+8]
  GETUPVAL R16 0
  CALL R16 0 1
  JUMPIFNOT R16 [+3]
  LENGTH R16 R3
  JUMPIFNOTEQKN R16 K14 [0] [+2]
  JUMPIFNOT R15 [+1]
  JUMPIF R14 [+14]
  DUPTABLE R18 K16 [{"ID"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K17 ["RIG_ERRORS"]
  GETTABLEKS R19 R20 K18 ["NoMotors"]
  SETTABLEKS R19 R18 K15 ["ID"]
  FASTCALL2 TABLE_INSERT R13 R18 [+4]
  MOVE R17 R13
  GETIMPORT R16 K21 [table.insert]
  CALL R16 2 0
  JUMPIF R4 [+15]
  JUMPIF R15 [+14]
  DUPTABLE R18 K16 [{"ID"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K17 ["RIG_ERRORS"]
  GETTABLEKS R19 R20 K22 ["PartsAnchored"]
  SETTABLEKS R19 R18 K15 ["ID"]
  FASTCALL2 TABLE_INSERT R13 R18 [+4]
  MOVE R17 R13
  GETIMPORT R16 K21 [table.insert]
  CALL R16 2 0
  LENGTH R16 R7
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+17]
  DUPTABLE R18 K24 [{"ID", "Data"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K17 ["RIG_ERRORS"]
  GETTABLEKS R19 R20 K25 ["MultipleParents"]
  SETTABLEKS R19 R18 K15 ["ID"]
  SETTABLEKS R7 R18 K23 ["Data"]
  FASTCALL2 TABLE_INSERT R13 R18 [+4]
  MOVE R17 R13
  GETIMPORT R16 K21 [table.insert]
  CALL R16 2 0
  LENGTH R16 R5
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+17]
  DUPTABLE R18 K24 [{"ID", "Data"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K17 ["RIG_ERRORS"]
  GETTABLEKS R19 R20 K26 ["MissingPart0"]
  SETTABLEKS R19 R18 K15 ["ID"]
  SETTABLEKS R5 R18 K23 ["Data"]
  FASTCALL2 TABLE_INSERT R13 R18 [+4]
  MOVE R17 R13
  GETIMPORT R16 K21 [table.insert]
  CALL R16 2 0
  LENGTH R16 R6
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+17]
  DUPTABLE R18 K24 [{"ID", "Data"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K17 ["RIG_ERRORS"]
  GETTABLEKS R19 R20 K27 ["MissingPart1"]
  SETTABLEKS R19 R18 K15 ["ID"]
  SETTABLEKS R6 R18 K23 ["Data"]
  FASTCALL2 TABLE_INSERT R13 R18 [+4]
  MOVE R17 R13
  GETIMPORT R16 K21 [table.insert]
  CALL R16 2 0
  GETUPVAL R16 0
  CALL R16 0 1
  JUMPIFNOT R16 [+40]
  LENGTH R16 R11
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+17]
  DUPTABLE R18 K24 [{"ID", "Data"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K17 ["RIG_ERRORS"]
  GETTABLEKS R19 R20 K26 ["MissingPart0"]
  SETTABLEKS R19 R18 K15 ["ID"]
  SETTABLEKS R11 R18 K23 ["Data"]
  FASTCALL2 TABLE_INSERT R13 R18 [+4]
  MOVE R17 R13
  GETIMPORT R16 K21 [table.insert]
  CALL R16 2 0
  LENGTH R16 R12
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+17]
  DUPTABLE R18 K24 [{"ID", "Data"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K17 ["RIG_ERRORS"]
  GETTABLEKS R19 R20 K27 ["MissingPart1"]
  SETTABLEKS R19 R18 K15 ["ID"]
  SETTABLEKS R12 R18 K23 ["Data"]
  FASTCALL2 TABLE_INSERT R13 R18 [+4]
  MOVE R17 R13
  GETIMPORT R16 K21 [table.insert]
  CALL R16 2 0
  GETUPVAL R16 2
  MOVE R17 R9
  MOVE R18 R10
  CALL R16 2 1
  JUMPIFNOT R16 [+14]
  DUPTABLE R18 K16 [{"ID"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K17 ["RIG_ERRORS"]
  GETTABLEKS R19 R20 K28 ["CircularRig"]
  SETTABLEKS R19 R18 K15 ["ID"]
  FASTCALL2 TABLE_INSERT R13 R18 [+4]
  MOVE R17 R13
  GETIMPORT R16 K21 [table.insert]
  CALL R16 2 0
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K29 ["getAnimator"]
  MOVE R17 R8
  CALL R16 1 1
  JUMPIFNOTEQKNIL R16 [+15]
  DUPTABLE R19 K16 [{"ID"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K17 ["RIG_ERRORS"]
  GETTABLEKS R20 R21 K30 ["NoAnimationController"]
  SETTABLEKS R20 R19 K15 ["ID"]
  FASTCALL2 TABLE_INSERT R13 R19 [+4]
  MOVE R18 R13
  GETIMPORT R17 K21 [table.insert]
  CALL R17 2 0
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K31 ["getFaceControls"]
  MOVE R18 R8
  CALL R17 1 2
  GETIMPORT R19 K33 [require]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K34 ["Src"]
  GETTABLEKS R22 R23 K35 ["Util"]
  GETTABLEKS R21 R22 K36 ["Debug"]
  GETTABLEKS R20 R21 K37 ["dumpTable"]
  CALL R19 1 1
  LENGTH R20 R18
  LOADN R21 1
  JUMPIFNOTLT R21 R20 [+17]
  DUPTABLE R22 K24 [{"ID", "Data"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K17 ["RIG_ERRORS"]
  GETTABLEKS R23 R24 K38 ["MultipleFaceControls"]
  SETTABLEKS R23 R22 K15 ["ID"]
  SETTABLEKS R18 R22 K23 ["Data"]
  FASTCALL2 TABLE_INSERT R13 R22 [+4]
  MOVE R21 R13
  GETIMPORT R20 K21 [table.insert]
  CALL R20 2 0
  NEWTABLE R20 0 0
  MOVE R21 R18
  LOADNIL R22
  LOADNIL R23
  FORGPREP R21
  GETTABLEKS R26 R25 K39 ["Parent"]
  JUMPIFNOT R26 [+14]
  GETTABLEKS R26 R25 K39 ["Parent"]
  LOADK R28 K40 ["BasePart"]
  NAMECALL R26 R26 K41 ["IsA"]
  CALL R26 2 1
  JUMPIF R26 [+7]
  FASTCALL2 TABLE_INSERT R20 R25 [+5]
  MOVE R27 R20
  MOVE R28 R25
  GETIMPORT R26 K21 [table.insert]
  CALL R26 2 0
  FORGLOOP R21 2 [-18]
  LENGTH R21 R20
  LOADN R22 0
  JUMPIFNOTLT R22 R21 [+17]
  DUPTABLE R23 K24 [{"ID", "Data"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K17 ["RIG_ERRORS"]
  GETTABLEKS R24 R25 K42 ["FaceControlsParent"]
  SETTABLEKS R24 R23 K15 ["ID"]
  SETTABLEKS R20 R23 K23 ["Data"]
  FASTCALL2 TABLE_INSERT R13 R23 [+4]
  MOVE R22 R13
  GETIMPORT R21 K21 [table.insert]
  CALL R21 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["clearCache"]
  CALL R1 0 0
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 1
  LENGTH R2 R1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+4]
  LOADB R2 1
  MOVE R3 R1
  RETURN R2 2
  LOADNIL R2
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["getRigInfo"]
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R2 R3 K2 ["Parts"]
  JUMP [+6]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["getRigInfo"]
  MOVE R4 R0
  CALL R3 1 1
  MOVE R2 R3
  DUPTABLE R3 K18 [{"errorList", "motorsMap", "partsWithMultipleParents", "motorsWithMissingPart0", "motorsWithMissingPart1", "unanchoredPartExists", "motors", "parts", "root", "bones", "animConstraints", "animConstraintsMap", "animConstraintsWithMissingAttachment0", "animConstraintsWithMissingAttachment1", "rig"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K3 ["errorList"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K4 ["motorsMap"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K5 ["partsWithMultipleParents"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K6 ["motorsWithMissingPart0"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K7 ["motorsWithMissingPart1"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["unanchoredPartExists"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K19 ["getMotors"]
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["motors"]
  SETTABLEKS R2 R3 K10 ["parts"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K20 ["findRootPart"]
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["root"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K21 ["getBones"]
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["bones"]
  GETUPVAL R5 4
  CALL R5 0 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K22 ["getAnimationConstraints"]
  MOVE R5 R0
  CALL R4 1 1
  JUMP [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K13 ["animConstraints"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K14 ["animConstraintsMap"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K15 ["animConstraintsWithMissingAttachment0"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K16 ["animConstraintsWithMissingAttachment1"]
  SETTABLEKS R0 R3 K17 ["rig"]
  GETUPVAL R4 5
  MOVE R5 R3
  CALL R4 1 0
  GETUPVAL R4 4
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETUPVAL R4 6
  MOVE R5 R3
  CALL R4 1 0
  GETUPVAL R4 7
  MOVE R5 R3
  CALL R4 1 0
  GETUPVAL R4 8
  MOVE R5 R3
  CALL R4 1 0
  GETTABLEKS R6 R3 K3 ["errorList"]
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETTABLEKS R5 R3 K3 ["errorList"]
  RETURN R4 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["RigInfo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["LuaFlags"]
  GETTABLEKS R4 R5 K11 ["GetFFlagAnimationConstraints"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["LuaFlags"]
  GETTABLEKS R5 R6 K12 ["GetFFlagGetRigInfo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["LuaFlags"]
  GETTABLEKS R6 R7 K13 ["GetFFlagRigInfoCache"]
  CALL R5 1 1
  NEWTABLE R6 1 0
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  DUPCLOSURE R8 K15 [PROTO_1]
  DUPCLOSURE R9 K16 [PROTO_2]
  CAPTURE VAL R1
  DUPCLOSURE R10 K17 [PROTO_3]
  CAPTURE VAL R2
  DUPCLOSURE R11 K18 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R1
  DUPCLOSURE R12 K19 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R0
  DUPCLOSURE R13 K20 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R13 R6 K21 ["rigHasErrors"]
  RETURN R6 1
