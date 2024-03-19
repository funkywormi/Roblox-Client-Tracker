PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIFNOT R1 [+49]
  GETTABLEKS R2 R1 K1 ["UserSearchResults"]
  JUMPIFNOT R2 [+46]
  LENGTH R3 R2
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+43]
  LOADN R3 1
  GETIMPORT R4 K4 [string.lower]
  GETUPVAL R5 0
  CALL R4 1 1
  GETIMPORT R5 K6 [ipairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETIMPORT R10 K4 [string.lower]
  GETTABLEKS R11 R9 K7 ["Name"]
  CALL R10 1 1
  JUMPIFNOTEQ R10 R4 [+3]
  MOVE R3 R8
  JUMP [+2]
  FORGLOOP R5 2 [inext] [-10]
  GETTABLE R5 R2 R3
  DUPTABLE R6 K10 [{"Name", "Id", "Type"}]
  GETTABLEKS R7 R5 K7 ["Name"]
  SETTABLEKS R7 R6 K7 ["Name"]
  GETTABLEKS R7 R5 K11 ["UserId"]
  SETTABLEKS R7 R6 K8 ["Id"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K12 ["clientToBackend"]
  GETIMPORT R9 K16 [Enum.CreatorType.User]
  GETTABLEKS R8 R9 K17 ["Value"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K9 ["Type"]
  RETURN R6 1
  DUPTABLE R2 K10 [{"Name", "Id", "Type"}]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K7 ["Name"]
  LOADN R3 255
  SETTABLEKS R3 R2 K8 ["Id"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K12 ["clientToBackend"]
  GETIMPORT R5 K16 [Enum.CreatorType.User]
  GETTABLEKS R4 R5 K17 ["Value"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["Type"]
  RETURN R2 1

PROTO_1:
  MOVE R5 R1
  LOADN R6 3
  NAMECALL R3 R0 K0 ["getUsers"]
  CALL R3 3 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K1 ["andThen"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETUPVAL R5 4
  DUPTABLE R6 K12 [{"audioSearchInfo", "additionalAudioSearchInfo", "includeUnverifiedCreators", "targetPage", "currentPage", "creator", "excludeGroupCreations", "searchTerm", "sortIndex", "requestReason", "qualityFilterData"}]
  GETUPVAL R7 5
  SETTABLEKS R7 R6 K1 ["audioSearchInfo"]
  GETUPVAL R7 6
  SETTABLEKS R7 R6 K2 ["additionalAudioSearchInfo"]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K3 ["includeUnverifiedCreators"]
  LOADN R7 1
  SETTABLEKS R7 R6 K4 ["targetPage"]
  LOADN R7 0
  SETTABLEKS R7 R6 K5 ["currentPage"]
  SETTABLEKS R0 R6 K6 ["creator"]
  GETUPVAL R8 8
  CALL R8 0 1
  JUMPIFNOT R8 [+4]
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K7 ["excludeGroupCreations"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K7 ["excludeGroupCreations"]
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K8 ["searchTerm"]
  SETTABLEKS R7 R6 K8 ["searchTerm"]
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K14 ["SortIndex"]
  ORK R7 R8 K13 [1]
  SETTABLEKS R7 R6 K9 ["sortIndex"]
  GETUPVAL R8 10
  GETTABLEKS R7 R8 K15 ["StartSearch"]
  SETTABLEKS R7 R6 K10 ["requestReason"]
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K11 ["qualityFilterData"]
  SETTABLEKS R7 R6 K11 ["qualityFilterData"]
  CALL R3 3 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R2 11
  GETTABLEKS R1 R2 K16 ["onCreatorSearched"]
  GETTABLEKS R2 R0 K17 ["Name"]
  GETTABLEKS R3 R0 K18 ["Id"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  LOADB R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 1
  CALL R3 0 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["AudioSearch"]
  JUMPIF R1 [+3]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K2 ["None"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["AdditionalAudioSearch"]
  JUMPIF R2 [+3]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["None"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["includeUnverifiedCreators"]
  NAMECALL R5 R0 K5 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K6 ["sound"]
  JUMPIFEQKNIL R4 [+9]
  GETTABLEKS R5 R4 K7 ["isPlaying"]
  JUMPIFNOT R5 [+5]
  GETUPVAL R7 4
  CALL R7 0 -1
  NAMECALL R5 R0 K0 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["Creator"]
  JUMPIFNOT R5 [+90]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["Creator"]
  JUMPIFEQKS R5 K9 [""] [+86]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U8
  CAPTURE UPVAL U2
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["Creator"]
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K11 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K12 ["string"] [+23]
  GETUPVAL R7 6
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["Creator"]
  MOVE R11 R8
  LOADN R12 3
  NAMECALL R9 R7 K13 ["getUsers"]
  CALL R9 3 1
  NEWCLOSURE R11 P1
  CAPTURE VAL R8
  CAPTURE UPVAL U11
  NAMECALL R9 R9 K14 ["andThen"]
  CALL R9 2 1
  MOVE R6 R9
  MOVE R8 R5
  DUPCLOSURE R9 K15 [PROTO_3]
  NAMECALL R6 R6 K14 ["andThen"]
  CALL R6 3 0
  RETURN R0 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["Creator"]
  JUMPIFEQKS R8 K16 ["table"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K11 [type]
  CALL R6 1 1
  JUMPIFNOT R6 [+233]
  DUPTABLE R6 K20 [{"Name", "Id", "Type"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["Creator"]
  GETTABLEKS R7 R8 K17 ["Name"]
  SETTABLEKS R7 R6 K17 ["Name"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["Creator"]
  GETTABLEKS R7 R8 K18 ["Id"]
  SETTABLEKS R7 R6 K18 ["Id"]
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K21 ["clientToBackend"]
  GETIMPORT R9 K25 [Enum.CreatorType.User]
  GETTABLEKS R8 R9 K26 ["Value"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K19 ["Type"]
  MOVE R7 R5
  MOVE R8 R6
  CALL R7 1 0
  RETURN R0 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["None"]
  LOADNIL R6
  LOADNIL R7
  GETUPVAL R8 12
  CALL R8 0 1
  JUMPIFNOT R8 [+36]
  GETUPVAL R9 13
  GETTABLEKS R8 R9 K27 ["getCurrentTab"]
  NAMECALL R10 R0 K5 ["getState"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K28 ["pageInfo"]
  CALL R8 1 1
  GETUPVAL R10 14
  GETTABLEKS R9 R10 K29 ["MARKETPLACE_KEY"]
  JUMPIFNOTEQ R8 R9 [+5]
  GETUPVAL R9 14
  GETTABLEKS R5 R9 K30 ["CREATOR_ROBLOX"]
  JUMP [+27]
  GETUPVAL R9 15
  CALL R9 0 1
  JUMPIFNOT R9 [+24]
  GETUPVAL R10 14
  GETTABLEKS R9 R10 K31 ["INVENTORY_KEY"]
  JUMPIFNOTEQ R8 R9 [+20]
  GETUPVAL R9 14
  GETTABLEKS R5 R9 K30 ["CREATOR_ROBLOX"]
  GETUPVAL R9 2
  GETTABLEKS R6 R9 K32 ["creatorTargetIds"]
  GETUPVAL R9 2
  GETTABLEKS R7 R9 K33 ["groupTargetIds"]
  JUMP [+9]
  GETUPVAL R8 15
  CALL R8 0 1
  JUMPIFNOT R8 [+6]
  GETUPVAL R8 2
  GETTABLEKS R6 R8 K32 ["creatorTargetIds"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K33 ["groupTargetIds"]
  GETUPVAL R8 15
  CALL R8 0 1
  JUMPIFNOT R8 [+50]
  JUMPIFNOT R6 [+24]
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R14 R12 K19 ["Type"]
  JUMPIFNOT R14 [+5]
  GETTABLEKS R14 R12 K19 ["Type"]
  GETTABLEKS R13 R14 K17 ["Name"]
  JUMP [+1]
  LOADNIL R13
  GETUPVAL R15 10
  GETTABLEKS R14 R15 K34 ["onCreatorSearched"]
  GETTABLEKS R15 R12 K17 ["Name"]
  GETTABLEKS R16 R12 K18 ["Id"]
  MOVE R17 R13
  CALL R14 3 0
  FORGLOOP R8 2 [-19]
  JUMPIFNOT R7 [+24]
  MOVE R8 R7
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R14 R12 K19 ["Type"]
  JUMPIFNOT R14 [+5]
  GETTABLEKS R14 R12 K19 ["Type"]
  GETTABLEKS R13 R14 K17 ["Name"]
  JUMP [+1]
  LOADNIL R13
  GETUPVAL R15 10
  GETTABLEKS R14 R15 K34 ["onCreatorSearched"]
  GETTABLEKS R15 R12 K17 ["Name"]
  GETTABLEKS R16 R12 K18 ["Id"]
  MOVE R17 R13
  CALL R14 3 0
  FORGLOOP R8 2 [-19]
  GETUPVAL R10 0
  LOADB R11 0
  CALL R10 1 -1
  NAMECALL R8 R0 K0 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R10 16
  LOADK R11 K9 [""]
  NEWTABLE R12 0 0
  CALL R10 2 -1
  NAMECALL R8 R0 K0 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R10 5
  GETUPVAL R11 6
  GETUPVAL R12 7
  DUPTABLE R13 K47 [{"audioSearchInfo", "additionalAudioSearchInfo", "includeUnverifiedCreators", "targetPage", "currentPage", "sortIndex", "creator", "creatorTargetIds", "excludeGroupCreations", "groupTargetIds", "requestReason", "searchTerm", "uiSortIntent", "sortDirection", "qualityFilterData"}]
  SETTABLEKS R1 R13 K35 ["audioSearchInfo"]
  SETTABLEKS R2 R13 K36 ["additionalAudioSearchInfo"]
  SETTABLEKS R3 R13 K4 ["includeUnverifiedCreators"]
  LOADN R14 1
  SETTABLEKS R14 R13 K37 ["targetPage"]
  LOADN R14 0
  SETTABLEKS R14 R13 K38 ["currentPage"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K49 ["SortIndex"]
  ORK R14 R15 K48 [1]
  SETTABLEKS R14 R13 K39 ["sortIndex"]
  SETTABLEKS R5 R13 K40 ["creator"]
  GETUPVAL R15 15
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  MOVE R14 R6
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K32 ["creatorTargetIds"]
  GETUPVAL R15 8
  CALL R15 0 1
  JUMPIFNOT R15 [+4]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K41 ["excludeGroupCreations"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K41 ["excludeGroupCreations"]
  GETUPVAL R15 15
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  MOVE R14 R7
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K33 ["groupTargetIds"]
  GETUPVAL R15 9
  GETTABLEKS R14 R15 K50 ["StartSearch"]
  SETTABLEKS R14 R13 K42 ["requestReason"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K43 ["searchTerm"]
  SETTABLEKS R14 R13 K43 ["searchTerm"]
  GETUPVAL R15 15
  CALL R15 0 1
  JUMPIFNOT R15 [+4]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K44 ["uiSortIntent"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K44 ["uiSortIntent"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K45 ["sortDirection"]
  SETTABLEKS R14 R13 K45 ["sortDirection"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K46 ["qualityFilterData"]
  SETTABLEKS R14 R13 K46 ["qualityFilterData"]
  CALL R10 3 -1
  NAMECALL R8 R0 K0 ["dispatch"]
  CALL R8 -1 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K7 ["Core"]
  GETTABLEKS R5 R6 K8 ["Types"]
  GETTABLEKS R4 R5 K9 ["Category"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K7 ["Core"]
  GETTABLEKS R6 R7 K8 ["Types"]
  GETTABLEKS R5 R6 K10 ["RequestReason"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K7 ["Core"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["PageInfoHelper"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K7 ["Core"]
  GETTABLEKS R9 R10 K13 ["Networking"]
  GETTABLEKS R8 R9 K14 ["Requests"]
  GETTABLEKS R7 R8 K15 ["UpdatePageInfoAndSendRequest"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K7 ["Core"]
  GETTABLEKS R9 R10 K16 ["Actions"]
  GETTABLEKS R8 R9 K17 ["ClearAssets"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K7 ["Core"]
  GETTABLEKS R10 R11 K16 ["Actions"]
  GETTABLEKS R9 R10 K18 ["SetLiveSearch"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K7 ["Core"]
  GETTABLEKS R11 R12 K16 ["Actions"]
  GETTABLEKS R10 R11 K19 ["SetLoading"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K7 ["Core"]
  GETTABLEKS R12 R13 K16 ["Actions"]
  GETTABLEKS R11 R12 K20 ["StopPreviewSound"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K7 ["Core"]
  GETTABLEKS R14 R15 K11 ["Util"]
  GETTABLEKS R13 R14 K21 ["Analytics"]
  GETTABLEKS R12 R13 K21 ["Analytics"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K7 ["Core"]
  GETTABLEKS R14 R15 K11 ["Util"]
  GETTABLEKS R13 R14 K22 ["CreatorInfoHelper"]
  CALL R12 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K7 ["Core"]
  GETTABLEKS R16 R17 K11 ["Util"]
  GETTABLEKS R15 R16 K23 ["ToolboxUtilities"]
  CALL R14 1 1
  GETTABLEKS R13 R14 K24 ["showRobloxCreatedAssets"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K7 ["Core"]
  GETTABLEKS R17 R18 K11 ["Util"]
  GETTABLEKS R16 R17 K25 ["SharedFlags"]
  GETTABLEKS R15 R16 K26 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K7 ["Core"]
  GETTABLEKS R18 R19 K11 ["Util"]
  GETTABLEKS R17 R18 K25 ["SharedFlags"]
  GETTABLEKS R16 R17 K27 ["getFFlagToolboxAddCreationsFilterToListView"]
  CALL R15 1 1
  DUPCLOSURE R16 K28 [PROTO_1]
  CAPTURE VAL R12
  DUPCLOSURE R17 K29 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R8
  RETURN R17 1
