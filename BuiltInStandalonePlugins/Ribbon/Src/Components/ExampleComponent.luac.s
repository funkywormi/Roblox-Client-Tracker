PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["use"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  NEWTABLE R4 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["Tag"]
  LOADK R6 K3 ["X-Fit X-PadL"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K5 [{"Text"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  NEWTABLE R8 2 0
  LOADK R11 K6 ["Plugin"]
  LOADK R12 K4 ["Text"]
  NAMECALL R9 R1 K7 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K4 ["Text"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["Tag"]
  LOADK R10 K8 ["Title X-Fit"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["Text"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["TextLabel"]
  DUPCLOSURE R8 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1
