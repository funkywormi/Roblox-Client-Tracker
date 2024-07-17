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
  LOADK R6 K4 ["GenerateName"]
  NAMECALL R3 R3 K5 ["getText"]
  CALL R3 3 1
  GETTABLEKS R4 R0 K2 ["_localization"]
  LOADK R6 K3 ["Operations"]
  LOADK R7 K6 ["GenerateDescription"]
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
  NAMECALL R1 R0 K0 ["hasError"]
  CALL R1 1 1
  GETTABLEKS R5 R0 K1 ["_overrides"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BiomeSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Generate"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K4 ["Disabled"]
  JUMPIFEQ R2 R1 [+18]
  GETTABLEKS R4 R0 K1 ["_overrides"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["BiomeSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Generate"]
  GETTABLE R2 R3 R4
  SETTABLEKS R1 R2 K4 ["Disabled"]
  GETTABLEKS R2 R0 K5 ["OnInternalsChanged"]
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
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
  GETIMPORT R1 K16 [Enum.PropertyStatus.Ok]
  LOADK R2 K17 [""]
  RETURN R1 2

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["SelectionSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["Size"]
  DUPTABLE R7 K4 [{"Validate"}]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K3 ["Validate"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["BiomeSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K6 ["Generate"]
  DUPTABLE R7 K11 [{"Hidden", "Label", "Schema", "Value"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K7 ["Hidden"]
  LOADK R8 K12 [""]
  SETTABLEKS R8 R7 K8 ["Label"]
  DUPTABLE R8 K14 [{"OnClick"}]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K13 ["OnClick"]
  SETTABLEKS R8 R7 K9 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K10 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K15 ["_overrides"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveForm"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_analytics"]
  LOADK R3 K2 ["Activated"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Generate"]
  NAMECALL R1 R1 K4 ["report"]
  CALL R1 3 0
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
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Resources"]
  GETTABLEKS R6 R7 K14 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K15 ["Operations"]
  GETTABLEKS R7 R8 K16 ["GenerateOperation"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K17 ["Types"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K18 ["Biome"]
  GETTABLEKS R9 R7 K19 ["BiomeSettings"]
  GETTABLEKS R10 R7 K20 ["Category"]
  GETTABLEKS R11 R7 K21 ["Gizmo"]
  GETTABLEKS R12 R7 K22 ["SelectionSettings"]
  GETTABLEKS R13 R7 K23 ["Tab"]
  GETTABLEKS R14 R7 K24 ["Tool"]
  NEWTABLE R15 0 2
  DUPTABLE R16 K27 [{"Defaults", "Id"}]
  NEWTABLE R17 0 0
  SETTABLEKS R17 R16 K25 ["Defaults"]
  GETTABLEKS R17 R10 K22 ["SelectionSettings"]
  SETTABLEKS R17 R16 K26 ["Id"]
  DUPTABLE R17 K27 [{"Defaults", "Id"}]
  NEWTABLE R18 8 0
  GETTABLEKS R19 R9 K28 ["Biomes"]
  NEWTABLE R20 4 0
  GETTABLEKS R21 R8 K29 ["Mountains"]
  LOADB R22 1
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R8 K30 ["Hills"]
  LOADB R22 1
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R8 K31 ["Plains"]
  LOADB R22 1
  SETTABLE R22 R20 R21
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K32 ["BiomeBlending"]
  LOADK R20 K33 [0.25]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K34 ["BiomeSize"]
  LOADN R20 100
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K35 ["Caves"]
  LOADB R20 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K36 ["Seed"]
  LOADK R20 K37 [618033988]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K25 ["Defaults"]
  GETTABLEKS R18 R10 K19 ["BiomeSettings"]
  SETTABLEKS R18 R17 K26 ["Id"]
  SETLIST R15 R16 2 [1]
  NEWTABLE R16 0 1
  DUPTABLE R17 K39 [{"Id", "Schema"}]
  GETTABLEKS R18 R11 K40 ["Region"]
  SETTABLEKS R18 R17 K26 ["Id"]
  DUPTABLE R18 K44 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R19 R11 K40 ["Region"]
  SETTABLEKS R19 R18 K41 ["Type"]
  LOADB R19 0
  SETTABLEKS R19 R18 K42 ["Wireframe"]
  LOADB R19 0
  SETTABLEKS R19 R18 K43 ["Rotation"]
  SETTABLEKS R18 R17 K38 ["Schema"]
  SETLIST R16 R17 1 [1]
  GETTABLEKS R19 R14 K45 ["Generate"]
  GETTABLEKS R20 R13 K46 ["Create"]
  MOVE R21 R15
  MOVE R22 R16
  NAMECALL R17 R2 K47 ["new"]
  CALL R17 5 1
  DUPCLOSURE R18 K48 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R18 R17 K49 ["startOperation"]
  DUPCLOSURE R18 K50 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R18 R17 K51 ["setDisabledState"]
  DUPCLOSURE R18 K52 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R18 R17 K53 ["init"]
  DUPCLOSURE R18 K54 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K55 ["saveForm"]
  DUPCLOSURE R18 K56 [PROTO_7]
  SETTABLEKS R18 R17 K57 ["operation"]
  DUPCLOSURE R18 K58 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R14
  SETTABLEKS R18 R17 K59 ["activate"]
  RETURN R17 1
