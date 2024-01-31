PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  NAMECALL R2 R0 K1 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K2 ["pageInfo"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["canSort"]
  GETUPVAL R4 2
  GETUPVAL R5 3
  JUMPIF R5 [+2]
  GETTABLEKS R5 R1 K4 ["categoryName"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R1 K5 ["sortIndex"]
  JUMPIF R2 [+1]
  LOADN R2 1
  GETUPVAL R5 4
  GETUPVAL R6 5
  GETUPVAL R7 6
  DUPTABLE R8 K20 [{"audioSearchInfo", "additionalAudioSearchInfo", "searchTerm", "sortIndex", "sortDirection", "uiSortIntent", "categoryName", "targetPage", "currentPage", "requestReason", "isTopKeyword", "searchSource", "querySource", "originalUserQuery", "originalCorrection", "queryParams"}]
  GETUPVAL R10 7
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K21 ["None"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K6 ["audioSearchInfo"]
  GETUPVAL R10 7
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K21 ["None"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K7 ["additionalAudioSearchInfo"]
  GETUPVAL R9 2
  SETTABLEKS R9 R8 K8 ["searchTerm"]
  SETTABLEKS R2 R8 K5 ["sortIndex"]
  GETUPVAL R10 9
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K21 ["None"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K9 ["sortDirection"]
  GETUPVAL R10 9
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K21 ["None"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K10 ["uiSortIntent"]
  GETUPVAL R9 3
  SETTABLEKS R9 R8 K4 ["categoryName"]
  LOADN R9 1
  SETTABLEKS R9 R8 K11 ["targetPage"]
  LOADN R9 0
  SETTABLEKS R9 R8 K12 ["currentPage"]
  GETUPVAL R10 10
  GETTABLEKS R9 R10 K22 ["StartSearch"]
  SETTABLEKS R9 R8 K13 ["requestReason"]
  GETUPVAL R10 11
  ORK R9 R10 K23 [False]
  SETTABLEKS R9 R8 K14 ["isTopKeyword"]
  GETUPVAL R10 2
  JUMPIFNOT R10 [+6]
  GETUPVAL R11 12
  GETTABLEKS R10 R11 K24 ["SEARCH_SOURCE"]
  GETTABLEKS R9 R10 K25 ["KEYWORD"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K15 ["searchSource"]
  GETUPVAL R10 13
  JUMPIFNOT R10 [+5]
  GETUPVAL R10 14
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  GETUPVAL R9 13
  JUMP [+5]
  GETUPVAL R11 15
  GETTABLEKS R10 R11 K26 ["QuerySource"]
  GETTABLEKS R9 R10 K27 ["OriginalUserQuery"]
  SETTABLEKS R9 R8 K16 ["querySource"]
  GETUPVAL R10 16
  JUMPIFNOT R10 [+5]
  GETUPVAL R10 14
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  GETUPVAL R9 16
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K17 ["originalUserQuery"]
  GETUPVAL R10 17
  JUMPIFNOT R10 [+5]
  GETUPVAL R10 14
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  GETUPVAL R9 17
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K18 ["originalCorrection"]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K21 ["None"]
  SETTABLEKS R9 R8 K19 ["queryParams"]
  CALL R5 3 -1
  NAMECALL R3 R0 K0 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R4
  CAPTURE UPVAL U7
  CAPTURE VAL R5
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K7 ["Core"]
  GETTABLEKS R2 R3 K8 ["Util"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K9 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Core"]
  GETTABLEKS R6 R7 K10 ["Types"]
  GETTABLEKS R5 R6 K11 ["Sort"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Core"]
  GETTABLEKS R7 R8 K10 ["Types"]
  GETTABLEKS R6 R7 K12 ["RequestReason"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Core"]
  GETTABLEKS R8 R9 K10 ["Types"]
  GETTABLEKS R7 R8 K13 ["AutocorrectTypes"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K7 ["Core"]
  GETTABLEKS R10 R11 K14 ["Networking"]
  GETTABLEKS R9 R10 K15 ["Requests"]
  GETTABLEKS R8 R9 K16 ["UpdatePageInfoAndSendRequest"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K7 ["Core"]
  GETTABLEKS R10 R11 K17 ["Actions"]
  GETTABLEKS R9 R10 K18 ["StopAllSounds"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R13 R0 K7 ["Core"]
  GETTABLEKS R12 R13 K8 ["Util"]
  GETTABLEKS R11 R12 K19 ["SharedFlags"]
  GETTABLEKS R10 R11 K20 ["getFFlagToolboxAddAutocorrect"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K7 ["Core"]
  GETTABLEKS R12 R13 K21 ["Flags"]
  GETTABLEKS R11 R12 K22 ["getFFlagToolboxNavigationClearsAudioSearch"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K7 ["Core"]
  GETTABLEKS R13 R14 K21 ["Flags"]
  GETTABLEKS R12 R13 K23 ["getFFlagToolboxNavigationClearsSortingFilters"]
  CALL R11 1 1
  DUPCLOSURE R12 K24 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R6
  RETURN R12 1
