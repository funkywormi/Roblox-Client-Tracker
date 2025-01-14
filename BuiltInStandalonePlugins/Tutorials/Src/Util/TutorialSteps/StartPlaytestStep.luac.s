PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["complete"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["startPlaying"]
  GETTABLEKS R1 R0 K0 ["tutorial"]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+41]
  DUPTABLE R3 K6 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R4 K12 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R5 K13 ["Standalone"]
  SETTABLEKS R5 R4 K7 ["DataModel"]
  LOADK R5 K13 ["Standalone"]
  SETTABLEKS R5 R4 K8 ["PluginType"]
  LOADK R5 K14 ["Ribbon"]
  SETTABLEKS R5 R4 K9 ["PluginId"]
  LOADK R5 K15 ["Widgets"]
  SETTABLEKS R5 R4 K10 ["Category"]
  LOADK R5 K16 ["LeftMezzanine/PlayControls/1"]
  SETTABLEKS R5 R4 K11 ["ItemId"]
  SETTABLEKS R4 R3 K2 ["TargetWidgetUri"]
  GETIMPORT R4 K19 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["SubjectAnchorPoint"]
  GETIMPORT R4 K19 [Vector2.new]
  LOADN R5 0
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["TargetAnchorPoint"]
  GETIMPORT R4 K19 [Vector2.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Offset"]
  JUMP [+23]
  DUPTABLE R3 K22 [{"target", "offset"}]
  GETUPVAL R5 1
  JUMPIFNOT R5 [+2]
  LOADK R4 K23 ["playGameActionGroupRibbonControl"]
  JUMP [+1]
  LOADK R4 K24 ["simulationToggleAccuratePlaySoloAction"]
  SETTABLEKS R4 R3 K20 ["target"]
  GETUPVAL R5 1
  JUMPIFNOT R5 [+6]
  GETIMPORT R4 K19 [Vector2.new]
  LOADN R5 0
  LOADN R6 5
  CALL R4 2 1
  JUMP [+5]
  GETIMPORT R4 K19 [Vector2.new]
  LOADN R5 221
  LOADN R6 50
  CALL R4 2 1
  SETTABLEKS R4 R3 K21 ["offset"]
  NAMECALL R1 R1 K25 ["attachTo"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["startPlaying"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R2 K3 ["Tutorials"]
  NAMECALL R0 R0 K4 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K6 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Flags"]
  GETTABLEKS R2 R3 K9 ["getFFlagTutorialsUseLuaRibbon"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K11 [game]
  LOADK R4 K12 ["LabelRibbonControlGroups"]
  NAMECALL R2 R2 K13 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K6 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K14 ["TutorialStep"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K15 ["extend"]
  LOADK R5 K16 ["StartPlaytest"]
  CALL R4 1 1
  DUPCLOSURE R5 K17 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K18 ["bind"]
  DUPCLOSURE R5 K19 [PROTO_2]
  SETTABLEKS R5 R4 K20 ["unbind"]
  RETURN R4 1
