PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Name"]
  SETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["createElement"]
  GETUPVAL R1 3
  DUPTABLE R2 K4 [{"Plugin", "pluginLoaderContext"}]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K2 ["Plugin"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K3 ["pluginLoaderContext"]
  CALL R0 2 1
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K5 ["createRoot"]
  GETIMPORT R2 K8 [Instance.new]
  LOADK R3 K9 ["Frame"]
  CALL R2 1 -1
  CALL R1 -1 1
  SETUPVAL R1 5
  GETUPVAL R1 5
  MOVE R3 R0
  NAMECALL R1 R1 K10 ["render"]
  CALL R1 2 0
  GETUPVAL R1 7
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 7
  LOADK R3 K11 ["Roact tree"]
  GETUPVAL R4 5
  NAMECALL R1 R1 K12 ["addRoactTree"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  LOADNIL R2
  NAMECALL R0 R0 K1 ["render"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["MATERIAL_GENERATOR_READY"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K2 [task.defer]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K5 ["defineLuaFlags"]
  CALL R2 1 0
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K6 ["commonInit"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 0
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETIMPORT R4 K8 [game]
  LOADK R6 K9 ["MemStorageService"]
  NAMECALL R4 R4 K10 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [require]
  GETTABLEKS R7 R3 K11 ["Packages"]
  GETTABLEKS R6 R7 K12 ["TestLoader"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETTABLEKS R7 R3 K13 ["SharedPluginConstants"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETTABLEKS R10 R3 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Flags"]
  GETTABLEKS R8 R9 K16 ["getFFlagShowMaterialGeneratorFromElsewhere"]
  CALL R7 1 1
  GETIMPORT R8 K8 [game]
  LOADK R10 K17 ["EnableMaterialGenerator"]
  NAMECALL R8 R8 K18 ["GetFastFlag"]
  CALL R8 2 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R8 K1 [require]
  GETTABLEKS R10 R3 K11 ["Packages"]
  GETTABLEKS R9 R10 K19 ["React"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETTABLEKS R11 R3 K11 ["Packages"]
  GETTABLEKS R10 R11 K20 ["ReactRoblox"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETTABLEKS R12 R3 K14 ["Src"]
  GETTABLEKS R11 R12 K21 ["MainPlugin"]
  CALL R10 1 1
  LOADNIL R11
  LOADNIL R12
  GETTABLEKS R13 R5 K22 ["hasInternalPermission"]
  CALL R13 0 1
  JUMPIFNOT R13 [+16]
  GETIMPORT R13 K1 [require]
  GETTABLEKS R16 R3 K11 ["Packages"]
  GETTABLEKS R15 R16 K23 ["Dev"]
  GETTABLEKS R14 R15 K24 ["DeveloperTools"]
  CALL R13 1 1
  GETTABLEKS R14 R13 K25 ["forPlugin"]
  GETTABLEKS R15 R3 K26 ["Name"]
  MOVE R16 R0
  CALL R14 2 1
  MOVE R12 R14
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE REF R11
  CAPTURE VAL R9
  CAPTURE REF R12
  GETTABLEKS R14 R0 K27 ["Unloading"]
  NEWCLOSURE R16 P1
  CAPTURE REF R12
  CAPTURE REF R11
  NAMECALL R14 R14 K28 ["Connect"]
  CALL R14 2 0
  MOVE R14 R7
  CALL R14 0 1
  JUMPIFNOT R14 [+13]
  GETTABLEKS R15 R1 K29 ["signals"]
  LOADK R17 K30 ["MemStorageService."]
  GETTABLEKS R18 R6 K31 ["LOAD_MATERIAL_GENERATOR"]
  CONCAT R16 R17 R18
  GETTABLE R14 R15 R16
  NEWCLOSURE R16 P2
  CAPTURE VAL R4
  CAPTURE VAL R6
  NAMECALL R14 R14 K28 ["Connect"]
  CALL R14 2 0
  MOVE R14 R13
  CALL R14 0 0
  CLOSEUPVALS R11
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_4]
  RETURN R0 1
