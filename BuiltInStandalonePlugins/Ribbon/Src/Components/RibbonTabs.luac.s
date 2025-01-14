PROTO_0:
  GETUPVAL R2 0
  JUMPIFNOTEQKS R2 K0 ["Custom"] [+54]
  GETUPVAL R2 1
  NEWTABLE R3 0 1
  DUPTABLE R4 K5 [{"Id", "Type", "Text", "Tooltip"}]
  LOADK R5 K0 ["Custom"]
  SETTABLEKS R5 R4 K1 ["Id"]
  LOADK R5 K3 ["Text"]
  SETTABLEKS R5 R4 K2 ["Type"]
  GETUPVAL R5 2
  LOADK R7 K6 ["Plugin"]
  LOADK R8 K7 ["Tab_Custom"]
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Text"]
  GETUPVAL R5 2
  LOADK R7 K6 ["Plugin"]
  LOADK R8 K9 ["Tab_Custom_Tooltip"]
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Tooltip"]
  SETLIST R3 R4 1 [1]
  GETUPVAL R4 3
  DUPTABLE R5 K13 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["SubjectAnchorPoint"]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["TargetAnchorPoint"]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Offset"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K17 ["OnSelectTab"]
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R3 3
  CALL R3 0 1
  NEWTABLE R4 0 0
  GETUPVAL R5 4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K1 ["child"]
  GETTABLEKS R11 R0 K2 ["WidgetUri"]
  MOVE R12 R9
  CALL R10 2 1
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 7
  DUPTABLE R13 K10 [{"Uri", "LayoutOrder", "Scale", "Selected", "Text", "OnTabSelected"}]
  SETTABLEKS R10 R13 K4 ["Uri"]
  MOVE R14 R3
  CALL R14 0 1
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  GETTABLEKS R14 R0 K6 ["Scale"]
  SETTABLEKS R14 R13 K6 ["Scale"]
  GETTABLEKS R15 R0 K11 ["ActiveTab"]
  JUMPIFEQ R15 R9 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  SETTABLEKS R14 R13 K7 ["Selected"]
  JUMPIFNOTEQKS R9 K12 ["Custom"] [+3]
  LOADK R14 K13 ["+"]
  JUMP [+10]
  LOADK R16 K14 ["Plugin"]
  LOADK R18 K15 ["Tab_%*"]
  MOVE R20 R9
  NAMECALL R18 R18 K16 ["format"]
  CALL R18 2 1
  MOVE R17 R18
  NAMECALL R14 R2 K17 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K8 ["Text"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K9 ["OnTabSelected"]
  CALL R11 2 1
  SETTABLE R11 R4 R9
  FORGLOOP R5 2 [-57]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K18 ["ScrollingFrame"]
  NEWTABLE R7 2 0
  GETTABLEKS R8 R0 K5 ["LayoutOrder"]
  SETTABLEKS R8 R7 K5 ["LayoutOrder"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K19 ["Tag"]
  GETUPVAL R9 8
  LOADK R10 K20 ["Component-RibbonTabs Role-Surface X-RowSpace100"]
  GETTABLEKS R11 R0 K6 ["Scale"]
  CALL R9 2 1
  SETTABLE R9 R7 R8
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["counter"]
  GETTABLEKS R6 R3 K13 ["Styling"]
  GETTABLEKS R5 R6 K14 ["joinTags"]
  GETTABLEKS R6 R3 K15 ["ContextServices"]
  GETTABLEKS R7 R6 K16 ["Localization"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K17 ["Hooks"]
  GETTABLEKS R9 R10 K18 ["useMenu"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K8 ["Src"]
  GETTABLEKS R11 R12 K11 ["Util"]
  GETTABLEKS R10 R11 K19 ["StudioUri"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K20 ["Components"]
  GETTABLEKS R11 R12 K21 ["ControlsView"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K8 ["Src"]
  GETTABLEKS R13 R14 K20 ["Components"]
  GETTABLEKS R12 R13 K22 ["Tab"]
  CALL R11 1 1
  NEWTABLE R12 0 7
  LOADK R13 K23 ["Home"]
  LOADK R14 K24 ["Model"]
  LOADK R15 K25 ["Avatar"]
  LOADK R16 K26 ["UI"]
  LOADK R17 K27 ["Script"]
  LOADK R18 K28 ["Plugins"]
  LOADK R19 K29 ["Custom"]
  SETLIST R12 R13 7 [1]
  DUPCLOSURE R13 K30 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R5
  RETURN R13 1
