PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Cancel"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnPurchaseClicked"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1
  JUMPIFNOT R0 [+71]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["PurchaseStatus"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["Waiting"]
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["AssetData"]
  GETTABLEKS R3 R1 K5 ["Asset"]
  GETTABLEKS R2 R3 K6 ["Id"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K7 ["SearchId"]
  GETTABLEKS R5 R1 K5 ["Asset"]
  GETTABLEKS R4 R5 K8 ["TypeId"]
  GETTABLEKS R6 R1 K9 ["Product"]
  LOADK R8 K10 ["Attempted to purchase asset without a Product: "]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R10 R2
  GETIMPORT R9 K12 [tostring]
  CALL R9 1 1
  CONCAT R7 R8 R9
  FASTCALL2 ASSERT R6 R7 [+3]
  GETIMPORT R5 K14 [assert]
  CALL R5 2 0
  GETTABLEKS R6 R1 K9 ["Product"]
  GETTABLEKS R5 R6 K15 ["ProductId"]
  GETTABLEKS R7 R1 K9 ["Product"]
  GETTABLEKS R6 R7 K16 ["Price"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K17 ["purchaseAsset"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["props"]
  GETTABLEKS R9 R10 K18 ["Network"]
  GETTABLEKS R8 R9 K19 ["networkInterface"]
  MOVE R9 R2
  MOVE R10 R5
  MOVE R11 R6
  MOVE R12 R4
  MOVE R13 R3
  LOADNIL R14
  CALL R7 7 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K20 ["Cancel"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["getRobuxPurchaseUrl"]
  CALL R3 0 -1
  NAMECALL R1 R1 K1 ["OpenBrowserWindow"]
  CALL R1 -1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["Cancel"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+11]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["continued"]
  DUPTABLE R1 K2 [{"purchaseStatus"}]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["None"]
  SETTABLEKS R2 R1 K1 ["purchaseStatus"]
  SETTABLEKS R1 R0 K4 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["cancel"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K6 ["onPurchaseClicked"]
  NEWCLOSURE R1 P2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onBuyRobuxClicked"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["getRobuxBalance"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["Network"]
  GETTABLEKS R3 R4 K3 ["networkInterface"]
  CALL R2 1 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+23]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["setPurchaseStatus"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["None"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K6 ["AssetData"]
  GETTABLEKS R3 R2 K7 ["Product"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R4 R3 K8 ["Price"]
  JUMPIF R4 [+1]
  LOADN R4 0
  JUMPIFNOTEQKN R4 K9 [0] [+5]
  GETTABLEKS R5 R0 K10 ["onPurchaseClicked"]
  LOADB R6 1
  CALL R5 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"purchaseStatus"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K0 ["purchaseStatus"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["continued"]
  JUMPIF R0 [+10]
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["continued"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K2 ["Continue"]
  CALL R0 0 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PurchaseStatus"]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["purchaseStatus"]
  JUMPIFEQ R2 R1 [+7]
  GETIMPORT R2 K5 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["Success"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETIMPORT R2 K5 [spawn]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R6 R1 K2 ["Cancel"]
  FASTCALL1 TYPE R6 [+2]
  GETIMPORT R5 K4 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K5 ["function"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K6 [+4]
  LOADK R5 K6 ["PurchaseFlow expects a Cancel callback."]
  GETIMPORT R3 K8 [assert]
  CALL R3 2 0
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+16]
  GETTABLEKS R6 R1 K9 ["Continue"]
  FASTCALL1 TYPE R6 [+2]
  GETIMPORT R5 K4 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K5 ["function"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K10 [+4]
  LOADK R5 K10 ["PurchaseFlow expects a Continue callback."]
  GETIMPORT R3 K8 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+2]
  LOADNIL R3
  JUMP [+2]
  GETTABLEKS R3 R2 K11 ["purchaseStatus"]
  GETTABLEKS R4 R1 K12 ["AssetData"]
  GETTABLEKS R5 R4 K13 ["Asset"]
  GETTABLEKS R6 R5 K14 ["Id"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K15 ["constructAssetThumbnailUrl"]
  MOVE R8 R6
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K16 ["X"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K17 ["Y"]
  CALL R7 3 1
  GETTABLEKS R8 R5 K18 ["Name"]
  GETTABLEKS R10 R4 K19 ["Creator"]
  GETTABLEKS R9 R10 K18 ["Name"]
  GETTABLEKS R10 R4 K20 ["Product"]
  JUMPIFNOT R10 [+3]
  GETTABLEKS R11 R10 K21 ["Price"]
  JUMPIF R11 [+1]
  LOADN R11 0
  LOADN R13 0
  JUMPIFLT R13 R11 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETTABLEKS R14 R1 K23 ["Balance"]
  ORK R13 R14 K22 ["---"]
  GETUPVAL R15 0
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADNIL R14
  JUMP [+7]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K24 ["Failed"]
  JUMPIFEQ R3 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  JUMPIFLE R11 R13 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  GETUPVAL R17 0
  CALL R17 0 1
  JUMPIFNOT R17 [+2]
  LOADB R16 1
  JUMP [+7]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K25 ["None"]
  JUMPIFEQ R3 R17 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  MOVE R17 R12
  JUMPIFNOT R17 [+89]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K26 ["createFragment"]
  DUPTABLE R18 K30 [{"BuyPlugin", "BuyRobux", "PurchaseFailed"}]
  MOVE R19 R16
  JUMPIFNOT R19 [+26]
  MOVE R19 R15
  JUMPIFNOT R19 [+24]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K31 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K36 [{"Name", "Creator", "Cost", "Balance", "Thumbnail", "OnClose", "OnButtonClicked"}]
  SETTABLEKS R8 R21 K18 ["Name"]
  SETTABLEKS R9 R21 K19 ["Creator"]
  SETTABLEKS R11 R21 K32 ["Cost"]
  SETTABLEKS R13 R21 K23 ["Balance"]
  SETTABLEKS R7 R21 K33 ["Thumbnail"]
  GETTABLEKS R22 R0 K37 ["cancel"]
  SETTABLEKS R22 R21 K34 ["OnClose"]
  GETTABLEKS R22 R0 K38 ["onPurchaseClicked"]
  SETTABLEKS R22 R21 K35 ["OnButtonClicked"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["BuyPlugin"]
  MOVE R19 R16
  JUMPIFNOT R19 [+26]
  NOT R19 R15
  JUMPIFNOT R19 [+24]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K31 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K36 [{"Name", "Creator", "Cost", "Balance", "Thumbnail", "OnClose", "OnButtonClicked"}]
  SETTABLEKS R8 R21 K18 ["Name"]
  SETTABLEKS R9 R21 K19 ["Creator"]
  SETTABLEKS R11 R21 K32 ["Cost"]
  SETTABLEKS R13 R21 K23 ["Balance"]
  SETTABLEKS R7 R21 K33 ["Thumbnail"]
  GETTABLEKS R22 R0 K37 ["cancel"]
  SETTABLEKS R22 R21 K34 ["OnClose"]
  GETTABLEKS R22 R0 K39 ["onBuyRobuxClicked"]
  SETTABLEKS R22 R21 K35 ["OnButtonClicked"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K28 ["BuyRobux"]
  GETUPVAL R20 0
  CALL R20 0 1
  JUMPIF R20 [+18]
  JUMPIFNOT R14 [+17]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K31 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K40 [{"Name", "OnClose", "OnButtonClicked"}]
  SETTABLEKS R8 R21 K18 ["Name"]
  GETTABLEKS R22 R0 K37 ["cancel"]
  SETTABLEKS R22 R21 K34 ["OnClose"]
  GETTABLEKS R22 R0 K38 ["onPurchaseClicked"]
  SETTABLEKS R22 R21 K35 ["OnButtonClicked"]
  CALL R19 2 1
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K29 ["PurchaseFailed"]
  CALL R17 1 1
  RETURN R17 1

PROTO_9:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["purchase"]
  GETTABLEKS R3 R0 K1 ["pageInfo"]
  DUPTABLE R4 K5 [{"Balance", "PurchaseStatus", "SearchId"}]
  GETTABLEKS R5 R2 K6 ["robuxBalance"]
  SETTABLEKS R5 R4 K2 ["Balance"]
  GETTABLEKS R5 R2 K7 ["status"]
  SETTABLEKS R5 R4 K3 ["PurchaseStatus"]
  GETTABLEKS R5 R3 K8 ["searchId"]
  SETTABLEKS R5 R4 K4 ["SearchId"]
  RETURN R4 1

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R7 0
  GETUPVAL R8 1
  MOVE R9 R0
  MOVE R10 R1
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  MOVE R15 R6
  CALL R8 7 -1
  CALL R7 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K3 [{"getRobuxBalance", "purchaseAsset", "setPurchaseStatus"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["getRobuxBalance"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["purchaseAsset"]
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIF R3 [+4]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["setPurchaseStatus"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K2 [Vector2.new]
  LOADN R1 150
  LOADN R2 150
  CALL R0 2 1
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["GuiService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R6 K8 [script]
  GETTABLEKS R5 R6 K9 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Parent"]
  GETTABLEKS R2 R3 K9 ["Parent"]
  GETTABLEKS R3 R2 K10 ["Packages"]
  GETTABLEKS R5 R2 K11 ["Core"]
  GETTABLEKS R4 R5 K12 ["Util"]
  GETIMPORT R5 K14 [require]
  GETTABLEKS R7 R4 K15 ["SharedFlags"]
  GETTABLEKS R6 R7 K16 ["getFFlagToolboxSeparatePurchaseStatusDialogsFromAssetPreview"]
  CALL R5 1 1
  GETIMPORT R6 K14 [require]
  GETTABLEKS R8 R4 K15 ["SharedFlags"]
  GETTABLEKS R7 R8 K17 ["getFFlagToolboxEnableFiatPurchasing"]
  CALL R6 1 1
  GETIMPORT R7 K14 [require]
  GETTABLEKS R8 R3 K18 ["Roact"]
  CALL R7 1 1
  GETIMPORT R8 K14 [require]
  GETTABLEKS R9 R3 K19 ["RoactRodux"]
  CALL R8 1 1
  GETIMPORT R9 K14 [require]
  GETTABLEKS R13 R2 K11 ["Core"]
  GETTABLEKS R12 R13 K20 ["Components"]
  GETTABLEKS R11 R12 K21 ["PurchaseFlow"]
  GETTABLEKS R10 R11 K22 ["BuyPluginDialog"]
  CALL R9 1 1
  GETIMPORT R10 K14 [require]
  GETTABLEKS R14 R2 K11 ["Core"]
  GETTABLEKS R13 R14 K20 ["Components"]
  GETTABLEKS R12 R13 K21 ["PurchaseFlow"]
  GETTABLEKS R11 R12 K23 ["BuyRobuxDialog"]
  CALL R10 1 1
  MOVE R12 R5
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+11]
  GETIMPORT R11 K14 [require]
  GETTABLEKS R15 R2 K11 ["Core"]
  GETTABLEKS R14 R15 K20 ["Components"]
  GETTABLEKS R13 R14 K21 ["PurchaseFlow"]
  GETTABLEKS R12 R13 K24 ["PurchaseFailedDialog"]
  CALL R11 1 1
  GETIMPORT R12 K14 [require]
  GETTABLEKS R13 R3 K25 ["Framework"]
  CALL R12 1 1
  GETIMPORT R13 K14 [require]
  GETTABLEKS R16 R2 K11 ["Core"]
  GETTABLEKS R15 R16 K12 ["Util"]
  GETTABLEKS R14 R15 K26 ["Urls"]
  CALL R13 1 1
  GETTABLEKS R14 R12 K27 ["ContextServices"]
  GETTABLEKS R15 R14 K28 ["withContext"]
  GETIMPORT R16 K14 [require]
  GETTABLEKS R19 R2 K11 ["Core"]
  GETTABLEKS R18 R19 K27 ["ContextServices"]
  GETTABLEKS R17 R18 K29 ["NetworkContext"]
  CALL R16 1 1
  GETIMPORT R17 K14 [require]
  GETTABLEKS R21 R2 K11 ["Core"]
  GETTABLEKS R20 R21 K30 ["Networking"]
  GETTABLEKS R19 R20 K31 ["Requests"]
  GETTABLEKS R18 R19 K32 ["GetRobuxBalance"]
  CALL R17 1 1
  GETIMPORT R18 K14 [require]
  GETTABLEKS R22 R2 K11 ["Core"]
  GETTABLEKS R21 R22 K30 ["Networking"]
  GETTABLEKS R20 R21 K31 ["Requests"]
  GETTABLEKS R19 R20 K33 ["PurchaseAssetRequest"]
  CALL R18 1 1
  GETIMPORT R19 K14 [require]
  GETTABLEKS R22 R2 K11 ["Core"]
  GETTABLEKS R21 R22 K34 ["Actions"]
  GETTABLEKS R20 R21 K35 ["SetPurchaseStatus"]
  CALL R19 1 1
  GETIMPORT R20 K14 [require]
  GETTABLEKS R23 R2 K11 ["Core"]
  GETTABLEKS R22 R23 K36 ["Types"]
  GETTABLEKS R21 R22 K37 ["PurchaseStatus"]
  CALL R20 1 1
  GETTABLEKS R21 R7 K38 ["PureComponent"]
  LOADK R23 K21 ["PurchaseFlow"]
  NAMECALL R21 R21 K39 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K40 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R20
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R22 R21 K41 ["init"]
  DUPCLOSURE R22 K42 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R20
  SETTABLEKS R22 R21 K43 ["didMount"]
  MOVE R22 R5
  CALL R22 0 1
  JUMPIF R22 [+4]
  DUPCLOSURE R22 K44 [PROTO_7]
  CAPTURE VAL R20
  SETTABLEKS R22 R21 K45 ["didUpdate"]
  DUPCLOSURE R22 K46 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R0
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R22 R21 K47 ["render"]
  DUPCLOSURE R22 K48 [PROTO_9]
  DUPCLOSURE R23 K49 [PROTO_13]
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R19
  MOVE R24 R15
  DUPTABLE R25 K51 [{"Network"}]
  SETTABLEKS R16 R25 K50 ["Network"]
  CALL R24 1 1
  MOVE R25 R21
  CALL R24 1 1
  MOVE R21 R24
  GETTABLEKS R24 R8 K52 ["connect"]
  MOVE R25 R22
  MOVE R26 R23
  CALL R24 2 1
  MOVE R25 R21
  CALL R24 1 -1
  RETURN R24 -1
