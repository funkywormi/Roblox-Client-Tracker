PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugUrls"]
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETIMPORT R1 K2 [print]
  LOADK R2 K3 ["configureFiatProduct Response: "]
  MOVE R3 R0
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["responseBody"]
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETUPVAL R5 3
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K5 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["createFiatProduct"]
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 4
  GETUPVAL R5 5
  GETUPVAL R6 6
  GETUPVAL R7 7
  CALL R1 6 1
  JUMPIF R1 [+13]
  GETIMPORT R2 K9 [warn]
  LOADK R4 K10 ["Fiat Product could not be configured as a product could not be created for assetId: %*, assetType: %*"]
  GETUPVAL R6 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 8
  GETUPVAL R4 2
  GETUPVAL R5 3
  MOVE R6 R1
  NAMECALL R2 R2 K11 ["configureFiatProduct"]
  CALL R2 4 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U2
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  NAMECALL R2 R2 K12 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Types"]
  GETTABLEKS R2 R3 K8 ["MarketplaceFiatServiceTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["FiatUtil"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Core"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["DebugFlags"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Core"]
  GETTABLEKS R6 R7 K12 ["Actions"]
  GETTABLEKS R5 R6 K13 ["NetworkError"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Core"]
  GETTABLEKS R7 R8 K12 ["Actions"]
  GETTABLEKS R6 R7 K14 ["SetFiatProduct"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K6 ["Core"]
  GETTABLEKS R9 R10 K9 ["Util"]
  GETTABLEKS R8 R9 K15 ["SharedFlags"]
  GETTABLEKS R7 R8 K16 ["getFFlagAssetConfigLinkToCreatorStore"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R7 1
