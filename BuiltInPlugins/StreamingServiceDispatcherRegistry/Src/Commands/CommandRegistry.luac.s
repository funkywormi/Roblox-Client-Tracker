MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K8 ["Commands"]
  GETTABLEKS R3 R2 K9 ["DisplayRichText"]
  GETTABLEKS R4 R2 K10 ["DisplaySuggestions"]
  GETTABLEKS R5 R2 K11 ["DisplayError"]
  GETTABLEKS R6 R2 K12 ["QueueRichText"]
  GETTABLEKS R7 R2 K13 ["BuilderCommands"]
  GETTABLEKS R8 R7 K14 ["Instantiate"]
  GETTABLEKS R9 R7 K15 ["InsertAsset"]
  GETTABLEKS R10 R7 K16 ["SetProperty"]
  GETTABLEKS R11 R7 K17 ["CreateMaterial"]
  GETTABLEKS R12 R7 K18 ["SetMaterial"]
  GETTABLEKS R13 R7 K19 ["RemoveInstance"]
  GETTABLEKS R14 R7 K20 ["CloneInstance"]
  GETTABLEKS R15 R7 K21 ["DisplayRegionAdornments"]
  GETTABLEKS R16 R7 K22 ["DebugBulkPublishToInventory"]
  GETTABLEKS R17 R7 K23 ["SetDraftMode"]
  GETTABLEKS R18 R7 K24 ["RunDraftCommand"]
  GETTABLEKS R19 R7 K25 ["DebugSleep"]
  GETTABLEKS R20 R7 K26 ["RunCode"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K6 ["Src"]
  GETTABLEKS R23 R24 K27 ["Flags"]
  GETTABLEKS R22 R23 K28 ["getFFlagConvAICodeRunner"]
  CALL R21 1 1
  DUPTABLE R22 K31 [{"parallel", "sequential"}]
  NEWTABLE R23 8 0
  GETTABLEKS R24 R3 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R3
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R5 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R5
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R15 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R15
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETIMPORT R24 K5 [require]
  MOVE R25 R9
  CALL R24 1 1
  SETTABLEKS R24 R23 K33 ["InsertAssetInstant"]
  GETIMPORT R24 K5 [require]
  MOVE R25 R10
  CALL R24 1 1
  SETTABLEKS R24 R23 K34 ["SetPropertyInstant"]
  GETIMPORT R24 K5 [require]
  MOVE R25 R8
  CALL R24 1 1
  SETTABLEKS R24 R23 K35 ["InstantiateInstant"]
  SETTABLEKS R23 R22 K29 ["parallel"]
  NEWTABLE R23 16 0
  GETTABLEKS R24 R8 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R8
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R9 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R9
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R10
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R6 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R6
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R11 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R11
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R12 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R12
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R16 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R16
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R4 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R4
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R13 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R13
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R14 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R14
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R17 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R17
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R18 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R18
  CALL R25 1 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R19 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R19
  CALL R25 1 1
  SETTABLE R25 R23 R24
  SETTABLEKS R23 R22 K30 ["sequential"]
  MOVE R23 R21
  CALL R23 0 1
  JUMPIFNOT R23 [+9]
  GETTABLEKS R23 R22 K30 ["sequential"]
  GETTABLEKS R24 R20 K32 ["Name"]
  GETIMPORT R25 K5 [require]
  MOVE R26 R20
  CALL R25 1 1
  SETTABLE R25 R23 R24
  RETURN R22 1
