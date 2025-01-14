PROTO_0:
  LOADK R3 K0 ["rbxthumb://type=AvatarHeadShot&id=%*&w=%*&h=%*&filters=circular"]
  MOVE R5 R0
  GETTABLEKS R6 R1 K1 ["X"]
  GETTABLEKS R7 R1 K2 ["Y"]
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 4 1
  MOVE R2 R3
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Tag"]
  GETUPVAL R5 1
  LOADK R6 K3 ["Component-CollaboratorThumbnail Role-Surface"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Tag"]
  GETTABLE R7 R0 R8
  CALL R5 2 1
  SETTABLE R5 R3 R4
  DUPTABLE R4 K6 [{"ActivityRing", "Avatar"}]
  GETTABLEKS R6 R0 K7 ["IsIdle"]
  JUMPIF R6 [+26]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  NEWTABLE R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Tag"]
  LOADK R9 K8 ["Role-Surface X-Fit"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K10 [{"RingColor"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K11 ["UIStroke"]
  DUPTABLE R11 K13 [{"Color"}]
  GETTABLEKS R12 R0 K9 ["RingColor"]
  SETTABLEKS R12 R11 K12 ["Color"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K9 ["RingColor"]
  CALL R5 3 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K4 ["ActivityRing"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K14 ["ImageLabel"]
  NEWTABLE R7 4 0
  GETUPVAL R9 2
  JUMPIFNOT R9 [+2]
  LOADNIL R8
  JUMP [+2]
  GETTABLEKS R8 R0 K9 ["RingColor"]
  SETTABLEKS R8 R7 K15 ["BackgroundColor3"]
  GETTABLEKS R9 R0 K16 ["UserId"]
  GETIMPORT R10 K19 [Vector2.new]
  LOADN R11 60
  LOADN R12 60
  CALL R10 2 1
  LOADK R11 K20 ["rbxthumb://type=AvatarHeadShot&id=%*&w=%*&h=%*&filters=circular"]
  MOVE R13 R9
  GETTABLEKS R14 R10 K21 ["X"]
  GETTABLEKS R15 R10 K22 ["Y"]
  NAMECALL R11 R11 K23 ["format"]
  CALL R11 4 1
  MOVE R8 R11
  SETTABLEKS R8 R7 K24 ["Image"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Tag"]
  GETTABLEKS R10 R0 K7 ["IsIdle"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K25 ["Idle"]
  JUMP [+1]
  LOADNIL R9
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Avatar"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["SharedFlags"]
  GETTABLEKS R3 R4 K10 ["getFFlagLuaRibbonSocialPresenceBGColorUpdate"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["Styling"]
  GETTABLEKS R4 R5 K13 ["joinTags"]
  DUPCLOSURE R5 K14 [PROTO_0]
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R6 1
