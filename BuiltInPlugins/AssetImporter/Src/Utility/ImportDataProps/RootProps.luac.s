PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R1 K0 ["IsGltf"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  NAMECALL R3 R1 K1 ["HasAnimation"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R1 K0 ["IsGltf"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  NAMECALL R3 R1 K1 ["HasAnimation"]
  CALL R3 1 1
  NOT R2 R3
  JUMPIF R2 [+4]
  NAMECALL R3 R1 K2 ["usesCustomRestPoseLua"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_2:
  NAMECALL R3 R1 K0 ["IsR15"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_3:
  NAMECALL R3 R1 K0 ["IsAvatar"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_4:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  JUMPIF R2 [+4]
  NAMECALL R3 R1 K0 ["IsR15"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["InsertInWorkspace"]
  NOT R1 R2
  RETURN R1 1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["AddModelToInventory"]
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R0 K1 ["ImportAsPackage"]
  NOT R1 R2
  RETURN R1 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["AddModelToInventory"]
  NOT R1 R2
  RETURN R1 1

PROTO_8:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["RunningUnderCLI"]
  CALL R1 0 1
  NOT R0 R1
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["RunningUnderCLI"]
  CALL R2 0 1
  NOT R1 R2
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["IsR15"]
  CALL R1 1 1
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  CALL R2 0 1
  NOT R1 R2
  RETURN R1 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["AddModelToInventory"]
  JUMPIFNOT R1 [+2]
  GETTABLEKS R1 R0 K1 ["ImportAsPackage"]
  RETURN R1 1

PROTO_12:
  GETUPVAL R1 0
  CALL R1 0 1
  NOT R0 R1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["Properties"]
  GETTABLEKS R4 R5 K10 ["Types"]
  GETTABLEKS R3 R4 K11 ["AssetIdProperty"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K8 ["Components"]
  GETTABLEKS R6 R7 K9 ["Properties"]
  GETTABLEKS R5 R6 K10 ["Types"]
  GETTABLEKS R4 R5 K12 ["AnimationListProperty"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K8 ["Components"]
  GETTABLEKS R7 R8 K9 ["Properties"]
  GETTABLEKS R6 R7 K10 ["Types"]
  GETTABLEKS R5 R6 K13 ["UploadDestinationProperty"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K14 ["Flags"]
  GETTABLEKS R6 R7 K15 ["getFFlagShowOffCenterOriginImporter"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K14 ["Flags"]
  GETTABLEKS R7 R8 K16 ["getFFlagChooseAnimationForRestPose"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K14 ["Flags"]
  GETTABLEKS R8 R9 K17 ["getFFlagHideAnimationSettingForGltf"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K5 ["Src"]
  GETTABLEKS R10 R11 K14 ["Flags"]
  GETTABLEKS R9 R10 K18 ["getFFlagImporterOpensAvatarPreviewerBetaCheck"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K5 ["Src"]
  GETTABLEKS R11 R12 K14 ["Flags"]
  GETTABLEKS R10 R11 K19 ["getFFlagAssetImportUseUploadId"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPCLOSURE R11 K21 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPCLOSURE R12 K22 [PROTO_2]
  DUPCLOSURE R13 K23 [PROTO_3]
  DUPCLOSURE R14 K24 [PROTO_4]
  CAPTURE VAL R8
  DUPCLOSURE R15 K25 [PROTO_5]
  DUPCLOSURE R16 K26 [PROTO_6]
  DUPCLOSURE R17 K27 [PROTO_7]
  DUPCLOSURE R18 K28 [PROTO_8]
  CAPTURE VAL R8
  CAPTURE VAL R1
  DUPCLOSURE R19 K29 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R1
  DUPCLOSURE R20 K30 [PROTO_10]
  CAPTURE VAL R5
  DUPCLOSURE R21 K31 [PROTO_11]
  DUPCLOSURE R22 K32 [PROTO_12]
  CAPTURE VAL R9
  NEWTABLE R23 0 6
  DUPTABLE R24 K34 [{"Section", "Properties"}]
  LOADK R25 K35 ["FileGeneral"]
  SETTABLEKS R25 R24 K33 ["Section"]
  NEWTABLE R25 0 12
  DUPTABLE R26 K38 [{"Name", "Editable"}]
  LOADK R27 K39 ["ImportName"]
  SETTABLEKS R27 R26 K36 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K37 ["Editable"]
  DUPTABLE R27 K38 [{"Name", "Editable"}]
  LOADK R28 K40 ["ImportAsModelAsset"]
  SETTABLEKS R28 R27 K36 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K37 ["Editable"]
  DUPTABLE R28 K38 [{"Name", "Editable"}]
  LOADK R29 K41 ["AddModelToInventory"]
  SETTABLEKS R29 R28 K36 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K37 ["Editable"]
  DUPTABLE R29 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R30 K44 ["ImportAsPackage"]
  SETTABLEKS R30 R29 K36 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K37 ["Editable"]
  SETTABLEKS R17 R29 K42 ["ShouldHide"]
  DUPTABLE R30 K46 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R31 K47 ["ExistingPackageId"]
  SETTABLEKS R31 R30 K36 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K37 ["Editable"]
  SETTABLEKS R2 R30 K45 ["ComponentFactory"]
  SETTABLEKS R16 R30 K42 ["ShouldHide"]
  DUPTABLE R31 K46 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R32 K48 ["PreferredUploadId"]
  SETTABLEKS R32 R31 K36 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K37 ["Editable"]
  SETTABLEKS R4 R31 K45 ["ComponentFactory"]
  SETTABLEKS R22 R31 K42 ["ShouldHide"]
  DUPTABLE R32 K38 [{"Name", "Editable"}]
  LOADK R33 K49 ["InsertInWorkspace"]
  SETTABLEKS R33 R32 K36 ["Name"]
  LOADB R33 1
  SETTABLEKS R33 R32 K37 ["Editable"]
  DUPTABLE R33 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R34 K50 ["InsertWithScenePosition"]
  SETTABLEKS R34 R33 K36 ["Name"]
  LOADB R34 1
  SETTABLEKS R34 R33 K37 ["Editable"]
  SETTABLEKS R15 R33 K42 ["ShouldHide"]
  DUPTABLE R34 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R35 K51 ["UseSceneOriginAsCFrame"]
  SETTABLEKS R35 R34 K36 ["Name"]
  LOADB R35 1
  SETTABLEKS R35 R34 K37 ["Editable"]
  SETTABLEKS R20 R34 K42 ["ShouldHide"]
  DUPTABLE R35 K38 [{"Name", "Editable"}]
  LOADK R36 K52 ["UseSceneOriginAsPivot"]
  SETTABLEKS R36 R35 K36 ["Name"]
  LOADB R36 1
  SETTABLEKS R36 R35 K37 ["Editable"]
  DUPTABLE R36 K38 [{"Name", "Editable"}]
  LOADK R37 K53 ["Anchored"]
  SETTABLEKS R37 R36 K36 ["Name"]
  LOADB R37 1
  SETTABLEKS R37 R36 K37 ["Editable"]
  DUPTABLE R37 K38 [{"Name", "Editable"}]
  LOADK R38 K54 ["UsesCages"]
  SETTABLEKS R38 R37 K36 ["Name"]
  LOADB R38 1
  SETTABLEKS R38 R37 K37 ["Editable"]
  SETLIST R25 R26 12 [1]
  SETTABLEKS R25 R24 K9 ["Properties"]
  DUPTABLE R25 K34 [{"Section", "Properties"}]
  LOADK R26 K55 ["AvatarGeneral"]
  SETTABLEKS R26 R25 K33 ["Section"]
  NEWTABLE R26 0 1
  DUPTABLE R27 K38 [{"Name", "Editable"}]
  LOADK R28 K56 ["RigScale"]
  SETTABLEKS R28 R27 K36 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K37 ["Editable"]
  SETLIST R26 R27 1 [1]
  SETTABLEKS R26 R25 K9 ["Properties"]
  DUPTABLE R26 K58 [{"Section", "Properties", "Callouts"}]
  LOADK R27 K59 ["RigGeneral"]
  SETTABLEKS R27 R26 K33 ["Section"]
  NEWTABLE R27 0 3
  DUPTABLE R28 K38 [{"Name", "Editable"}]
  LOADK R29 K60 ["RigType"]
  SETTABLEKS R29 R28 K36 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K37 ["Editable"]
  DUPTABLE R29 K61 [{"Name", "Editable", "ShouldHide", "Callouts"}]
  LOADK R30 K62 ["ValidateUgcBody"]
  SETTABLEKS R30 R29 K36 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K37 ["Editable"]
  SETTABLEKS R14 R29 K42 ["ShouldHide"]
  NEWTABLE R30 0 1
  DUPTABLE R31 K64 [{"Name", "ShouldShow"}]
  LOADK R32 K65 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R32 R31 K36 ["Name"]
  SETTABLEKS R19 R31 K63 ["ShouldShow"]
  SETLIST R30 R31 1 [1]
  SETTABLEKS R30 R29 K57 ["Callouts"]
  DUPTABLE R30 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R31 K56 ["RigScale"]
  SETTABLEKS R31 R30 K36 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K37 ["Editable"]
  SETTABLEKS R12 R30 K42 ["ShouldHide"]
  SETLIST R27 R28 3 [1]
  SETTABLEKS R27 R26 K9 ["Properties"]
  NEWTABLE R27 0 1
  DUPTABLE R28 K64 [{"Name", "ShouldShow"}]
  LOADK R29 K65 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R29 R28 K36 ["Name"]
  SETTABLEKS R19 R28 K63 ["ShouldShow"]
  SETLIST R27 R28 1 [1]
  SETTABLEKS R27 R26 K57 ["Callouts"]
  DUPTABLE R27 K34 [{"Section", "Properties"}]
  LOADK R28 K66 ["AnimationGeneral"]
  SETTABLEKS R28 R27 K33 ["Section"]
  NEWTABLE R28 0 2
  DUPTABLE R29 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R30 K67 ["RestPose"]
  SETTABLEKS R30 R29 K36 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K37 ["Editable"]
  SETTABLEKS R10 R29 K42 ["ShouldHide"]
  DUPTABLE R30 K46 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R31 K68 ["AnimationIdForRestPose"]
  SETTABLEKS R31 R30 K36 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K37 ["Editable"]
  SETTABLEKS R3 R30 K45 ["ComponentFactory"]
  SETTABLEKS R11 R30 K42 ["ShouldHide"]
  SETLIST R28 R29 2 [1]
  SETTABLEKS R28 R27 K9 ["Properties"]
  DUPTABLE R28 K34 [{"Section", "Properties"}]
  LOADK R29 K69 ["FileTransform"]
  SETTABLEKS R29 R28 K33 ["Section"]
  NEWTABLE R29 0 2
  DUPTABLE R30 K71 [{"Name", "Editable", "Dependencies"}]
  LOADK R31 K72 ["WorldForward"]
  SETTABLEKS R31 R30 K36 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K37 ["Editable"]
  NEWTABLE R31 0 1
  LOADK R32 K73 ["WorldUp"]
  SETLIST R31 R32 1 [1]
  SETTABLEKS R31 R30 K70 ["Dependencies"]
  DUPTABLE R31 K71 [{"Name", "Editable", "Dependencies"}]
  LOADK R32 K73 ["WorldUp"]
  SETTABLEKS R32 R31 K36 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K37 ["Editable"]
  NEWTABLE R32 0 1
  LOADK R33 K72 ["WorldForward"]
  SETLIST R32 R33 1 [1]
  SETTABLEKS R32 R31 K70 ["Dependencies"]
  SETLIST R29 R30 2 [1]
  SETTABLEKS R29 R28 K9 ["Properties"]
  DUPTABLE R29 K34 [{"Section", "Properties"}]
  LOADK R30 K74 ["FileGeometry"]
  SETTABLEKS R30 R29 K33 ["Section"]
  NEWTABLE R30 0 5
  DUPTABLE R31 K38 [{"Name", "Editable"}]
  LOADK R32 K75 ["ScaleUnit"]
  SETTABLEKS R32 R31 K36 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K37 ["Editable"]
  DUPTABLE R32 K71 [{"Name", "Editable", "Dependencies"}]
  LOADK R33 K76 ["FileDimensions"]
  SETTABLEKS R33 R32 K36 ["Name"]
  LOADB R33 0
  SETTABLEKS R33 R32 K37 ["Editable"]
  NEWTABLE R33 0 1
  LOADK R34 K75 ["ScaleUnit"]
  SETLIST R33 R34 1 [1]
  SETTABLEKS R33 R32 K70 ["Dependencies"]
  DUPTABLE R33 K38 [{"Name", "Editable"}]
  LOADK R34 K77 ["PolygonCount"]
  SETTABLEKS R34 R33 K36 ["Name"]
  LOADB R34 0
  SETTABLEKS R34 R33 K37 ["Editable"]
  DUPTABLE R34 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R35 K78 ["MergeMeshes"]
  SETTABLEKS R35 R34 K36 ["Name"]
  LOADB R35 1
  SETTABLEKS R35 R34 K37 ["Editable"]
  SETTABLEKS R21 R34 K42 ["ShouldHide"]
  DUPTABLE R35 K38 [{"Name", "Editable"}]
  LOADK R36 K79 ["InvertNegativeFaces"]
  SETTABLEKS R36 R35 K36 ["Name"]
  LOADB R36 1
  SETTABLEKS R36 R35 K37 ["Editable"]
  SETLIST R30 R31 5 [1]
  SETTABLEKS R30 R29 K9 ["Properties"]
  SETLIST R23 R24 6 [1]
  RETURN R23 1
