PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetCollaboratorsList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetCollaboratorsList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetCollaboratorsList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetCollaboratorsList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 3
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetCollaboratorsList"]
  CALL R0 1 1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["CollaboratorInstanceCreatedSignal"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["CollaboratorInstanceDestroyedSignal"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K2 ["Connect"]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["CollaboratorStatusUpdatedSignal"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K2 ["Connect"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["CollaboratorIdleUpdate"]
  NEWCLOSURE R6 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R4 R4 K2 ["Connect"]
  CALL R4 2 1
  NEWCLOSURE R5 P4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["UserId"]
  GETUPVAL R3 2
  JUMPIFNOTEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R3 1
  NOT R2 R3
  NAMECALL R0 R0 K0 ["ToggleSelectionHighlights"]
  CALL R0 2 0
  GETUPVAL R0 2
  LOADK R2 K1 ["highlightsToggled"]
  GETUPVAL R4 1
  NOT R3 R4
  NAMECALL R0 R0 K2 ["report"]
  CALL R0 3 0
  GETUPVAL R0 3
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  LOADB R2 1
  NAMECALL R0 R0 K0 ["ToggleTeamCreate"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R0 2
  LOADB R2 0
  LOADB R3 0
  GETIMPORT R4 K4 [Enum.StudioCloseMode.None]
  NAMECALL R0 R0 K5 ["ShowSaveOrPublishPlaceToRoblox"]
  CALL R0 4 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["use"]
  CALL R0 0 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETIMPORT R3 K2 [game]
  LOADK R5 K3 ["StudioPublishService"]
  NAMECALL R3 R3 K4 ["GetService"]
  CALL R3 2 1
  GETUPVAL R4 3
  NAMECALL R4 R4 K0 ["use"]
  CALL R4 1 1
  NAMECALL R4 R4 K5 ["get"]
  CALL R4 1 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K6 ["useState"]
  NEWTABLE R6 0 0
  CALL R5 1 2
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K6 ["useState"]
  LOADB R8 1
  CALL R7 1 2
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K6 ["useState"]
  LOADB R10 0
  CALL R9 1 2
  GETIMPORT R13 K2 [game]
  GETTABLEKS R12 R13 K7 ["GameId"]
  LOADN R13 0
  JUMPIFLT R13 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K8 ["useEffect"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R4
  CAPTURE VAL R6
  NEWTABLE R14 0 0
  CALL R12 2 0
  LENGTH R12 R5
  JUMPIFEQKN R12 K9 [0] [+302]
  DUPTABLE R12 K11 [{"Layout"}]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["createElement"]
  LOADK R14 K13 ["UIListLayout"]
  DUPTABLE R15 K15 [{"FillDirection"}]
  GETIMPORT R16 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K14 ["FillDirection"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K10 ["Layout"]
  MOVE R13 R5
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  GETTABLEKS R19 R17 K19 ["UserId"]
  GETUPVAL R20 5
  JUMPIFNOTEQ R19 R20 [+3]
  LOADN R18 255
  JUMP [+1]
  MOVE R18 R16
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K12 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K28 [{"Id", "Username", "Color", "IsIdle", "Status", "CurDocGUID", "CanJumpBack", "OnJump"}]
  GETTABLEKS R22 R17 K19 ["UserId"]
  SETTABLEKS R22 R21 K20 ["Id"]
  GETTABLEKS R22 R17 K21 ["Username"]
  SETTABLEKS R22 R21 K21 ["Username"]
  GETIMPORT R23 K2 [game]
  LOADK R25 K29 ["COLLAB5718AccessibleColors"]
  NAMECALL R23 R23 K30 ["GetFastFlag"]
  CALL R23 2 1
  JUMPIF R23 [+8]
  GETIMPORT R23 K33 [BrickColor.new]
  GETTABLEKS R24 R17 K34 ["CollaboratorColor"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K22 ["Color"]
  JUMP [+2]
  GETTABLEKS R22 R17 K35 ["CollaboratorColor3"]
  SETTABLEKS R22 R21 K22 ["Color"]
  GETTABLEKS R22 R17 K23 ["IsIdle"]
  SETTABLEKS R22 R21 K23 ["IsIdle"]
  GETTABLEKS R23 R17 K24 ["Status"]
  FASTCALL1 TOSTRING R23 [+2]
  GETIMPORT R22 K37 [tostring]
  CALL R22 1 1
  SETTABLEKS R22 R21 K24 ["Status"]
  GETTABLEKS R22 R17 K25 ["CurDocGUID"]
  SETTABLEKS R22 R21 K25 ["CurDocGUID"]
  LOADB R22 0
  GETTABLEKS R23 R17 K19 ["UserId"]
  GETUPVAL R24 5
  JUMPIFNOTEQ R23 R24 [+2]
  MOVE R22 R9
  SETTABLEKS R22 R21 K26 ["CanJumpBack"]
  NEWCLOSURE R22 P1
  CAPTURE VAL R10
  CAPTURE VAL R17
  CAPTURE UPVAL U5
  SETTABLEKS R22 R21 K27 ["OnJump"]
  CALL R19 2 1
  SETTABLE R19 R12 R18
  FORGLOOP R13 2 [-74]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K39 [{"Size"}]
  GETIMPORT R16 K42 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["Size"]
  DUPTABLE R16 K46 [{"Body", "HighlightToggle", "Footer"}]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 8
  DUPTABLE R19 K48 [{"Padding", "Size"}]
  LOADN R20 8
  SETTABLEKS R20 R19 K47 ["Padding"]
  GETIMPORT R20 K49 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  GETTABLEKS R27 R1 K50 ["footer"]
  GETTABLEKS R26 R27 K51 ["height"]
  GETTABLEKS R28 R1 K52 ["highlightToggle"]
  GETTABLEKS R27 R28 K51 ["height"]
  ADD R25 R26 R27
  MINUS R24 R25
  CALL R20 4 1
  SETTABLEKS R20 R19 K38 ["Size"]
  MOVE R20 R12
  CALL R17 3 1
  SETTABLEKS R17 R16 K43 ["Body"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K53 ["TextButton"]
  NEWTABLE R19 16 0
  LOADK R22 K54 ["Settings"]
  LOADK R23 K55 ["ShowSelections"]
  NAMECALL R20 R0 K56 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K57 ["Text"]
  GETIMPORT R20 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K58 ["TextXAlignment"]
  GETTABLEKS R21 R1 K50 ["footer"]
  GETTABLEKS R20 R21 K61 ["iconColor"]
  SETTABLEKS R20 R19 K62 ["TextColor3"]
  LOADN R20 16
  SETTABLEKS R20 R19 K63 ["TextSize"]
  GETIMPORT R20 K66 [Font.fromEnum]
  GETIMPORT R21 K68 [Enum.Font.SourceSans]
  CALL R20 1 1
  SETTABLEKS R20 R19 K69 ["FontFace"]
  LOADB R20 0
  SETTABLEKS R20 R19 K70 ["AutoButtonColor"]
  GETTABLEKS R21 R1 K52 ["highlightToggle"]
  GETTABLEKS R20 R21 K71 ["background"]
  SETTABLEKS R20 R19 K72 ["BackgroundColor3"]
  GETTABLEKS R21 R1 K52 ["highlightToggle"]
  GETTABLEKS R20 R21 K73 ["border"]
  SETTABLEKS R20 R19 K74 ["BorderColor3"]
  GETIMPORT R20 K49 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETTABLEKS R25 R1 K52 ["highlightToggle"]
  GETTABLEKS R24 R25 K51 ["height"]
  CALL R20 4 1
  SETTABLEKS R20 R19 K38 ["Size"]
  GETIMPORT R20 K76 [Vector2.new]
  LOADN R21 0
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K77 ["AnchorPoint"]
  GETIMPORT R20 K49 [UDim2.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 1
  GETTABLEKS R27 R1 K50 ["footer"]
  GETTABLEKS R26 R27 K51 ["height"]
  MINUS R25 R26
  SUBK R24 R25 K78 [1]
  CALL R20 4 1
  SETTABLEKS R20 R19 K79 ["Position"]
  LOADN R20 2
  SETTABLEKS R20 R19 K80 ["ZIndex"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K81 ["Event"]
  GETTABLEKS R20 R21 K82 ["Activated"]
  NEWCLOSURE R21 P2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R8
  SETTABLE R21 R19 R20
  DUPTABLE R20 K84 [{"Padding", "Image"}]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K12 ["createElement"]
  LOADK R22 K85 ["UIPadding"]
  DUPTABLE R23 K87 [{"PaddingLeft"}]
  GETIMPORT R24 K89 [UDim.new]
  LOADN R25 0
  LOADN R26 26
  CALL R24 2 1
  SETTABLEKS R24 R23 K86 ["PaddingLeft"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K47 ["Padding"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K12 ["createElement"]
  GETUPVAL R22 9
  DUPTABLE R23 K90 [{"Image", "Size", "Position", "AnchorPoint"}]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R25 R1 K50 ["footer"]
  GETTABLEKS R24 R25 K91 ["checkedIcon"]
  JUMPIF R24 [+4]
  GETTABLEKS R25 R1 K50 ["footer"]
  GETTABLEKS R24 R25 K92 ["uncheckedIcon"]
  SETTABLEKS R24 R23 K83 ["Image"]
  GETIMPORT R24 K94 [UDim2.fromOffset]
  LOADN R25 16
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K38 ["Size"]
  GETIMPORT R24 K49 [UDim2.new]
  LOADN R25 0
  LOADN R26 250
  LOADK R27 K95 [0.5]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K79 ["Position"]
  GETIMPORT R24 K76 [Vector2.new]
  LOADN R25 1
  LOADK R26 K95 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K77 ["AnchorPoint"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K83 ["Image"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K44 ["HighlightToggle"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 10
  CALL R17 1 1
  SETTABLEKS R17 R16 K45 ["Footer"]
  CALL R13 3 -1
  RETURN R13 -1
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K97 [{"Size", "Style"}]
  GETIMPORT R15 K42 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K38 ["Size"]
  LOADK R15 K98 ["Box"]
  SETTABLEKS R15 R14 K96 ["Style"]
  DUPTABLE R15 K101 [{"TeamCreateText", "Button"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K12 ["createElement"]
  GETUPVAL R17 11
  DUPTABLE R18 K103 [{"Text", "Size", "Position", "AnchorPoint", "TextWrapped", "Style", "TextSize"}]
  JUMPIFNOT R11 [+6]
  LOADK R21 K54 ["Settings"]
  LOADK R22 K104 ["EnableTeamCreateText"]
  NAMECALL R19 R0 K56 ["getText"]
  CALL R19 3 1
  JUMPIF R19 [+5]
  LOADK R21 K54 ["Settings"]
  LOADK R22 K105 ["SaveToRobloxText"]
  NAMECALL R19 R0 K56 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K57 ["Text"]
  GETIMPORT R19 K49 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 48
  CALL R19 4 1
  SETTABLEKS R19 R18 K38 ["Size"]
  GETIMPORT R19 K49 [UDim2.new]
  LOADK R20 K95 [0.5]
  LOADN R21 0
  LOADK R22 K95 [0.5]
  LOADN R23 248
  CALL R19 4 1
  SETTABLEKS R19 R18 K79 ["Position"]
  GETIMPORT R19 K76 [Vector2.new]
  LOADK R20 K95 [0.5]
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K77 ["AnchorPoint"]
  LOADB R19 1
  SETTABLEKS R19 R18 K102 ["TextWrapped"]
  LOADK R19 K43 ["Body"]
  SETTABLEKS R19 R18 K96 ["Style"]
  LOADN R19 16
  SETTABLEKS R19 R18 K63 ["TextSize"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K99 ["TeamCreateText"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K12 ["createElement"]
  GETUPVAL R17 12
  DUPTABLE R18 K107 [{"Style", "Text", "OnClick", "Position", "AnchorPoint", "Size"}]
  LOADK R19 K108 ["RoundPrimary"]
  SETTABLEKS R19 R18 K96 ["Style"]
  JUMPIFNOT R11 [+6]
  LOADK R21 K54 ["Settings"]
  LOADK R22 K109 ["EnableTeamCreate"]
  NAMECALL R19 R0 K56 ["getText"]
  CALL R19 3 1
  JUMPIF R19 [+5]
  LOADK R21 K54 ["Settings"]
  LOADK R22 K110 ["SaveToRoblox"]
  NAMECALL R19 R0 K56 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K57 ["Text"]
  NEWCLOSURE R19 P3
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R19 R18 K106 ["OnClick"]
  GETIMPORT R19 K42 [UDim2.fromScale]
  LOADK R20 K95 [0.5]
  LOADK R21 K95 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K79 ["Position"]
  GETIMPORT R19 K76 [Vector2.new]
  LOADK R20 K95 [0.5]
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K77 ["AnchorPoint"]
  GETIMPORT R19 K94 [UDim2.fromOffset]
  LOADN R20 142
  LOADN R21 40
  CALL R19 2 1
  SETTABLEKS R19 R18 K38 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K100 ["Button"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["Localization"]
  GETTABLEKS R5 R3 K10 ["Analytics"]
  GETTABLEKS R7 R2 K11 ["Style"]
  GETTABLEKS R6 R7 K12 ["Stylizer"]
  GETTABLEKS R7 R2 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["Pane"]
  GETTABLEKS R9 R7 K15 ["TextLabel"]
  GETTABLEKS R10 R7 K16 ["Button"]
  GETTABLEKS R11 R7 K17 ["Image"]
  GETTABLEKS R12 R7 K18 ["ScrollingFrame"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K19 ["Src"]
  GETTABLEKS R15 R16 K20 ["Components"]
  GETTABLEKS R14 R15 K21 ["CollaboratorItem"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K19 ["Src"]
  GETTABLEKS R16 R17 K20 ["Components"]
  GETTABLEKS R15 R16 K22 ["CollaboratorListFooter"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K19 ["Src"]
  GETTABLEKS R17 R18 K8 ["ContextServices"]
  GETTABLEKS R16 R17 K23 ["CollaboratorsServiceContext"]
  CALL R15 1 1
  GETIMPORT R16 K25 [game]
  LOADK R18 K26 ["StudioService"]
  NAMECALL R16 R16 K27 ["GetService"]
  CALL R16 2 1
  NAMECALL R17 R16 K28 ["GetUserId"]
  CALL R17 1 1
  DUPCLOSURE R18 K29 [PROTO_9]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R10
  RETURN R18 1
