PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
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
  GETTABLEKS R3 R4 K7 ["Localization"]
  GETTABLEKS R2 R3 K8 ["new"]
  DUPTABLE R3 K13 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K9 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K10 ["translationResourceTable"]
  LOADK R4 K14 ["TextureGenerator"]
  SETTABLEKS R4 R3 K11 ["pluginName"]
  NEWTABLE R4 1 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K15 ["Resources"]
  GETTABLEKS R5 R6 K16 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R6 K17 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K15 ["Resources"]
  GETTABLEKS R7 R8 K18 ["SourceStrings"]
  SETTABLEKS R7 R6 K9 ["stringResourceTable"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K15 ["Resources"]
  GETTABLEKS R7 R8 K19 ["LocalizedStrings"]
  SETTABLEKS R7 R6 K10 ["translationResourceTable"]
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K12 ["libraries"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K20 ["localization"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  DUPTABLE R3 K3 [{"Toggle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K11 [{"Toolbar", "Active", "Id", "Title", "OnClick", "ClickableWhenViewportHidden"}]
  SETTABLEKS R1 R6 K5 ["Toolbar"]
  SETTABLEKS R2 R6 K6 ["Active"]
  LOADK R7 K12 ["textureButton"]
  SETTABLEKS R7 R6 K7 ["Id"]
  GETTABLEKS R7 R0 K13 ["localization"]
  LOADK R9 K14 ["Plugin"]
  LOADK R10 K15 ["Button"]
  NAMECALL R7 R7 K16 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["Title"]
  GETTABLEKS R7 R0 K17 ["toggleEnabled"]
  SETTABLEKS R7 R6 K9 ["OnClick"]
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["ClickableWhenViewportHidden"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Toggle"]
  RETURN R3 1

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 5
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  NAMECALL R9 R3 K6 ["getMouse"]
  CALL R9 1 -1
  CALL R8 -1 1
  GETUPVAL R9 3
  CALL R9 0 1
  GETTABLEKS R10 R0 K7 ["localization"]
  GETTABLEKS R11 R0 K8 ["analytics"]
  SETLIST R6 R7 5 [1]
  DUPTABLE R7 K11 [{"Toolbar", "MainWidget"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K15 [{"Title", "RenderButtons"}]
  LOADK R11 K16 ["TextureGenerator"]
  SETTABLEKS R11 R10 K13 ["Title"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K14 ["RenderButtons"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Toolbar"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R9 6
  NEWTABLE R10 16 0
  GETUPVAL R12 7
  JUMPIFNOT R12 [+2]
  LOADK R11 K17 ["BuiltInTextureGenerator"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K18 ["Id"]
  SETTABLEKS R4 R10 K19 ["Enabled"]
  GETTABLEKS R11 R0 K7 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K20 ["Name"]
  NAMECALL R11 R11 K21 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K13 ["Title"]
  GETIMPORT R11 K25 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K23 ["ZIndexBehavior"]
  GETIMPORT R11 K28 [Enum.InitialDockState.Left]
  SETTABLEKS R11 R10 K26 ["InitialDockState"]
  GETIMPORT R11 K30 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Size"]
  GETIMPORT R11 K30 [Vector2.new]
  LOADN R12 250
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["MinSize"]
  GETTABLEKS R11 R0 K33 ["onClose"]
  SETTABLEKS R11 R10 K34 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K35 ["ShouldRestore"]
  GETTABLEKS R11 R0 K36 ["onRestore"]
  SETTABLEKS R11 R10 K37 ["OnWidgetRestored"]
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K38 ["Change"]
  GETTABLEKS R11 R12 K19 ["Enabled"]
  GETTABLEKS R12 R0 K39 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  NEWTABLE R11 0 0
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

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
  GETTABLEKS R4 R1 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["ReactRoblox"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K15 ["UI"]
  GETTABLEKS R7 R6 K16 ["DockWidget"]
  GETTABLEKS R8 R6 K17 ["PluginButton"]
  GETTABLEKS R9 R6 K18 ["PluginToolbar"]
  GETTABLEKS R10 R5 K19 ["ContextServices"]
  GETTABLEKS R11 R10 K20 ["Plugin"]
  GETTABLEKS R12 R10 K21 ["Mouse"]
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K9 ["Src"]
  GETTABLEKS R15 R16 K22 ["Resources"]
  GETTABLEKS R14 R15 K23 ["MakeTheme"]
  CALL R13 1 1
  GETTABLEKS R17 R1 K9 ["Src"]
  GETTABLEKS R16 R17 K22 ["Resources"]
  GETTABLEKS R15 R16 K24 ["Localization"]
  GETTABLEKS R14 R15 K25 ["SourceStrings"]
  GETTABLEKS R18 R1 K9 ["Src"]
  GETTABLEKS R17 R18 K22 ["Resources"]
  GETTABLEKS R16 R17 K24 ["Localization"]
  GETTABLEKS R15 R16 K26 ["LocalizedStrings"]
  GETTABLEKS R16 R3 K27 ["PureComponent"]
  LOADK R18 K28 ["MainPlugin"]
  NAMECALL R16 R16 K29 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K30 [PROTO_5]
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R5
  SETTABLEKS R17 R16 K31 ["init"]
  DUPCLOSURE R17 K32 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R8
  SETTABLEKS R17 R16 K33 ["renderButtons"]
  DUPCLOSURE R17 K34 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R17 R16 K35 ["render"]
  RETURN R16 1
