PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_stamp"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_stamp"]
  NAMECALL R0 R0 K1 ["commit"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_stamp"]
  GETUPVAL R0 0
  GETIMPORT R2 K5 [Enum.FinishRecordingOperation.Append]
  NAMECALL R0 R0 K6 ["finishRecording"]
  CALL R0 2 0
  GETUPVAL R0 0
  NEWTABLE R2 1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["BuildSettings"]
  NEWTABLE R4 1 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["TerrainType"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K9 ["None"]
  SETTABLE R6 R4 R5
  SETTABLE R4 R2 R3
  NAMECALL R0 R0 K10 ["saveForm"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K11 ["OnGizmoChanged"]
  NAMECALL R0 R0 K12 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["None"]
  SETTABLEKS R3 R0 K2 ["_terrainType"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R0 K3 ["_tools"]
  GETUPVAL R3 2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  NAMECALL R8 R7 K4 ["new"]
  CALL R8 1 1
  MOVE R11 R1
  MOVE R12 R2
  NAMECALL R9 R8 K0 ["init"]
  CALL R9 3 0
  GETTABLEKS R9 R0 K3 ["_tools"]
  SETTABLE R8 R9 R6
  GETTABLEKS R10 R0 K3 ["_tools"]
  GETTABLE R9 R10 R6
  NEWTABLE R10 1 0
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K5 ["BuildSettings"]
  NEWTABLE R12 1 0
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K6 ["Confirm"]
  DUPTABLE R14 K10 [{"Hidden", "Label", "Schema"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K7 ["Hidden"]
  LOADK R15 K11 [""]
  SETTABLEKS R15 R14 K8 ["Label"]
  DUPTABLE R15 K13 [{"OnClick"}]
  NEWCLOSURE R16 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  SETTABLEKS R16 R15 K12 ["OnClick"]
  SETTABLEKS R15 R14 K9 ["Schema"]
  SETTABLE R14 R12 R13
  SETTABLE R12 R10 R11
  SETTABLEKS R10 R9 K14 ["_overrides"]
  FORGLOOP R3 2 [-46]
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R1 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["form"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["TerrainType"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+1]
  RETURN R1 1
  NAMECALL R3 R0 K2 ["destroyStamp"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K3 ["_onFormChangedForwarder"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K3 ["_onFormChangedForwarder"]
  NAMECALL R3 R3 K4 ["Disconnect"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K5 ["_onGizmoChangedForwarder"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K5 ["_onGizmoChangedForwarder"]
  NAMECALL R3 R3 K4 ["Disconnect"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K6 ["_onUndoConnection"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K6 ["_onUndoConnection"]
  NAMECALL R3 R3 K4 ["Disconnect"]
  CALL R3 1 0
  GETTABLEKS R5 R0 K7 ["_tools"]
  GETTABLE R4 R5 R2
  GETTABLEKS R3 R4 K8 ["OnFormChanged"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K9 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K3 ["_onFormChangedForwarder"]
  GETTABLEKS R5 R0 K7 ["_tools"]
  GETTABLE R4 R5 R2
  GETTABLEKS R3 R4 K10 ["OnGizmoChanged"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K9 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["_onGizmoChangedForwarder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["PlacementMode"]
  LOADB R5 1
  SETTABLE R5 R3 R4
  SETTABLEKS R2 R0 K12 ["_terrainType"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["Material"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+1]
  RETURN R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["new"]
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R1 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["MaterialLUT"]
  SETTABLE R3 R4 R5
  RETURN R1 1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_tools"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["_terrainType"]
  GETTABLE R0 R1 R2
  NEWTABLE R2 1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["BuildSettings"]
  NEWTABLE R4 1 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["PlacementMode"]
  LOADB R6 1
  SETTABLE R6 R4 R5
  SETTABLE R4 R2 R3
  NAMECALL R0 R0 K4 ["saveForm"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_stamp"]
  GETUPVAL R0 0
  GETIMPORT R2 K9 [Enum.FinishRecordingOperation.Cancel]
  NAMECALL R0 R0 K10 ["finishRecording"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["PlacementMode"]
  GETTABLE R2 R3 R4
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R1 1
  GETTABLEKS R3 R0 K2 ["_onUndoConnection"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K2 ["_onUndoConnection"]
  NAMECALL R3 R3 K3 ["Disconnect"]
  CALL R3 1 0
  GETTABLEKS R5 R0 K4 ["_services"]
  GETTABLEKS R4 R5 K5 ["ChangeHistoryService"]
  GETTABLEKS R3 R4 K6 ["OnUndo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R3 R3 K7 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K2 ["_onUndoConnection"]
  GETTABLEKS R4 R0 K8 ["_tools"]
  GETTABLEKS R5 R0 K9 ["_terrainType"]
  GETTABLE R3 R4 R5
  NAMECALL R3 R3 K10 ["getPayload"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["Transform"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K12 ["Place"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["BuildSettings"]
  GETTABLE R7 R3 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K11 ["Transform"]
  GETTABLE R6 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["BuildSettings"]
  GETTABLE R8 R3 R9
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K13 ["Size"]
  GETTABLE R7 R8 R9
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["BuildSettings"]
  GETTABLE R9 R3 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K14 ["NoiseStrength"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R0 K9 ["_terrainType"]
  CALL R5 4 1
  SETTABLE R5 R1 R4
  RETURN R1 1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_recording"]
  JUMPIFNOT R2 [+15]
  GETTABLEKS R3 R0 K1 ["_services"]
  GETTABLEKS R2 R3 K2 ["ChangeHistoryService"]
  GETTABLEKS R4 R0 K0 ["_recording"]
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["FinishRecording"]
  CALL R2 3 0
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["_recording"]
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  MOVE R5 R2
  NAMECALL R3 R0 K0 ["setTerrainType"]
  CALL R3 2 1
  MOVE R2 R3
  MOVE R5 R2
  NAMECALL R3 R0 K1 ["setMaterial"]
  CALL R3 2 1
  MOVE R2 R3
  GETTABLEKS R4 R0 K2 ["_tools"]
  GETTABLEKS R5 R0 K3 ["_terrainType"]
  GETTABLE R3 R4 R5
  MOVE R5 R2
  NAMECALL R3 R3 K4 ["saveForm"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K5 ["_stamp"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R3 R0 K5 ["_stamp"]
  GETTABLEKS R6 R0 K2 ["_tools"]
  GETTABLEKS R7 R0 K3 ["_terrainType"]
  GETTABLE R5 R6 R7
  NAMECALL R5 R5 K6 ["getPayload"]
  CALL R5 1 1
  MOVE R6 R2
  NAMECALL R3 R3 K7 ["update"]
  CALL R3 3 0
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_terrainType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["None"]
  JUMPIFNOTEQ R2 R3 [+4]
  NEWTABLE R2 0 0
  RETURN R2 1
  GETTABLEKS R3 R0 K3 ["_tools"]
  GETTABLEKS R4 R0 K1 ["_terrainType"]
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["gizmos"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K5 ["Id"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["Placement"]
  JUMPIFNOTEQ R9 R10 [+20]
  GETTABLEKS R11 R8 K7 ["Value"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["BuildSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["PlacementMode"]
  GETTABLE R9 R10 R11
  JUMPIFNOT R9 [+8]
  FASTCALL2 TABLE_INSERT R3 R8 [+5]
  MOVE R10 R3
  MOVE R11 R8
  GETIMPORT R9 K12 [table.insert]
  CALL R9 2 0
  JUMP [+25]
  GETTABLEKS R9 R8 K5 ["Id"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K13 ["Region"]
  JUMPIFNOTEQ R9 R10 [+19]
  GETTABLEKS R11 R8 K7 ["Value"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["BuildSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["PlacementMode"]
  GETTABLE R9 R10 R11
  JUMPIF R9 [+7]
  FASTCALL2 TABLE_INSERT R3 R8 [+5]
  MOVE R10 R3
  MOVE R11 R8
  GETIMPORT R9 K12 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-52]
  RETURN R3 1

PROTO_12:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  MOVE R5 R2
  NAMECALL R3 R0 K0 ["setPlacementMode"]
  CALL R3 2 1
  MOVE R2 R3
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETTABLEKS R5 R0 K2 ["_terrainType"]
  GETTABLE R3 R4 R5
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["saveGizmos"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K4 ["_stamp"]
  JUMPIFNOT R3 [+15]
  GETTABLEKS R3 R0 K4 ["_stamp"]
  GETTABLEKS R6 R0 K1 ["_tools"]
  GETTABLEKS R7 R0 K2 ["_terrainType"]
  GETTABLE R5 R6 R7
  NAMECALL R5 R5 K5 ["getPayload"]
  CALL R5 1 1
  MOVE R6 R2
  NAMECALL R3 R3 K6 ["update"]
  CALL R3 3 0
  RETURN R0 0
  NAMECALL R3 R0 K7 ["createStamp"]
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  MOVE R4 R1
  NAMECALL R2 R0 K1 ["saveForm"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K2 ["_tools"]
  GETTABLEKS R4 R0 K3 ["_terrainType"]
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["activate"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_tools"]
  GETTABLEKS R3 R0 K1 ["_terrainType"]
  GETTABLE R1 R2 R3
  NAMECALL R1 R1 K2 ["deactivate"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_onFormChangedForwarder"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K3 ["_onFormChangedForwarder"]
  NAMECALL R1 R1 K4 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K5 ["_onGizmoChangedForwarder"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K5 ["_onGizmoChangedForwarder"]
  NAMECALL R1 R1 K4 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K6 ["_mouseDownConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K6 ["_mouseDownConnection"]
  NAMECALL R1 R1 K4 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K7 ["_onUndoConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K7 ["_onUndoConnection"]
  NAMECALL R1 R1 K4 ["Disconnect"]
  CALL R1 1 0
  GETIMPORT R3 K11 [Enum.FinishRecordingOperation.Cancel]
  NAMECALL R1 R0 K12 ["finishRecording"]
  CALL R1 2 0
  NAMECALL R1 R0 K13 ["destroyStamp"]
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_stamp"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_stamp"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_stamp"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R2 R0 K0 ["_tools"]
  GETTABLEKS R3 R0 K1 ["_terrainType"]
  GETTABLE R1 R2 R3
  NAMECALL R1 R1 K2 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_terrainType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["None"]
  JUMPIFEQ R2 R3 [+10]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["PlacementMode"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  NAMECALL R2 R0 K6 ["destroyStamp"]
  CALL R2 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["MaterialLUT"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+14]
  MOVE R4 R1
  NAMECALL R2 R0 K8 ["setMaterial"]
  CALL R2 2 1
  MOVE R1 R2
  GETTABLEKS R3 R0 K0 ["_tools"]
  GETTABLEKS R4 R0 K1 ["_terrainType"]
  GETTABLE R2 R3 R4
  MOVE R4 R1
  NAMECALL R2 R2 K9 ["setPayload"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K10 ["_services"]
  GETTABLEKS R2 R3 K11 ["ChangeHistoryService"]
  LOADK R4 K12 ["TerrainPlacement"]
  LOADK R5 K13 ["Placed Terrain"]
  NAMECALL R2 R2 K14 ["TryBeginRecording"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K15 ["_recording"]
  GETUPVAL R3 3
  GETTABLEKS R4 R0 K1 ["_terrainType"]
  GETTABLE R2 R3 R4
  GETTABLEKS R4 R0 K1 ["_terrainType"]
  NAMECALL R2 R2 K16 ["new"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K17 ["_stamp"]
  GETTABLEKS R2 R0 K17 ["_stamp"]
  MOVE R4 R1
  GETTABLEKS R5 R0 K10 ["_services"]
  NAMECALL R2 R2 K18 ["init"]
  CALL R2 3 0
  GETTABLEKS R2 R0 K17 ["_stamp"]
  MOVE R4 R1
  NAMECALL R2 R2 K19 ["update"]
  CALL R2 2 0
  GETIMPORT R4 K23 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R2 R0 K24 ["finishRecording"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K10 ["_services"]
  GETTABLEKS R2 R3 K11 ["ChangeHistoryService"]
  LOADK R4 K12 ["TerrainPlacement"]
  LOADK R5 K25 ["Adjust"]
  NAMECALL R2 R2 K14 ["TryBeginRecording"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K15 ["_recording"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Tools"]
  GETTABLEKS R3 R4 K10 ["BaseTool"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["deepCopy"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K13 ["Generation"]
  GETTABLEKS R5 R6 K14 ["MaterialLUT"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K15 ["TerrainPlacementHelper"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K16 ["Types"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K17 ["BuildSettings"]
  GETTABLEKS R8 R6 K18 ["Category"]
  GETTABLEKS R9 R6 K19 ["Gizmo"]
  GETTABLEKS R10 R6 K20 ["Tab"]
  GETTABLEKS R11 R6 K21 ["TerrainType"]
  GETTABLEKS R12 R6 K22 ["Tool"]
  NEWTABLE R13 16 0
  GETTABLEKS R14 R11 K23 ["Arctic"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K23 ["Arctic"]
  CALL R15 1 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R11 K24 ["Crater"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K24 ["Crater"]
  CALL R15 1 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R11 K25 ["Desert"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K25 ["Desert"]
  CALL R15 1 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R11 K26 ["Lake"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K26 ["Lake"]
  CALL R15 1 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R11 K27 ["Mesa"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K27 ["Mesa"]
  CALL R15 1 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R11 K28 ["Mountain"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K28 ["Mountain"]
  CALL R15 1 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R11 K29 ["None"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K29 ["None"]
  CALL R15 1 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R11 K30 ["Plain"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K30 ["Plain"]
  CALL R15 1 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R11 K31 ["Volcano"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K31 ["Volcano"]
  CALL R15 1 1
  SETTABLE R15 R13 R14
  NEWTABLE R14 8 0
  GETTABLEKS R15 R11 K23 ["Arctic"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K32 ["Stamps"]
  GETTABLEKS R17 R18 K33 ["ArcticStamp"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R11 K24 ["Crater"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K32 ["Stamps"]
  GETTABLEKS R17 R18 K34 ["CraterStamp"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R11 K25 ["Desert"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K32 ["Stamps"]
  GETTABLEKS R17 R18 K35 ["DesertStamp"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R11 K26 ["Lake"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K32 ["Stamps"]
  GETTABLEKS R17 R18 K36 ["LakeStamp"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R11 K27 ["Mesa"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K32 ["Stamps"]
  GETTABLEKS R17 R18 K37 ["MesaStamp"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R11 K28 ["Mountain"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K32 ["Stamps"]
  GETTABLEKS R17 R18 K38 ["MountainStamp"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R11 K30 ["Plain"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K32 ["Stamps"]
  GETTABLEKS R17 R18 K39 ["PlainStamp"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R11 K31 ["Volcano"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K32 ["Stamps"]
  GETTABLEKS R17 R18 K40 ["VolcanoStamp"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  NEWTABLE R15 0 1
  DUPTABLE R16 K43 [{"Defaults", "Id"}]
  NEWTABLE R17 0 0
  SETTABLEKS R17 R16 K41 ["Defaults"]
  GETTABLEKS R17 R8 K17 ["BuildSettings"]
  SETTABLEKS R17 R16 K42 ["Id"]
  SETLIST R15 R16 1 [1]
  NEWTABLE R16 0 0
  GETTABLEKS R19 R12 K44 ["Build"]
  GETTABLEKS R20 R10 K45 ["Create"]
  MOVE R21 R15
  MOVE R22 R16
  NAMECALL R17 R2 K46 ["new"]
  CALL R17 5 1
  DUPCLOSURE R18 K47 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R18 R17 K48 ["init"]
  DUPCLOSURE R18 K49 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R18 R17 K50 ["form"]
  DUPCLOSURE R18 K51 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R18 R17 K52 ["setTerrainType"]
  DUPCLOSURE R18 K53 [PROTO_6]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R4
  SETTABLEKS R18 R17 K54 ["setMaterial"]
  DUPCLOSURE R18 K55 [PROTO_8]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R5
  SETTABLEKS R18 R17 K56 ["setPlacementMode"]
  DUPCLOSURE R18 K57 [PROTO_9]
  SETTABLEKS R18 R17 K58 ["finishRecording"]
  DUPCLOSURE R18 K59 [PROTO_10]
  CAPTURE VAL R3
  SETTABLEKS R18 R17 K60 ["saveForm"]
  DUPCLOSURE R18 K61 [PROTO_11]
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R18 R17 K62 ["gizmos"]
  DUPCLOSURE R18 K63 [PROTO_12]
  CAPTURE VAL R3
  SETTABLEKS R18 R17 K64 ["saveGizmos"]
  DUPCLOSURE R18 K65 [PROTO_13]
  SETTABLEKS R18 R17 K66 ["activate"]
  DUPCLOSURE R18 K67 [PROTO_14]
  SETTABLEKS R18 R17 K68 ["deactivate"]
  DUPCLOSURE R18 K69 [PROTO_15]
  SETTABLEKS R18 R17 K70 ["destroyStamp"]
  DUPCLOSURE R18 K71 [PROTO_16]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R14
  SETTABLEKS R18 R17 K72 ["createStamp"]
  RETURN R17 1
