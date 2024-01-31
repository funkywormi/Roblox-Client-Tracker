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
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R3 K1 [{"enabled"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R0 K2 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onClose"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onRestore"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onWidgetEnabledChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["Localization"]
  GETTABLEKS R1 R2 K8 ["new"]
  DUPTABLE R2 K12 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K9 ["stringResourceTable"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K10 ["translationResourceTable"]
  LOADK R3 K13 ["AvatarCompatibilityPreviewer"]
  SETTABLEKS R3 R2 K11 ["pluginName"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K14 ["localization"]
  GETUPVAL R1 3
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R1 4
  LOADK R3 K15 ["ValidateUgcBody"]
  NEWCLOSURE R4 P4
  CAPTURE VAL R0
  NAMECALL R1 R1 K16 ["Bind"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K17 ["onImporterValidateUgcRequestConnection"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K18 ["Analytics"]
  GETTABLEKS R1 R2 K8 ["new"]
  GETUPVAL R2 5
  CALL R1 1 1
  SETTABLEKS R1 R0 K19 ["analytics"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  DUPTABLE R3 K3 [{"Toggle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K11 [{"Toolbar", "Active", "Id", "Title", "OnClick", "ClickableWhenViewportHidden"}]
  SETTABLEKS R1 R6 K5 ["Toolbar"]
  SETTABLEKS R2 R6 K6 ["Active"]
  LOADK R7 K12 ["previewAvatar"]
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

PROTO_8:
  GETTABLEKS R1 R0 K0 ["onImporterValidateUgcRequestConnection"]
  JUMPIFEQKNIL R1 [+9]
  GETTABLEKS R1 R0 K0 ["onImporterValidateUgcRequestConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["onImporterValidateUgcRequestConnection"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  NEWTABLE R5 0 6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["new"]
  MOVE R7 R3
  CALL R6 1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["new"]
  NAMECALL R8 R3 K5 ["getMouse"]
  CALL R8 1 -1
  CALL R7 -1 1
  GETUPVAL R8 2
  CALL R8 0 1
  GETTABLEKS R9 R0 K6 ["localization"]
  GETTABLEKS R10 R0 K7 ["analytics"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K8 ["Contexts"]
  GETTABLEKS R12 R13 K9 ["PreviewContext"]
  GETTABLEKS R11 R12 K4 ["new"]
  CALL R11 0 -1
  SETLIST R5 R6 -1 [1]
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIF R6 [+9]
  MOVE R7 R5
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K4 ["new"]
  CALL R8 0 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K12 [table.insert]
  CALL R6 -1 0
  MOVE R7 R5
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K4 ["new"]
  GETUPVAL R9 7
  CALL R8 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K12 [table.insert]
  CALL R6 -1 0
  GETUPVAL R6 8
  CALL R6 0 1
  JUMPIF R6 [+9]
  MOVE R7 R5
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K4 ["new"]
  CALL R8 0 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K12 [table.insert]
  CALL R6 -1 0
  GETUPVAL R7 10
  GETTABLEKS R6 R7 K13 ["provide"]
  MOVE R7 R5
  DUPTABLE R8 K17 [{"Toolbar", "TestInExperienceManager", "MainWidget"}]
  GETUPVAL R10 11
  GETTABLEKS R9 R10 K18 ["createElement"]
  GETUPVAL R10 12
  DUPTABLE R11 K21 [{"Title", "RenderButtons"}]
  LOADK R12 K22 ["AvatarPreviewer"]
  SETTABLEKS R12 R11 K19 ["Title"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K20 ["RenderButtons"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["Toolbar"]
  GETUPVAL R10 13
  NAMECALL R10 R10 K23 ["IsRunning"]
  CALL R10 1 1
  JUMPIFNOT R10 [+2]
  LOADNIL R9
  JUMP [+5]
  GETUPVAL R10 11
  GETTABLEKS R9 R10 K18 ["createElement"]
  GETUPVAL R10 14
  CALL R9 1 1
  SETTABLEKS R9 R8 K15 ["TestInExperienceManager"]
  GETUPVAL R10 11
  GETTABLEKS R9 R10 K18 ["createElement"]
  GETUPVAL R10 15
  NEWTABLE R11 16 0
  GETUPVAL R13 16
  JUMPIFNOT R13 [+2]
  LOADK R12 K24 ["AvatarCompatibilityPreviewer"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K25 ["Id"]
  SETTABLEKS R4 R11 K26 ["Enabled"]
  GETTABLEKS R12 R0 K6 ["localization"]
  LOADK R14 K2 ["Plugin"]
  LOADK R15 K27 ["Name"]
  NAMECALL R12 R12 K28 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K19 ["Title"]
  GETIMPORT R12 K32 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K30 ["ZIndexBehavior"]
  GETIMPORT R12 K35 [Enum.InitialDockState.Left]
  SETTABLEKS R12 R11 K33 ["InitialDockState"]
  GETIMPORT R12 K37 [Vector2.new]
  LOADN R13 194
  LOADN R14 88
  CALL R12 2 1
  SETTABLEKS R12 R11 K38 ["Size"]
  GETIMPORT R12 K37 [Vector2.new]
  LOADN R13 240
  LOADN R14 250
  CALL R12 2 1
  SETTABLEKS R12 R11 K39 ["MinSize"]
  GETTABLEKS R12 R0 K40 ["onClose"]
  SETTABLEKS R12 R11 K41 ["OnClose"]
  LOADB R12 1
  SETTABLEKS R12 R11 K42 ["ShouldRestore"]
  GETTABLEKS R12 R0 K43 ["onRestore"]
  SETTABLEKS R12 R11 K44 ["OnWidgetRestored"]
  GETUPVAL R14 17
  GETTABLEKS R13 R14 K45 ["Change"]
  GETTABLEKS R12 R13 K26 ["Enabled"]
  GETTABLEKS R13 R0 K46 ["onWidgetEnabledChanged"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K48 [{"App"}]
  GETTABLEKS R14 R0 K1 ["state"]
  GETTABLEKS R13 R14 K3 ["enabled"]
  JUMPIFNOT R13 [+5]
  GETUPVAL R14 11
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 18
  CALL R13 1 1
  SETTABLEKS R13 R12 K47 ["App"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["MainWidget"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["MemStorageService"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["RunService"]
  NAMECALL R2 R2 K5 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["Selection"]
  NAMECALL R3 R3 K5 ["GetService"]
  CALL R3 2 1
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R4 K13 ["Packages"]
  GETTABLEKS R6 R7 K14 ["AvatarToolsShared"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R4 K13 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Framework"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R4 K13 ["Packages"]
  GETTABLEKS R8 R9 K16 ["React"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R10 R4 K13 ["Packages"]
  GETTABLEKS R9 R10 K17 ["ReactRoblox"]
  CALL R8 1 1
  GETTABLEKS R9 R6 K18 ["UI"]
  GETTABLEKS R10 R9 K19 ["DockWidget"]
  GETTABLEKS R11 R9 K20 ["PluginButton"]
  GETTABLEKS R12 R9 K21 ["PluginToolbar"]
  GETTABLEKS R13 R6 K22 ["ContextServices"]
  GETTABLEKS R14 R13 K23 ["Plugin"]
  GETTABLEKS R15 R13 K24 ["Mouse"]
  GETIMPORT R16 K12 [require]
  GETTABLEKS R19 R4 K25 ["Src"]
  GETTABLEKS R18 R19 K26 ["Resources"]
  GETTABLEKS R17 R18 K27 ["MakeTheme"]
  CALL R16 1 1
  GETIMPORT R17 K12 [require]
  GETTABLEKS R20 R4 K25 ["Src"]
  GETTABLEKS R19 R20 K28 ["Util"]
  GETTABLEKS R18 R19 K29 ["DEPRECATED_PlacesServiceWrapper"]
  CALL R17 1 1
  GETIMPORT R18 K12 [require]
  GETTABLEKS R21 R4 K25 ["Src"]
  GETTABLEKS R20 R21 K28 ["Util"]
  GETTABLEKS R19 R20 K30 ["SelectionWrapper"]
  CALL R18 1 1
  GETIMPORT R19 K12 [require]
  GETTABLEKS R22 R4 K25 ["Src"]
  GETTABLEKS R21 R22 K28 ["Util"]
  GETTABLEKS R20 R21 K31 ["DEPRECATED_UGCValidationContext"]
  CALL R19 1 1
  GETIMPORT R20 K12 [require]
  GETTABLEKS R23 R4 K25 ["Src"]
  GETTABLEKS R22 R23 K26 ["Resources"]
  GETTABLEKS R21 R22 K32 ["createAnalyticsHandlers"]
  CALL R20 1 1
  GETTABLEKS R24 R4 K25 ["Src"]
  GETTABLEKS R23 R24 K26 ["Resources"]
  GETTABLEKS R22 R23 K33 ["Localization"]
  GETTABLEKS R21 R22 K34 ["SourceStrings"]
  GETTABLEKS R25 R4 K25 ["Src"]
  GETTABLEKS R24 R25 K26 ["Resources"]
  GETTABLEKS R23 R24 K33 ["Localization"]
  GETTABLEKS R22 R23 K35 ["LocalizedStrings"]
  GETTABLEKS R24 R4 K25 ["Src"]
  GETTABLEKS R23 R24 K36 ["Components"]
  GETIMPORT R24 K12 [require]
  GETTABLEKS R25 R23 K37 ["App"]
  CALL R24 1 1
  GETIMPORT R25 K12 [require]
  GETTABLEKS R26 R23 K38 ["TestInExperienceManager"]
  CALL R25 1 1
  GETIMPORT R26 K12 [require]
  GETTABLEKS R29 R4 K25 ["Src"]
  GETTABLEKS R28 R29 K39 ["Flags"]
  GETTABLEKS R27 R28 K40 ["getFFlagAvatarPreviewerTestingScreen"]
  CALL R26 1 1
  GETIMPORT R27 K12 [require]
  GETTABLEKS R30 R4 K25 ["Src"]
  GETTABLEKS R29 R30 K39 ["Flags"]
  GETTABLEKS R28 R29 K41 ["getFFlagAvatarPreviewerUGCWarningsCache"]
  CALL R27 1 1
  GETIMPORT R28 K12 [require]
  GETTABLEKS R31 R4 K25 ["Src"]
  GETTABLEKS R30 R31 K39 ["Flags"]
  GETTABLEKS R29 R30 K42 ["getFFlagImporterOpensAvatarPreviewerBetaCheck"]
  CALL R28 1 1
  GETTABLEKS R29 R7 K43 ["PureComponent"]
  LOADK R31 K44 ["MainPlugin"]
  NAMECALL R29 R29 K45 ["extend"]
  CALL R29 2 1
  DUPCLOSURE R30 K46 [PROTO_6]
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R28
  CAPTURE VAL R1
  CAPTURE VAL R20
  SETTABLEKS R30 R29 K47 ["init"]
  DUPCLOSURE R30 K48 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R11
  SETTABLEKS R30 R29 K49 ["renderButtons"]
  MOVE R30 R28
  CALL R30 0 1
  JUMPIFNOT R30 [+3]
  DUPCLOSURE R30 K50 [PROTO_8]
  SETTABLEKS R30 R29 K51 ["willUnmount"]
  DUPCLOSURE R30 K52 [PROTO_10]
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R26
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R3
  CAPTURE VAL R27
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R25
  CAPTURE VAL R10
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R24
  SETTABLEKS R30 R29 K53 ["render"]
  RETURN R29 1
