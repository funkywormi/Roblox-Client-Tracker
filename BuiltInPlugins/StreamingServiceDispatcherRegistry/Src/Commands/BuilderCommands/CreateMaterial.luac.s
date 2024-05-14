PROTO_0:
  LOADK R5 K0 ["MaterialVariant"]
  NAMECALL R3 R1 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R1 K2 ["Name"]
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["collectSet"]
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["GetDescendants"]
  CALL R2 1 1
  DUPCLOSURE R3 K2 [PROTO_0]
  CALL R1 2 1
  GETTABLE R2 R1 R0
  JUMPIF R2 [+1]
  RETURN R0 1
  LOADN R2 1
  MOVE R5 R0
  MOVE R6 R2
  CONCAT R4 R5 R6
  GETTABLE R3 R1 R4
  JUMPIFNOT R3 [+2]
  ADDK R2 R2 K3 [1]
  JUMPBACK [-7]
  MOVE R4 R0
  MOVE R5 R2
  CONCAT R3 R4 R5
  RETURN R3 1

PROTO_2:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  NAMECALL R0 R0 K0 ["GenerateMaterialVariantsAsync"]
  CALL R0 3 -1
  RETURN R0 -1
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  NAMECALL R0 R0 K1 ["DEPRECATED_GenerateMaterialVariantsAsync"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_3:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Bad materialDescription"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K6 ["number"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Bad amount"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["try"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["UploadMaterialVariantsSync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Bad materials"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["try"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R2 1
  GETIMPORT R3 K3 [Instance.new]
  LOADK R4 K4 ["Folder"]
  CALL R3 1 1
  SETTABLEKS R1 R3 K5 ["Name"]
  SETTABLEKS R0 R3 K6 ["Parent"]
  RETURN R3 1

PROTO_7:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["studio://apply_material_variant/%s"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["![](image://instance/%s) %s"]
  GETTABLEKS R3 R0 K4 ["ClassName"]
  GETTABLEKS R4 R0 K5 ["Name"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_9:
  GETUPVAL R1 0
  LOADK R4 K0 ["AssistantMaterials"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  MOVE R0 R2
  JUMP [+10]
  GETIMPORT R3 K4 [Instance.new]
  LOADK R4 K5 ["Folder"]
  CALL R3 1 1
  LOADK R4 K0 ["AssistantMaterials"]
  SETTABLEKS R4 R3 K6 ["Name"]
  SETTABLEKS R1 R3 K7 ["Parent"]
  MOVE R0 R3
  GETIMPORT R2 K10 [string.format]
  LOADK R3 K11 ["Material: %s"]
  GETUPVAL R4 1
  CALL R2 2 1
  MOVE R5 R2
  NAMECALL R3 R0 K1 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  MOVE R1 R3
  JUMP [+9]
  GETIMPORT R4 K4 [Instance.new]
  LOADK R5 K5 ["Folder"]
  CALL R4 1 1
  SETTABLEKS R2 R4 K6 ["Name"]
  SETTABLEKS R0 R4 K7 ["Parent"]
  MOVE R1 R4
  NEWTABLE R2 0 0
  LOADN R3 0
  LOADB R4 0
  GETUPVAL R5 2
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  LOADN R12 10
  NAMECALL R10 R9 K12 ["GetDebugId"]
  CALL R10 2 1
  GETUPVAL R11 3
  GETUPVAL R12 4
  CALL R11 1 1
  SETTABLEKS R11 R9 K6 ["Name"]
  GETUPVAL R11 5
  SETTABLEKS R11 R9 K13 ["BaseMaterial"]
  GETUPVAL R11 6
  SETTABLEKS R11 R9 K14 ["MaterialPattern"]
  SETTABLEKS R1 R9 K7 ["Parent"]
  GETUPVAL R12 7
  GETTABLEKS R11 R12 K15 ["guidToInfo"]
  DUPTABLE R12 K17 [{"instance"}]
  SETTABLEKS R9 R12 K16 ["instance"]
  SETTABLE R12 R11 R10
  GETTABLEKS R3 R9 K18 ["StudsPerTile"]
  GETTABLEKS R11 R9 K14 ["MaterialPattern"]
  GETIMPORT R12 K21 [Enum.MaterialPattern.Organic]
  JUMPIFEQ R11 R12 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  DUPTABLE R13 K26 [{"guid", "url", "action", "tooltip"}]
  SETTABLEKS R10 R13 K22 ["guid"]
  GETTABLEKS R14 R9 K27 ["ColorMap"]
  SETTABLEKS R14 R13 K23 ["url"]
  GETIMPORT R14 K10 [string.format]
  LOADK R15 K28 ["studio://apply_material_variant/%s"]
  MOVE R16 R10
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["action"]
  GETTABLEKS R14 R9 K6 ["Name"]
  SETTABLEKS R14 R13 K25 ["tooltip"]
  FASTCALL2 TABLE_INSERT R2 R13 [+4]
  MOVE R12 R2
  GETIMPORT R11 K31 [table.insert]
  CALL R11 2 0
  FORGLOOP R5 2 [-59]
  DUPTABLE R5 K36 [{"requestId", "instanceData", "studsPerTile", "isOrganic"}]
  GETUPVAL R8 8
  GETTABLEKS R7 R8 K32 ["requestId"]
  ORK R6 R7 K37 [""]
  SETTABLEKS R6 R5 K32 ["requestId"]
  SETTABLEKS R2 R5 K33 ["instanceData"]
  SETTABLEKS R3 R5 K34 ["studsPerTile"]
  SETTABLEKS R4 R5 K35 ["isOrganic"]
  GETUPVAL R6 9
  LOADK R8 K38 ["Materials"]
  MOVE R9 R5
  NAMECALL R6 R6 K39 ["DisplayContent"]
  CALL R6 3 0
  GETUPVAL R7 2
  GETTABLEN R6 R7 1
  RETURN R6 1

PROTO_10:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Bad materials"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["try"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 1
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  NAMECALL R1 R1 K7 ["andThen"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  GETUPVAL R5 0
  LOADK R7 K0 ["CreateMaterial"]
  LOADK R8 K1 ["Description"]
  DUPTABLE R9 K5 [{"baseMaterial", "description", "materialPattern"}]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R11 R2
  GETIMPORT R10 K7 [tostring]
  CALL R10 1 1
  SETTABLEKS R10 R9 K2 ["baseMaterial"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R11 R1
  GETIMPORT R10 K7 [tostring]
  CALL R10 1 1
  SETTABLEKS R10 R9 K3 ["description"]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R11 R4
  GETIMPORT R10 K7 [tostring]
  CALL R10 1 1
  SETTABLEKS R10 R9 K4 ["materialPattern"]
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 4 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["streamText"]
  GETTABLEKS R7 R0 K10 ["requestId"]
  GETIMPORT R8 K13 [string.format]
  LOADK R9 K14 ["
%s
"]
  MOVE R10 R5
  CALL R8 2 -1
  CALL R6 -1 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K16 [type]
  CALL R9 1 1
  JUMPIFEQKS R9 K11 ["string"] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K17 [+4]
  LOADK R9 K17 ["Bad materialDescription"]
  GETIMPORT R7 K19 [assert]
  CALL R7 2 0
  LOADB R8 1
  FASTCALL2K ASSERT R8 K20 [+4]
  LOADK R9 K20 ["Bad amount"]
  GETIMPORT R7 K19 [assert]
  CALL R7 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K21 ["try"]
  LOADN R8 4
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE VAL R8
  CALL R6 1 1
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  NAMECALL R6 R6 K22 ["andThen"]
  CALL R6 2 -1
  RETURN R6 -1

PROTO_12:
  GETUPVAL R5 0
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  CALL R5 5 -1
  RETURN R5 -1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["arguments"]
  GETTABLEKS R5 R1 K1 ["materialDescription"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K3 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K4 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["Bad request.materialDescription"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R1 K8 ["materialId"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R1 K9 ["instanceId"]
  FASTCALL2K ASSERT R2 K10 [+5]
  MOVE R4 R2
  LOADK R5 K10 ["Bad request.materialId"]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  SETTABLEKS R2 R1 K8 ["materialId"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["StartRecordingActions"]
  GETTABLEKS R4 R0 K12 ["requestId"]
  CALL R3 1 0
  GETTABLEKS R4 R1 K1 ["materialDescription"]
  GETTABLEKS R5 R1 K13 ["baseMaterial"]
  GETTABLEKS R6 R1 K8 ["materialId"]
  GETTABLEKS R7 R1 K14 ["materialPattern"]
  GETUPVAL R8 1
  MOVE R9 R0
  MOVE R10 R4
  MOVE R11 R5
  MOVE R12 R6
  MOVE R13 R7
  CALL R8 5 1
  MOVE R3 R8
  NAMECALL R3 R3 K15 ["await"]
  CALL R3 1 2
  JUMPIF R3 [+48]
  GETUPVAL R5 2
  LOADK R7 K16 ["CreateMaterial"]
  LOADK R8 K17 ["FailedToCreateMaterialImprovedError"]
  NEWTABLE R9 0 0
  NAMECALL R5 R5 K18 ["getText"]
  CALL R5 4 1
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+19]
  GETIMPORT R6 K20 [string.find]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R8 R4
  GETIMPORT R7 K22 [tostring]
  CALL R7 1 1
  LOADK R8 K23 ["text is fully filtered"]
  CALL R6 2 1
  JUMPIFNOT R6 [+9]
  GETUPVAL R6 2
  LOADK R8 K16 ["CreateMaterial"]
  LOADK R9 K24 ["FailedToCreateMaterialTextFilteredError"]
  NEWTABLE R10 0 0
  NAMECALL R6 R6 K18 ["getText"]
  CALL R6 4 1
  MOVE R5 R6
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K25 ["streamText"]
  GETTABLEKS R7 R0 K12 ["requestId"]
  GETIMPORT R8 K27 [string.format]
  LOADK R9 K28 ["
%s
"]
  MOVE R10 R5
  CALL R8 2 -1
  CALL R6 -1 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K29 ["EndRecordingActions"]
  GETTABLEKS R7 R0 K12 ["requestId"]
  CALL R6 1 0
  RETURN R0 0
  GETTABLEKS R5 R1 K8 ["materialId"]
  JUMPIFNOT R5 [+7]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K30 ["set"]
  GETTABLEKS R6 R1 K8 ["materialId"]
  MOVE R7 R4
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K29 ["EndRecordingActions"]
  GETTABLEKS R6 R0 K12 ["requestId"]
  CALL R5 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K8 ["CliAdapter"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["GetService"]
  LOADK R3 K10 ["MaterialGenerationService"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["GetService"]
  LOADK R4 K11 ["MaterialService"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["GetService"]
  LOADK R5 K12 ["ChatbotUIService"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K13 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Promise"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K13 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Dash"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K7 ["Utils"]
  GETTABLEKS R8 R9 K7 ["Utils"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K16 ["Types"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K17 ["Localization"]
  GETTABLEKS R10 R11 K17 ["Localization"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K18 ["Commands"]
  GETTABLEKS R12 R13 K19 ["BuilderCommands"]
  GETTABLEKS R11 R12 K20 ["BuilderNameMap"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K21 ["Flags"]
  GETTABLEKS R12 R13 K22 ["getFFlagMaterialGenErrorTextFiltered"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K6 ["Src"]
  GETTABLEKS R14 R15 K21 ["Flags"]
  GETTABLEKS R13 R14 K23 ["getFFlagMaterialGeneratorNewServiceAsyncApi"]
  CALL R12 1 1
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R3
  DUPCLOSURE R14 K25 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R2
  DUPCLOSURE R15 K26 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R2
  DUPCLOSURE R16 K27 [PROTO_6]
  DUPCLOSURE R17 K28 [PROTO_7]
  DUPCLOSURE R18 K29 [PROTO_8]
  DUPCLOSURE R19 K30 [PROTO_11]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R4
  DUPCLOSURE R20 K31 [PROTO_12]
  CAPTURE VAL R19
  DUPCLOSURE R21 K32 [PROTO_13]
  CAPTURE VAL R10
  CAPTURE VAL R19
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R7
  RETURN R21 1
