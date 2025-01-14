PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["AnimationData"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["getTrack"]
  MOVE R3 R1
  GETUPVAL R4 1
  GETUPVAL R5 2
  CALL R2 3 1
  JUMPIFNOT R2 [+16]
  GETTABLEKS R3 R2 K3 ["Type"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["TRACK_TYPES"]
  GETTABLEKS R4 R5 K5 ["EulerAngles"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R3 R2 K6 ["EulerAnglesOrder"]
  GETUPVAL R4 4
  JUMPIFNOTEQ R3 R4 [+3]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K7 ["Dictionary"]
  GETTABLEKS R3 R4 K8 ["join"]
  NEWTABLE R4 0 0
  MOVE R5 R1
  CALL R3 2 1
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K7 ["Dictionary"]
  GETTABLEKS R4 R5 K8 ["join"]
  NEWTABLE R5 0 0
  GETTABLEKS R6 R3 K9 ["Instances"]
  CALL R4 2 1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K7 ["Dictionary"]
  GETTABLEKS R5 R6 K8 ["join"]
  NEWTABLE R6 0 0
  GETUPVAL R8 1
  GETTABLE R7 R4 R8
  CALL R5 2 1
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K7 ["Dictionary"]
  GETTABLEKS R6 R7 K8 ["join"]
  NEWTABLE R7 0 0
  GETTABLEKS R8 R5 K10 ["Tracks"]
  CALL R6 2 1
  JUMPIF R2 [+23]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K11 ["addTrack"]
  MOVE R8 R6
  GETUPVAL R10 2
  GETTABLEN R9 R10 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K4 ["TRACK_TYPES"]
  GETTABLEKS R10 R11 K12 ["CFrame"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["isChannelAnimation"]
  MOVE R12 R3
  CALL R11 1 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K4 ["TRACK_TYPES"]
  GETTABLEKS R12 R13 K5 ["EulerAngles"]
  GETUPVAL R13 4
  CALL R7 6 0
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K7 ["Dictionary"]
  GETTABLEKS R7 R8 K8 ["join"]
  NEWTABLE R8 0 0
  GETUPVAL R11 2
  GETTABLEN R10 R11 1
  GETTABLE R9 R6 R10
  CALL R7 2 1
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K7 ["Dictionary"]
  GETTABLEKS R8 R9 K8 ["join"]
  NEWTABLE R9 0 0
  GETTABLEKS R10 R7 K14 ["Components"]
  CALL R8 2 1
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K7 ["Dictionary"]
  GETTABLEKS R9 R10 K8 ["join"]
  NEWTABLE R10 0 0
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K15 ["PROPERTY_KEYS"]
  GETTABLEKS R12 R13 K16 ["Rotation"]
  GETTABLE R11 R8 R12
  CALL R9 2 1
  GETUPVAL R10 4
  SETTABLEKS R10 R9 K6 ["EulerAnglesOrder"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K15 ["PROPERTY_KEYS"]
  GETTABLEKS R10 R11 K16 ["Rotation"]
  SETTABLE R9 R8 R10
  SETTABLEKS R8 R7 K14 ["Components"]
  GETUPVAL R11 2
  GETTABLEN R10 R11 1
  SETTABLE R7 R6 R10
  SETTABLEKS R6 R5 K10 ["Tracks"]
  GETUPVAL R10 1
  SETTABLE R5 R4 R10
  SETTABLEKS R4 R3 K9 ["Instances"]
  GETUPVAL R12 6
  MOVE R13 R3
  CALL R12 1 -1
  NAMECALL R10 R0 K17 ["dispatch"]
  CALL R10 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["AnimationData"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["PathUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K13 ["Thunks"]
  GETTABLEKS R6 R7 K14 ["UpdateAnimationData"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R5
  RETURN R6 1
