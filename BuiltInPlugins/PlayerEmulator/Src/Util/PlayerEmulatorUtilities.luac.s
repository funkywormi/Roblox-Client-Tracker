PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["RunningUnderCLI"]
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADB R0 1
  RETURN R0 1
  GETIMPORT R0 K2 [game]
  LOADK R2 K3 ["PluginPolicyService"]
  NAMECALL R0 R0 K4 ["GetService"]
  CALL R0 2 1
  LOADK R2 K5 ["PlayerEmulator"]
  NAMECALL R0 R0 K6 ["getPluginPolicy"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K7 ["SocialMediaReferencesAllowed"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["RunningUnderCLI"]
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K1 ["en"]
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["StudioLocaleId"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["StudioService"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  NEWTABLE R3 2 0
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K13 ["getSocialMediaReferencesAllowed"]
  DUPCLOSURE R4 K14 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K15 ["getStudioLocaleId"]
  RETURN R3 1
