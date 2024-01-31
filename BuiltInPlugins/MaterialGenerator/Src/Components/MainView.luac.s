PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["generationErrorRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["updateGenerationErrorHeightBinding"]
  JUMPIFNOTEQKNIL R0 [+3]
  LOADN R2 0
  JUMP [+4]
  GETTABLEKS R3 R0 K3 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K4 ["Y"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createBinding"]
  LOADN R2 0
  CALL R1 1 2
  SETTABLEKS R1 R0 K1 ["generationErrorHeightBinding"]
  SETTABLEKS R2 R0 K2 ["updateGenerationErrorHeightBinding"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["generationErrorRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["changeGenerationErrorHeight"]
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["changeGenerationErrorHeight"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["GenerationErrorType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["None"]
  JUMPIFNOTEQ R2 R3 [+12]
  GETTABLEKS R2 R1 K1 ["GenerationErrorType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["None"]
  JUMPIFEQ R2 R3 [+5]
  GETTABLEKS R2 R0 K3 ["updateGenerationErrorHeightBinding"]
  LOADN R3 0
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchUpdateMaterial"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K3 [{"BaseMaterial"}]
  SETTABLEKS R0 R4 K2 ["BaseMaterial"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K2 [UDim2.new]
  LOADN R2 1
  LOADN R3 0
  LOADN R4 1
  GETUPVAL R7 0
  MINUS R6 R7
  SUB R5 R6 R0
  CALL R1 4 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetBaseMaterial"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchSetSelectedMaterial"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["MaterialPreviewController"]
  NAMECALL R1 R1 K2 ["plotWaypoint"]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["IsTemporary"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K4 ["dispatchUploadMaterial"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["MaterialPreviewController"]
  NAMECALL R1 R1 K5 ["preserveCurrentSelection"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K6 ["dispatchApplyMaterial"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K7 ["StudioServices"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetBaseMaterial"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchSetSelectedMaterial"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["IsTemporary"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["dispatchUploadMaterial"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["dispatchApplyMaterial"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K4 ["StudioServices"]
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["MainView"]
  GETTABLEKS R4 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["Header"]
  GETTABLEKS R7 R3 K4 ["Size"]
  GETTABLEKS R6 R7 K5 ["Y"]
  GETTABLEKS R5 R6 K6 ["Offset"]
  GETTABLEKS R7 R3 K8 ["Padding"]
  MULK R6 R7 K7 [2]
  ADD R4 R5 R6
  GETTABLEKS R5 R1 K9 ["SelectedMaterial"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["new"]
  CALL R6 0 1
  NAMECALL R7 R6 K11 ["getNextOrder"]
  CALL R7 1 1
  LOADNIL R8
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+4]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  LOADNIL R9
  GETTABLEKS R10 R1 K12 ["GenerationErrorType"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K13 ["None"]
  JUMPIFEQ R10 R11 [+103]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K14 ["createElement"]
  GETUPVAL R11 5
  NEWTABLE R12 16 0
  NAMECALL R13 R6 K11 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K15 ["LayoutOrder"]
  GETIMPORT R13 K18 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K17 ["AutomaticSize"]
  DUPTABLE R13 K23 [{"Top", "Bottom", "Left", "Right"}]
  GETTABLEKS R15 R3 K24 ["VerticalSpacing"]
  GETTABLEKS R16 R2 K25 ["ErrorPadding"]
  SUB R14 R15 R16
  SETTABLEKS R14 R13 K19 ["Top"]
  GETTABLEKS R14 R3 K24 ["VerticalSpacing"]
  SETTABLEKS R14 R13 K20 ["Bottom"]
  GETTABLEKS R14 R2 K25 ["ErrorPadding"]
  SETTABLEKS R14 R13 K21 ["Left"]
  GETTABLEKS R14 R2 K25 ["ErrorPadding"]
  SETTABLEKS R14 R13 K22 ["Right"]
  SETTABLEKS R13 R12 K8 ["Padding"]
  GETIMPORT R13 K27 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K4 ["Size"]
  GETIMPORT R13 K30 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K28 ["HorizontalAlignment"]
  GETIMPORT R13 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K34 ["Layout"]
  GETIMPORT R13 K36 [Enum.VerticalAlignment.Top]
  SETTABLEKS R13 R12 K35 ["VerticalAlignment"]
  GETTABLEKS R13 R0 K37 ["generationErrorRef"]
  SETTABLEKS R13 R12 K38 ["ForwardRef"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K39 ["Change"]
  GETTABLEKS R13 R14 K40 ["AbsoluteSize"]
  GETTABLEKS R14 R0 K41 ["changeGenerationErrorHeight"]
  SETTABLE R14 R12 R13
  NEWTABLE R13 0 1
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K14 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K45 [{"Text", "Padding", "MaxWidth", "Close"}]
  MOVE R19 R1
  NAMECALL R17 R0 K46 ["_getErrorMesssage"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["Text"]
  GETTABLEKS R17 R2 K47 ["ErrorInnerPadding"]
  SETTABLEKS R17 R16 K8 ["Padding"]
  GETTABLEKS R17 R2 K48 ["ErrorMaxWidth"]
  SETTABLEKS R17 R16 K43 ["MaxWidth"]
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K49 ["dispatchCloseError"]
  SETTABLEKS R17 R16 K44 ["Close"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R9 R10
  GETTABLEKS R10 R1 K50 ["Analytics"]
  DUPTABLE R11 K53 [{"Header", "GenerationError", "TextureBrowserContainer"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K14 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K54 [{"LayoutOrder"}]
  SETTABLEKS R7 R14 K15 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K3 ["Header"]
  SETTABLEKS R9 R11 K51 ["GenerationError"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K14 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K55 [{"LayoutOrder", "Size"}]
  NAMECALL R15 R6 K11 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K15 ["LayoutOrder"]
  GETTABLEKS R15 R0 K56 ["generationErrorHeightBinding"]
  NEWCLOSURE R17 P1
  CAPTURE VAL R4
  NAMECALL R15 R15 K57 ["map"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K4 ["Size"]
  DUPTABLE R15 K61 [{"TextureBrowser", "MaterialView", "MaterialVariantProvider"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R18 1
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  GETUPVAL R17 8
  JUMP [+1]
  GETUPVAL R17 9
  DUPTABLE R18 K69 [{"DisableHover", "GeneratingImages", "Materials", "OnMaterialSelected", "OnGenerateVariations", "OnRemove", "OnRemoveAll", "SelectedMaterial", "Size"}]
  GETUPVAL R20 1
  CALL R20 0 1
  JUMPIFNOT R20 [+5]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R19 0 +1
  LOADB R19 1
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K62 ["DisableHover"]
  GETTABLEKS R19 R1 K63 ["GeneratingImages"]
  SETTABLEKS R19 R18 K63 ["GeneratingImages"]
  GETTABLEKS R19 R1 K64 ["Materials"]
  SETTABLEKS R19 R18 K64 ["Materials"]
  GETTABLEKS R19 R1 K70 ["dispatchSetSelectedMaterial"]
  SETTABLEKS R19 R18 K65 ["OnMaterialSelected"]
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K71 ["dispatchGenerateVariations"]
  SETTABLEKS R19 R18 K66 ["OnGenerateVariations"]
  GETTABLEKS R19 R1 K72 ["dispatchRemoveMaterial"]
  SETTABLEKS R19 R18 K67 ["OnRemove"]
  GETTABLEKS R19 R1 K73 ["dispatchRemoveAllMaterials"]
  SETTABLEKS R19 R18 K68 ["OnRemoveAll"]
  SETTABLEKS R5 R18 K9 ["SelectedMaterial"]
  GETIMPORT R19 K27 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K4 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K58 ["TextureBrowser"]
  JUMPIFNOT R5 [+41]
  GETUPVAL R17 1
  CALL R17 0 1
  JUMPIF R17 [+38]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K79 [{"IsSavingMaterial", "Material", "OnBaseMaterialChanged", "OnClose", "OnSaveAndApply"}]
  GETTABLEKS R19 R1 K74 ["IsSavingMaterial"]
  SETTABLEKS R19 R18 K74 ["IsSavingMaterial"]
  SETTABLEKS R5 R18 K75 ["Material"]
  GETUPVAL R20 1
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  MOVE R19 R8
  JUMP [+2]
  NEWCLOSURE R19 P2
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K76 ["OnBaseMaterialChanged"]
  GETUPVAL R20 1
  CALL R20 0 1
  JUMPIFNOT R20 [+3]
  NEWCLOSURE R19 P3
  CAPTURE VAL R1
  JUMP [+2]
  GETTABLEKS R19 R1 K80 ["dispatchClearSelectedMaterial"]
  SETTABLEKS R19 R18 K77 ["OnClose"]
  NEWCLOSURE R19 P4
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K78 ["OnSaveAndApply"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K59 ["MaterialView"]
  GETUPVAL R17 1
  CALL R17 0 1
  JUMPIFNOT R17 [+14]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 11
  DUPTABLE R18 K82 [{"FolderName", "Materials"}]
  LOADK R19 K83 ["MaterialGenerator"]
  SETTABLEKS R19 R18 K81 ["FolderName"]
  GETTABLEKS R19 R1 K64 ["Materials"]
  SETTABLEKS R19 R18 K64 ["Materials"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K60 ["MaterialVariantProvider"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K52 ["TextureBrowserContainer"]
  GETUPVAL R12 1
  CALL R12 0 1
  JUMPIFNOT R12 [+156]
  GETTABLEKS R12 R1 K40 ["AbsoluteSize"]
  MOVE R13 R5
  JUMPIFNOT R13 [+7]
  GETTABLEKS R14 R12 K84 ["X"]
  LOADN R15 184
  JUMPIFLT R14 R15 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  MOVE R14 R5
  JUMPIFNOT R14 [+1]
  NOT R14 R13
  GETIMPORT R15 K86 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  LOADNIL R16
  JUMPIFNOT R14 [+21]
  GETIMPORT R17 K27 [UDim2.new]
  LOADN R18 0
  LOADN R19 44
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  MOVE R16 R17
  GETIMPORT R17 K27 [UDim2.new]
  LOADN R18 1
  GETTABLEKS R21 R16 K84 ["X"]
  GETTABLEKS R20 R21 K6 ["Offset"]
  MINUS R19 R20
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  MOVE R15 R17
  JUMP [+21]
  JUMPIFNOT R13 [+20]
  GETIMPORT R17 K27 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 24
  CALL R17 4 1
  MOVE R16 R17
  GETIMPORT R17 K27 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  GETTABLEKS R23 R16 K5 ["Y"]
  GETTABLEKS R22 R23 K6 ["Offset"]
  MINUS R21 R22
  CALL R17 4 1
  MOVE R15 R17
  JUMPIFNOT R13 [+3]
  GETIMPORT R17 K33 [Enum.FillDirection.Vertical]
  JUMP [+2]
  GETIMPORT R17 K88 [Enum.FillDirection.Horizontal]
  GETUPVAL R18 2
  DUPTABLE R19 K90 [{"Layout", "Style", "VerticalAlignment"}]
  SETTABLEKS R17 R19 K34 ["Layout"]
  LOADK R20 K91 ["Box"]
  SETTABLEKS R20 R19 K89 ["Style"]
  GETIMPORT R20 K36 [Enum.VerticalAlignment.Top]
  SETTABLEKS R20 R19 K35 ["VerticalAlignment"]
  GETTABLEKS R20 R1 K92 ["WrapperProps"]
  CALL R18 2 1
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K14 ["createElement"]
  GETUPVAL R20 5
  MOVE R21 R18
  DUPTABLE R22 K95 [{"MainContent", "Editor"}]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K14 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K96 [{"Layout", "LayoutOrder", "Size"}]
  GETIMPORT R26 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K34 ["Layout"]
  LOADN R26 1
  SETTABLEKS R26 R25 K15 ["LayoutOrder"]
  SETTABLEKS R15 R25 K4 ["Size"]
  MOVE R26 R11
  CALL R23 3 1
  SETTABLEKS R23 R22 K93 ["MainContent"]
  JUMPIFNOT R5 [+43]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K14 ["createElement"]
  GETUPVAL R24 12
  DUPTABLE R25 K97 [{"IsSavingMaterial", "LayoutOrder", "Material", "OnBaseMaterialChanged", "OnClose", "OnSaveAndApply", "Size"}]
  GETTABLEKS R26 R1 K74 ["IsSavingMaterial"]
  SETTABLEKS R26 R25 K74 ["IsSavingMaterial"]
  LOADN R26 2
  SETTABLEKS R26 R25 K15 ["LayoutOrder"]
  SETTABLEKS R5 R25 K75 ["Material"]
  GETUPVAL R27 1
  CALL R27 0 1
  JUMPIFNOT R27 [+2]
  MOVE R26 R8
  JUMP [+2]
  NEWCLOSURE R26 P5
  CAPTURE VAL R0
  SETTABLEKS R26 R25 K76 ["OnBaseMaterialChanged"]
  GETUPVAL R27 1
  CALL R27 0 1
  JUMPIFNOT R27 [+3]
  NEWCLOSURE R26 P6
  CAPTURE VAL R1
  JUMP [+2]
  GETTABLEKS R26 R1 K80 ["dispatchClearSelectedMaterial"]
  SETTABLEKS R26 R25 K77 ["OnClose"]
  NEWCLOSURE R26 P7
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R10
  SETTABLEKS R26 R25 K78 ["OnSaveAndApply"]
  SETTABLEKS R16 R25 K4 ["Size"]
  CALL R23 2 1
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K94 ["Editor"]
  CALL R19 3 -1
  RETURN R19 -1
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K14 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K98 [{"HorizontalAlignment", "Layout", "Style", "VerticalAlignment"}]
  GETIMPORT R15 K99 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K28 ["HorizontalAlignment"]
  GETIMPORT R15 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K34 ["Layout"]
  LOADK R15 K91 ["Box"]
  SETTABLEKS R15 R14 K89 ["Style"]
  GETIMPORT R15 K36 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K35 ["VerticalAlignment"]
  MOVE R15 R11
  CALL R12 3 -1
  RETURN R12 -1

PROTO_13:
  GETTABLEKS R2 R1 K0 ["GenerationErrorType"]
  GETTABLEKS R3 R1 K1 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["CustomMessage"]
  JUMPIFNOTEQ R2 R4 [+10]
  GETTABLEKS R4 R1 K3 ["GenerationErrorMessage"]
  JUMPIF R4 [+5]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K5 ["UnknownGenerationError"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 1
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["NoSession"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K7 ["NoSession"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["ServerError500"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K8 ["ServerError500"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["ServerError504"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K9 ["ServerError504"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["TextFullyFiltered"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K10 ["TextFullyFiltered"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["NoSelectedMaterial"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K11 ["NoSelectedMaterial"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["FailedToGenerateMaps"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K12 ["FailedToGenerateMaps"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["TooManyRequests"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K13 ["TooManyRequests"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K14 ["AccountingFailedDecrement"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K14 ["AccountingFailedDecrement"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["FailedToSetImage"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K15 ["FailedToSetImage"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K16 ["Unknown"]
  JUMPIFNOTEQ R2 R4 [+7]
  LOADK R6 K4 ["Errors"]
  LOADK R7 K5 ["UnknownGenerationError"]
  NAMECALL R4 R3 K6 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  GETIMPORT R4 K18 [error]
  LOADK R5 K19 ["Unknown errorType"]
  CALL R4 1 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R2 K6 [{"GeneratingImages", "GenerationErrorType", "GenerationErrorMessage", "IsSavingMaterial", "Materials", "SelectedMaterial"}]
  GETTABLEKS R4 R0 K7 ["AppStateReducer"]
  GETTABLEKS R3 R4 K8 ["generatingImages"]
  SETTABLEKS R3 R2 K0 ["GeneratingImages"]
  GETTABLEKS R5 R0 K7 ["AppStateReducer"]
  GETTABLEKS R4 R5 K9 ["generationError"]
  GETTABLEKS R3 R4 K10 ["generationErrorType"]
  SETTABLEKS R3 R2 K1 ["GenerationErrorType"]
  GETTABLEKS R5 R0 K7 ["AppStateReducer"]
  GETTABLEKS R4 R5 K9 ["generationError"]
  GETTABLEKS R3 R4 K11 ["message"]
  SETTABLEKS R3 R2 K2 ["GenerationErrorMessage"]
  GETTABLEKS R4 R0 K7 ["AppStateReducer"]
  GETTABLEKS R3 R4 K12 ["isSavingMaterial"]
  SETTABLEKS R3 R2 K3 ["IsSavingMaterial"]
  GETTABLEKS R4 R0 K13 ["MaterialsReducer"]
  GETTABLEKS R3 R4 K14 ["materials"]
  SETTABLEKS R3 R2 K4 ["Materials"]
  GETTABLEKS R4 R0 K13 ["MaterialsReducer"]
  GETTABLEKS R3 R4 K15 ["selectedMaterial"]
  SETTABLEKS R3 R2 K5 ["SelectedMaterial"]
  RETURN R2 1

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["None"]
  LOADNIL R3
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETTABLEKS R4 R0 K0 ["Textures"]
  GETTABLEKS R3 R4 K1 ["ColorMap"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 1
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R2 3
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_25:
  DUPTABLE R1 K10 [{"dispatchClearSelectedMaterial", "dispatchCloseError", "dispatchGenerateVariations", "dispatchRemoveAllMaterials", "dispatchRemoveMaterial", "dispatchSetBaseMaterial", "dispatchSetSelectedMaterial", "dispatchUpdateMaterial", "dispatchUploadMaterial", "dispatchApplyMaterial"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+3]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K0 ["dispatchClearSelectedMaterial"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K1 ["dispatchCloseError"]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K2 ["dispatchGenerateVariations"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K3 ["dispatchRemoveAllMaterials"]
  NEWCLOSURE R2 P4
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R2 R1 K4 ["dispatchRemoveMaterial"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+3]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  SETTABLEKS R2 R1 K5 ["dispatchSetBaseMaterial"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  SETTABLEKS R2 R1 K6 ["dispatchSetSelectedMaterial"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["dispatchUpdateMaterial"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U12
  SETTABLEKS R2 R1 K8 ["dispatchUploadMaterial"]
  NEWCLOSURE R2 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U13
  SETTABLEKS R2 R1 K9 ["dispatchApplyMaterial"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["MaterialFramework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K10 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R11 R0 K5 ["Packages"]
  GETTABLEKS R10 R11 K11 ["_Index"]
  GETTABLEKS R9 R10 K12 ["DeveloperFramework"]
  GETTABLEKS R8 R9 K12 ["DeveloperFramework"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K13 ["Types"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K15 ["ContextServices"]
  GETTABLEKS R9 R8 K16 ["withContext"]
  GETTABLEKS R10 R8 K17 ["Analytics"]
  GETTABLEKS R11 R8 K18 ["Localization"]
  GETTABLEKS R13 R2 K19 ["Style"]
  GETTABLEKS R12 R13 K20 ["Stylizer"]
  GETTABLEKS R13 R2 K21 ["UI"]
  GETTABLEKS R14 R13 K22 ["Pane"]
  GETTABLEKS R15 R2 K23 ["Util"]
  GETTABLEKS R16 R15 K24 ["LayoutOrderIterator"]
  GETTABLEKS R18 R2 K25 ["Wrappers"]
  GETTABLEKS R17 R18 K26 ["withAbsoluteSize"]
  GETTABLEKS R19 R3 K27 ["Context"]
  GETTABLEKS R18 R19 K28 ["StudioServices"]
  GETTABLEKS R20 R0 K14 ["Src"]
  GETTABLEKS R19 R20 K29 ["Actions"]
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R19 K30 ["ClearSelectedMaterial"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R19 K31 ["RemoveAllMaterials"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R19 K32 ["DEPRECATED_RemoveMaterial"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R19 K33 ["SetBaseMaterial"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R19 K34 ["SetGenerationError"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R19 K35 ["SetSelectedMaterial"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R19 K36 ["SetInitialImageId"]
  CALL R26 1 1
  GETTABLEKS R28 R0 K14 ["Src"]
  GETTABLEKS R27 R28 K37 ["Thunks"]
  GETIMPORT R28 K4 [require]
  GETTABLEKS R29 R27 K38 ["ApplyMaterial"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R30 R27 K39 ["RemoveMaterial"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R31 R27 K40 ["UpdateMaterial"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R32 R27 K41 ["UploadMaterial"]
  CALL R31 1 1
  GETTABLEKS R33 R0 K14 ["Src"]
  GETTABLEKS R32 R33 K42 ["Components"]
  GETIMPORT R33 K4 [require]
  GETTABLEKS R34 R32 K43 ["Browser"]
  CALL R33 1 1
  GETIMPORT R34 K4 [require]
  GETTABLEKS R35 R32 K44 ["Editor"]
  CALL R34 1 1
  GETIMPORT R35 K4 [require]
  GETTABLEKS R36 R32 K45 ["Header"]
  CALL R35 1 1
  GETIMPORT R36 K4 [require]
  GETTABLEKS R37 R32 K46 ["MaterialView"]
  CALL R36 1 1
  GETIMPORT R37 K4 [require]
  GETTABLEKS R38 R32 K47 ["TextureBrowser"]
  CALL R37 1 1
  GETIMPORT R38 K4 [require]
  GETTABLEKS R39 R32 K48 ["ErrorBox"]
  CALL R38 1 1
  GETIMPORT R39 K4 [require]
  GETTABLEKS R40 R32 K49 ["MaterialVariantProvider"]
  CALL R39 1 1
  GETIMPORT R40 K4 [require]
  GETTABLEKS R43 R0 K14 ["Src"]
  GETTABLEKS R42 R43 K50 ["Controllers"]
  GETTABLEKS R41 R42 K51 ["MaterialPreviewController"]
  CALL R40 1 1
  GETTABLEKS R42 R0 K14 ["Src"]
  GETTABLEKS R41 R42 K52 ["Enum"]
  GETIMPORT R42 K4 [require]
  GETTABLEKS R43 R41 K53 ["GenerationErrorType"]
  CALL R42 1 1
  GETIMPORT R43 K4 [require]
  GETTABLEKS R46 R0 K14 ["Src"]
  GETTABLEKS R45 R46 K54 ["Flags"]
  GETTABLEKS R44 R45 K55 ["getFFlagMaterialGeneratorNewUI"]
  CALL R43 1 1
  GETIMPORT R44 K4 [require]
  GETTABLEKS R47 R0 K14 ["Src"]
  GETTABLEKS R46 R47 K54 ["Flags"]
  GETTABLEKS R45 R46 K56 ["getFFlagMaterialGeneratorSupportVariations2"]
  CALL R44 1 1
  GETTABLEKS R45 R1 K57 ["join"]
  GETTABLEKS R46 R4 K58 ["PureComponent"]
  LOADK R48 K59 ["MainView"]
  NAMECALL R46 R46 K60 ["extend"]
  CALL R46 2 1
  DUPCLOSURE R47 K61 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R47 R46 K62 ["init"]
  DUPCLOSURE R47 K63 [PROTO_2]
  SETTABLEKS R47 R46 K64 ["didMount"]
  DUPCLOSURE R47 K65 [PROTO_3]
  CAPTURE VAL R42
  SETTABLEKS R47 R46 K66 ["didUpdate"]
  DUPCLOSURE R47 K67 [PROTO_12]
  CAPTURE VAL R16
  CAPTURE VAL R43
  CAPTURE VAL R45
  CAPTURE VAL R42
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R38
  CAPTURE VAL R35
  CAPTURE VAL R33
  CAPTURE VAL R37
  CAPTURE VAL R36
  CAPTURE VAL R39
  CAPTURE VAL R34
  SETTABLEKS R47 R46 K68 ["render"]
  DUPCLOSURE R47 K69 [PROTO_13]
  CAPTURE VAL R42
  SETTABLEKS R47 R46 K70 ["_getErrorMesssage"]
  MOVE R47 R9
  DUPTABLE R48 K71 [{"Analytics", "Localization", "MaterialPreviewController", "StudioServices", "Stylizer"}]
  SETTABLEKS R10 R48 K17 ["Analytics"]
  SETTABLEKS R11 R48 K18 ["Localization"]
  MOVE R50 R43
  CALL R50 0 1
  JUMPIFNOT R50 [+2]
  LOADNIL R49
  JUMP [+1]
  MOVE R49 R40
  SETTABLEKS R49 R48 K51 ["MaterialPreviewController"]
  SETTABLEKS R18 R48 K28 ["StudioServices"]
  SETTABLEKS R12 R48 K20 ["Stylizer"]
  CALL R47 1 1
  MOVE R48 R46
  CALL R47 1 1
  MOVE R46 R47
  DUPCLOSURE R47 K72 [PROTO_14]
  DUPCLOSURE R48 K73 [PROTO_25]
  CAPTURE VAL R43
  CAPTURE VAL R20
  CAPTURE VAL R24
  CAPTURE VAL R42
  CAPTURE VAL R44
  CAPTURE VAL R26
  CAPTURE VAL R21
  CAPTURE VAL R29
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R25
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R28
  MOVE R49 R43
  CALL R49 0 1
  JUMPIFNOT R49 [+10]
  MOVE R49 R17
  GETTABLEKS R50 R5 K74 ["connect"]
  MOVE R51 R47
  MOVE R52 R48
  CALL R50 2 1
  MOVE R51 R46
  CALL R50 1 -1
  CALL R49 -1 -1
  RETURN R49 -1
  GETTABLEKS R49 R5 K74 ["connect"]
  MOVE R50 R47
  MOVE R51 R48
  CALL R49 2 1
  MOVE R50 R46
  CALL R49 1 -1
  RETURN R49 -1
