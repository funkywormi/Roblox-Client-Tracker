PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugUrls"]
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETIMPORT R1 K2 [warn]
  LOADK R3 K3 ["networkInterface:getIsAssetOpenForUse failed to fetch permissions of asset %*. %*"]
  GETUPVAL R5 1
  ORK R6 R0 K4 [""]
  NAMECALL R3 R3 K5 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  CALL R1 1 0
  GETUPVAL R1 2
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugUrls"]
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETIMPORT R1 K2 [warn]
  LOADK R3 K3 ["networkInterface:getFiatProduct failed to fetch details of asset %*. %*"]
  GETUPVAL R5 1
  ORK R6 R0 K4 [""]
  NAMECALL R3 R3 K5 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  CALL R1 1 0
  GETUPVAL R1 2
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugUrls"]
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETIMPORT R1 K2 [warn]
  LOADK R3 K3 ["networkInterface:getIsOwnedByUser failed to check ownership of asset %*. %*"]
  GETUPVAL R5 1
  ORK R6 R0 K4 [""]
  NAMECALL R3 R3 K5 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  CALL R1 1 0
  GETUPVAL R1 2
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["getIsAssetOpenForUse"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R1 R1 K1 ["catch"]
  CALL R1 2 1
  NAMECALL R1 R1 K2 ["await"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  MOVE R2 R0
  LOADB R3 0
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETIMPORT R5 K6 [Enum.AssetType.Audio]
  NAMECALL R2 R2 K7 ["getFiatProduct"]
  CALL R2 3 1
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R2 R2 K1 ["catch"]
  CALL R2 2 1
  NAMECALL R2 R2 K2 ["await"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["responseBody"]
  JUMPIF R3 [+4]
  MOVE R4 R0
  LOADB R5 0
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K9 ["isFree"]
  GETTABLEKS R5 R3 K10 ["purchasePrice"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K11 ["purchasable"]
  JUMPIFNOT R4 [+1]
  JUMPIF R5 [+4]
  MOVE R6 R0
  LOADB R7 0
  CALL R6 1 0
  RETURN R0 0
  GETUPVAL R6 0
  GETUPVAL R8 1
  GETIMPORT R9 K14 [Enum.AvatarItemType.Asset]
  NAMECALL R6 R6 K15 ["getIsOwnedByUser"]
  CALL R6 3 1
  NEWCLOSURE R8 P2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R6 R6 K1 ["catch"]
  CALL R6 2 1
  NAMECALL R6 R6 K2 ["await"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K8 ["responseBody"]
  JUMPIFNOT R7 [+4]
  MOVE R8 R0
  LOADB R9 0
  CALL R8 1 0
  RETURN R0 0
  MOVE R8 R0
  LOADB R9 1
  CALL R8 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R2 1 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Promise"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K10 ["Core"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K11 ["FiatUtil"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K10 ["Core"]
  GETTABLEKS R7 R8 K8 ["Util"]
  GETTABLEKS R6 R7 K12 ["DebugFlags"]
  CALL R5 1 1
  GETIMPORT R6 K14 [game]
  LOADK R8 K15 ["ToolboxSampleProductMUS418"]
  NAMECALL R6 R6 K16 ["GetEngineFeature"]
  CALL R6 2 1
  DUPCLOSURE R7 K17 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R7 1
