PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETUPVAL R5 2
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K1 ["dispatch"]
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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFiatProduct"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETUPVAL R5 4
  GETUPVAL R6 5
  GETUPVAL R7 6
  CALL R1 6 1
  JUMPIF R1 [+13]
  GETIMPORT R2 K2 [warn]
  LOADK R4 K3 ["Fiat Product could not be configured as a product could not be created for assetId: %*, assetType: %*"]
  GETUPVAL R6 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["Name"]
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 7
  GETUPVAL R4 1
  GETUPVAL R5 2
  MOVE R6 R1
  NAMECALL R2 R2 K6 ["configureFiatProduct"]
  CALL R2 4 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U1
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  NAMECALL R2 R2 K7 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
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
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETTABLEKS R4 R5 K12 ["NetworkError"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Core"]
  GETTABLEKS R6 R7 K11 ["Actions"]
  GETTABLEKS R5 R6 K13 ["SetFiatProduct"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
