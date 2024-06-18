PROTO_0:
  GETIMPORT R3 K1 [require]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Packages"]
  GETTABLEKS R4 R5 K3 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K4 ["ContextServices"]
  GETTABLEKS R5 R4 K5 ["Analytics"]
  GETTABLEKS R6 R4 K6 ["Localization"]
  GETTABLEKS R7 R4 K7 ["Mouse"]
  GETTABLEKS R8 R4 K8 ["Store"]
  GETIMPORT R9 K1 [require]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["Src"]
  GETTABLEKS R11 R12 K10 ["Controllers"]
  GETTABLEKS R10 R11 K11 ["CalloutController"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["Src"]
  GETTABLEKS R12 R13 K10 ["Controllers"]
  GETTABLEKS R11 R12 K12 ["PresetController"]
  CALL R10 1 1
  GETIMPORT R11 K1 [require]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["Src"]
  GETTABLEKS R13 R14 K10 ["Controllers"]
  GETTABLEKS R12 R13 K13 ["FileController"]
  CALL R11 1 1
  GETIMPORT R12 K1 [require]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K9 ["Src"]
  GETTABLEKS R14 R15 K10 ["Controllers"]
  GETTABLEKS R13 R14 K14 ["QueueController"]
  CALL R12 1 1
  GETIMPORT R13 K1 [require]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["Src"]
  GETTABLEKS R15 R16 K15 ["Resources"]
  GETTABLEKS R14 R15 K16 ["createAnalyticsHandlers"]
  CALL R13 1 1
  GETIMPORT R14 K1 [require]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K9 ["Src"]
  GETTABLEKS R16 R17 K15 ["Resources"]
  GETTABLEKS R15 R16 K17 ["MakeTheme"]
  CALL R14 1 1
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K9 ["Src"]
  GETTABLEKS R17 R18 K15 ["Resources"]
  GETTABLEKS R16 R17 K6 ["Localization"]
  GETTABLEKS R15 R16 K18 ["SourceStrings"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K9 ["Src"]
  GETTABLEKS R18 R19 K15 ["Resources"]
  GETTABLEKS R17 R18 K6 ["Localization"]
  GETTABLEKS R16 R17 K19 ["LocalizedStrings"]
  GETIMPORT R17 K1 [require]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K9 ["Src"]
  GETTABLEKS R19 R20 K20 ["Flags"]
  GETTABLEKS R18 R19 K21 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R17 1 1
  GETTABLEKS R19 R4 K22 ["Plugin"]
  GETTABLEKS R18 R19 K23 ["new"]
  MOVE R19 R0
  CALL R18 1 1
  GETTABLEKS R19 R7 K23 ["new"]
  NAMECALL R20 R0 K24 ["GetMouse"]
  CALL R20 1 -1
  CALL R19 -1 1
  GETTABLEKS R20 R8 K23 ["new"]
  MOVE R21 R1
  CALL R20 1 1
  MOVE R21 R14
  CALL R21 0 1
  GETTABLEKS R22 R6 K23 ["new"]
  DUPTABLE R23 K28 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R15 R23 K25 ["stringResourceTable"]
  SETTABLEKS R16 R23 K26 ["translationResourceTable"]
  LOADK R24 K29 ["AssetImporter"]
  SETTABLEKS R24 R23 K27 ["pluginName"]
  CALL R22 1 1
  GETTABLEKS R23 R9 K23 ["new"]
  CALL R23 0 1
  GETTABLEKS R24 R10 K23 ["new"]
  MOVE R25 R0
  MOVE R26 R1
  MOVE R27 R22
  CALL R24 3 1
  GETTABLEKS R25 R11 K23 ["new"]
  MOVE R26 R1
  MOVE R27 R24
  CALL R25 2 1
  MOVE R27 R17
  CALL R27 0 1
  JUMPIFNOT R27 [+5]
  GETTABLEKS R26 R12 K23 ["new"]
  MOVE R27 R1
  CALL R26 1 1
  JUMP [+1]
  LOADNIL R26
  GETTABLEKS R27 R5 K23 ["new"]
  MOVE R28 R13
  CALL R27 1 1
  DUPTABLE R28 K31 [{"Plugin", "Mouse", "Store", "Theme", "Localization", "Analytics", "CalloutController", "PresetController", "FileController", "QueueController"}]
  SETTABLEKS R18 R28 K22 ["Plugin"]
  SETTABLEKS R19 R28 K7 ["Mouse"]
  SETTABLEKS R20 R28 K8 ["Store"]
  SETTABLEKS R21 R28 K30 ["Theme"]
  SETTABLEKS R22 R28 K6 ["Localization"]
  SETTABLEKS R27 R28 K5 ["Analytics"]
  SETTABLEKS R23 R28 K11 ["CalloutController"]
  SETTABLEKS R24 R28 K12 ["PresetController"]
  SETTABLEKS R25 R28 K13 ["FileController"]
  SETTABLEKS R26 R28 K14 ["QueueController"]
  JUMPIFNOT R2 [+2]
  SETTABLEKS R2 R28 K32 ["PluginLoaderContextItem"]
  RETURN R28 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  DUPCLOSURE R1 K3 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
