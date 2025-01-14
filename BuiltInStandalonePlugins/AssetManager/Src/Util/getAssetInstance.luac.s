PROTO_0:
  GETIMPORT R1 K1 [pcall]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["LoadAsset"]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K3 ["AssetId"]
  CALL R1 3 2
  JUMPIFNOT R1 [+6]
  JUMPIFNOT R2 [+5]
  NAMECALL R4 R2 K4 ["GetChildren"]
  CALL R4 1 1
  GETTABLEN R3 R4 1
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

PROTO_1:
  LOADK R1 K0 ["rbxassetid://%*"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["AssetId"]
  NAMECALL R1 R1 K2 ["format"]
  CALL R1 2 1
  MOVE R0 R1
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K3 ["LoadPackageAssetAsync"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CALL R2 1 2
  JUMPIFNOT R2 [+16]
  JUMPIFNOT R3 [+15]
  GETTABLEN R4 R3 1
  GETIMPORT R6 K3 [game]
  GETTABLEKS R5 R6 K4 ["Workspace"]
  SETTABLEKS R5 R4 K5 ["Parent"]
  MOVE R7 R1
  NAMECALL R5 R4 K6 ["MoveTo"]
  CALL R5 2 0
  LOADNIL R5
  SETTABLEKS R5 R4 K5 ["Parent"]
  RETURN R4 1
  LOADNIL R4
  RETURN R4 1

PROTO_3:
  GETIMPORT R2 K1 [pcall]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["LoadAsset"]
  GETUPVAL R4 0
  GETTABLEKS R5 R0 K3 ["AssetId"]
  CALL R2 3 2
  JUMPIFNOT R2 [+19]
  JUMPIFNOT R3 [+18]
  GETIMPORT R5 K5 [game]
  GETTABLEKS R4 R5 K6 ["Workspace"]
  SETTABLEKS R4 R3 K7 ["Parent"]
  MOVE R6 R1
  NAMECALL R4 R3 K8 ["MoveTo"]
  CALL R4 2 0
  LOADNIL R4
  SETTABLEKS R4 R3 K7 ["Parent"]
  NAMECALL R5 R3 K9 ["GetChildren"]
  CALL R5 1 1
  GETTABLEN R4 R5 1
  RETURN R4 1
  LOADNIL R4
  RETURN R4 1

PROTO_4:
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["AssetType"]
  GETTABLEKS R4 R5 K1 ["Model"]
  GETTABLE R2 R3 R4
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Default"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Default"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Sound"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_8:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["VideoFrame"]
  CALL R0 1 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["InsertService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Types"]
  CALL R2 1 1
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K13 ["Default"]
  GETTABLEKS R5 R2 K14 ["AssetType"]
  GETTABLEKS R4 R5 K15 ["Package"]
  DUPCLOSURE R5 K16 [PROTO_2]
  CAPTURE VAL R1
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K14 ["AssetType"]
  GETTABLEKS R4 R5 K17 ["Model"]
  DUPCLOSURE R5 K18 [PROTO_3]
  CAPTURE VAL R1
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K14 ["AssetType"]
  GETTABLEKS R4 R5 K19 ["Mesh"]
  DUPCLOSURE R5 K20 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K14 ["AssetType"]
  GETTABLEKS R4 R5 K21 ["Image"]
  DUPCLOSURE R5 K22 [PROTO_5]
  CAPTURE VAL R3
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K14 ["AssetType"]
  GETTABLEKS R4 R5 K23 ["Animation"]
  DUPCLOSURE R5 K24 [PROTO_6]
  CAPTURE VAL R3
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K14 ["AssetType"]
  GETTABLEKS R4 R5 K25 ["Audio"]
  DUPCLOSURE R5 K26 [PROTO_7]
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R2 K14 ["AssetType"]
  GETTABLEKS R4 R5 K27 ["Video"]
  DUPCLOSURE R5 K28 [PROTO_8]
  SETTABLE R5 R3 R4
  RETURN R3 1
