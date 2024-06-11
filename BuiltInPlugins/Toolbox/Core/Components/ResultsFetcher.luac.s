PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"pageSize"}]
  SETTABLEKS R0 R3 K0 ["pageSize"]
  NAMECALL R1 R1 K2 ["fetchResults"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  LOADB R2 0
  SETTABLEKS R2 R0 K0 ["loadingMutex"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["fetchNextPage"]
  DUPTABLE R2 K9 [{"loading", "error", "total", "fetchNextPage", "assets", "assetMap", "assetIds", "nextPageCursor"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["loading"]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["error"]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["total"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["fetchNextPage"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K5 ["assets"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K6 ["assetMap"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K7 ["assetIds"]
  LOADNIL R3
  SETTABLEKS R3 R2 K8 ["nextPageCursor"]
  GETIMPORT R3 K12 [table.freeze]
  MOVE R4 R2
  CALL R3 1 1
  SETTABLEKS R3 R0 K13 ["INITIAL_RESULTS_STATE"]
  GETTABLEKS R3 R0 K13 ["INITIAL_RESULTS_STATE"]
  SETTABLEKS R3 R0 K14 ["state"]
  RETURN R0 0

PROTO_2:
  JUMPIFNOTEQKS R1 K0 ["render"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  DUPCLOSURE R2 K0 [PROTO_2]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["filter"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["filter"]
  GETTABLEKS R5 R0 K2 ["props"]
  MOVE R6 R2
  CALL R4 2 1
  GETUPVAL R5 1
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  JUMPIF R5 [+14]
  GETTABLEKS R5 R0 K3 ["loadingMutex"]
  SETTABLEKS R5 R0 K4 ["canceled"]
  LOADB R5 0
  SETTABLEKS R5 R0 K3 ["loadingMutex"]
  DUPTABLE R7 K6 [{"initialPage"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K5 ["initialPage"]
  NAMECALL R5 R0 K7 ["fetchResults"]
  CALL R5 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["initialPage"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["join"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["INITIAL_RESULTS_STATE"]
  CALL R0 1 1
  JUMP [+2]
  NEWTABLE R0 0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K3 ["loading"]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["None"]
  SETTABLEKS R1 R0 K5 ["error"]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["None"]
  SETTABLEKS R1 R0 K6 ["fetchNextPage"]
  RETURN R0 1

PROTO_5:
  NEWTABLE R0 0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["loading"]
  DUPTABLE R1 K2 [{"error"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["error"]
  SETTABLEKS R1 R0 K1 ["error"]
  RETURN R0 1

PROTO_6:
  LOADB R1 1
  SETUPVAL R1 0
  GETUPVAL R1 1
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["loadingMutex"]
  GETUPVAL R1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K1 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R0 0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["loading"]
  DUPTABLE R1 K2 [{"error"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["error"]
  SETTABLEKS R1 R0 K1 ["error"]
  RETURN R0 1

PROTO_8:
  LOADB R1 1
  SETUPVAL R1 0
  GETUPVAL R1 1
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["loadingMutex"]
  GETUPVAL R1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K1 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["append"]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R0 K1 ["assetIds"]
  GETUPVAL R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["assetIds"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["join"]
  GETTABLEKS R3 R0 K3 ["assetMap"]
  GETUPVAL R4 2
  CALL R2 2 1
  SETTABLEKS R2 R1 K3 ["assetMap"]
  GETTABLEKS R3 R0 K4 ["assets"]
  LENGTH R2 R3
  NEWTABLE R3 0 0
  GETIMPORT R4 K6 [ipairs]
  GETUPVAL R5 1
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETUPVAL R10 2
  GETTABLE R9 R10 R8
  ADD R10 R2 R7
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K8 ["round"]
  GETUPVAL R14 4
  DIV R13 R2 R14
  CALL R12 1 1
  ADDK R11 R12 K7 [1]
  JUMPIFNOT R9 [+22]
  DUPTABLE R12 K13 [{"page", "pagePosition", "position", "searchResultSource"}]
  SETTABLEKS R11 R12 K9 ["page"]
  SETTABLEKS R7 R12 K10 ["pagePosition"]
  SETTABLEKS R10 R12 K11 ["position"]
  GETUPVAL R15 5
  GETTABLE R14 R15 R8
  JUMPIFNOT R14 [+5]
  GETUPVAL R15 5
  GETTABLE R14 R15 R8
  GETTABLEKS R13 R14 K12 ["searchResultSource"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K12 ["searchResultSource"]
  SETTABLEKS R12 R9 K14 ["Context"]
  SETTABLE R9 R3 R7
  JUMP [+14]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["shouldDebugWarnings"]
  CALL R12 0 1
  JUMPIFNOT R12 [+9]
  GETIMPORT R12 K17 [warn]
  LOADK R14 K18 ["asset with ID %* not found in asset map"]
  MOVE R16 R8
  NAMECALL R14 R14 K19 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  CALL R12 1 0
  FORGLOOP R4 2 [inext] [-48]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["append"]
  NEWTABLE R5 0 0
  GETTABLEKS R6 R0 K4 ["assets"]
  MOVE R7 R3
  CALL R4 3 1
  SETTABLEKS R4 R1 K4 ["assets"]
  LOADB R4 0
  SETTABLEKS R4 R1 K20 ["loading"]
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K21 ["None"]
  SETTABLEKS R4 R1 K22 ["error"]
  GETUPVAL R6 8
  GETTABLEKS R5 R6 K23 ["initialPage"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R6 9
  GETTABLEKS R5 R6 K24 ["responseBody"]
  GETTABLEKS R4 R5 K25 ["totalResults"]
  JUMPIF R4 [+1]
  LOADNIL R4
  SETTABLEKS R4 R1 K26 ["total"]
  GETUPVAL R6 9
  GETTABLEKS R5 R6 K24 ["responseBody"]
  GETTABLEKS R4 R5 K27 ["nextPageCursor"]
  SETTABLEKS R4 R1 K27 ["nextPageCursor"]
  GETUPVAL R5 10
  GETTABLEKS R4 R5 K28 ["fetchNextPage"]
  SETTABLEKS R4 R1 K28 ["fetchNextPage"]
  GETTABLEKS R4 R1 K27 ["nextPageCursor"]
  JUMPIFNOTEQKNIL R4 [+6]
  GETUPVAL R5 11
  GETTABLEKS R4 R5 K21 ["None"]
  SETTABLEKS R4 R1 K27 ["nextPageCursor"]
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K29 ["props"]
  GETTABLEKS R4 R5 K30 ["dispatchGetAssetsVotingData"]
  JUMPIFNOT R4 [+8]
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K29 ["props"]
  GETTABLEKS R4 R5 K30 ["dispatchGetAssetsVotingData"]
  GETTABLEKS R5 R1 K4 ["assets"]
  CALL R4 1 0
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["includeUnverifiedCreators"]
  LOADNIL R1
  GETUPVAL R2 1
  DUPTABLE R4 K16 [{"categoryName", "sectionName", "keyword", "ownerId", "sortType", "tags", "cursor", "limit", "includeOnlyVerifiedCreators", "queryParams", "searchSource", "assetsInCameraViewport", "assetsInCameraVicinity", "qualityFilterData"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["categoryName"]
  SETTABLEKS R5 R4 K2 ["categoryName"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["sectionName"]
  SETTABLEKS R5 R4 K3 ["sectionName"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K17 ["searchTerm"]
  SETTABLEKS R5 R4 K4 ["keyword"]
  GETUPVAL R5 3
  CALL R5 0 1
  SETTABLEKS R5 R4 K5 ["ownerId"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K18 ["sortName"]
  SETTABLEKS R5 R4 K6 ["sortType"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["tags"]
  SETTABLEKS R5 R4 K7 ["tags"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K8 ["cursor"]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K9 ["limit"]
  NOT R5 R0
  SETTABLEKS R5 R4 K10 ["includeOnlyVerifiedCreators"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["queryParams"]
  SETTABLEKS R5 R4 K11 ["queryParams"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K12 ["searchSource"]
  SETTABLEKS R5 R4 K12 ["searchSource"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["assetsInCameraViewport"]
  SETTABLEKS R5 R4 K13 ["assetsInCameraViewport"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K14 ["assetsInCameraVicinity"]
  SETTABLEKS R5 R4 K14 ["assetsInCameraVicinity"]
  GETUPVAL R6 6
  CALL R6 0 1
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K15 ["qualityFilterData"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K15 ["qualityFilterData"]
  NAMECALL R2 R2 K19 ["getToolboxItems"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE REF R1
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K20 ["catch"]
  CALL R2 2 1
  NAMECALL R2 R2 K21 ["await"]
  CALL R2 1 1
  JUMPIFNOT R1 [+2]
  CLOSEUPVALS R1
  RETURN R0 0
  GETTABLEKS R3 R2 K22 ["responseBody"]
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  GETIMPORT R6 K24 [ipairs]
  GETTABLEKS R7 R3 K25 ["data"]
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R13 R10 K26 ["id"]
  FASTCALL2 TABLE_INSERT R4 R13 [+4]
  MOVE R12 R4
  GETIMPORT R11 K29 [table.insert]
  CALL R11 2 0
  GETTABLEKS R11 R10 K26 ["id"]
  JUMPIFNOT R11 [+8]
  GETTABLEKS R11 R10 K26 ["id"]
  DUPTABLE R12 K31 [{"searchResultSource"}]
  GETTABLEKS R13 R10 K30 ["searchResultSource"]
  SETTABLEKS R13 R12 K30 ["searchResultSource"]
  SETTABLE R12 R5 R11
  FORGLOOP R6 2 [inext] [-20]
  GETUPVAL R6 1
  MOVE R8 R4
  NAMECALL R6 R6 K32 ["getItemDetailsAssetIds"]
  CALL R6 2 1
  NEWCLOSURE R8 P1
  CAPTURE REF R1
  CAPTURE UPVAL U0
  NAMECALL R6 R6 K20 ["catch"]
  CALL R6 2 1
  NAMECALL R6 R6 K21 ["await"]
  CALL R6 1 1
  JUMPIFNOT R1 [+2]
  CLOSEUPVALS R1
  RETURN R0 0
  GETTABLEKS R7 R6 K22 ["responseBody"]
  NEWTABLE R8 0 0
  GETIMPORT R9 K34 [pairs]
  GETTABLEKS R10 R7 K25 ["data"]
  CALL R9 1 3
  FORGPREP_NEXT R9
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K35 ["fromItemDetailsRequest"]
  MOVE R15 R13
  CALL R14 1 1
  GETTABLEKS R15 R13 K36 ["Asset"]
  JUMPIFNOT R15 [+16]
  GETTABLEKS R16 R13 K36 ["Asset"]
  GETTABLEKS R15 R16 K26 ["id"]
  JUMPIFNOT R15 [+11]
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K37 ["AddContextToItemDetails"]
  MOVE R16 R14
  GETTABLEKS R19 R13 K36 ["Asset"]
  GETTABLEKS R18 R19 K26 ["id"]
  GETTABLE R17 R5 R18
  CALL R15 2 1
  MOVE R14 R15
  GETTABLEKS R15 R14 K36 ["Asset"]
  JUMPIFNOT R15 [+5]
  GETTABLEKS R16 R14 K36 ["Asset"]
  GETTABLEKS R15 R16 K38 ["Id"]
  SETTABLE R14 R8 R15
  FORGLOOP R9 2 [-33]
  GETUPVAL R9 0
  LOADB R10 0
  SETTABLEKS R10 R9 K39 ["loadingMutex"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K40 ["canceled"]
  JUMPIFNOT R9 [+6]
  GETUPVAL R9 0
  LOADB R10 0
  SETTABLEKS R10 R9 K40 ["canceled"]
  CLOSEUPVALS R1
  RETURN R0 0
  GETUPVAL R9 0
  NEWCLOSURE R11 P2
  CAPTURE UPVAL U8
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U5
  CAPTURE VAL R5
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U13
  NAMECALL R9 R9 K41 ["setState"]
  CALL R9 2 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_11:
  NEWTABLE R0 0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["loading"]
  DUPTABLE R1 K2 [{"message"}]
  GETUPVAL R3 0
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K4 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["message"]
  SETTABLEKS R1 R0 K5 ["error"]
  RETURN R0 1

PROTO_12:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R1 0
  CALL R0 1 2
  JUMPIF R0 [+10]
  GETUPVAL R2 1
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["loadingMutex"]
  GETUPVAL R2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["networkInterface"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R4 R1 K2 ["pageSize"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R2 K3 ["initialPageSize"]
  GETTABLEKS R5 R0 K4 ["state"]
  GETTABLEKS R7 R1 K5 ["initialPage"]
  JUMPIFNOT R7 [+2]
  LOADNIL R6
  JUMP [+2]
  GETTABLEKS R6 R5 K6 ["nextPageCursor"]
  GETTABLEKS R7 R1 K5 ["initialPage"]
  JUMPIF R7 [+8]
  JUMPIFEQKNIL R6 [+6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["None"]
  JUMPIFNOTEQ R6 R7 [+2]
  RETURN R0 0
  GETTABLEKS R7 R0 K8 ["loadingMutex"]
  JUMPIFNOT R7 [+1]
  RETURN R0 0
  LOADB R7 1
  SETTABLEKS R7 R0 K8 ["loadingMutex"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R7 R0 K9 ["setState"]
  CALL R7 2 0
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  GETIMPORT R8 K12 [task.spawn]
  NEWCLOSURE R9 P2
  CAPTURE VAL R7
  CAPTURE VAL R0
  CALL R8 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["render"]
  GETTABLEKS R2 R0 K2 ["state"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_15:
  DUPTABLE R3 K1 [{"initialPage"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K0 ["initialPage"]
  NAMECALL R1 R0 K2 ["fetchResults"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K1 ["props"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  DUPTABLE R1 K1 [{"dispatchGetAssetsVotingData"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchGetAssetsVotingData"]
  RETURN R1 1

PROTO_19:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["deepEqual"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R1 K12 ["Dash"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R1 K13 ["Cryo"]
  CALL R7 1 1
  GETTABLEKS R9 R4 K10 ["Util"]
  GETTABLEKS R8 R9 K14 ["Math"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R0 K15 ["Core"]
  GETTABLEKS R11 R12 K10 ["Util"]
  GETTABLEKS R10 R11 K16 ["getUserId"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K15 ["Core"]
  GETTABLEKS R12 R13 K10 ["Util"]
  GETTABLEKS R11 R12 K17 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K15 ["Core"]
  GETTABLEKS R13 R14 K10 ["Util"]
  GETTABLEKS R12 R13 K18 ["DebugFlags"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K15 ["Core"]
  GETTABLEKS R14 R15 K19 ["Networking"]
  GETTABLEKS R13 R14 K20 ["NetworkInterface"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K21 ["Libs"]
  GETTABLEKS R15 R16 K22 ["Http"]
  GETTABLEKS R14 R15 K23 ["HttpResponse"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K15 ["Core"]
  GETTABLEKS R16 R17 K24 ["Models"]
  GETTABLEKS R15 R16 K25 ["AssetInfo"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R18 R0 K15 ["Core"]
  GETTABLEKS R17 R18 K26 ["Types"]
  GETTABLEKS R16 R17 K27 ["HomeTypes"]
  CALL R15 1 1
  GETTABLEKS R17 R0 K15 ["Core"]
  GETTABLEKS R16 R17 K28 ["Actions"]
  GETIMPORT R17 K6 [require]
  GETTABLEKS R18 R16 K29 ["GetAssetsVotingData"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R0 K15 ["Core"]
  GETTABLEKS R20 R21 K30 ["Flags"]
  GETTABLEKS R19 R20 K31 ["getFFlagQualityFiltersInToolboxSearch"]
  CALL R18 1 1
  GETTABLEKS R19 R2 K32 ["PureComponent"]
  LOADK R21 K33 ["ResultsFetcher"]
  NAMECALL R19 R19 K34 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K35 [PROTO_1]
  SETTABLEKS R20 R19 K36 ["init"]
  DUPCLOSURE R20 K37 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R20 R19 K38 ["didUpdate"]
  DUPCLOSURE R20 K39 [PROTO_13]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R11
  SETTABLEKS R20 R19 K40 ["fetchResults"]
  DUPCLOSURE R20 K41 [PROTO_14]
  SETTABLEKS R20 R19 K42 ["render"]
  DUPCLOSURE R20 K43 [PROTO_15]
  SETTABLEKS R20 R19 K44 ["didMount"]
  GETTABLEKS R20 R2 K32 ["PureComponent"]
  LOADK R22 K45 ["ResultsFetcherRoduxWrapper"]
  NAMECALL R20 R20 K34 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K46 [PROTO_16]
  CAPTURE VAL R2
  CAPTURE VAL R19
  SETTABLEKS R21 R20 K42 ["render"]
  DUPCLOSURE R21 K47 [PROTO_18]
  CAPTURE VAL R17
  NEWCLOSURE R22 P7
  CAPTURE VAL R2
  CAPTURE REF R20
  SETGLOBAL R22 K48 ["TypedResultsFetcher"]
  DUPCLOSURE R22 K49 [PROTO_20]
  CAPTURE VAL R2
  CAPTURE VAL R19
  SETGLOBAL R22 K50 ["NoRoduxTypedResultsFetcher"]
  GETTABLEKS R22 R3 K51 ["connect"]
  LOADNIL R23
  MOVE R24 R21
  CALL R22 2 1
  MOVE R23 R20
  CALL R22 1 1
  MOVE R20 R22
  DUPTABLE R22 K55 [{"Component", "Generator", "NoRoduxGenerator"}]
  SETTABLEKS R19 R22 K52 ["Component"]
  GETGLOBAL R23 K48 ["TypedResultsFetcher"]
  SETTABLEKS R23 R22 K53 ["Generator"]
  GETGLOBAL R23 K50 ["NoRoduxTypedResultsFetcher"]
  SETTABLEKS R23 R22 K54 ["NoRoduxGenerator"]
  CLOSEUPVALS R20
  RETURN R22 1
