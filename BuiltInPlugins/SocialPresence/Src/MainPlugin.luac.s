PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["analytics"]
  LOADK R2 K1 ["panelToggled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["state"]
  GETTABLEKS R4 R5 K3 ["enabled"]
  NOT R3 R4
  NAMECALL R0 R0 K4 ["report"]
  CALL R0 3 0
  GETUPVAL R0 0
  DUPCLOSURE R2 K5 [PROTO_0]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["analytics"]
  LOADK R2 K1 ["panelToggled"]
  LOADB R3 0
  NAMECALL R0 R0 K2 ["report"]
  CALL R0 3 0
  GETUPVAL R0 0
  DUPTABLE R2 K4 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["enabled"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R4 K1 [{"enabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["enabled"]
  NAMECALL R2 R0 K2 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onWidgetEnabledChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Store"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 1
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K10 ["store"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["Localization"]
  GETTABLEKS R2 R3 K8 ["new"]
  DUPTABLE R3 K15 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K12 ["stringResourceTable"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K13 ["translationResourceTable"]
  LOADK R4 K16 ["SocialPresence"]
  SETTABLEKS R4 R3 K14 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K17 ["localization"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K18 ["Analytics"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 5
  CALL R2 1 1
  SETTABLEKS R2 R0 K19 ["analytics"]
  GETTABLEKS R3 R1 K20 ["EnableSignal"]
  GETTABLEKS R2 R3 K21 ["Event"]
  GETTABLEKS R4 R0 K3 ["toggleEnabled"]
  NAMECALL R2 R2 K22 ["Connect"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["CollaboratorsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K4 ["props"]
  GETTABLEKS R3 R0 K5 ["state"]
  GETTABLEKS R4 R2 K6 ["Plugin"]
  GETTABLEKS R5 R3 K7 ["enabled"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["provide"]
  NEWTABLE R7 0 7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["new"]
  MOVE R9 R4
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["new"]
  GETTABLEKS R10 R0 K10 ["store"]
  CALL R9 1 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K9 ["new"]
  NAMECALL R11 R4 K11 ["getMouse"]
  CALL R11 1 -1
  CALL R10 -1 1
  GETUPVAL R11 4
  CALL R11 0 1
  GETTABLEKS R12 R0 K12 ["localization"]
  GETTABLEKS R13 R0 K13 ["analytics"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K9 ["new"]
  MOVE R15 R1
  CALL R14 1 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K15 [{"MainWidget"}]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R10 7
  NEWTABLE R11 16 0
  GETUPVAL R13 8
  JUMPIFNOT R13 [+2]
  LOADK R12 K17 ["SocialPresence"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K18 ["Id"]
  MOVE R12 R5
  JUMPIFNOT R12 [+4]
  GETUPVAL R12 9
  NAMECALL R12 R12 K19 ["IsEdit"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K20 ["Enabled"]
  GETTABLEKS R12 R0 K12 ["localization"]
  LOADK R14 K6 ["Plugin"]
  LOADK R15 K21 ["Name"]
  NAMECALL R12 R12 K22 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K23 ["Title"]
  GETIMPORT R12 K27 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K25 ["ZIndexBehavior"]
  GETIMPORT R12 K30 [Enum.InitialDockState.Right]
  SETTABLEKS R12 R11 K28 ["InitialDockState"]
  GETIMPORT R12 K32 [Vector2.new]
  LOADN R13 128
  LOADN R14 224
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["Size"]
  GETIMPORT R12 K32 [Vector2.new]
  LOADN R13 250
  LOADN R14 200
  CALL R12 2 1
  SETTABLEKS R12 R11 K34 ["MinSize"]
  GETTABLEKS R12 R0 K35 ["onClose"]
  SETTABLEKS R12 R11 K36 ["OnClose"]
  LOADB R12 1
  SETTABLEKS R12 R11 K37 ["ShouldRestore"]
  GETTABLEKS R12 R0 K38 ["onRestore"]
  SETTABLEKS R12 R11 K39 ["OnWidgetRestored"]
  GETUPVAL R14 10
  GETTABLEKS R13 R14 K40 ["Change"]
  GETTABLEKS R12 R13 K20 ["Enabled"]
  GETTABLEKS R13 R0 K41 ["onWidgetEnabledChanged"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K43 [{"CollaboratorList"}]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 11
  CALL R13 1 1
  SETTABLEKS R13 R12 K42 ["CollaboratorList"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["MainWidget"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Rodux"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K9 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K14 ["UI"]
  GETTABLEKS R7 R5 K15 ["SharedFlags"]
  GETTABLEKS R8 R7 K16 ["getFFlagDevFrameworkBetterInit"]
  CALL R8 0 1
  JUMPIFNOT R8 [+3]
  GETTABLEKS R9 R6 K17 ["DockWidget"]
  JUMP [+4]
  GETTABLEKS R10 R5 K18 ["StudioUI"]
  GETTABLEKS R9 R10 K17 ["DockWidget"]
  GETTABLEKS R10 R5 K19 ["ContextServices"]
  GETTABLEKS R11 R10 K20 ["Plugin"]
  GETTABLEKS R12 R10 K21 ["Mouse"]
  GETTABLEKS R13 R10 K22 ["Store"]
  GETIMPORT R14 K8 [require]
  GETTABLEKS R17 R1 K23 ["Src"]
  GETTABLEKS R16 R17 K24 ["Reducers"]
  GETTABLEKS R15 R16 K25 ["MainReducer"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R18 R1 K23 ["Src"]
  GETTABLEKS R17 R18 K26 ["Resources"]
  GETTABLEKS R16 R17 K27 ["MakeTheme"]
  CALL R15 1 1
  GETTABLEKS R19 R1 K23 ["Src"]
  GETTABLEKS R18 R19 K26 ["Resources"]
  GETTABLEKS R17 R18 K28 ["Localization"]
  GETTABLEKS R16 R17 K29 ["SourceStrings"]
  GETTABLEKS R20 R1 K23 ["Src"]
  GETTABLEKS R19 R20 K26 ["Resources"]
  GETTABLEKS R18 R19 K28 ["Localization"]
  GETTABLEKS R17 R18 K30 ["LocalizedStrings"]
  GETTABLEKS R19 R1 K23 ["Src"]
  GETTABLEKS R18 R19 K31 ["Components"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R18 K32 ["CollaboratorList"]
  CALL R19 1 1
  GETIMPORT R20 K8 [require]
  GETTABLEKS R23 R1 K23 ["Src"]
  GETTABLEKS R22 R23 K19 ["ContextServices"]
  GETTABLEKS R21 R22 K33 ["CollaboratorsServiceContext"]
  CALL R20 1 1
  GETIMPORT R21 K8 [require]
  GETTABLEKS R24 R1 K23 ["Src"]
  GETTABLEKS R23 R24 K34 ["Util"]
  GETTABLEKS R22 R23 K35 ["AnalyticsHandlers"]
  CALL R21 1 1
  GETIMPORT R22 K1 [game]
  LOADK R24 K36 ["RunService"]
  NAMECALL R22 R22 K37 ["GetService"]
  CALL R22 2 1
  GETTABLEKS R23 R2 K38 ["PureComponent"]
  LOADK R25 K39 ["MainPlugin"]
  NAMECALL R23 R23 K40 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K41 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R21
  SETTABLEKS R24 R23 K42 ["init"]
  DUPCLOSURE R24 K43 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R22
  CAPTURE VAL R3
  CAPTURE VAL R19
  SETTABLEKS R24 R23 K44 ["render"]
  RETURN R23 1
