PROTO_0:
  GETIMPORT R0 K2 [Rect.new]
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 1
  LOADN R3 1
  CALL R1 2 1
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 3
  LOADN R4 3
  CALL R2 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 2
  LOADN R3 2
  CALL R1 2 1
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K5 ["containsPoint"]
  CALL R4 3 1
  JUMPIFEQKB R4 TRUE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K6 [+4]
  LOADK R4 K6 ["Point was not inside rectangle"]
  GETIMPORT R2 K8 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K2 [Rect.new]
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 1
  LOADN R3 1
  CALL R1 2 1
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 3
  LOADN R4 3
  CALL R2 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 2
  LOADN R3 1
  CALL R1 2 1
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K5 ["containsPoint"]
  CALL R4 3 1
  JUMPIFEQKB R4 TRUE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K6 [+4]
  LOADK R4 K6 ["Point was not inside rectangle"]
  GETIMPORT R2 K8 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K2 [Rect.new]
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 1
  LOADN R3 1
  CALL R1 2 1
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 3
  LOADN R4 3
  CALL R2 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 0
  LOADN R3 0
  CALL R1 2 1
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K5 ["containsPoint"]
  CALL R4 3 1
  JUMPIFEQKB R4 FALSE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K6 [+4]
  LOADK R4 K6 ["Point was not outside rectangle"]
  GETIMPORT R2 K8 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K2 [Rect.new]
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 1
  LOADN R3 1
  CALL R1 2 1
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 3
  LOADN R4 3
  CALL R2 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 2
  LOADK R3 K5 [0.5]
  CALL R1 2 1
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K6 ["containsPoint"]
  CALL R4 3 1
  JUMPIFEQKB R4 FALSE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Point was not outside rectangle"]
  GETIMPORT R2 K9 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K2 [Rect.new]
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 1
  LOADN R3 1
  CALL R1 2 1
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 3
  LOADN R4 3
  CALL R2 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 2
  LOADK R3 K5 [3.5]
  CALL R1 2 1
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K6 ["containsPoint"]
  CALL R4 3 1
  JUMPIFEQKB R4 FALSE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Point was not outside rectangle"]
  GETIMPORT R2 K9 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K2 [Rect.new]
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 1
  LOADN R3 1
  CALL R1 2 1
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 3
  LOADN R4 3
  CALL R2 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K4 [Vector2.new]
  LOADK R2 K5 [0.5]
  LOADN R3 2
  CALL R1 2 1
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K6 ["containsPoint"]
  CALL R4 3 1
  JUMPIFEQKB R4 FALSE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Point was not outside rectangle"]
  GETIMPORT R2 K9 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K2 [Rect.new]
  GETIMPORT R1 K4 [Vector2.new]
  LOADN R2 1
  LOADN R3 1
  CALL R1 2 1
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 3
  LOADN R4 3
  CALL R2 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K4 [Vector2.new]
  LOADK R2 K5 [0.5]
  LOADN R3 2
  CALL R1 2 1
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K6 ["containsPoint"]
  CALL R4 3 1
  JUMPIFEQKB R4 FALSE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Point was not outside rectangle"]
  GETIMPORT R2 K9 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R2 K0 ["Running RectUtilityTest"]
  NAMECALL R0 R0 K1 ["log"]
  CALL R0 2 0
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R0 2
  CALL R0 0 0
  GETUPVAL R0 3
  CALL R0 0 0
  GETUPVAL R0 4
  CALL R0 0 0
  GETUPVAL R0 5
  CALL R0 0 0
  GETUPVAL R0 6
  CALL R0 0 0
  GETUPVAL R0 7
  CALL R0 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Log"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["RectUtility"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R3 K8 [PROTO_1]
  CAPTURE VAL R1
  DUPCLOSURE R4 K9 [PROTO_2]
  CAPTURE VAL R1
  DUPCLOSURE R5 K10 [PROTO_3]
  CAPTURE VAL R1
  DUPCLOSURE R6 K11 [PROTO_4]
  CAPTURE VAL R1
  DUPCLOSURE R7 K12 [PROTO_5]
  CAPTURE VAL R1
  DUPCLOSURE R8 K13 [PROTO_6]
  CAPTURE VAL R1
  DUPCLOSURE R9 K14 [PROTO_7]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  LOADK R12 K15 ["Running RectUtilityTest"]
  NAMECALL R10 R0 K16 ["log"]
  CALL R10 2 0
  MOVE R10 R2
  CALL R10 0 0
  MOVE R10 R3
  CALL R10 0 0
  MOVE R10 R4
  CALL R10 0 0
  MOVE R10 R5
  CALL R10 0 0
  MOVE R10 R6
  CALL R10 0 0
  MOVE R10 R7
  CALL R10 0 0
  MOVE R10 R8
  CALL R10 0 0
  RETURN R0 0
