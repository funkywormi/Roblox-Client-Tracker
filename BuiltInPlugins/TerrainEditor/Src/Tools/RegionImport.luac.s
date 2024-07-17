PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["finishOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["startOperation"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["getPayload"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["_localization"]
  LOADK R5 K3 ["Operations"]
  LOADK R6 K4 ["ImportName"]
  NAMECALL R3 R3 K5 ["getText"]
  CALL R3 3 1
  GETTABLEKS R4 R0 K2 ["_localization"]
  LOADK R6 K3 ["Operations"]
  LOADK R7 K6 ["ImportDescription"]
  NAMECALL R4 R4 K5 ["getText"]
  CALL R4 3 1
  GETUPVAL R5 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["SelectionSettings"]
  GETTABLE R7 R2 R8
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K8 ["Transform"]
  GETTABLE R6 R7 R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["SelectionSettings"]
  GETTABLE R8 R2 R9
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K9 ["Size"]
  GETTABLE R7 R8 R9
  LOADB R8 1
  CALL R5 3 1
  SETTABLEKS R5 R0 K10 ["_region"]
  GETTABLEKS R6 R0 K11 ["_services"]
  GETTABLEKS R5 R6 K12 ["Terrain"]
  GETTABLEKS R7 R0 K10 ["_region"]
  NAMECALL R5 R5 K13 ["CopyRegion"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K14 ["_terrainRegion"]
  GETUPVAL R5 4
  MOVE R6 R3
  MOVE R7 R4
  GETTABLEKS R8 R0 K11 ["_services"]
  CALL R5 3 1
  SETTABLEKS R5 R0 K15 ["_operation"]
  GETTABLEKS R6 R0 K15 ["_operation"]
  GETTABLEKS R5 R6 K16 ["Finished"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  NAMECALL R5 R5 K17 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K18 ["_operationFinishedConnection"]
  GETTABLEKS R5 R0 K15 ["_operation"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K19 ["join"]
  DUPTABLE R8 K21 [{"Payload"}]
  SETTABLEKS R2 R8 K20 ["Payload"]
  MOVE R9 R1
  CALL R7 2 -1
  NAMECALL R5 R5 K22 ["start"]
  CALL R5 -1 0
  GETTABLEKS R5 R0 K23 ["OnOperationChanged"]
  NAMECALL R5 R5 K24 ["Fire"]
  CALL R5 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["X"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["VoxelResolution"]
  JUMPIFLT R1 R2 [+15]
  GETTABLEKS R1 R0 K2 ["Y"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["VoxelResolution"]
  JUMPIFLT R1 R2 [+8]
  GETTABLEKS R1 R0 K3 ["Z"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["VoxelResolution"]
  JUMPIFNOTLT R1 R2 [+12]
  GETIMPORT R1 K7 [Enum.PropertyStatus.Error]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["_localization"]
  LOADK R4 K9 ["SelectionWarning"]
  LOADK R5 K10 ["Size"]
  NAMECALL R2 R2 K11 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETTABLEKS R3 R0 K0 ["X"]
  GETTABLEKS R4 R0 K2 ["Y"]
  MUL R2 R3 R4
  GETTABLEKS R3 R0 K3 ["Z"]
  MUL R1 R2 R3
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["MaxImportVolume"]
  JUMPIFNOTLT R2 R1 [+12]
  GETIMPORT R1 K7 [Enum.PropertyStatus.Error]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["_localization"]
  LOADK R4 K13 ["ImportWarning"]
  LOADK R5 K14 ["Volume"]
  NAMECALL R2 R2 K11 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["_sessionUserSettings"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K16 ["HeightmapSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K17 ["Heightmap"]
  GETTABLE R2 R3 R4
  GETTABLEKS R1 R2 K18 ["Image"]
  JUMPIF R1 [+4]
  GETIMPORT R2 K20 [Enum.PropertyStatus.Ok]
  LOADK R3 K21 [""]
  RETURN R2 2
  GETUPVAL R2 4
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 2
  JUMPIF R2 [+22]
  GETIMPORT R4 K23 [Enum.PropertyStatus.Warning]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["_localization"]
  LOADK R7 K13 ["ImportWarning"]
  LOADK R8 K24 ["AspectRatio"]
  DUPTABLE R9 K28 [{"ImageAspectRatio", "RegionWidth", "RegionHeight"}]
  SETTABLEKS R3 R9 K25 ["ImageAspectRatio"]
  GETTABLEKS R10 R0 K0 ["X"]
  SETTABLEKS R10 R9 K26 ["RegionWidth"]
  GETTABLEKS R10 R0 K3 ["Z"]
  SETTABLEKS R10 R9 K27 ["RegionHeight"]
  NAMECALL R5 R5 K11 ["getText"]
  CALL R5 4 -1
  RETURN R4 -1
  GETUPVAL R4 5
  MOVE R5 R1
  MOVE R6 R0
  CALL R4 2 1
  JUMPIF R4 [+28]
  GETIMPORT R5 K23 [Enum.PropertyStatus.Warning]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["_localization"]
  LOADK R8 K13 ["ImportWarning"]
  LOADK R9 K29 ["Scaling"]
  DUPTABLE R10 K32 [{"ImageWidth", "ImageHeight", "RegionWidth", "RegionHeight"}]
  GETTABLEKS R11 R1 K33 ["Width"]
  SETTABLEKS R11 R10 K30 ["ImageWidth"]
  GETTABLEKS R11 R1 K34 ["Height"]
  SETTABLEKS R11 R10 K31 ["ImageHeight"]
  GETTABLEKS R11 R0 K0 ["X"]
  SETTABLEKS R11 R10 K26 ["RegionWidth"]
  GETTABLEKS R11 R0 K3 ["Z"]
  SETTABLEKS R11 R10 K27 ["RegionHeight"]
  NAMECALL R6 R6 K11 ["getText"]
  CALL R6 4 -1
  RETURN R5 -1
  GETIMPORT R5 K20 [Enum.PropertyStatus.Ok]
  LOADK R6 K21 [""]
  RETURN R5 2

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NAMECALL R3 R0 K1 ["getPayload"]
  CALL R3 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["SelectionSettings"]
  GETTABLE R5 R3 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["Size"]
  GETTABLE R4 R5 R6
  NEWTABLE R5 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["SelectionSettings"]
  NEWTABLE R7 1 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["Size"]
  DUPTABLE R9 K5 [{"Validate"}]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R10 R9 K4 ["Validate"]
  SETTABLE R9 R7 R8
  SETTABLE R7 R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["HeightmapSettings"]
  NEWTABLE R7 1 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K7 ["Import"]
  DUPTABLE R9 K11 [{"Hidden", "Label", "Schema"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K8 ["Hidden"]
  LOADK R10 K12 [""]
  SETTABLEKS R10 R9 K9 ["Label"]
  DUPTABLE R10 K14 [{"OnClick"}]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K13 ["OnClick"]
  SETTABLEKS R10 R9 K10 ["Schema"]
  SETTABLE R9 R7 R8
  SETTABLE R7 R5 R6
  SETTABLEKS R5 R0 K15 ["_overrides"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

PROTO_6:
  NAMECALL R1 R0 K0 ["hasError"]
  CALL R1 1 1
  GETTABLEKS R5 R0 K1 ["_overrides"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["HeightmapSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Import"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K4 ["Disabled"]
  JUMPIFEQ R2 R1 [+18]
  GETTABLEKS R4 R0 K1 ["_overrides"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["HeightmapSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Import"]
  GETTABLE R2 R3 R4
  SETTABLEKS R1 R2 K4 ["Disabled"]
  GETTABLEKS R2 R0 K5 ["OnInternalsChanged"]
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveForm"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["setDisabledState"]
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["getPayload"]
  CALL R1 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["SelectionSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["Size"]
  GETTABLE R2 R3 R4
  GETTABLEKS R5 R0 K4 ["_overrides"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["HeightmapSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K6 ["Import"]
  GETTABLE R3 R4 R5
  GETTABLEKS R8 R0 K7 ["_sessionUserSettings"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["HeightmapSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K8 ["Heightmap"]
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K9 ["Image"]
  NOT R4 R5
  JUMPIF R4 [+39]
  LOADB R4 1
  GETTABLEKS R7 R2 K10 ["X"]
  GETTABLEKS R8 R2 K11 ["Y"]
  MUL R6 R7 R8
  GETTABLEKS R7 R2 K12 ["Z"]
  MUL R5 R6 R7
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K13 ["MaxImportVolume"]
  JUMPIFLT R6 R5 [+26]
  LOADB R4 1
  GETTABLEKS R5 R2 K10 ["X"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K14 ["VoxelResolution"]
  JUMPIFLT R5 R6 [+18]
  LOADB R4 1
  GETTABLEKS R5 R2 K11 ["Y"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K14 ["VoxelResolution"]
  JUMPIFLT R5 R6 [+10]
  GETTABLEKS R5 R2 K12 ["Z"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K14 ["VoxelResolution"]
  JUMPIFLT R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K15 ["Disabled"]
  GETTABLEKS R3 R0 K16 ["OnGizmoChanged"]
  NAMECALL R3 R3 K17 ["Fire"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K18 ["_analytics"]
  LOADK R5 K19 ["Activated"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K6 ["Import"]
  NAMECALL R3 R3 K20 ["report"]
  CALL R3 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["BaseTool"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Util"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K12 ["ConvertTransformToRegion"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K13 ["hasCorrectAspectRatio"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K14 ["hasCorrectScaling"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Util"]
  GETTABLEKS R9 R10 K15 ["Operations"]
  GETTABLEKS R8 R9 K16 ["ImportOperation"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Resources"]
  GETTABLEKS R9 R10 K18 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K19 ["Types"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K20 ["Category"]
  GETTABLEKS R11 R9 K21 ["Gizmo"]
  GETTABLEKS R12 R9 K22 ["HeightmapSettings"]
  GETTABLEKS R13 R9 K23 ["SelectionSettings"]
  GETTABLEKS R14 R9 K24 ["Tab"]
  GETTABLEKS R15 R9 K25 ["Tool"]
  NEWTABLE R16 0 2
  DUPTABLE R17 K28 [{"Defaults", "Id"}]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K26 ["Defaults"]
  GETTABLEKS R18 R10 K23 ["SelectionSettings"]
  SETTABLEKS R18 R17 K27 ["Id"]
  DUPTABLE R18 K28 [{"Defaults", "Id"}]
  NEWTABLE R19 4 0
  GETTABLEKS R20 R12 K29 ["Colormap"]
  DUPTABLE R21 K31 [{"Error"}]
  LOADK R22 K32 [""]
  SETTABLEKS R22 R21 K30 ["Error"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R12 K33 ["DefaultMaterial"]
  GETIMPORT R21 K37 [Enum.Material.Grass]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R12 K38 ["Heightmap"]
  DUPTABLE R21 K31 [{"Error"}]
  LOADK R22 K32 [""]
  SETTABLEKS R22 R21 K30 ["Error"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R12 K39 ["Import"]
  LOADB R21 1
  SETTABLE R21 R19 R20
  SETTABLEKS R19 R18 K26 ["Defaults"]
  GETTABLEKS R19 R10 K22 ["HeightmapSettings"]
  SETTABLEKS R19 R18 K27 ["Id"]
  SETLIST R16 R17 2 [1]
  NEWTABLE R17 0 1
  DUPTABLE R18 K41 [{"Id", "Schema"}]
  GETTABLEKS R19 R11 K42 ["Region"]
  SETTABLEKS R19 R18 K27 ["Id"]
  DUPTABLE R19 K46 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R20 R11 K42 ["Region"]
  SETTABLEKS R20 R19 K43 ["Type"]
  LOADB R20 0
  SETTABLEKS R20 R19 K44 ["Wireframe"]
  LOADB R20 0
  SETTABLEKS R20 R19 K45 ["Rotation"]
  SETTABLEKS R19 R18 K40 ["Schema"]
  SETLIST R17 R18 1 [1]
  GETTABLEKS R20 R15 K39 ["Import"]
  GETTABLEKS R21 R14 K47 ["Create"]
  MOVE R22 R16
  MOVE R23 R17
  NAMECALL R18 R2 K48 ["new"]
  CALL R18 5 1
  DUPCLOSURE R19 K49 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K50 ["startOperation"]
  DUPCLOSURE R19 K51 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R19 R18 K52 ["init"]
  DUPCLOSURE R19 K53 [PROTO_5]
  SETTABLEKS R19 R18 K54 ["operation"]
  DUPCLOSURE R19 K55 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R19 R18 K56 ["setDisabledState"]
  DUPCLOSURE R19 K57 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K58 ["saveForm"]
  DUPCLOSURE R19 K59 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R15
  SETTABLEKS R19 R18 K60 ["activate"]
  RETURN R18 1
