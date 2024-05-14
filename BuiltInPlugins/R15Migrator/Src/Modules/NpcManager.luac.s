PROTO_0:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["Name"]
  GETTABLE R1 R2 R3
  RETURN R1 1

PROTO_1:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_2:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_3:
  LOADK R4 K0 ["Humanoid"]
  NAMECALL R2 R0 K1 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R4 R2 K2 ["RigType"]
  JUMPIFEQ R4 R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1
  LOADB R3 0
  RETURN R3 1

PROTO_4:
  LOADK R3 K0 ["Model"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+15]
  GETIMPORT R2 K5 [Enum.HumanoidRigType.R6]
  LOADK R5 K6 ["Humanoid"]
  NAMECALL R3 R0 K7 ["FindFirstChildOfClass"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R4 R3 K8 ["RigType"]
  JUMPIFEQ R4 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_5:
  DUPCLOSURE R0 K0 [PROTO_4]
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  LOADK R3 K0 ["Model"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+16]
  GETIMPORT R2 K5 [Enum.HumanoidRigType.R15]
  LOADK R5 K6 ["Humanoid"]
  NAMECALL R3 R0 K7 ["FindFirstChildOfClass"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R4 R3 K8 ["RigType"]
  JUMPIFEQ R4 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMP [+1]
  LOADB R1 0
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["hasConvertedFrom"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  DUPCLOSURE R0 K0 [PROTO_6]
  CAPTURE UPVAL U0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_8:
  LOADK R3 K0 ["Model"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+16]
  GETIMPORT R2 K5 [Enum.HumanoidRigType.R15]
  LOADK R5 K6 ["Humanoid"]
  NAMECALL R3 R0 K7 ["FindFirstChildOfClass"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R4 R3 K8 ["RigType"]
  JUMPIFEQ R4 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMP [+1]
  LOADB R1 0
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  MOVE R13 R10
  NAMECALL R11 R0 K9 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIF R11 [+2]
  LOADB R11 0
  RETURN R11 1
  FORGLOOP R6 2 [-8]
  FORGLOOP R1 2 [-14]
  LOADB R1 1
  RETURN R1 1

PROTO_9:
  LOADK R3 K0 ["Model"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  LOADK R3 K2 ["Humanoid"]
  NAMECALL R1 R0 K3 ["FindFirstChild"]
  CALL R1 2 1
  RETURN R1 1

PROTO_10:
  DUPCLOSURE R0 K0 [PROTO_9]
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K1 ["GetDescendants"]
  CALL R7 1 3
  FORGPREP R7
  LOADK R14 K2 ["LuaSourceContainer"]
  NAMECALL R12 R11 K3 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+7]
  GETTABLEKS R12 R11 K4 ["Name"]
  JUMPIFNOTEQKS R12 K5 ["UnificationServerScript"] [+4]
  NAMECALL R12 R11 K6 ["Destroy"]
  CALL R12 1 0
  FORGLOOP R7 2 [-13]
  FORGLOOP R2 2 [-19]
  GETUPVAL R2 1
  LOADK R4 K7 ["AvatarUnification"]
  NAMECALL R2 R2 K8 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K6 ["Destroy"]
  CALL R3 1 0
  GETUPVAL R3 2
  LOADK R5 K9 ["LocalEffects"]
  NAMECALL R3 R3 K8 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  NAMECALL R4 R3 K6 ["Destroy"]
  CALL R4 1 0
  RETURN R0 0

PROTO_11:
  NEWTABLE R1 0 0
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K1 ["CharacterMesh"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+9]
  GETTABLEKS R7 R6 K3 ["BodyPart"]
  GETTABLEKS R9 R6 K4 ["MeshId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K6 [tostring]
  CALL R8 1 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-15]
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K7 ["Part"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+26]
  GETUPVAL R8 0
  GETTABLEKS R9 R6 K8 ["Name"]
  GETTABLE R7 R8 R9
  JUMPIFNOT R7 [+21]
  LOADK R9 K9 ["SpecialMesh"]
  NAMECALL R7 R6 K10 ["FindFirstChildOfClass"]
  CALL R7 2 1
  GETUPVAL R9 0
  GETTABLEKS R10 R6 K8 ["Name"]
  GETTABLE R8 R9 R10
  JUMPIFNOT R7 [+12]
  GETTABLE R9 R1 R8
  JUMPIF R9 [+10]
  GETUPVAL R9 1
  GETTABLEKS R10 R7 K4 ["MeshId"]
  CALL R9 1 1
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K6 [tostring]
  CALL R10 1 1
  SETTABLE R10 R1 R8
  FORGLOOP R2 2 [-32]
  RETURN R1 1

PROTO_12:
  LOADK R3 K0 ["Head"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADK R4 K2 ["SpecialMesh"]
  NAMECALL R2 R1 K3 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R4 R2 K4 ["MeshId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K6 [tostring]
  CALL R3 1 1
  GETIMPORT R5 K9 [string.match]
  MOVE R6 R3
  LOADK R7 K10 ["%d+"]
  CALL R5 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R4 K12 [tonumber]
  CALL R4 -1 1
  RETURN R4 1

PROTO_13:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Decal"]
  CALL R1 1 1
  LOADK R2 K4 ["face"]
  SETTABLEKS R2 R1 K5 ["Name"]
  GETTABLEKS R2 R0 K6 ["Color3"]
  SETTABLEKS R2 R1 K6 ["Color3"]
  GETTABLEKS R2 R0 K7 ["Texture"]
  SETTABLEKS R2 R1 K7 ["Texture"]
  GETTABLEKS R2 R0 K8 ["Transparency"]
  SETTABLEKS R2 R1 K8 ["Transparency"]
  GETTABLEKS R2 R0 K9 ["ZIndex"]
  SETTABLEKS R2 R1 K9 ["ZIndex"]
  RETURN R1 1

PROTO_14:
  GETUPVAL R5 0
  GETTABLE R4 R5 R0
  JUMPIF R4 [+1]
  RETURN R0 0
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R10 1
  MOVE R12 R9
  NAMECALL R10 R10 K0 ["FindFirstChild"]
  CALL R10 2 1
  JUMPIFNOT R10 [+61]
  MOVE R13 R9
  NAMECALL R11 R1 K0 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFNOT R11 [+3]
  NAMECALL R12 R11 K1 ["Destroy"]
  CALL R12 1 0
  NAMECALL R12 R10 K2 ["Clone"]
  CALL R12 1 1
  SETTABLEKS R2 R12 K3 ["Color"]
  GETIMPORT R13 K7 [Enum.BodyPart.Head]
  JUMPIFNOTEQ R0 R13 [+43]
  LOADK R15 K8 ["Decal"]
  NAMECALL R13 R12 K9 ["FindFirstChildOfClass"]
  CALL R13 2 1
  JUMPIFNOT R13 [+7]
  GETTABLEKS R14 R13 K10 ["Name"]
  JUMPIFNOTEQKS R14 K11 ["face"] [+4]
  NAMECALL R14 R13 K1 ["Destroy"]
  CALL R14 1 0
  JUMPIF R3 [+2]
  LOADNIL R14
  JUMP [+24]
  GETIMPORT R15 K14 [Instance.new]
  LOADK R16 K8 ["Decal"]
  CALL R15 1 1
  LOADK R16 K11 ["face"]
  SETTABLEKS R16 R15 K10 ["Name"]
  GETTABLEKS R16 R3 K15 ["Color3"]
  SETTABLEKS R16 R15 K15 ["Color3"]
  GETTABLEKS R16 R3 K16 ["Texture"]
  SETTABLEKS R16 R15 K16 ["Texture"]
  GETTABLEKS R16 R3 K17 ["Transparency"]
  SETTABLEKS R16 R15 K17 ["Transparency"]
  GETTABLEKS R16 R3 K18 ["ZIndex"]
  SETTABLEKS R16 R15 K18 ["ZIndex"]
  MOVE R14 R15
  JUMPIFNOT R14 [+2]
  SETTABLEKS R12 R14 K19 ["Parent"]
  SETTABLEKS R1 R12 K19 ["Parent"]
  FORGLOOP R5 2 [-68]
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["LoadAsset"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_16:
  GETUPVAL R7 0
  GETTABLE R6 R7 R2
  GETIMPORT R7 K1 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R6
  CALL R7 1 2
  JUMPIF R7 [+18]
  GETIMPORT R9 K3 [warn]
  LOADK R11 K4 ["Failed to load R15 part for "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R16 R0
  GETIMPORT R15 K6 [tostring]
  CALL R15 1 1
  MOVE R12 R15
  LOADK R13 K7 [" with meshId "]
  MOVE R14 R2
  CONCAT R10 R11 R14
  CALL R9 1 0
  GETUPVAL R9 2
  MOVE R10 R0
  MOVE R11 R1
  CALL R9 2 0
  RETURN R0 0
  LOADNIL R9
  GETUPVAL R10 3
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  MOVE R17 R14
  NAMECALL R15 R8 K8 ["FindFirstChild"]
  CALL R15 2 1
  MOVE R9 R15
  JUMPIF R9 [+2]
  FORGLOOP R10 2 [-7]
  JUMPIF R9 [+18]
  GETIMPORT R10 K3 [warn]
  LOADK R12 K9 ["Failed to find R15 folder for "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R17 R0
  GETIMPORT R16 K6 [tostring]
  CALL R16 1 1
  MOVE R13 R16
  LOADK R14 K7 [" with meshId "]
  MOVE R15 R2
  CONCAT R11 R12 R15
  CALL R10 1 0
  GETUPVAL R10 2
  MOVE R11 R0
  MOVE R12 R1
  CALL R10 2 0
  RETURN R0 0
  GETUPVAL R11 4
  GETTABLE R10 R11 R0
  MOVE R11 R10
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  MOVE R18 R15
  NAMECALL R16 R9 K8 ["FindFirstChild"]
  CALL R16 2 1
  JUMPIFNOT R16 [+59]
  NAMECALL R17 R16 K10 ["Clone"]
  CALL R17 1 1
  SETTABLEKS R3 R17 K11 ["Color"]
  GETIMPORT R18 K15 [Enum.BodyPart.Head]
  JUMPIFNOTEQ R0 R18 [+44]
  LOADK R20 K16 ["Decal"]
  NAMECALL R18 R17 K17 ["FindFirstChildOfClass"]
  CALL R18 2 1
  JUMPIFNOT R18 [+7]
  GETTABLEKS R19 R18 K18 ["Name"]
  JUMPIFNOTEQKS R19 K19 ["face"] [+4]
  NAMECALL R19 R18 K20 ["Destroy"]
  CALL R19 1 0
  JUMPIF R4 [+2]
  LOADNIL R19
  JUMP [+24]
  GETIMPORT R20 K23 [Instance.new]
  LOADK R21 K16 ["Decal"]
  CALL R20 1 1
  LOADK R21 K19 ["face"]
  SETTABLEKS R21 R20 K18 ["Name"]
  GETTABLEKS R21 R4 K24 ["Color3"]
  SETTABLEKS R21 R20 K24 ["Color3"]
  GETTABLEKS R21 R4 K25 ["Texture"]
  SETTABLEKS R21 R20 K25 ["Texture"]
  GETTABLEKS R21 R4 K26 ["Transparency"]
  SETTABLEKS R21 R20 K26 ["Transparency"]
  GETTABLEKS R21 R4 K27 ["ZIndex"]
  SETTABLEKS R21 R20 K27 ["ZIndex"]
  MOVE R19 R20
  JUMPIFNOT R19 [+8]
  SETTABLEKS R17 R19 K28 ["Parent"]
  JUMP [+5]
  JUMPIFNOTEQKN R14 K29 [1] [+4]
  JUMPIFNOT R5 [+2]
  SETTABLEKS R5 R17 K30 ["TextureID"]
  SETTABLEKS R1 R17 K28 ["Parent"]
  FORGLOOP R11 2 [-65]
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["LoadAsset"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_18:
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  GETIMPORT R5 K1 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CALL R5 1 2
  JUMPIF R5 [+7]
  GETIMPORT R7 K3 [warn]
  LOADK R9 K4 ["Failed to load R15 head for meshId "]
  MOVE R10 R1
  CONCAT R8 R9 R10
  CALL R7 1 0
  RETURN R0 0
  NAMECALL R8 R6 K5 ["GetChildren"]
  CALL R8 1 1
  LENGTH R7 R8
  JUMPIFNOTEQKN R7 K6 [0] [+8]
  GETIMPORT R7 K3 [warn]
  LOADK R9 K4 ["Failed to load R15 head for meshId "]
  MOVE R10 R1
  CONCAT R8 R9 R10
  CALL R7 1 0
  RETURN R0 0
  NAMECALL R8 R6 K5 ["GetChildren"]
  CALL R8 1 1
  GETTABLEN R7 R8 1
  LOADK R10 K7 ["Head"]
  NAMECALL R8 R0 K8 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIFNOT R8 [+20]
  NAMECALL R9 R8 K5 ["GetChildren"]
  CALL R9 1 3
  FORGPREP R9
  GETTABLEKS R16 R13 K9 ["Name"]
  NAMECALL R14 R7 K8 ["FindFirstChild"]
  CALL R14 2 1
  JUMPIFNOT R14 [+3]
  NAMECALL R15 R14 K10 ["Destroy"]
  CALL R15 1 0
  SETTABLEKS R7 R13 K11 ["Parent"]
  FORGLOOP R9 2 [-12]
  NAMECALL R9 R8 K10 ["Destroy"]
  CALL R9 1 0
  SETTABLEKS R2 R7 K12 ["Color"]
  LOADK R11 K13 ["Decal"]
  NAMECALL R9 R7 K14 ["FindFirstChildOfClass"]
  CALL R9 2 1
  JUMPIFNOT R9 [+7]
  GETTABLEKS R10 R9 K9 ["Name"]
  JUMPIFNOTEQKS R10 K15 ["face"] [+4]
  NAMECALL R10 R9 K10 ["Destroy"]
  CALL R10 1 0
  JUMPIF R3 [+2]
  LOADNIL R10
  JUMP [+24]
  GETIMPORT R11 K18 [Instance.new]
  LOADK R12 K13 ["Decal"]
  CALL R11 1 1
  LOADK R12 K15 ["face"]
  SETTABLEKS R12 R11 K9 ["Name"]
  GETTABLEKS R12 R3 K19 ["Color3"]
  SETTABLEKS R12 R11 K19 ["Color3"]
  GETTABLEKS R12 R3 K20 ["Texture"]
  SETTABLEKS R12 R11 K20 ["Texture"]
  GETTABLEKS R12 R3 K21 ["Transparency"]
  SETTABLEKS R12 R11 K21 ["Transparency"]
  GETTABLEKS R12 R3 K22 ["ZIndex"]
  SETTABLEKS R12 R11 K22 ["ZIndex"]
  MOVE R10 R11
  JUMPIFNOT R10 [+2]
  SETTABLEKS R7 R10 K11 ["Parent"]
  SETTABLEKS R0 R7 K11 ["Parent"]
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["GetLocalFileContents"]
  CALL R2 2 1
  GETIMPORT R3 K3 [Instance.new]
  LOADK R4 K4 ["ModuleScript"]
  CALL R3 1 1
  SETTABLEKS R0 R3 K5 ["Name"]
  SETTABLEKS R2 R3 K6 ["Source"]
  RETURN R3 1

PROTO_20:
  LOADK R3 K0 ["UnificationServerScript"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K2 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0

PROTO_21:
  LOADK R4 K0 ["UnificationServerScript"]
  NAMECALL R2 R0 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_22:
  GETUPVAL R1 0
  LOADK R3 K0 ["AvatarUnification"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+40]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K5 ["Folder"]
  CALL R2 1 1
  MOVE R1 R2
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K6 ["Parent"]
  LOADK R2 K0 ["AvatarUnification"]
  SETTABLEKS R2 R1 K7 ["Name"]
  GETUPVAL R2 1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 2
  MOVE R10 R6
  NAMECALL R8 R8 K8 ["GetLocalFileContents"]
  CALL R8 2 1
  GETIMPORT R9 K4 [Instance.new]
  LOADK R10 K9 ["ModuleScript"]
  CALL R9 1 1
  SETTABLEKS R5 R9 K7 ["Name"]
  SETTABLEKS R8 R9 K10 ["Source"]
  MOVE R7 R9
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K11 ["AttributeUnificationScriptName"]
  LOADB R11 1
  NAMECALL R8 R7 K12 ["SetAttribute"]
  CALL R8 3 0
  SETTABLEKS R1 R7 K6 ["Parent"]
  FORGLOOP R2 2 [-24]
  LOADK R4 K13 ["UnificationServerScript"]
  NAMECALL R2 R0 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+29]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K14 ["Script"]
  CALL R2 1 1
  LOADK R3 K13 ["UnificationServerScript"]
  SETTABLEKS R3 R2 K7 ["Name"]
  GETUPVAL R3 2
  GETUPVAL R5 4
  NAMECALL R3 R3 K8 ["GetLocalFileContents"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K10 ["Source"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K11 ["AttributeUnificationScriptName"]
  LOADB R6 1
  NAMECALL R3 R2 K12 ["SetAttribute"]
  CALL R3 3 0
  SETTABLEKS R0 R2 K6 ["Parent"]
  GETUPVAL R3 5
  NAMECALL R3 R3 K15 ["Clone"]
  CALL R3 1 1
  SETTABLEKS R2 R3 K6 ["Parent"]
  GETUPVAL R2 6
  LOADK R4 K16 ["LocalEffects"]
  NAMECALL R2 R2 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+24]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K17 ["LocalScript"]
  CALL R2 1 1
  LOADK R3 K16 ["LocalEffects"]
  SETTABLEKS R3 R2 K7 ["Name"]
  GETUPVAL R3 2
  GETUPVAL R5 7
  NAMECALL R3 R3 K8 ["GetLocalFileContents"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K10 ["Source"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K11 ["AttributeUnificationScriptName"]
  LOADB R6 1
  NAMECALL R3 R2 K12 ["SetAttribute"]
  CALL R3 3 0
  GETUPVAL R3 6
  SETTABLEKS R3 R2 K6 ["Parent"]
  RETURN R0 0

PROTO_23:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["getTagged"]
  CALL R2 1 1
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFLT R2 R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  GETUPVAL R3 1
  NAMECALL R3 R3 K0 ["getTagged"]
  CALL R3 1 1
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R0 2

PROTO_24:
  DUPTABLE R1 K5 [{"BodyHeightScale", "BodyDepthScale", "BodyWidthScale", "HeadScale", "BodyProportionScale"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["BodyHeightScale"]
  LOADN R2 1
  SETTABLEKS R2 R1 K1 ["BodyDepthScale"]
  LOADN R2 1
  SETTABLEKS R2 R1 K2 ["BodyWidthScale"]
  LOADN R2 1
  SETTABLEKS R2 R1 K3 ["HeadScale"]
  LOADN R2 0
  SETTABLEKS R2 R1 K4 ["BodyProportionScale"]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETIMPORT R7 K8 [Instance.new]
  LOADK R8 K9 ["NumberValue"]
  CALL R7 1 1
  SETTABLEKS R5 R7 K10 ["Name"]
  SETTABLEKS R6 R7 K11 ["Value"]
  SETTABLEKS R0 R7 K12 ["Parent"]
  FORGLOOP R2 2 [-11]
  RETURN R0 0

PROTO_25:
  NEWTABLE R3 0 0
  MOVE R4 R0
  JUMPIFEQ R4 R1 [+12]
  MOVE R6 R3
  LOADN R7 1
  GETTABLEKS R8 R4 K0 ["Name"]
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K3 [table.insert]
  CALL R5 3 0
  GETTABLEKS R4 R4 K4 ["Parent"]
  JUMPBACK [-13]
  MOVE R5 R2
  MOVE R6 R3
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  MOVE R13 R10
  NAMECALL R11 R5 K5 ["FindFirstChild"]
  CALL R11 2 1
  LOADK R15 K6 ["can't find "]
  MOVE R16 R10
  LOADK R17 K7 [" under "]
  NAMECALL R18 R2 K8 ["GetFullName"]
  CALL R18 1 1
  CONCAT R14 R15 R18
  FASTCALL2 ASSERT R11 R14 [+4]
  MOVE R13 R11
  GETIMPORT R12 K10 [assert]
  CALL R12 2 0
  MOVE R5 R11
  FORGLOOP R6 2 [-19]
  RETURN R5 1

PROTO_26:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["GetNpcFromId"]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R4 R3 K1 ["Name"]
  SETTABLEKS R4 R1 K1 ["Name"]
  GETTABLEKS R4 R3 K2 ["Parent"]
  LOADNIL R5
  SETTABLEKS R5 R3 K2 ["Parent"]
  NAMECALL R5 R3 K3 ["GetDescendants"]
  CALL R5 1 3
  FORGPREP R5
  LOADK R12 K4 ["LuaSourceContainer"]
  NAMECALL R10 R9 K5 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+21]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K6 ["AttributeUnificationScriptName"]
  NAMECALL R10 R9 K7 ["GetAttribute"]
  CALL R10 2 1
  JUMPIF R10 [+14]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["FindInstanceUnderNewModel"]
  MOVE R11 R9
  MOVE R12 R3
  MOVE R13 R1
  CALL R10 3 1
  GETTABLEKS R11 R10 K2 ["Parent"]
  NAMECALL R12 R10 K9 ["Destroy"]
  CALL R12 1 0
  SETTABLEKS R11 R9 K2 ["Parent"]
  FORGLOOP R5 2 [-27]
  SETTABLEKS R4 R1 K2 ["Parent"]
  JUMPIFNOT R2 [+10]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["ConvertR6ToR15"]
  MOVE R6 R1
  CALL R5 1 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["SetupUnificationScripts"]
  MOVE R6 R1
  CALL R5 1 0
  NAMECALL R5 R3 K9 ["Destroy"]
  CALL R5 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["SetNpcWithId"]
  MOVE R6 R1
  MOVE R7 R0
  CALL R5 2 0
  RETURN R0 0

PROTO_27:
  LOADK R3 K0 ["HumanoidRootPart"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["There must be a HumanoidRootPart on the npc!"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["RootRigAttachment"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  LOADK R5 K6 ["RootAttachment"]
  NAMECALL R3 R1 K1 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIF R3 [+7]
  GETIMPORT R4 K9 [Instance.new]
  LOADK R5 K10 ["Attachment"]
  CALL R4 1 1
  MOVE R3 R4
  SETTABLEKS R1 R3 K11 ["Parent"]
  LOADK R4 K5 ["RootRigAttachment"]
  SETTABLEKS R4 R3 K12 ["Name"]
  RETURN R0 0

PROTO_28:
  LOADN R1 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["GetNpcHasWarnings"]
  GETTABLEKS R8 R6 K1 ["model"]
  CALL R7 1 1
  JUMPIFNOT R7 [+1]
  ADDK R1 R1 K2 [1]
  FORGLOOP R2 2 [-9]
  RETURN R1 1

PROTO_29:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLE R7 R1 R5
  JUMPIFNOT R7 [+3]
  GETUPVAL R9 2
  GETTABLE R8 R9 R7
  JUMPIF R8 [+2]
  LOADB R8 1
  RETURN R8 1
  FORGLOOP R2 1 [-8]
  LOADB R2 0
  RETURN R2 1

PROTO_30:
  LOADN R1 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["GetNpcHasCustomMesh"]
  GETTABLEKS R8 R6 K1 ["model"]
  CALL R7 1 1
  JUMPIFNOT R7 [+1]
  ADDK R1 R1 K2 [1]
  FORGLOOP R2 2 [-9]
  RETURN R1 1

PROTO_31:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLE R7 R1 R5
  JUMPIFNOT R7 [+5]
  GETUPVAL R9 2
  GETTABLE R8 R9 R7
  JUMPIF R8 [+2]
  LOADB R8 1
  RETURN R8 1
  FORGLOOP R2 1 [-8]
  LOADB R2 0
  RETURN R2 1

PROTO_32:
  NAMECALL R1 R0 K0 ["GetBoundingBox"]
  CALL R1 1 1
  GETTABLEKS R5 R1 K1 ["Position"]
  MINUS R4 R5
  NAMECALL R2 R0 K2 ["TranslateBy"]
  CALL R2 2 0
  NAMECALL R2 R0 K3 ["GetDescendants"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K4 ["BasePart"]
  NAMECALL R7 R6 K5 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+28]
  GETUPVAL R8 0
  GETTABLEKS R9 R6 K6 ["Name"]
  GETTABLE R7 R8 R9
  JUMPIF R7 [+23]
  LOADK R9 K7 ["Weld"]
  NAMECALL R7 R6 K8 ["FindFirstChildOfClass"]
  CALL R7 2 1
  JUMPIF R7 [+18]
  LOADK R9 K9 ["Motor6D"]
  NAMECALL R7 R6 K8 ["FindFirstChildOfClass"]
  CALL R7 2 1
  JUMPIF R7 [+13]
  GETIMPORT R7 K12 [Instance.new]
  LOADK R8 K13 ["Vector3Value"]
  CALL R7 1 1
  GETTABLEKS R8 R6 K1 ["Position"]
  SETTABLEKS R8 R7 K14 ["Value"]
  SETTABLEKS R6 R7 K15 ["Parent"]
  LOADK R8 K16 ["OriginalPosition"]
  SETTABLEKS R8 R7 K6 ["Name"]
  FORGLOOP R2 2 [-34]
  RETURN R0 0

PROTO_33:
  GETTABLEKS R2 R0 K0 ["HumanoidRootPart"]
  GETTABLEKS R1 R2 K1 ["Position"]
  NAMECALL R2 R0 K2 ["GetDescendants"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K3 ["Vector3Value"]
  NAMECALL R7 R6 K4 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+14]
  GETTABLEKS R7 R6 K5 ["Name"]
  JUMPIFNOTEQKS R7 K6 ["OriginalPosition"] [+11]
  GETTABLEKS R7 R6 K7 ["Parent"]
  GETTABLEKS R9 R6 K8 ["Value"]
  ADD R8 R9 R1
  SETTABLEKS R8 R7 K1 ["Position"]
  NAMECALL R7 R6 K9 ["Destroy"]
  CALL R7 1 0
  FORGLOOP R2 2 [-20]
  RETURN R0 0

PROTO_34:
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.BodyPart.Head]
  GETTABLE R0 R1 R2
  GETUPVAL R1 1
  JUMPIFNOT R1 [+11]
  GETUPVAL R2 2
  GETUPVAL R3 1
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 3
  GETUPVAL R2 4
  GETUPVAL R3 1
  MOVE R4 R0
  GETUPVAL R5 5
  CALL R1 4 0
  JUMP [+7]
  GETUPVAL R1 6
  GETIMPORT R2 K3 [Enum.BodyPart.Head]
  GETUPVAL R3 4
  MOVE R4 R0
  GETUPVAL R5 5
  CALL R1 4 0
  GETUPVAL R1 7
  SUBK R1 R1 K4 [1]
  SETUPVAL R1 7
  GETUPVAL R1 7
  JUMPIFNOTEQKN R1 K5 [0] [+5]
  GETUPVAL R1 8
  NAMECALL R1 R1 K6 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_35:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  JUMPIF R0 [+1]
  GETUPVAL R0 2
  GETUPVAL R2 3
  GETUPVAL R3 1
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+14]
  GETUPVAL R3 4
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+11]
  GETUPVAL R2 5
  GETUPVAL R3 1
  GETUPVAL R4 6
  MOVE R5 R1
  MOVE R6 R0
  GETUPVAL R7 7
  GETUPVAL R9 8
  GETUPVAL R10 1
  GETTABLE R8 R9 R10
  CALL R2 6 0
  JUMP [+6]
  GETUPVAL R2 9
  GETUPVAL R3 1
  GETUPVAL R4 6
  MOVE R5 R0
  GETUPVAL R6 7
  CALL R2 4 0
  GETUPVAL R2 10
  SUBK R2 R2 K0 [1]
  SETUPVAL R2 10
  GETUPVAL R2 10
  JUMPIFNOTEQKN R2 K1 [0] [+5]
  GETUPVAL R2 11
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_36:
  NAMECALL R1 R0 K0 ["GetPivot"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["SaveExtraPartPositions"]
  MOVE R3 R0
  CALL R2 1 0
  LOADK R4 K2 ["HumanoidRootPart"]
  NAMECALL R2 R0 K3 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+11]
  GETUPVAL R3 1
  LOADK R5 K2 ["HumanoidRootPart"]
  NAMECALL R3 R3 K3 ["FindFirstChild"]
  CALL R3 2 1
  NAMECALL R3 R3 K4 ["Clone"]
  CALL R3 1 1
  MOVE R2 R3
  SETTABLEKS R0 R2 K5 ["Parent"]
  SETTABLEKS R2 R0 K6 ["PrimaryPart"]
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  LOADNIL R5
  NEWTABLE R6 0 0
  GETUPVAL R7 2
  MOVE R8 R0
  CALL R7 1 1
  GETIMPORT R8 K8 [pairs]
  GETUPVAL R9 3
  CALL R8 1 3
  FORGPREP_NEXT R8
  MOVE R15 R12
  NAMECALL R13 R0 K3 ["FindFirstChild"]
  CALL R13 2 1
  JUMPIFNOT R13 [+47]
  LOADB R14 1
  SETTABLE R14 R6 R11
  JUMPIFNOTEQKS R12 K9 ["Head"] [+24]
  LOADK R16 K10 ["Decal"]
  NAMECALL R14 R13 K11 ["FindFirstChildOfClass"]
  CALL R14 2 1
  JUMPIFNOT R14 [+18]
  DUPTABLE R15 K16 [{"Color3", "Texture", "Transparency", "ZIndex"}]
  GETTABLEKS R16 R14 K12 ["Color3"]
  SETTABLEKS R16 R15 K12 ["Color3"]
  GETTABLEKS R16 R14 K13 ["Texture"]
  SETTABLEKS R16 R15 K13 ["Texture"]
  GETTABLEKS R16 R14 K14 ["Transparency"]
  SETTABLEKS R16 R15 K14 ["Transparency"]
  GETTABLEKS R16 R14 K15 ["ZIndex"]
  SETTABLEKS R16 R15 K15 ["ZIndex"]
  MOVE R5 R15
  GETTABLEKS R14 R13 K17 ["Color"]
  SETTABLE R14 R3 R11
  LOADK R16 K10 ["Decal"]
  NAMECALL R14 R13 K11 ["FindFirstChildOfClass"]
  CALL R14 2 1
  JUMPIFNOT R14 [+9]
  GETTABLEKS R16 R14 K13 ["Texture"]
  JUMPIFEQKS R16 K18 [""] [+4]
  GETTABLEKS R15 R14 K13 ["Texture"]
  JUMP [+1]
  LOADNIL R15
  SETTABLE R15 R4 R11
  NAMECALL R15 R13 K19 ["Destroy"]
  CALL R15 1 0
  FORGLOOP R8 2 [-53]
  LOADK R11 K9 ["Head"]
  NAMECALL R9 R0 K3 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIF R9 [+2]
  LOADNIL R8
  JUMP [+23]
  LOADK R12 K20 ["SpecialMesh"]
  NAMECALL R10 R9 K11 ["FindFirstChildOfClass"]
  CALL R10 2 1
  JUMPIF R10 [+2]
  LOADNIL R8
  JUMP [+16]
  GETTABLEKS R12 R10 K21 ["MeshId"]
  FASTCALL1 TOSTRING R12 [+2]
  GETIMPORT R11 K23 [tostring]
  CALL R11 1 1
  GETIMPORT R13 K26 [string.match]
  MOVE R14 R11
  LOADK R15 K27 ["%d+"]
  CALL R13 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R12 K29 [tonumber]
  CALL R12 -1 1
  MOVE R8 R12
  GETIMPORT R9 K32 [Instance.new]
  LOADK R10 K33 ["BindableEvent"]
  CALL R9 1 1
  LOADN R10 0
  ADDK R10 R10 K34 [1]
  GETIMPORT R11 K37 [task.delay]
  LOADN R12 0
  NEWCLOSURE R13 P0
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE REF R5
  CAPTURE UPVAL U6
  CAPTURE REF R10
  CAPTURE VAL R9
  CALL R11 2 0
  GETIMPORT R11 K8 [pairs]
  GETUPVAL R12 7
  CALL R11 1 3
  FORGPREP_NEXT R11
  GETTABLE R16 R6 R14
  JUMPIFNOT R16 [+18]
  ADDK R10 R10 K34 [1]
  GETIMPORT R16 K37 [task.delay]
  LOADN R17 0
  NEWCLOSURE R18 P1
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE UPVAL U8
  CAPTURE VAL R7
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R0
  CAPTURE REF R5
  CAPTURE VAL R4
  CAPTURE UPVAL U6
  CAPTURE REF R10
  CAPTURE VAL R9
  CALL R16 2 0
  FORGLOOP R11 2 [-21]
  GETTABLEKS R11 R9 K38 ["Event"]
  NAMECALL R11 R11 K39 ["Wait"]
  CALL R11 1 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K40 ["FixRootAttachment"]
  MOVE R12 R0
  CALL R11 1 0
  NAMECALL R11 R0 K41 ["GetChildren"]
  CALL R11 1 3
  FORGPREP R11
  LOADK R18 K42 ["CharcterMesh"]
  NAMECALL R16 R15 K43 ["IsA"]
  CALL R16 2 1
  JUMPIFNOT R16 [+3]
  NAMECALL R16 R15 K19 ["Destroy"]
  CALL R16 1 0
  FORGLOOP R11 2 [-9]
  LOADK R13 K44 ["Humanoid"]
  NAMECALL R11 R0 K11 ["FindFirstChildOfClass"]
  CALL R11 2 1
  GETIMPORT R12 K48 [Enum.HumanoidRigType.R15]
  SETTABLEKS R12 R11 K49 ["RigType"]
  GETUPVAL R12 11
  MOVE R13 R11
  CALL R12 1 0
  NAMECALL R12 R11 K50 ["BuildRigFromAttachments"]
  CALL R12 1 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K51 ["FixExtraPartPositions"]
  MOVE R13 R0
  CALL R12 1 0
  GETTABLEKS R14 R1 K52 ["Position"]
  NAMECALL R12 R0 K53 ["MoveTo"]
  CALL R12 2 0
  CLOSEUPVALS R5
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 32 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["InsertService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [script]
  LOADK R4 K6 ["R15Migrator"]
  NAMECALL R2 R2 K7 ["FindFirstAncestor"]
  CALL R2 2 1
  GETTABLEKS R4 R2 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Modules"]
  GETIMPORT R4 K11 [require]
  GETTABLEKS R5 R3 K12 ["CharacterMeshesMap"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R6 R3 K13 ["ClassicHeadsMap"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R7 R3 K14 ["NpcIdManager"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R10 R2 K8 ["Src"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["findAllInServices"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R12 R2 K8 ["Src"]
  GETTABLEKS R11 R12 K15 ["Util"]
  GETTABLEKS R10 R11 K17 ["AnimationConversion"]
  GETTABLEKS R9 R10 K18 ["normalizeAssetId"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R13 R2 K8 ["Src"]
  GETTABLEKS R12 R13 K15 ["Util"]
  GETTABLEKS R11 R12 K19 ["ScriptAnalysis"]
  GETTABLEKS R10 R11 K20 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K11 [require]
  GETTABLEKS R13 R2 K8 ["Src"]
  GETTABLEKS R12 R13 K15 ["Util"]
  GETTABLEKS R11 R12 K21 ["SaveInterface"]
  CALL R10 1 1
  GETIMPORT R12 K11 [require]
  GETTABLEKS R15 R2 K8 ["Src"]
  GETTABLEKS R14 R15 K15 ["Util"]
  GETTABLEKS R13 R14 K22 ["PublishTagging"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K23 ["AdapterTagging"]
  GETIMPORT R13 K11 [require]
  GETTABLEKS R16 R2 K8 ["Src"]
  GETTABLEKS R15 R16 K15 ["Util"]
  GETTABLEKS R14 R15 K24 ["QuickAccessTagging"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K25 ["CharactersConvertedToR15Tagging"]
  GETIMPORT R13 K1 [game]
  LOADK R15 K26 ["ReplicatedStorage"]
  NAMECALL R13 R13 K3 ["GetService"]
  CALL R13 2 1
  GETIMPORT R14 K1 [game]
  LOADK R16 K27 ["StarterPlayer"]
  NAMECALL R14 R14 K3 ["GetService"]
  CALL R14 2 1
  LOADK R17 K28 ["StarterCharacterScripts"]
  NAMECALL R15 R14 K29 ["FindFirstChild"]
  CALL R15 2 1
  DUPTABLE R16 K32 [{"AdaptInstance", "SetupAdapterParts"}]
  LOADK R17 K33 ["rbxasset://avatar/unification/AdaptInstance.lua"]
  SETTABLEKS R17 R16 K30 ["AdaptInstance"]
  LOADK R17 K34 ["rbxasset://avatar/unification/SetupAdapterParts.lua"]
  SETTABLEKS R17 R16 K31 ["SetupAdapterParts"]
  LOADK R18 K35 ["rbxasset://avatar/unification/"]
  LOADK R19 K36 ["LocalEffects"]
  LOADK R20 K37 [".lua"]
  CONCAT R17 R18 R20
  LOADK R19 K35 ["rbxasset://avatar/unification/"]
  LOADK R20 K38 ["UnificationServerScript"]
  LOADK R21 K6 ["R15Migrator"]
  LOADK R22 K37 [".lua"]
  CONCAT R18 R19 R22
  LOADK R21 K39 ["rbxasset://avatar/unification/AdapterReference.rbxm"]
  NAMECALL R19 R1 K40 ["LoadLocalAsset"]
  CALL R19 2 1
  LOADK R22 K41 ["rbxasset://avatar/unification/R15.rbxm"]
  NAMECALL R20 R1 K40 ["LoadLocalAsset"]
  CALL R20 2 1
  GETTABLEKS R22 R20 K42 ["UpperTorso"]
  GETTABLEKS R21 R22 K43 ["Color"]
  NEWTABLE R22 8 0
  GETIMPORT R23 K47 [Enum.BodyPart.Head]
  NEWTABLE R24 0 1
  LOADK R25 K46 ["Head"]
  SETLIST R24 R25 1 [1]
  SETTABLE R24 R22 R23
  GETIMPORT R23 K49 [Enum.BodyPart.Torso]
  NEWTABLE R24 0 2
  LOADK R25 K42 ["UpperTorso"]
  LOADK R26 K50 ["LowerTorso"]
  SETLIST R24 R25 2 [1]
  SETTABLE R24 R22 R23
  GETIMPORT R23 K52 [Enum.BodyPart.LeftArm]
  NEWTABLE R24 0 3
  LOADK R25 K53 ["LeftUpperArm"]
  LOADK R26 K54 ["LeftLowerArm"]
  LOADK R27 K55 ["LeftHand"]
  SETLIST R24 R25 3 [1]
  SETTABLE R24 R22 R23
  GETIMPORT R23 K57 [Enum.BodyPart.RightArm]
  NEWTABLE R24 0 3
  LOADK R25 K58 ["RightUpperArm"]
  LOADK R26 K59 ["RightLowerArm"]
  LOADK R27 K60 ["RightHand"]
  SETLIST R24 R25 3 [1]
  SETTABLE R24 R22 R23
  GETIMPORT R23 K62 [Enum.BodyPart.LeftLeg]
  NEWTABLE R24 0 3
  LOADK R25 K63 ["LeftUpperLeg"]
  LOADK R26 K64 ["LeftLowerLeg"]
  LOADK R27 K65 ["LeftFoot"]
  SETLIST R24 R25 3 [1]
  SETTABLE R24 R22 R23
  GETIMPORT R23 K67 [Enum.BodyPart.RightLeg]
  NEWTABLE R24 0 3
  LOADK R25 K68 ["RightUpperLeg"]
  LOADK R26 K69 ["RightLowerLeg"]
  LOADK R27 K70 ["RightFoot"]
  SETLIST R24 R25 3 [1]
  SETTABLE R24 R22 R23
  NEWTABLE R23 8 0
  GETIMPORT R24 K47 [Enum.BodyPart.Head]
  LOADK R25 K46 ["Head"]
  SETTABLE R25 R23 R24
  GETIMPORT R24 K49 [Enum.BodyPart.Torso]
  LOADK R25 K48 ["Torso"]
  SETTABLE R25 R23 R24
  GETIMPORT R24 K52 [Enum.BodyPart.LeftArm]
  LOADK R25 K71 ["Left Arm"]
  SETTABLE R25 R23 R24
  GETIMPORT R24 K57 [Enum.BodyPart.RightArm]
  LOADK R25 K72 ["Right Arm"]
  SETTABLE R25 R23 R24
  GETIMPORT R24 K62 [Enum.BodyPart.LeftLeg]
  LOADK R25 K73 ["Left Leg"]
  SETTABLE R25 R23 R24
  GETIMPORT R24 K67 [Enum.BodyPart.RightLeg]
  LOADK R25 K74 ["Right Leg"]
  SETTABLE R25 R23 R24
  NEWTABLE R24 0 0
  MOVE R25 R23
  LOADNIL R26
  LOADNIL R27
  FORGPREP R25
  SETTABLE R28 R24 R29
  FORGLOOP R25 2 [-2]
  NEWTABLE R25 0 0
  MOVE R26 R22
  LOADNIL R27
  LOADNIL R28
  FORGPREP R26
  MOVE R31 R30
  LOADNIL R32
  LOADNIL R33
  FORGPREP R31
  SETTABLE R29 R25 R35
  FORGLOOP R31 2 [-2]
  FORGLOOP R26 2 [-8]
  NEWTABLE R26 0 3
  LOADK R27 K75 ["R15ArtistIntent"]
  LOADK R28 K76 ["R15"]
  LOADK R29 K77 ["R15Fixed"]
  SETLIST R26 R27 3 [1]
  DUPCLOSURE R27 K78 [PROTO_0]
  CAPTURE VAL R24
  SETTABLEKS R27 R0 K79 ["GetBodyPartR6"]
  DUPCLOSURE R27 K80 [PROTO_1]
  CAPTURE VAL R22
  SETTABLEKS R27 R0 K81 ["GetR15PartsFromBodyPart"]
  DUPCLOSURE R27 K82 [PROTO_2]
  CAPTURE VAL R25
  CAPTURE VAL R23
  SETTABLEKS R27 R0 K83 ["GetLimbForR15Part"]
  DUPCLOSURE R27 K84 [PROTO_3]
  DUPCLOSURE R28 K85 [PROTO_5]
  CAPTURE VAL R7
  SETTABLEKS R28 R0 K86 ["GetR6Npcs"]
  DUPCLOSURE R28 K87 [PROTO_7]
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R28 R0 K88 ["GetR15ConvertedNpcs"]
  DUPCLOSURE R28 K89 [PROTO_8]
  CAPTURE VAL R22
  SETTABLEKS R28 R0 K90 ["IsR15Complete"]
  DUPCLOSURE R28 K91 [PROTO_10]
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R15
  SETTABLEKS R28 R0 K92 ["ClearAdapterSetup"]
  DUPCLOSURE R28 K93 [PROTO_11]
  CAPTURE VAL R24
  CAPTURE VAL R8
  DUPCLOSURE R29 K94 [PROTO_12]
  DUPCLOSURE R30 K95 [PROTO_13]
  DUPCLOSURE R31 K96 [PROTO_14]
  CAPTURE VAL R22
  CAPTURE VAL R20
  DUPCLOSURE R32 K97 [PROTO_16]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R31
  CAPTURE VAL R26
  CAPTURE VAL R22
  DUPCLOSURE R33 K98 [PROTO_18]
  CAPTURE VAL R5
  CAPTURE VAL R1
  DUPCLOSURE R34 K99 [PROTO_19]
  CAPTURE VAL R1
  DUPCLOSURE R35 K100 [PROTO_20]
  SETTABLEKS R35 R0 K101 ["RemoveUnificationScripts"]
  DUPCLOSURE R35 K102 [PROTO_21]
  SETTABLEKS R35 R0 K103 ["HasUnificationScripts"]
  DUPCLOSURE R35 K104 [PROTO_22]
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R15
  CAPTURE VAL R17
  SETTABLEKS R35 R0 K105 ["SetupUnificationScripts"]
  DUPCLOSURE R35 K106 [PROTO_23]
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R35 R0 K107 ["getAdapterData"]
  DUPCLOSURE R35 K108 [PROTO_24]
  DUPCLOSURE R36 K109 [PROTO_25]
  SETTABLEKS R36 R0 K110 ["FindInstanceUnderNewModel"]
  DUPCLOSURE R36 K111 [PROTO_26]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R0
  SETTABLEKS R36 R0 K112 ["ReplaceModel"]
  DUPCLOSURE R36 K113 [PROTO_27]
  SETTABLEKS R36 R0 K114 ["FixRootAttachment"]
  DUPCLOSURE R36 K115 [PROTO_28]
  CAPTURE VAL R0
  SETTABLEKS R36 R0 K116 ["GetNumCharactersHaveWarnings"]
  DUPCLOSURE R36 K117 [PROTO_29]
  CAPTURE VAL R28
  CAPTURE VAL R22
  CAPTURE VAL R4
  SETTABLEKS R36 R0 K118 ["GetNpcHasWarnings"]
  DUPCLOSURE R36 K119 [PROTO_30]
  CAPTURE VAL R0
  SETTABLEKS R36 R0 K120 ["GetNumCharactersHaveCustomMesh"]
  DUPCLOSURE R36 K121 [PROTO_31]
  CAPTURE VAL R28
  CAPTURE VAL R22
  CAPTURE VAL R4
  SETTABLEKS R36 R0 K122 ["GetNpcHasCustomMesh"]
  DUPCLOSURE R36 K123 [PROTO_32]
  CAPTURE VAL R24
  SETTABLEKS R36 R0 K124 ["SaveExtraPartPositions"]
  DUPCLOSURE R36 K125 [PROTO_33]
  SETTABLEKS R36 R0 K126 ["FixExtraPartPositions"]
  DUPCLOSURE R36 K127 [PROTO_36]
  CAPTURE VAL R0
  CAPTURE VAL R20
  CAPTURE VAL R28
  CAPTURE VAL R23
  CAPTURE VAL R5
  CAPTURE VAL R33
  CAPTURE VAL R31
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R4
  CAPTURE VAL R32
  CAPTURE VAL R35
  SETTABLEKS R36 R0 K128 ["ConvertR6ToR15"]
  RETURN R0 1
