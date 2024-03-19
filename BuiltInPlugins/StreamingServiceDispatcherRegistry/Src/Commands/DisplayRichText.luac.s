PROTO_0:
  GETTABLEKS R1 R0 K0 ["isFinal"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  DUPTABLE R1 K3 [{"requestId", "arguments"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["requestId"]
  NEWTABLE R2 0 2
  LOADK R3 K4 ["StreamText"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Dictionary"]
  GETTABLEKS R4 R5 K6 ["join"]
  NEWTABLE R5 2 0
  GETUPVAL R6 0
  SETTABLEKS R6 R5 K1 ["requestId"]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  GETUPVAL R6 3
  JUMPIF R6 [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K7 ["streamId"]
  MOVE R6 R0
  CALL R4 2 -1
  SETLIST R2 R3 -1 [1]
  SETTABLEKS R2 R1 K2 ["arguments"]
  GETUPVAL R2 4
  GETUPVAL R4 0
  LOADK R5 K8 ["QueueRichText"]
  MOVE R6 R1
  NAMECALL R2 R2 K9 ["InvokeCommand"]
  CALL R2 4 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  SETTABLEKS R0 R1 K0 ["requestId"]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K1 ["streamId"]
  GETUPVAL R2 2
  LOADK R4 K2 ["MessageBubble"]
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["DisplayContent"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["requestId"]
  GETTABLEKS R2 R0 K1 ["arguments"]
  GETTABLEKS R4 R2 K2 ["text"]
  GETTABLEKS R3 R4 K3 ["streamId"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  DUPCLOSURE R6 K4 [PROTO_2]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K5 ["requestStreamSubscription"]
  MOVE R8 R1
  MOVE R9 R3
  LOADB R10 1
  MOVE R11 R4
  MOVE R12 R5
  MOVE R13 R6
  CALL R7 6 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChatbotUIService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StreamingService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R2 K13 ["Src"]
  GETTABLEKS R5 R6 K14 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R2 K13 ["Src"]
  GETTABLEKS R7 R8 K15 ["Cache"]
  GETTABLEKS R6 R7 K16 ["StreamCache"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R2 K13 ["Src"]
  GETTABLEKS R8 R9 K17 ["Flags"]
  GETTABLEKS R7 R8 K18 ["getFFlagCAPAddStreamIdToRichTextContent"]
  CALL R6 1 1
  DUPCLOSURE R7 K19 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R5
  RETURN R7 1
