PROTO_0:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_2:
  LOADN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETIMPORT R2 K2 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  ADDK R0 R0 K3 [1]
  FORGLOOP R2 2 [-2]
  GETUPVAL R2 1
  LOADK R4 K4 ["bubblesSeenOnSessionEnd"]
  MOVE R5 R0
  GETUPVAL R6 2
  GETUPVAL R7 3
  NAMECALL R2 R2 K5 ["report"]
  CALL R2 5 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["current"]
  MOVE R4 R0
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["current"]
  RETURN R0 0

PROTO_5:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_NEXT R1
  FASTCALL2 TABLE_INSERT R0 R4 [+5]
  MOVE R7 R0
  MOVE R8 R4
  GETIMPORT R6 K4 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-8]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["fetchUsernames"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_7:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R3 R5 K3 ["events"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K4 ["userId"]
  LOADB R8 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-5]
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 1 0
  GETTABLEKS R3 R0 K2 ["responseBody"]
  GETTABLEKS R2 R3 K3 ["events"]
  GETUPVAL R4 2
  JUMPIF R4 [+14]
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R4 R5 K5 ["hasMore"]
  JUMPIFNOT R4 [+9]
  LENGTH R4 R2
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+6]
  GETTABLEKS R4 R0 K2 ["responseBody"]
  GETTABLEKS R3 R4 K6 ["nextCursor"]
  JUMP [+1]
  LOADNIL R3
  GETUPVAL R5 2
  JUMPIFNOT R5 [+14]
  GETTABLEKS R6 R0 K2 ["responseBody"]
  GETTABLEKS R5 R6 K5 ["hasMore"]
  JUMPIFNOT R5 [+9]
  LENGTH R5 R2
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+6]
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R4 R5 K6 ["nextCursor"]
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R5 3
  JUMPIFEQKNIL R5 [+46]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K7 ["DaysAgo"]
  JUMPIFEQKNIL R5 [+41]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K7 ["DaysAgo"]
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+35]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["FirstFetch"]
  JUMPIFNOT R5 [+14]
  GETUPVAL R5 3
  LOADB R6 0
  SETTABLEKS R6 R5 K8 ["FirstFetch"]
  GETTABLEN R5 R2 1
  JUMPIFEQKNIL R5 [+24]
  GETTABLEN R5 R2 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K9 ["Middle"]
  SETTABLEKS R6 R5 K10 ["headerType"]
  JUMP [+16]
  GETTABLEKS R6 R0 K2 ["responseBody"]
  GETTABLEKS R5 R6 K5 ["hasMore"]
  JUMPIF R5 [+11]
  GETUPVAL R5 2
  JUMPIFNOT R5 [+9]
  GETTABLEN R5 R2 1
  JUMPIFEQKNIL R5 [+7]
  GETTABLEN R5 R2 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K11 ["Top"]
  SETTABLEKS R6 R5 K10 ["headerType"]
  GETUPVAL R5 5
  MOVE R6 R2
  MOVE R7 R3
  MOVE R8 R4
  GETUPVAL R9 2
  GETUPVAL R10 6
  CALL R5 5 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["activityHistoryClient"]
  GETTABLEKS R6 R7 K1 ["fetchActivityHistory"]
  GETUPVAL R7 1
  GETUPVAL R8 2
  JUMPIFEQKS R1 K2 [""] [+3]
  MOVE R9 R1
  JUMPIF R9 [+1]
  LOADNIL R9
  MOVE R10 R2
  MOVE R11 R3
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R4
  CALL R6 6 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getFilterEmptyState"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["cache"]
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["filterOptionsToFilterFn"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R0 3 -1
  RETURN R0 -1

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_12:
  NEWTABLE R1 1 0
  GETTABLEKS R2 R0 K0 ["userId"]
  LOADB R3 1
  SETTABLE R3 R1 R2
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["addNewEvent"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["filterOptionsToFilterFn"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R0 3 -1
  RETURN R0 -1

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["mergeFilterOptions"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["getUnixMsFromDateIndex"]
  GETTABLEKS R2 R0 K2 ["JumpToDateIndex"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["getNumDaysFromDateIndex"]
  GETTABLEKS R3 R0 K2 ["JumpToDateIndex"]
  CALL R2 1 1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+13]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["jumpToDate"]
  MOVE R4 R1
  DUPTABLE R5 K7 [{"DaysAgo", "FirstFetch"}]
  SETTABLEKS R2 R5 K5 ["DaysAgo"]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["FirstFetch"]
  CALL R3 2 0
  JUMP [+5]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["jumpToDate"]
  LOADNIL R4
  CALL R3 1 0
  GETUPVAL R3 4
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["filterOptionsToStrings"]
  MOVE R4 R0
  GETUPVAL R5 6
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K9 ["cache"]
  CALL R3 3 1
  GETTABLEKS R5 R3 K10 ["shortString"]
  LENGTH R4 R5
  JUMPIFNOTEQKN R4 K11 [0] [+17]
  GETUPVAL R4 8
  DUPTABLE R5 K13 [{"shortString", "descriptiveStrings"}]
  GETUPVAL R6 6
  LOADK R8 K14 ["ActivityHistoryMain"]
  LOADK R9 K15 ["AllEvents"]
  NAMECALL R6 R6 K16 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["shortString"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K12 ["descriptiveStrings"]
  CALL R4 1 0
  JUMP [+3]
  GETUPVAL R4 8
  MOVE R5 R3
  CALL R4 1 0
  GETUPVAL R4 9
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K15 ["AllEvents"]
  CALL R4 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["filterOptionsToFilterFn"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R0 3 -1
  RETURN R0 -1

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["compareFilterOptions"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 1
  JUMPIF R1 [+29]
  GETUPVAL R1 2
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 0
  GETUPVAL R1 5
  DUPTABLE R2 K3 [{"shortString", "descriptiveStrings"}]
  GETUPVAL R3 4
  LOADK R5 K4 ["ActivityHistoryMain"]
  LOADK R6 K5 ["AllEvents"]
  NAMECALL R3 R3 K6 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K1 ["shortString"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["descriptiveStrings"]
  CALL R1 1 0
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K7 ["jumpToDate"]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R1 1
  RETURN R1 1
  RETURN R0 1

PROTO_17:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CALL R0 1 0
  GETUPVAL R0 8
  GETUPVAL R2 9
  GETTABLEKS R1 R2 K0 ["AllEvents"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["compareFilterOptions"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 1
  JUMPIF R1 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["mergeFilterOptions"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 1

PROTO_19:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["FilterMenu"]
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["FilterMenu"]
  CALL R0 1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R3 3
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useState"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K3 ["AllEvents"]
  CALL R4 1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["useState"]
  NEWTABLE R7 0 0
  CALL R6 1 2
  GETTABLEKS R8 R1 K4 ["usePlaceAndUniverseId"]
  GETTABLEKS R9 R0 K5 ["plugin"]
  CALL R8 1 2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["useRef"]
  NEWTABLE R11 0 0
  CALL R10 1 1
  GETUPVAL R11 5
  LOADB R12 0
  CALL R11 1 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["useMemo"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R10
  NEWTABLE R14 0 0
  CALL R12 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["useMemo"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R9
  NEWTABLE R15 0 1
  MOVE R16 R10
  SETLIST R15 R16 1 [1]
  CALL R13 2 1
  GETTABLEKS R14 R1 K8 ["useConnectToDataModelSessionEffect"]
  MOVE R15 R12
  MOVE R16 R13
  CALL R14 2 0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["useCallback"]
  NEWCLOSURE R15 P2
  CAPTURE VAL R10
  CAPTURE UPVAL U6
  NEWTABLE R16 0 1
  MOVE R17 R10
  SETLIST R16 R17 1 [1]
  CALL R14 2 1
  GETUPVAL R15 7
  CALL R15 0 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K10 ["useEffect"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R6
  CAPTURE VAL R15
  NEWTABLE R18 0 2
  MOVE R19 R6
  GETTABLEKS R20 R15 K11 ["fetchUsernames"]
  SETLIST R18 R19 2 [1]
  CALL R16 2 0
  LOADNIL R16
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K9 ["useCallback"]
  NEWCLOSURE R18 P4
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE UPVAL U6
  CAPTURE UPVAL U8
  NEWTABLE R19 0 3
  GETTABLEKS R20 R1 K12 ["activityHistoryClient"]
  MOVE R21 R8
  MOVE R22 R9
  SETLIST R19 R20 3 [1]
  CALL R17 2 1
  MOVE R16 R17
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["useMemo"]
  NEWCLOSURE R18 P5
  CAPTURE UPVAL U9
  CAPTURE VAL R15
  CAPTURE VAL R2
  NEWTABLE R19 0 2
  GETTABLEKS R20 R15 K13 ["cache"]
  MOVE R21 R2
  SETLIST R19 R20 2 [1]
  CALL R17 2 1
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K2 ["useState"]
  MOVE R19 R17
  CALL R18 1 2
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K2 ["useState"]
  NEWCLOSURE R21 P6
  CAPTURE UPVAL U9
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R2
  CALL R20 1 2
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K2 ["useState"]
  DUPTABLE R23 K16 [{"shortString", "descriptiveStrings"}]
  LOADK R26 K17 ["ActivityHistoryMain"]
  LOADK R27 K3 ["AllEvents"]
  NAMECALL R24 R2 K18 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K14 ["shortString"]
  NEWTABLE R24 0 0
  SETTABLEKS R24 R23 K15 ["descriptiveStrings"]
  CALL R22 1 2
  GETTABLEKS R26 R22 K15 ["descriptiveStrings"]
  LENGTH R25 R26
  LOADN R26 0
  JUMPIFLT R26 R25 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  GETUPVAL R25 10
  MOVE R26 R16
  MOVE R27 R20
  GETUPVAL R28 11
  GETUPVAL R29 12
  GETUPVAL R30 13
  CALL R25 5 1
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K9 ["useCallback"]
  NEWCLOSURE R27 P7
  CAPTURE VAL R7
  CAPTURE UPVAL U6
  CAPTURE VAL R25
  NEWTABLE R28 0 1
  GETTABLEKS R29 R25 K19 ["addNewEvent"]
  SETLIST R28 R29 1 [1]
  CALL R26 2 1
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K10 ["useEffect"]
  GETTABLEKS R29 R1 K12 ["activityHistoryClient"]
  GETTABLEKS R28 R29 K20 ["activityFeedRTEEffect"]
  GETTABLEKS R29 R0 K5 ["plugin"]
  MOVE R30 R9
  MOVE R31 R26
  CALL R28 3 1
  NEWTABLE R29 0 3
  GETTABLEKS R30 R0 K5 ["plugin"]
  MOVE R31 R9
  MOVE R32 R26
  SETLIST R29 R30 3 [1]
  CALL R27 2 0
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K9 ["useCallback"]
  NEWCLOSURE R28 P8
  CAPTURE UPVAL U9
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R25
  CAPTURE VAL R21
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R23
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  NEWTABLE R29 0 7
  MOVE R30 R18
  GETTABLEKS R31 R25 K21 ["jumpToDate"]
  MOVE R32 R21
  MOVE R33 R2
  GETTABLEKS R34 R15 K13 ["cache"]
  MOVE R35 R23
  MOVE R36 R17
  SETLIST R29 R30 7 [1]
  CALL R27 2 1
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K9 ["useCallback"]
  NEWCLOSURE R29 P9
  CAPTURE VAL R19
  CAPTURE UPVAL U9
  CAPTURE VAL R17
  CAPTURE VAL R21
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R23
  CAPTURE VAL R25
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  NEWTABLE R30 0 7
  MOVE R31 R19
  MOVE R32 R21
  MOVE R33 R23
  MOVE R34 R2
  MOVE R35 R8
  GETTABLEKS R36 R25 K21 ["jumpToDate"]
  MOVE R37 R17
  SETLIST R30 R31 7 [1]
  CALL R28 2 1
  GETUPVAL R30 0
  GETTABLEKS R29 R30 K9 ["useCallback"]
  NEWCLOSURE R30 P10
  CAPTURE VAL R19
  CAPTURE UPVAL U9
  NEWTABLE R31 0 1
  MOVE R32 R19
  SETLIST R31 R32 1 [1]
  CALL R29 2 1
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  LOADK R31 K23 ["Frame"]
  NEWTABLE R32 1 0
  GETUPVAL R34 0
  GETTABLEKS R33 R34 K24 ["Tag"]
  GETUPVAL R34 14
  LOADK R35 K25 ["X-Column"]
  LOADK R36 K26 ["Component-ActivityHistoryMain"]
  CALL R34 2 1
  SETTABLE R34 R32 R33
  DUPTABLE R33 K29 [{"EventList", "FilterMenu"}]
  GETUPVAL R35 0
  GETTABLEKS R34 R35 K22 ["createElement"]
  LOADK R35 K23 ["Frame"]
  NEWTABLE R36 4 0
  GETUPVAL R38 0
  GETTABLEKS R37 R38 K24 ["Tag"]
  GETUPVAL R38 14
  LOADK R39 K25 ["X-Column"]
  LOADK R40 K30 ["CX-Invisible"]
  CALL R38 2 1
  SETTABLE R38 R36 R37
  GETUPVAL R37 15
  NAMECALL R37 R37 K31 ["getNextOrder"]
  CALL R37 1 1
  SETTABLEKS R37 R36 K32 ["LayoutOrder"]
  GETUPVAL R39 4
  GETTABLEKS R38 R39 K3 ["AllEvents"]
  JUMPIFEQ R4 R38 [+2]
  LOADB R37 0 +1
  LOADB R37 1
  SETTABLEKS R37 R36 K33 ["Visible"]
  DUPTABLE R37 K36 [{"Header", "ActivityHistoryBubbleListContainer"}]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K22 ["createElement"]
  LOADK R39 K23 ["Frame"]
  NEWTABLE R40 4 0
  GETUPVAL R42 0
  GETTABLEKS R41 R42 K24 ["Tag"]
  GETUPVAL R42 14
  GETTABLEKS R44 R11 K37 ["enabled"]
  JUMPIFNOT R44 [+2]
  LOADK R43 K38 ["HeaderHovered"]
  JUMP [+1]
  LOADNIL R43
  GETTABLEKS R45 R0 K39 ["isPublishedGame"]
  JUMPIF R45 [+2]
  LOADK R44 K40 ["HeaderDisabled"]
  JUMP [+1]
  LOADNIL R44
  CALL R42 2 1
  SETTABLE R42 R40 R41
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K41 ["Event"]
  GETTABLEKS R41 R42 K42 ["MouseEnter"]
  GETTABLEKS R42 R11 K43 ["enable"]
  SETTABLE R42 R40 R41
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K41 ["Event"]
  GETTABLEKS R41 R42 K44 ["MouseLeave"]
  GETTABLEKS R42 R11 K45 ["disable"]
  SETTABLE R42 R40 R41
  DUPTABLE R41 K48 [{"Tooltip", "FilterHeader"}]
  GETTABLEKS R43 R11 K37 ["enabled"]
  JUMPIFNOT R43 [+1]
  JUMPIF R24 [+2]
  LOADNIL R42
  JUMP [+10]
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K22 ["createElement"]
  GETUPVAL R43 16
  DUPTABLE R44 K50 [{"Fragments"}]
  GETTABLEKS R45 R22 K15 ["descriptiveStrings"]
  SETTABLEKS R45 R44 K49 ["Fragments"]
  CALL R42 2 1
  SETTABLEKS R42 R41 K46 ["Tooltip"]
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K22 ["createElement"]
  LOADK R43 K51 ["TextButton"]
  NEWTABLE R44 4 0
  GETUPVAL R46 0
  GETTABLEKS R45 R46 K24 ["Tag"]
  GETUPVAL R46 14
  LOADK R47 K52 ["X-Row"]
  LOADK R48 K30 ["CX-Invisible"]
  CALL R46 2 1
  SETTABLE R46 R44 R45
  GETUPVAL R47 0
  GETTABLEKS R46 R47 K41 ["Event"]
  GETTABLEKS R45 R46 K53 ["Activated"]
  NEWCLOSURE R46 P11
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  SETTABLE R46 R44 R45
  LOADK R45 K54 [""]
  SETTABLEKS R45 R44 K55 ["Text"]
  GETUPVAL R45 15
  NAMECALL R45 R45 K31 ["getNextOrder"]
  CALL R45 1 1
  SETTABLEKS R45 R44 K32 ["LayoutOrder"]
  DUPTABLE R45 K58 [{"FilterHeaderText", "HeaderIcons"}]
  GETUPVAL R47 0
  GETTABLEKS R46 R47 K22 ["createElement"]
  LOADK R47 K59 ["TextLabel"]
  NEWTABLE R48 4 0
  GETUPVAL R50 0
  GETTABLEKS R49 R50 K24 ["Tag"]
  GETUPVAL R50 14
  LOADK R51 K60 ["X-Fit"]
  LOADK R52 K30 ["CX-Invisible"]
  CALL R50 2 1
  SETTABLE R50 R48 R49
  GETTABLEKS R49 R22 K14 ["shortString"]
  SETTABLEKS R49 R48 K55 ["Text"]
  GETUPVAL R49 15
  NAMECALL R49 R49 K31 ["getNextOrder"]
  CALL R49 1 1
  SETTABLEKS R49 R48 K32 ["LayoutOrder"]
  CALL R46 2 1
  SETTABLEKS R46 R45 K56 ["FilterHeaderText"]
  GETUPVAL R47 0
  GETTABLEKS R46 R47 K22 ["createElement"]
  LOADK R47 K23 ["Frame"]
  NEWTABLE R48 2 0
  GETUPVAL R50 0
  GETTABLEKS R49 R50 K24 ["Tag"]
  GETUPVAL R50 14
  LOADK R51 K52 ["X-Row"]
  LOADK R52 K30 ["CX-Invisible"]
  CALL R50 2 1
  SETTABLE R50 R48 R49
  GETUPVAL R49 15
  NAMECALL R49 R49 K31 ["getNextOrder"]
  CALL R49 1 1
  SETTABLEKS R49 R48 K32 ["LayoutOrder"]
  DUPTABLE R49 K63 [{"ClearFiltersIconContainer", "FilterHeaderIconContainer"}]
  JUMPIF R24 [+2]
  LOADNIL R50
  JUMP [+43]
  GETUPVAL R51 0
  GETTABLEKS R50 R51 K22 ["createElement"]
  LOADK R51 K23 ["Frame"]
  NEWTABLE R52 2 0
  GETUPVAL R54 0
  GETTABLEKS R53 R54 K24 ["Tag"]
  GETUPVAL R54 14
  LOADK R55 K30 ["CX-Invisible"]
  LOADK R56 K64 ["HeaderIcon"]
  CALL R54 2 1
  SETTABLE R54 R52 R53
  GETUPVAL R53 15
  NAMECALL R53 R53 K31 ["getNextOrder"]
  CALL R53 1 1
  SETTABLEKS R53 R52 K32 ["LayoutOrder"]
  DUPTABLE R53 K66 [{"ClearFiltersIcon"}]
  GETUPVAL R55 0
  GETTABLEKS R54 R55 K22 ["createElement"]
  LOADK R55 K67 ["ImageButton"]
  NEWTABLE R56 2 0
  GETUPVAL R59 0
  GETTABLEKS R58 R59 K41 ["Event"]
  GETTABLEKS R57 R58 K53 ["Activated"]
  SETTABLE R28 R56 R57
  GETUPVAL R57 15
  NAMECALL R57 R57 K31 ["getNextOrder"]
  CALL R57 1 1
  SETTABLEKS R57 R56 K32 ["LayoutOrder"]
  CALL R54 2 1
  SETTABLEKS R54 R53 K65 ["ClearFiltersIcon"]
  CALL R50 3 1
  SETTABLEKS R50 R49 K61 ["ClearFiltersIconContainer"]
  GETUPVAL R51 0
  GETTABLEKS R50 R51 K22 ["createElement"]
  LOADK R51 K23 ["Frame"]
  NEWTABLE R52 2 0
  GETUPVAL R54 0
  GETTABLEKS R53 R54 K24 ["Tag"]
  GETUPVAL R54 14
  LOADK R55 K30 ["CX-Invisible"]
  LOADK R56 K64 ["HeaderIcon"]
  CALL R54 2 1
  SETTABLE R54 R52 R53
  GETUPVAL R53 15
  NAMECALL R53 R53 K31 ["getNextOrder"]
  CALL R53 1 1
  SETTABLEKS R53 R52 K32 ["LayoutOrder"]
  DUPTABLE R53 K69 [{"FilterHeaderIcon"}]
  GETUPVAL R55 0
  GETTABLEKS R54 R55 K22 ["createElement"]
  LOADK R55 K70 ["ImageLabel"]
  DUPTABLE R56 K71 [{"LayoutOrder"}]
  GETUPVAL R57 15
  NAMECALL R57 R57 K31 ["getNextOrder"]
  CALL R57 1 1
  SETTABLEKS R57 R56 K32 ["LayoutOrder"]
  CALL R54 2 1
  SETTABLEKS R54 R53 K68 ["FilterHeaderIcon"]
  CALL R50 3 1
  SETTABLEKS R50 R49 K62 ["FilterHeaderIconContainer"]
  CALL R46 3 1
  SETTABLEKS R46 R45 K57 ["HeaderIcons"]
  CALL R42 3 1
  SETTABLEKS R42 R41 K47 ["FilterHeader"]
  CALL R38 3 1
  SETTABLEKS R38 R37 K34 ["Header"]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K22 ["createElement"]
  LOADK R39 K23 ["Frame"]
  NEWTABLE R40 2 0
  GETUPVAL R42 0
  GETTABLEKS R41 R42 K24 ["Tag"]
  GETUPVAL R42 14
  LOADK R43 K30 ["CX-Invisible"]
  CALL R42 1 1
  SETTABLE R42 R40 R41
  GETUPVAL R41 15
  NAMECALL R41 R41 K31 ["getNextOrder"]
  CALL R41 1 1
  SETTABLEKS R41 R40 K32 ["LayoutOrder"]
  DUPTABLE R41 K73 [{"ActivityHistoryBubbleList"}]
  GETTABLEKS R43 R0 K39 ["isPublishedGame"]
  JUMPIF R43 [+8]
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K22 ["createElement"]
  GETUPVAL R43 17
  NEWTABLE R44 0 0
  CALL R42 2 1
  JUMP [+42]
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K22 ["createElement"]
  GETUPVAL R43 18
  NEWTABLE R44 16 0
  GETUPVAL R46 0
  GETTABLEKS R45 R46 K24 ["Tag"]
  LOADK R46 K74 [".ActivityHistoryBubbleList"]
  SETTABLE R46 R44 R45
  GETTABLEKS R45 R25 K75 ["vlref"]
  SETTABLEKS R45 R44 K76 ["Vlref"]
  GETTABLEKS R45 R25 K77 ["eventList"]
  SETTABLEKS R45 R44 K78 ["Events"]
  LOADK R45 K79 [∞]
  SETTABLEKS R45 R44 K80 ["IndexOffset"]
  SETTABLEKS R14 R44 K81 ["OnViewableItemsChanged"]
  GETTABLEKS R45 R25 K82 ["onScroll"]
  SETTABLEKS R45 R44 K83 ["OnScroll"]
  GETTABLEKS R45 R25 K84 ["fetchPreviousPageInProgress"]
  SETTABLEKS R45 R44 K85 ["ShowHeaderLoadingIndicator"]
  GETTABLEKS R45 R25 K86 ["fetchNextPageInProgress"]
  SETTABLEKS R45 R44 K87 ["ShowFooterLoadingIndicator"]
  NEWCLOSURE R45 P12
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  SETTABLEKS R45 R44 K88 ["OpenFiltersFn"]
  CALL R42 2 1
  SETTABLEKS R42 R41 K72 ["ActivityHistoryBubbleList"]
  CALL R38 3 1
  SETTABLEKS R38 R37 K35 ["ActivityHistoryBubbleListContainer"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K27 ["EventList"]
  GETUPVAL R35 0
  GETTABLEKS R34 R35 K22 ["createElement"]
  LOADK R35 K23 ["Frame"]
  DUPTABLE R36 K89 [{"LayoutOrder", "Visible"}]
  GETUPVAL R37 15
  NAMECALL R37 R37 K31 ["getNextOrder"]
  CALL R37 1 1
  SETTABLEKS R37 R36 K32 ["LayoutOrder"]
  GETUPVAL R39 4
  GETTABLEKS R38 R39 K3 ["AllEvents"]
  JUMPIFNOTEQ R4 R38 [+2]
  LOADB R37 0 +1
  LOADB R37 1
  SETTABLEKS R37 R36 K33 ["Visible"]
  DUPTABLE R37 K90 [{"FilterMenu"}]
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K22 ["createElement"]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K28 ["FilterMenu"]
  DUPTABLE R40 K96 [{"collaborators", "selectedFilters", "onApply", "onClear", "onChange"}]
  GETTABLEKS R41 R15 K13 ["cache"]
  SETTABLEKS R41 R40 K91 ["collaborators"]
  SETTABLEKS R18 R40 K92 ["selectedFilters"]
  SETTABLEKS R27 R40 K93 ["onApply"]
  SETTABLEKS R28 R40 K94 ["onClear"]
  SETTABLEKS R29 R40 K95 ["onChange"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K28 ["FilterMenu"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K28 ["FilterMenu"]
  CALL R30 3 -1
  RETURN R30 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["ReactUtils"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["SharedTypes"]
  CALL R5 1 1
  GETTABLEKS R7 R3 K13 ["ContextServices"]
  GETTABLEKS R6 R7 K14 ["Analytics"]
  GETTABLEKS R8 R3 K13 ["ContextServices"]
  GETTABLEKS R7 R8 K15 ["Localization"]
  GETTABLEKS R9 R3 K11 ["Util"]
  GETTABLEKS R8 R9 K16 ["LayoutOrderIterator"]
  GETTABLEKS R9 R8 K17 ["new"]
  CALL R9 0 1
  GETTABLEKS R11 R3 K18 ["Styling"]
  GETTABLEKS R10 R11 K19 ["joinTags"]
  GETTABLEKS R11 R2 K20 ["useToggleState"]
  GETTABLEKS R12 R5 K21 ["SectionHeaderType"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K22 ["Contexts"]
  GETTABLEKS R14 R15 K23 ["ActivityHistoryContext"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K24 ["Components"]
  GETTABLEKS R15 R16 K25 ["FilterMenu"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K24 ["Components"]
  GETTABLEKS R16 R17 K26 ["ActivityHistoryBubbleList"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K24 ["Components"]
  GETTABLEKS R17 R18 K27 ["Tooltip"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K10 ["Src"]
  GETTABLEKS R19 R20 K24 ["Components"]
  GETTABLEKS R18 R19 K28 ["EnableTeamCreate"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K10 ["Src"]
  GETTABLEKS R20 R21 K29 ["Hooks"]
  GETTABLEKS R19 R20 K30 ["BidirectionalInfiniteScroll"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K29 ["Hooks"]
  GETTABLEKS R20 R21 K31 ["UsernameCache"]
  CALL R19 1 1
  GETIMPORT R20 K33 [game]
  LOADK R22 K34 ["ActivityFeedBDISFetchSensitivity"]
  NAMECALL R20 R20 K35 ["GetFastInt"]
  CALL R20 2 1
  GETIMPORT R21 K33 [game]
  LOADK R23 K36 ["ActivityFeedBDISMinEvents"]
  NAMECALL R21 R21 K35 ["GetFastInt"]
  CALL R21 2 1
  GETIMPORT R22 K33 [game]
  LOADK R24 K37 ["ActivityFeedRefreshMs"]
  NAMECALL R22 R22 K35 ["GetFastInt"]
  CALL R22 2 1
  DUPTABLE R23 K39 [{"AllEvents", "FilterMenu"}]
  LOADK R24 K40 ["All Events"]
  SETTABLEKS R24 R23 K38 ["AllEvents"]
  LOADK R24 K41 ["Filter Menu"]
  SETTABLEKS R24 R23 K25 ["FilterMenu"]
  DUPCLOSURE R24 K42 [PROTO_22]
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R23
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R15
  RETURN R24 1
