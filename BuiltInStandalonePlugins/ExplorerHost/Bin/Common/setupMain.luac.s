PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  LOADNIL R2
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Packages"]
  GETTABLEKS R3 R4 K3 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Packages"]
  GETTABLEKS R4 R5 K4 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["MainPlugin"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K7 ["createElement"]
  MOVE R6 R4
  DUPTABLE R7 K10 [{"Plugin", "PluginLoaderContext"}]
  SETTABLEKS R0 R7 K8 ["Plugin"]
  SETTABLEKS R1 R7 K9 ["PluginLoaderContext"]
  CALL R5 2 1
  GETIMPORT R6 K13 [Instance.new]
  LOADK R7 K14 ["Frame"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K15 ["createRoot"]
  MOVE R8 R6
  CALL R7 1 1
  MOVE R10 R5
  NAMECALL R8 R7 K16 ["render"]
  CALL R8 2 0
  GETTABLEKS R8 R0 K17 ["Unloading"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R7
  NAMECALL R8 R8 K18 ["Connect"]
  CALL R8 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerHost"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_1]
  CAPTURE VAL R0
  RETURN R1 1
