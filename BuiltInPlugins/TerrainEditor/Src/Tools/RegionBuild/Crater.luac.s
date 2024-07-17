MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Tools"]
  GETTABLEKS R2 R3 K8 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["BuildSettings"]
  GETTABLEKS R4 R2 K11 ["Category"]
  GETTABLEKS R5 R2 K12 ["Gizmo"]
  GETTABLEKS R6 R2 K13 ["MaterialUnit"]
  GETTABLEKS R7 R2 K14 ["Tab"]
  GETTABLEKS R8 R2 K15 ["TerrainType"]
  NEWTABLE R9 0 1
  DUPTABLE R10 K18 [{"Defaults", "Id"}]
  NEWTABLE R11 16 0
  GETTABLEKS R12 R3 K19 ["AdvancedNoise"]
  DUPTABLE R13 K21 [{"Children"}]
  NEWTABLE R14 4 0
  GETTABLEKS R15 R3 K22 ["Offset"]
  GETIMPORT R16 K25 [Vector2.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R3 K26 ["Rotation"]
  LOADN R16 0
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R3 K27 ["Seed"]
  LOADK R16 K28 [0.123]
  SETTABLE R16 R14 R15
  SETTABLEKS R14 R13 K20 ["Children"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K29 ["NoiseStrength"]
  LOADK R13 K30 [0.3]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K31 ["BlendingEdge"]
  LOADN R13 0
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K32 ["FillBottom"]
  LOADK R13 K33 [0.5]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K34 ["NoiseScale"]
  LOADK R13 K30 [0.3]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K35 ["Material"]
  DUPTABLE R13 K43 [{"FallbackMaterial", "Unit", "Min", "Max", "MaterialIndex", "MaterialList", "FillMaterial"}]
  GETIMPORT R14 K46 [Enum.Material.Grass]
  SETTABLEKS R14 R13 K36 ["FallbackMaterial"]
  GETTABLEKS R14 R6 K47 ["Percentage"]
  SETTABLEKS R14 R13 K37 ["Unit"]
  LOADN R14 0
  SETTABLEKS R14 R13 K38 ["Min"]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["Max"]
  LOADN R14 1
  SETTABLEKS R14 R13 K40 ["MaterialIndex"]
  NEWTABLE R14 0 1
  DUPTABLE R15 K53 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
  GETIMPORT R16 K46 [Enum.Material.Grass]
  SETTABLEKS R16 R15 K35 ["Material"]
  LOADN R16 0
  SETTABLEKS R16 R15 K48 ["MinHeight"]
  LOADN R16 1
  SETTABLEKS R16 R15 K49 ["MaxHeight"]
  LOADN R16 0
  SETTABLEKS R16 R15 K50 ["MinSlope"]
  LOADN R16 90
  SETTABLEKS R16 R15 K51 ["MaxSlope"]
  LOADN R16 0
  SETTABLEKS R16 R15 K52 ["Priority"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K41 ["MaterialList"]
  GETIMPORT R14 K55 [Enum.Material.Sandstone]
  SETTABLEKS R14 R13 K42 ["FillMaterial"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K56 ["PlacementMode"]
  LOADB R13 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K57 ["RimHeight"]
  LOADK R13 K58 [0.15]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K59 ["Size"]
  LOADN R14 0
  LOADN R15 152
  LOADN R16 0
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K61 [Vector3.new]
  CALL R13 3 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K62 ["SnapToVoxels"]
  LOADB R13 1
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R3 K63 ["Transform"]
  GETIMPORT R13 K65 [CFrame.new]
  CALL R13 0 1
  SETTABLE R13 R11 R12
  SETTABLEKS R11 R10 K16 ["Defaults"]
  GETTABLEKS R11 R4 K10 ["BuildSettings"]
  SETTABLEKS R11 R10 K17 ["Id"]
  SETLIST R9 R10 1 [1]
  NEWTABLE R10 0 2
  DUPTABLE R11 K67 [{"Id", "Schema"}]
  GETTABLEKS R12 R5 K68 ["Region"]
  SETTABLEKS R12 R11 K17 ["Id"]
  DUPTABLE R12 K71 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R13 R5 K68 ["Region"]
  SETTABLEKS R13 R12 K69 ["Type"]
  LOADB R13 0
  SETTABLEKS R13 R12 K70 ["Wireframe"]
  LOADB R13 0
  SETTABLEKS R13 R12 K26 ["Rotation"]
  SETTABLEKS R12 R11 K66 ["Schema"]
  DUPTABLE R12 K67 [{"Id", "Schema"}]
  GETTABLEKS R13 R5 K72 ["Placement"]
  SETTABLEKS R13 R12 K17 ["Id"]
  DUPTABLE R13 K73 [{"Type"}]
  GETTABLEKS R14 R5 K72 ["Placement"]
  SETTABLEKS R14 R13 K69 ["Type"]
  SETTABLEKS R13 R12 K66 ["Schema"]
  SETLIST R10 R11 2 [1]
  GETTABLEKS R13 R8 K74 ["Crater"]
  GETTABLEKS R14 R7 K75 ["None"]
  MOVE R15 R9
  MOVE R16 R10
  NAMECALL R11 R1 K24 ["new"]
  CALL R11 5 1
  RETURN R11 1
