PROTO_0:
  SETUPVAL R0 0
  SETUPVAL R1 1
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+69]
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["PickMultipleFilesWithPrompt"]
  CALL R1 1 1
  LOADB R2 0
  LOADB R3 0
  LENGTH R4 R1
  JUMPIFNOTEQKN R4 K1 [0] [+2]
  LOADB R3 1
  NEWTABLE R4 0 1
  GETTABLEN R5 R1 1
  SETLIST R4 R5 1 [1]
  MOVE R1 R4
  NEWTABLE R4 0 0
  MOVE R5 R1
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R10 1
  MOVE R12 R9
  NAMECALL R10 R10 K2 ["StartSessionWithPath"]
  CALL R10 2 1
  FASTCALL2 TABLE_INSERT R4 R10 [+5]
  MOVE R12 R4
  MOVE R13 R10
  GETIMPORT R11 K5 [table.insert]
  CALL R11 2 0
  MOVE R11 R2
  JUMPIF R11 [+4]
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  MOVE R2 R11
  FORGLOOP R5 2 [-20]
  JUMPIFNOT R2 [+5]
  GETUPVAL R7 2
  CALL R7 0 -1
  NAMECALL R5 R0 K6 ["dispatch"]
  CALL R5 -1 0
  LENGTH R5 R1
  JUMPIFNOTEQKN R5 K7 [1] [+10]
  GETUPVAL R7 3
  GETTABLEN R8 R4 1
  NEWCLOSURE R9 P0
  CAPTURE REF R2
  CAPTURE REF R3
  CALL R7 2 -1
  NAMECALL R5 R0 K6 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 4
  JUMPIFNOT R5 [+4]
  GETUPVAL R5 4
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 0
  CLOSEUPVALS R2
  RETURN R0 0
  LOADNIL R1
  LOADNIL R2
  LOADNIL R3
  LOADNIL R4
  GETUPVAL R5 1
  NAMECALL R5 R5 K8 ["StartSessionWithPrompt"]
  CALL R5 1 1
  MOVE R1 R5
  JUMPIFNOT R1 [+8]
  NAMECALL R5 R1 K9 ["GetImportTree"]
  CALL R5 1 1
  MOVE R2 R5
  NAMECALL R5 R1 K10 ["GetFilename"]
  CALL R5 1 1
  MOVE R3 R5
  JUMPIFNOT R2 [+72]
  JUMPIFNOT R3 [+71]
  LOADNIL R5
  GETUPVAL R6 5
  CALL R6 0 1
  JUMPIFNOT R6 [+5]
  NAMECALL R6 R2 K11 ["GetPreview"]
  CALL R6 1 1
  MOVE R5 R6
  JUMP [+6]
  GETTABLEKS R8 R2 K12 ["Id"]
  NAMECALL R6 R1 K13 ["GetInstance"]
  CALL R6 2 1
  MOVE R5 R6
  NEWTABLE R6 0 0
  NAMECALL R7 R2 K14 ["GetDescendants"]
  CALL R7 1 3
  FORGPREP R7
  GETTABLEKS R12 R11 K15 ["ShouldImport"]
  SETTABLE R12 R6 R11
  FORGLOOP R7 2 [-4]
  LOADB R7 1
  SETTABLE R7 R6 R2
  GETUPVAL R9 2
  CALL R9 0 -1
  NAMECALL R7 R0 K6 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 6
  MOVE R10 R5
  CALL R9 1 -1
  NAMECALL R7 R0 K6 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 7
  MOVE R10 R2
  CALL R9 1 -1
  NAMECALL R7 R0 K6 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 8
  MOVE R10 R3
  CALL R9 1 -1
  NAMECALL R7 R0 K6 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 9
  MOVE R10 R2
  CALL R9 1 -1
  NAMECALL R7 R0 K6 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 10
  MOVE R10 R6
  CALL R9 1 -1
  NAMECALL R7 R0 K6 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R7 11
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  GETUPVAL R9 12
  CALL R9 0 -1
  NAMECALL R7 R0 K6 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R7 13
  LOADNIL R8
  CALL R7 1 -1
  NAMECALL R5 R0 K6 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R7 14
  MOVE R8 R1
  CALL R7 1 -1
  NAMECALL R5 R0 K6 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 4
  JUMPIFNOT R5 [+15]
  LOADB R5 0
  JUMPIFEQKNIL R2 [+5]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFEQKNIL R1 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETUPVAL R7 4
  MOVE R8 R5
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
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
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AssetImportService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Actions"]
  GETTABLEKS R3 R4 K11 ["SetAssetImportSession"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Actions"]
  GETTABLEKS R4 R5 K12 ["SetImportTree"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Actions"]
  GETTABLEKS R5 R6 K13 ["SetFilename"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R1 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Actions"]
  GETTABLEKS R6 R7 K14 ["SetSelectedImportItem"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K9 ["Src"]
  GETTABLEKS R8 R9 K10 ["Actions"]
  GETTABLEKS R7 R8 K15 ["SetImportStatuses"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K9 ["Src"]
  GETTABLEKS R9 R10 K16 ["Thunks"]
  GETTABLEKS R8 R9 K17 ["UpdatePreviewInstance"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R1 K9 ["Src"]
  GETTABLEKS R10 R11 K16 ["Thunks"]
  GETTABLEKS R9 R10 K18 ["LoadManagedGroups"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R1 K9 ["Src"]
  GETTABLEKS R11 R12 K10 ["Actions"]
  GETTABLEKS R10 R11 K19 ["ResetState"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R1 K9 ["Src"]
  GETTABLEKS R12 R13 K16 ["Thunks"]
  GETTABLEKS R11 R12 K20 ["UpdateChecked"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R1 K9 ["Src"]
  GETTABLEKS R13 R14 K16 ["Thunks"]
  GETTABLEKS R12 R13 K21 ["ShowImportPreview"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K9 ["Src"]
  GETTABLEKS R14 R15 K22 ["Flags"]
  GETTABLEKS R13 R14 K23 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K9 ["Src"]
  GETTABLEKS R15 R16 K22 ["Flags"]
  GETTABLEKS R14 R15 K24 ["getFFlagAssetImportUseUploadId"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R17 R1 K9 ["Src"]
  GETTABLEKS R16 R17 K22 ["Flags"]
  GETTABLEKS R15 R16 K25 ["getFFlagCinPreviewInstances"]
  CALL R14 1 1
  DUPCLOSURE R15 K26 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R2
  RETURN R15 1
