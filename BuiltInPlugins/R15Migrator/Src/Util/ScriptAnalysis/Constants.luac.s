MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K10 [{"StartKey", "EndKey", "CharacterLimit", "AttributeChunkNameBase", "AttributeChunkCountName", "InitialIssueCountName", "UnificationScriptAttributeName", "ScriptStatus", "ReferenceKey", "ScriptBackupTag"}]
  LOADK R1 K11 ["start"]
  SETTABLEKS R1 R0 K0 ["StartKey"]
  LOADK R1 K12 ["end"]
  SETTABLEKS R1 R0 K1 ["EndKey"]
  LOADK R1 K13 [199987]
  SETTABLEKS R1 R0 K2 ["CharacterLimit"]
  LOADK R1 K14 ["ScriptBackupChunk"]
  SETTABLEKS R1 R0 K3 ["AttributeChunkNameBase"]
  LOADK R1 K15 ["ScriptBackupCount"]
  SETTABLEKS R1 R0 K4 ["AttributeChunkCountName"]
  LOADK R1 K16 ["InitialIssueCount"]
  SETTABLEKS R1 R0 K5 ["InitialIssueCountName"]
  LOADK R1 K17 ["UnificationScript"]
  SETTABLEKS R1 R0 K6 ["UnificationScriptAttributeName"]
  DUPTABLE R1 K25 [{"AutoConverted", "Complete", "Reverted", "Warning", "Error", "VariableError", "None"}]
  LOADK R2 K18 ["AutoConverted"]
  SETTABLEKS R2 R1 K18 ["AutoConverted"]
  LOADK R2 K19 ["Complete"]
  SETTABLEKS R2 R1 K19 ["Complete"]
  LOADK R2 K20 ["Reverted"]
  SETTABLEKS R2 R1 K20 ["Reverted"]
  LOADK R2 K21 ["Warning"]
  SETTABLEKS R2 R1 K21 ["Warning"]
  LOADK R2 K22 ["Error"]
  SETTABLEKS R2 R1 K22 ["Error"]
  LOADK R2 K23 ["VariableError"]
  SETTABLEKS R2 R1 K23 ["VariableError"]
  LOADK R2 K24 ["None"]
  SETTABLEKS R2 R1 K24 ["None"]
  SETTABLEKS R1 R0 K7 ["ScriptStatus"]
  LOADK R1 K26 ["Reference"]
  SETTABLEKS R1 R0 K8 ["ReferenceKey"]
  LOADK R1 K27 ["R15MigratorScriptHasBackup"]
  SETTABLEKS R1 R0 K9 ["ScriptBackupTag"]
  RETURN R0 1
