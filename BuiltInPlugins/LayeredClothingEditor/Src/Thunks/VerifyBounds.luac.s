PROTO_0:
  GETUPVAL R1 0
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["isAvatar"]
  GETUPVAL R2 0
  CALL R1 1 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 2
  LOADB R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0
  NAMECALL R1 R0 K2 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K3 ["selectItem"]
  GETTABLEKS R2 R3 K4 ["accessoryTypeInfo"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 3
  JUMPIF R3 [+11]
  GETUPVAL R3 0
  GETTABLEKS R5 R2 K5 ["Name"]
  NAMECALL R3 R3 K6 ["FindFirstChild"]
  CALL R3 2 1
  SETUPVAL R3 3
  GETUPVAL R3 3
  JUMPIF R3 [+2]
  LOADNIL R3
  RETURN R3 1
  GETTABLEKS R3 R2 K7 ["Bounds"]
  GETTABLEKS R4 R2 K8 ["Offset"]
  GETUPVAL R5 4
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K9 ["WorldPosition"]
  ADD R7 R8 R4
  MOVE R8 R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["CFrame"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K11 ["Size"]
  NAMECALL R5 R5 K12 ["checkAccessoryBounds"]
  CALL R5 5 1
  GETUPVAL R8 2
  MOVE R9 R5
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE REF R1
  CAPTURE UPVAL U2
  CLOSEUPVALS R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["AvatarToolsShared"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R3 R2 K9 ["AccessoryUtil"]
  GETTABLEKS R4 R2 K10 ["ItemCharacteristics"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Actions"]
  GETTABLEKS R6 R7 K13 ["SetInBounds"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  RETURN R6 1
