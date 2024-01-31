PROTO_0:
  GETUPVAL R4 0
  MOVE R5 R0
  NEWTABLE R6 0 1
  DUPTABLE R7 K2 [{"Id", "Schema"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["Shorelines"]
  SETTABLEKS R8 R7 K0 ["Id"]
  DUPTABLE R8 K6 [{"Id", "Type", "URL"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["Shorelines"]
  SETTABLEKS R9 R8 K0 ["Id"]
  LOADK R9 K7 ["Upgrade"]
  SETTABLEKS R9 R8 K4 ["Type"]
  GETUPVAL R9 2
  SETTABLEKS R9 R8 K5 ["URL"]
  SETTABLEKS R8 R7 K1 ["Schema"]
  SETLIST R6 R7 1 [1]
  DUPTABLE R7 K11 [{"Category", "Data", "Overrides"}]
  GETUPVAL R8 3
  SETTABLEKS R8 R7 K8 ["Category"]
  SETTABLEKS R1 R7 K9 ["Data"]
  SETTABLEKS R3 R7 K10 ["Overrides"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["ApplyById"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["Category"]
  GETTABLEKS R4 R2 K11 ["Storage"]
  GETTABLEKS R5 R2 K12 ["UpgradeSettings"]
  GETTABLEKS R6 R3 K12 ["UpgradeSettings"]
  GETIMPORT R7 K14 [game]
  LOADK R9 K15 ["Shorelines_LearnMoreUrl"]
  NAMECALL R7 R7 K16 ["GetFastString"]
  CALL R7 2 1
  NEWTABLE R8 2 0
  NEWTABLE R9 1 0
  GETTABLEKS R10 R5 K17 ["Shorelines"]
  GETTABLEKS R11 R4 K18 ["LocalSession"]
  SETTABLE R11 R9 R10
  SETTABLEKS R9 R8 K11 ["Storage"]
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K20 ["Generator"]
  RETURN R8 1
