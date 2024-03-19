PROTO_0:
  GETTABLEKS R3 R0 K1 ["X"]
  MULK R2 R3 K0 [4]
  GETTABLEKS R4 R0 K2 ["Y"]
  MULK R3 R4 K0 [4]
  GETTABLEKS R5 R0 K3 ["Z"]
  MULK R4 R5 K0 [4]
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K6 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Payload"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["SelectionSettings"]
  GETTABLE R0 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Payload"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["HeightmapSettings"]
  GETTABLE R1 R2 R3
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["Transform"]
  GETTABLE R3 R0 R4
  GETTABLEKS R2 R3 K4 ["Position"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["Size"]
  GETTABLE R3 R0 R4
  GETUPVAL R4 3
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["Transform"]
  GETTABLE R5 R0 R6
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["Size"]
  GETTABLE R6 R0 R7
  LOADB R7 1
  CALL R4 3 1
  GETIMPORT R5 K8 [Region3.new]
  GETTABLEKS R7 R4 K9 ["Min"]
  GETTABLEKS R10 R7 K11 ["X"]
  MULK R9 R10 K10 [4]
  GETTABLEKS R11 R7 K12 ["Y"]
  MULK R10 R11 K10 [4]
  GETTABLEKS R12 R7 K13 ["Z"]
  MULK R11 R12 K10 [4]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K15 [Vector3.new]
  CALL R8 3 1
  MOVE R6 R8
  GETTABLEKS R8 R4 K16 ["Max"]
  GETTABLEKS R11 R8 K11 ["X"]
  MULK R10 R11 K10 [4]
  GETTABLEKS R12 R8 K12 ["Y"]
  MULK R11 R12 K10 [4]
  GETTABLEKS R13 R8 K13 ["Z"]
  MULK R12 R13 K10 [4]
  FASTCALL VECTOR [+2]
  GETIMPORT R9 K15 [Vector3.new]
  CALL R9 3 1
  MOVE R7 R9
  CALL R5 2 1
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K17 ["Heightmap"]
  GETTABLE R7 R1 R8
  GETTABLEKS R6 R7 K18 ["Image"]
  JUMPIF R6 [+7]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K19 ["State"]
  LOADN R7 1
  SETTABLEKS R7 R6 K20 ["Progress"]
  RETURN R0 0
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K17 ["Heightmap"]
  GETTABLE R8 R1 R9
  GETTABLEKS R7 R8 K18 ["Image"]
  GETTABLEKS R6 R7 K21 ["File"]
  NAMECALL R6 R6 K22 ["GetTemporaryId"]
  CALL R6 1 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K23 ["Colormap"]
  GETTABLE R8 R1 R9
  GETTABLEKS R7 R8 K18 ["Image"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R8 R7 K21 ["File"]
  NAMECALL R8 R8 K22 ["GetTemporaryId"]
  CALL R8 1 1
  JUMP [+1]
  LOADK R8 K24 [""]
  GETUPVAL R9 5
  MOVE R11 R5
  MOVE R12 R6
  MOVE R13 R8
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K25 ["DefaultMaterial"]
  GETTABLE R14 R1 R15
  NAMECALL R9 R9 K26 ["ImportHeightmap"]
  CALL R9 5 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K19 ["State"]
  LOADN R10 1
  SETTABLEKS R10 R9 K20 ["Progress"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["setDescription"]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["State"]
  SETTABLEKS R0 R2 K2 ["Progress"]
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  DUPTABLE R3 K2 [{"Progress", "ProgressUpdateConnection"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K0 ["Progress"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["ProgressUpdate"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R4 R4 K4 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["ProgressUpdateConnection"]
  SETTABLEKS R3 R0 K5 ["State"]
  GETTABLEKS R3 R0 K6 ["Synchronous"]
  JUMPIFNOT R3 [+3]
  MOVE R3 R2
  CALL R3 0 0
  RETURN R0 0
  GETIMPORT R3 K9 [task.spawn]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["State"]
  GETTABLEKS R3 R2 K1 ["Progress"]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R3 R2 K1 ["Progress"]
  JUMPIFNOTEQKN R3 K2 [1] [+4]
  LOADB R3 0
  LOADN R4 1
  RETURN R3 2
  LOADB R3 1
  GETTABLEKS R5 R2 K1 ["Progress"]
  ORK R4 R5 K3 [0]
  RETURN R3 2

PROTO_5:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["CancelImportHeightmap"]
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  LOADB R4 1
  NAMECALL R2 R2 K0 ["SetImportHeightmapPaused"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  LOADB R4 0
  NAMECALL R2 R2 K0 ["SetImportHeightmapPaused"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["State"]
  GETTABLEKS R3 R2 K1 ["ProgressUpdateConnection"]
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R2 K1 ["ProgressUpdateConnection"]
  NAMECALL R3 R3 K2 ["Disconnect"]
  CALL R3 1 0
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["ProgressUpdateConnection"]
  LOADN R3 0
  SETTABLEKS R3 R2 K3 ["Progress"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["ChangeHistoryService"]
  LOADK R5 K5 ["ImportAction"]
  NAMECALL R3 R3 K6 ["SetWaypoint"]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  DUPCLOSURE R3 K0 [PROTO_3]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  DUPCLOSURE R4 K1 [PROTO_4]
  DUPCLOSURE R5 K2 [PROTO_5]
  CAPTURE UPVAL U4
  DUPCLOSURE R6 K3 [PROTO_6]
  CAPTURE UPVAL U4
  DUPCLOSURE R7 K4 [PROTO_7]
  CAPTURE UPVAL U4
  NEWCLOSURE R8 P5
  CAPTURE VAL R2
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K5 ["new"]
  DUPTABLE R10 K16 [{"AllowPause", "AllowCancel", "Description", "Name", "OnCancel", "OnFinish", "OnPause", "OnResume", "OnStart", "OnStep"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K6 ["AllowPause"]
  LOADB R11 1
  SETTABLEKS R11 R10 K7 ["AllowCancel"]
  SETTABLEKS R1 R10 K8 ["Description"]
  SETTABLEKS R0 R10 K9 ["Name"]
  SETTABLEKS R5 R10 K10 ["OnCancel"]
  SETTABLEKS R8 R10 K11 ["OnFinish"]
  SETTABLEKS R6 R10 K12 ["OnPause"]
  SETTABLEKS R7 R10 K13 ["OnResume"]
  SETTABLEKS R3 R10 K14 ["OnStart"]
  SETTABLEKS R4 R10 K15 ["OnStep"]
  CALL R9 1 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Operations"]
  GETTABLEKS R2 R3 K9 ["BaseOperation"]
  CALL R1 1 1
  GETIMPORT R2 K11 [game]
  LOADK R4 K12 ["HeightmapImporterService"]
  NAMECALL R2 R2 K13 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K14 ["Types"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K15 ["Category"]
  GETTABLEKS R5 R3 K16 ["HeightmapSettings"]
  GETTABLEKS R6 R3 K17 ["SelectionSettings"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K7 ["Util"]
  GETTABLEKS R8 R9 K18 ["ConvertTransformToRegion"]
  CALL R7 1 1
  DUPCLOSURE R8 K19 [PROTO_0]
  DUPCLOSURE R9 K20 [PROTO_9]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R9 1
