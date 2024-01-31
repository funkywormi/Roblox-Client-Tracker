PROTO_0:
  GETTABLEKS R3 R0 K0 ["Label"]
  GETTABLEKS R4 R1 K0 ["Label"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["DisambiguationMenu"]
  MOVE R4 R0
  DUPTABLE R5 K2 [{"name"}]
  GETUPVAL R6 0
  LOADK R8 K3 ["AssetType"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["Assignment"]
  GETTABLEKS R10 R11 K5 ["assetType"]
  GETTABLEKS R9 R10 K6 ["Name"]
  NAMECALL R6 R6 K7 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K1 ["name"]
  NAMECALL R1 R1 K7 ["getText"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_2:
  DUPTABLE R1 K2 [{"Id", "Label"}]
  GETTABLEKS R2 R0 K3 ["attachmentName"]
  SETTABLEKS R2 R1 K0 ["Id"]
  GETUPVAL R2 0
  LOADK R4 K4 ["AccessoryAttachment"]
  GETTABLEKS R5 R0 K5 ["label"]
  NAMECALL R2 R2 K6 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["Label"]
  RETURN R1 1

PROTO_3:
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["Assignment"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K4 ["Id"]
  SETTABLEKS R2 R1 K5 ["attachmentName"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["SetAssignment"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SetAssignment"]
  DUPTABLE R2 K4 [{"meshPart", "assetType", "attachmentName"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["MeshPart"]
  SETTABLEKS R3 R2 K1 ["meshPart"]
  GETTABLEKS R4 R0 K6 ["Id"]
  JUMPIFNOTEQKS R4 K7 ["Ignore"] [+3]
  LOADNIL R3
  JUMP [+5]
  GETIMPORT R4 K10 [Enum.AssetType]
  GETTABLEKS R5 R0 K6 ["Id"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K2 ["assetType"]
  GETTABLEKS R4 R0 K6 ["Id"]
  JUMPIFNOTEQKS R4 K7 ["Ignore"] [+3]
  LOADK R3 K7 ["Ignore"]
  JUMP [+10]
  GETUPVAL R6 1
  GETIMPORT R8 K10 [Enum.AssetType]
  GETTABLEKS R9 R0 K6 ["Id"]
  GETTABLE R7 R8 R9
  GETTABLE R5 R6 R7
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K3 ["attachmentName"]
  SETTABLEKS R3 R2 K3 ["attachmentName"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["DisambiguationMenu"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETTABLEKS R5 R0 K3 ["MeshPart"]
  LOADK R7 K4 ["WrapLayer"]
  NAMECALL R5 R5 K5 ["FindFirstChildWhichIsA"]
  CALL R5 2 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R5 3
  CALL R5 0 2
  MOVE R7 R5
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  LOADK R14 K6 ["AssetType"]
  GETTABLEKS R15 R11 K7 ["Label"]
  NAMECALL R12 R1 K8 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K7 ["Label"]
  FORGLOOP R7 2 [-9]
  GETIMPORT R7 K11 [table.sort]
  MOVE R8 R5
  DUPCLOSURE R9 K12 [PROTO_0]
  CALL R7 2 0
  MOVE R8 R5
  LOADN R9 1
  DUPTABLE R10 K14 [{"Id", "Label"}]
  LOADK R11 K15 ["Ignore"]
  SETTABLEKS R11 R10 K13 ["Id"]
  LOADK R13 K1 ["DisambiguationMenu"]
  LOADK R14 K15 ["Ignore"]
  NAMECALL R11 R1 K8 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K7 ["Label"]
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K17 [table.insert]
  CALL R7 3 0
  LOADNIL R7
  GETTABLEKS R8 R0 K18 ["Assignment"]
  JUMPIFEQKNIL R8 [+73]
  GETTABLEKS R9 R0 K18 ["Assignment"]
  GETTABLEKS R8 R9 K19 ["assetType"]
  JUMPIFEQKNIL R8 [+67]
  NEWCLOSURE R8 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  JUMPIFNOT R4 [+31]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K20 ["util"]
  GETTABLEKS R9 R10 K21 ["isLayeredClothingAllowed"]
  GETTABLEKS R11 R0 K18 ["Assignment"]
  GETTABLEKS R10 R11 K19 ["assetType"]
  CALL R9 1 1
  JUMPIF R9 [+20]
  LOADK R11 K1 ["DisambiguationMenu"]
  LOADK R12 K22 ["LoneMeshPartBadMarketplaceLayeredClothing"]
  DUPTABLE R13 K24 [{"name"}]
  LOADK R16 K6 ["AssetType"]
  GETTABLEKS R19 R0 K18 ["Assignment"]
  GETTABLEKS R18 R19 K19 ["assetType"]
  GETTABLEKS R17 R18 K25 ["Name"]
  NAMECALL R14 R1 K8 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K23 ["name"]
  NAMECALL R9 R1 K8 ["getText"]
  CALL R9 4 1
  MOVE R7 R9
  JUMP [+31]
  JUMPIF R4 [+30]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K20 ["util"]
  GETTABLEKS R9 R10 K26 ["isRigidAccessoryAllowed"]
  GETTABLEKS R11 R0 K18 ["Assignment"]
  GETTABLEKS R10 R11 K19 ["assetType"]
  CALL R9 1 1
  JUMPIF R9 [+19]
  LOADK R11 K1 ["DisambiguationMenu"]
  LOADK R12 K27 ["LoneMeshPartBadMarketplaceRigidAccessories"]
  DUPTABLE R13 K24 [{"name"}]
  LOADK R16 K6 ["AssetType"]
  GETTABLEKS R19 R0 K18 ["Assignment"]
  GETTABLEKS R18 R19 K19 ["assetType"]
  GETTABLEKS R17 R18 K25 ["Name"]
  NAMECALL R14 R1 K8 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K23 ["name"]
  NAMECALL R9 R1 K8 ["getText"]
  CALL R9 4 1
  MOVE R7 R9
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K28 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K33 [{"Instance", "Name", "Subtitle", "WarningText", "LayoutOrder"}]
  GETTABLEKS R11 R0 K3 ["MeshPart"]
  SETTABLEKS R11 R10 K29 ["Instance"]
  GETTABLEKS R12 R0 K3 ["MeshPart"]
  GETTABLEKS R11 R12 K25 ["Name"]
  SETTABLEKS R11 R10 K25 ["Name"]
  JUMPIFNOT R4 [+6]
  LOADK R13 K1 ["DisambiguationMenu"]
  LOADK R14 K34 ["LayeredClothing"]
  NAMECALL R11 R1 K8 ["getText"]
  CALL R11 3 1
  JUMP [+5]
  LOADK R13 K1 ["DisambiguationMenu"]
  LOADK R14 K35 ["RigidAccessory"]
  NAMECALL R11 R1 K8 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K30 ["Subtitle"]
  SETTABLEKS R7 R10 K31 ["WarningText"]
  GETTABLEKS R11 R0 K32 ["LayoutOrder"]
  SETTABLEKS R11 R10 K32 ["LayoutOrder"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K28 ["createElement"]
  GETUPVAL R12 7
  DUPTABLE R13 K39 [{"AutomaticSize", "Layout", "Spacing"}]
  GETIMPORT R14 K42 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K36 ["AutomaticSize"]
  GETIMPORT R14 K45 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K37 ["Layout"]
  GETTABLEKS R14 R2 K46 ["HorizontalSpacing"]
  SETTABLEKS R14 R13 K38 ["Spacing"]
  DUPTABLE R14 K49 [{"AttachmentDropdown", "AssetTypeDropdown"}]
  GETTABLEKS R15 R0 K18 ["Assignment"]
  JUMPIFNOT R15 [+57]
  LOADB R15 0
  GETTABLEKS R17 R0 K18 ["Assignment"]
  GETTABLEKS R16 R17 K19 ["assetType"]
  JUMPIFEQKNIL R16 [+51]
  LOADB R15 0
  GETTABLEKS R19 R0 K18 ["Assignment"]
  GETTABLEKS R18 R19 K19 ["assetType"]
  GETTABLE R17 R6 R18
  LENGTH R16 R17
  LOADN R17 1
  JUMPIFNOTLT R17 R16 [+41]
  NOT R15 R4
  JUMPIFNOT R15 [+38]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K28 ["createElement"]
  GETUPVAL R16 8
  DUPTABLE R17 K54 [{"LayoutOrder", "Width", "SelectedId", "Items", "OnItemActivated"}]
  NAMECALL R18 R3 K55 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K32 ["LayoutOrder"]
  GETTABLEKS R18 R2 K56 ["AttachmentDropdownWidth"]
  SETTABLEKS R18 R17 K50 ["Width"]
  GETTABLEKS R19 R0 K18 ["Assignment"]
  GETTABLEKS R18 R19 K57 ["attachmentName"]
  SETTABLEKS R18 R17 K51 ["SelectedId"]
  GETUPVAL R19 9
  GETTABLEKS R18 R19 K58 ["map"]
  GETTABLEKS R21 R0 K18 ["Assignment"]
  GETTABLEKS R20 R21 K19 ["assetType"]
  GETTABLE R19 R6 R20
  NEWCLOSURE R20 P2
  CAPTURE VAL R1
  CALL R18 2 1
  SETTABLEKS R18 R17 K52 ["Items"]
  NEWCLOSURE R18 P3
  CAPTURE VAL R0
  SETTABLEKS R18 R17 K53 ["OnItemActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["AttachmentDropdown"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K28 ["createElement"]
  GETUPVAL R16 8
  DUPTABLE R17 K60 [{"LayoutOrder", "PlaceholderText", "Width", "SelectedId", "Items", "OnItemActivated"}]
  NAMECALL R18 R3 K55 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K32 ["LayoutOrder"]
  LOADK R20 K1 ["DisambiguationMenu"]
  LOADK R21 K61 ["AssetTypeDropdownPlaceholder"]
  NAMECALL R18 R1 K8 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K59 ["PlaceholderText"]
  GETTABLEKS R18 R2 K62 ["DropdownWidth"]
  SETTABLEKS R18 R17 K50 ["Width"]
  GETTABLEKS R19 R0 K18 ["Assignment"]
  JUMPIFEQKNIL R19 [+9]
  GETTABLEKS R20 R0 K18 ["Assignment"]
  GETTABLEKS R19 R20 K19 ["assetType"]
  JUMPIFNOTEQKNIL R19 [+3]
  LOADK R18 K15 ["Ignore"]
  JUMP [+18]
  GETTABLEKS R19 R0 K18 ["Assignment"]
  JUMPIFEQKNIL R19 [+14]
  GETTABLEKS R20 R0 K18 ["Assignment"]
  GETTABLEKS R19 R20 K19 ["assetType"]
  JUMPIFEQKNIL R19 [+8]
  GETTABLEKS R20 R0 K18 ["Assignment"]
  GETTABLEKS R19 R20 K19 ["assetType"]
  GETTABLEKS R18 R19 K25 ["Name"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K51 ["SelectedId"]
  SETTABLEKS R5 R17 K52 ["Items"]
  NEWCLOSURE R18 P4
  CAPTURE VAL R0
  CAPTURE VAL R6
  SETTABLEKS R18 R17 K53 ["OnItemActivated"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K48 ["AssetTypeDropdown"]
  CALL R11 3 -1
  CALL R8 -1 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["UGCValidation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["DisambiguationMenu"]
  GETTABLEKS R6 R7 K14 ["DisambiguationMenuEntry"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K12 ["Components"]
  GETTABLEKS R8 R9 K13 ["DisambiguationMenu"]
  GETTABLEKS R7 R8 K15 ["getChoosableAssetTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K16 ["Resources"]
  GETTABLEKS R8 R9 K17 ["Theme"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K18 ["Types"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K19 ["UI"]
  GETTABLEKS R10 R9 K20 ["Pane"]
  GETTABLEKS R11 R9 K21 ["SelectInput"]
  GETTABLEKS R13 R2 K22 ["Util"]
  GETTABLEKS R12 R13 K23 ["LayoutOrderIterator"]
  GETTABLEKS R14 R2 K24 ["ContextServices"]
  GETTABLEKS R13 R14 K25 ["Localization"]
  GETTABLEKS R15 R2 K24 ["ContextServices"]
  GETTABLEKS R14 R15 K26 ["Stylizer"]
  DUPCLOSURE R15 K27 [PROTO_5]
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R1
  RETURN R15 1
