PROTO_0:
  GETTABLEKS R4 R0 K0 ["Localization"]
  GETUPVAL R5 0
  MOVE R6 R0
  NEWTABLE R7 0 6
  DUPTABLE R8 K3 [{"Id", "Schema"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["AutoMaterial"]
  SETTABLEKS R9 R8 K1 ["Id"]
  DUPTABLE R9 K6 [{"Type"}]
  LOADK R10 K7 ["Checkbox"]
  SETTABLEKS R10 R9 K5 ["Type"]
  SETTABLEKS R9 R8 K2 ["Schema"]
  DUPTABLE R9 K3 [{"Id", "Schema"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["MaterialMode"]
  SETTABLEKS R10 R9 K1 ["Id"]
  DUPTABLE R10 K10 [{"Type", "Items"}]
  LOADK R11 K11 ["SingleSelectButton"]
  SETTABLEKS R11 R10 K5 ["Type"]
  GETUPVAL R11 2
  MOVE R12 R4
  LOADNIL R13
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K8 ["MaterialMode"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Items"]
  SETTABLEKS R10 R9 K2 ["Schema"]
  DUPTABLE R10 K3 [{"Id", "Schema"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["FillMode"]
  SETTABLEKS R11 R10 K1 ["Id"]
  DUPTABLE R11 K10 [{"Type", "Items"}]
  LOADK R12 K11 ["SingleSelectButton"]
  SETTABLEKS R12 R11 K5 ["Type"]
  GETUPVAL R12 2
  MOVE R13 R4
  LOADNIL R14
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K12 ["FillMode"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K9 ["Items"]
  SETTABLEKS R11 R10 K2 ["Schema"]
  DUPTABLE R11 K15 [{"Hidden", "Id", "Layout", "Schema"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K4 ["AutoMaterial"]
  GETTABLE R12 R1 R13
  SETTABLEKS R12 R11 K13 ["Hidden"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K16 ["SourceMaterial"]
  SETTABLEKS R12 R11 K1 ["Id"]
  GETIMPORT R12 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K14 ["Layout"]
  DUPTABLE R12 K22 [{"AllowAir", "Type"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K21 ["AllowAir"]
  LOADK R13 K23 ["Material"]
  SETTABLEKS R13 R12 K5 ["Type"]
  SETTABLEKS R12 R11 K2 ["Schema"]
  DUPTABLE R12 K15 [{"Hidden", "Id", "Layout", "Schema"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["MaterialMode"]
  GETTABLE R14 R1 R15
  JUMPIFEQKNIL R14 [+11]
  LOADB R13 0
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["MaterialMode"]
  GETTABLE R14 R1 R15
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K24 ["Paint"]
  JUMPIFNOTEQ R14 R15 [+19]
  LOADB R13 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K12 ["FillMode"]
  GETTABLE R14 R1 R15
  JUMPIFEQKNIL R14 [+12]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K12 ["FillMode"]
  GETTABLE R14 R1 R15
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K25 ["Fill"]
  JUMPIFEQ R14 R15 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K13 ["Hidden"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K26 ["TargetMaterial"]
  SETTABLEKS R13 R12 K1 ["Id"]
  GETIMPORT R13 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K14 ["Layout"]
  DUPTABLE R13 K22 [{"AllowAir", "Type"}]
  LOADB R14 1
  SETTABLEKS R14 R13 K21 ["AllowAir"]
  LOADK R14 K23 ["Material"]
  SETTABLEKS R14 R13 K5 ["Type"]
  SETTABLEKS R13 R12 K2 ["Schema"]
  DUPTABLE R13 K28 [{"Hidden", "Id", "Label", "Schema"}]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K24 ["Paint"]
  JUMPIFNOTEQ R2 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  SETTABLEKS R14 R13 K13 ["Hidden"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K29 ["Apply"]
  SETTABLEKS R14 R13 K1 ["Id"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K8 ["MaterialMode"]
  GETTABLE R15 R1 R16
  JUMPIF R15 [+5]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K12 ["FillMode"]
  GETTABLE R15 R1 R16
  JUMPIFNOT R15 [+14]
  GETUPVAL R16 7
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K8 ["MaterialMode"]
  GETTABLE R17 R1 R18
  JUMPIF R17 [+4]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K12 ["FillMode"]
  GETTABLE R17 R1 R18
  NAMECALL R14 R4 K30 ["getText"]
  CALL R14 3 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K27 ["Label"]
  DUPTABLE R14 K31 [{"Label", "Type"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K8 ["MaterialMode"]
  GETTABLE R16 R1 R17
  JUMPIF R16 [+5]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K12 ["FillMode"]
  GETTABLE R16 R1 R17
  JUMPIFNOT R16 [+14]
  GETUPVAL R17 7
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K8 ["MaterialMode"]
  GETTABLE R18 R1 R19
  JUMPIF R18 [+4]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K12 ["FillMode"]
  GETTABLE R18 R1 R19
  NAMECALL R15 R4 K30 ["getText"]
  CALL R15 3 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K27 ["Label"]
  LOADK R15 K32 ["Button"]
  SETTABLEKS R15 R14 K5 ["Type"]
  SETTABLEKS R14 R13 K2 ["Schema"]
  SETLIST R7 R8 6 [1]
  DUPTABLE R8 K36 [{"Category", "Data", "Overrides"}]
  GETUPVAL R9 7
  SETTABLEKS R9 R8 K33 ["Category"]
  SETTABLEKS R1 R8 K34 ["Data"]
  SETTABLEKS R3 R8 K35 ["Overrides"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["getItems"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K10 ["ApplyById"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["Category"]
  GETTABLEKS R5 R1 K12 ["EnumType"]
  GETTABLEKS R6 R1 K13 ["FillMode"]
  GETTABLEKS R7 R1 K14 ["MaterialMode"]
  GETTABLEKS R8 R1 K15 ["MaterialSettings"]
  GETTABLEKS R9 R1 K16 ["Storage"]
  GETTABLEKS R10 R1 K17 ["Tool"]
  GETTABLEKS R11 R4 K15 ["MaterialSettings"]
  NEWTABLE R12 2 0
  NEWTABLE R13 8 0
  GETTABLEKS R14 R8 K18 ["AutoMaterial"]
  GETTABLEKS R15 R9 K19 ["LocalPersistent"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R8 K13 ["FillMode"]
  GETTABLEKS R15 R9 K19 ["LocalPersistent"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R8 K14 ["MaterialMode"]
  GETTABLEKS R15 R9 K19 ["LocalPersistent"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R8 K20 ["SourceMaterial"]
  GETTABLEKS R15 R9 K19 ["LocalPersistent"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R8 K21 ["TargetMaterial"]
  GETTABLEKS R15 R9 K19 ["LocalPersistent"]
  SETTABLE R15 R13 R14
  SETTABLEKS R13 R12 K16 ["Storage"]
  DUPCLOSURE R13 K22 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K23 ["Generator"]
  RETURN R12 1
