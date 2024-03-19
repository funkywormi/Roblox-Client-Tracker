PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getAllAttributes"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Schema"]
  GETTABLEKS R1 R2 K2 ["Instance"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getDerivedAttributes"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Schema"]
  GETTABLEKS R1 R2 K2 ["Instance"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["validateToken"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["Schema"]
  GETTABLEKS R3 R4 K2 ["ExpectedType"]
  CALL R0 3 2
  LOADNIL R2
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K3 ["None"]
  JUMPIFNOTEQ R1 R3 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["getTokenSourceStyleSheet"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K1 ["Schema"]
  GETTABLEKS R4 R5 K5 ["Instance"]
  GETUPVAL R5 2
  CALL R3 2 1
  MOVE R2 R3
  DUPTABLE R3 K10 [{"Name", "Value", "Error", "Source", "ExpectedType"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K6 ["Name"]
  SETTABLEKS R0 R3 K7 ["Value"]
  SETTABLEKS R1 R3 K8 ["Error"]
  SETTABLEKS R2 R3 K9 ["Source"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K1 ["Schema"]
  GETTABLEKS R4 R5 K2 ["ExpectedType"]
  SETTABLEKS R4 R3 K2 ["ExpectedType"]
  RETURN R3 1

PROTO_3:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Value"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Value"]
  JUMPIFNOTEQ R0 R2 [+2]
  RETURN R0 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["OnChanged"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"TokenInfo", "OnActivated", "ErrorStyle", "LayoutOrder"}]
  GETTABLEKS R7 R0 K1 ["TokenInfo"]
  SETTABLEKS R7 R6 K1 ["TokenInfo"]
  SETTABLEKS R2 R6 K2 ["OnActivated"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["Schema"]
  GETTABLEKS R7 R8 K3 ["ErrorStyle"]
  SETTABLEKS R7 R6 K3 ["ErrorStyle"]
  SETTABLEKS R1 R6 K4 ["LayoutOrder"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_7:
  NAMECALL R2 R0 K0 ["lower"]
  CALL R2 1 1
  GETUPVAL R5 0
  GETUPVAL R6 1
  CALL R5 1 -1
  NAMECALL R3 R2 K1 ["find"]
  CALL R3 -1 1
  JUMPIF R3 [+2]
  LOADNIL R3
  RETURN R3 1
  LOADK R4 K2 ["$"]
  MOVE R5 R0
  CONCAT R3 R4 R5
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["validateToken"]
  GETUPVAL R5 3
  MOVE R6 R3
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K4 ["Schema"]
  GETTABLEKS R7 R8 K5 ["ExpectedType"]
  CALL R4 3 2
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K6 ["None"]
  JUMPIFEQ R5 R6 [+3]
  LOADNIL R6
  RETURN R6 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["getTokenSourceStyleSheet"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K4 ["Schema"]
  GETTABLEKS R7 R8 K8 ["Instance"]
  MOVE R8 R3
  CALL R6 2 1
  DUPTABLE R7 K12 [{"Id", "Value", "TokenInfo"}]
  SETTABLEKS R3 R7 K9 ["Id"]
  SETTABLEKS R3 R7 K10 ["Value"]
  DUPTABLE R8 K16 [{"Name", "Value", "Error", "Source", "ExpectedType"}]
  SETTABLEKS R3 R8 K13 ["Name"]
  SETTABLEKS R4 R8 K10 ["Value"]
  SETTABLEKS R5 R8 K14 ["Error"]
  SETTABLEKS R6 R8 K15 ["Source"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K4 ["Schema"]
  GETTABLEKS R9 R10 K5 ["ExpectedType"]
  SETTABLEKS R9 R8 K5 ["ExpectedType"]
  SETTABLEKS R8 R7 K11 ["TokenInfo"]
  RETURN R7 1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Schema"]
  GETTABLEKS R1 R2 K1 ["Instance"]
  JUMPIF R1 [+3]
  NEWTABLE R2 0 0
  RETURN R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["parseAttributeName"]
  MOVE R4 R0
  CALL R3 1 1
  OR R2 R3 R0
  NAMECALL R2 R2 K3 ["lower"]
  CALL R2 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Schema"]
  GETTABLEKS R4 R5 K4 ["HideSelfTokens"]
  JUMPIFNOT R4 [+2]
  GETUPVAL R3 2
  JUMP [+1]
  GETUPVAL R3 3
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["stripStyleEditorMetaAttributes"]
  MOVE R5 R3
  CALL R4 1 1
  GETUPVAL R5 4
  MOVE R6 R4
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CALL R5 2 -1
  RETURN R5 -1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Value"]
  CALL R1 1 2
  GETUPVAL R3 1
  LOADNIL R4
  CALL R3 1 1
  GETUPVAL R4 2
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  GETTABLEKS R8 R0 K1 ["Schema"]
  GETTABLEKS R7 R8 K2 ["Instance"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R5 2
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NEWTABLE R7 0 1
  GETTABLEKS R9 R0 K1 ["Schema"]
  GETTABLEKS R8 R9 K2 ["Instance"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R6 2
  NEWCLOSURE R7 P2
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  NEWTABLE R8 0 4
  MOVE R9 R1
  GETTABLEKS R11 R0 K1 ["Schema"]
  GETTABLEKS R10 R11 K2 ["Instance"]
  GETTABLEKS R12 R0 K1 ["Schema"]
  GETTABLEKS R11 R12 K3 ["ExpectedType"]
  MOVE R12 R4
  SETLIST R8 R9 4 [1]
  CALL R6 2 1
  GETUPVAL R7 5
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  NEWTABLE R9 0 1
  MOVE R10 R2
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 6
  NEWCLOSURE R9 P4
  CAPTURE VAL R7
  CAPTURE VAL R0
  NEWTABLE R10 0 2
  GETTABLEKS R11 R0 K0 ["Value"]
  MOVE R12 R7
  SETLIST R10 R11 2 [1]
  CALL R8 2 0
  NEWCLOSURE R8 P5
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWCLOSURE R9 P6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  GETUPVAL R10 5
  NEWCLOSURE R11 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U4
  NEWTABLE R12 0 2
  GETTABLEKS R13 R0 K1 ["Schema"]
  GETTABLEKS R15 R0 K1 ["Schema"]
  GETTABLEKS R14 R15 K3 ["ExpectedType"]
  SETLIST R12 R13 2 [1]
  CALL R10 2 1
  GETTABLEKS R12 R6 K4 ["Error"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K5 ["None"]
  JUMPIFNOTEQ R12 R13 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K6 ["createElement"]
  GETUPVAL R13 11
  NEWTABLE R14 0 0
  DUPTABLE R15 K9 [{"Input", "Tooltip"}]
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R17 12
  NEWTABLE R18 16 0
  SETTABLEKS R10 R18 K10 ["GetAutocompleteItems"]
  SETTABLEKS R9 R18 K11 ["OnRenderAutocompleteItem"]
  GETTABLEKS R19 R0 K12 ["Disabled"]
  SETTABLEKS R19 R18 K12 ["Disabled"]
  SETTABLEKS R7 R18 K13 ["OnTextChanged"]
  SETTABLEKS R8 R18 K14 ["OnFocusLost"]
  GETTABLEKS R20 R0 K15 ["AutomaticSize"]
  JUMPIFNOT R20 [+10]
  GETIMPORT R19 K18 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  GETTABLEKS R24 R0 K20 ["MinimumHeight"]
  ORK R23 R24 K19 [24]
  CALL R19 4 1
  JUMP [+5]
  GETIMPORT R19 K22 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K23 ["Size"]
  SETTABLEKS R1 R18 K24 ["Text"]
  SETTABLEKS R3 R18 K25 ["ForwardRef"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K26 ["Tag"]
  JUMPIFNOT R11 [+5]
  GETTABLEKS R21 R0 K1 ["Schema"]
  GETTABLEKS R20 R21 K27 ["ErrorStyle"]
  JUMP [+1]
  LOADNIL R20
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K7 ["Input"]
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R17 13
  DUPTABLE R18 K29 [{"TokenInfo", "ErrorStyle"}]
  SETTABLEKS R6 R18 K28 ["TokenInfo"]
  GETTABLEKS R20 R0 K1 ["Schema"]
  GETTABLEKS R19 R20 K27 ["ErrorStyle"]
  SETTABLEKS R19 R18 K27 ["ErrorStyle"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K8 ["Tooltip"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["useState"]
  GETTABLEKS R3 R1 K8 ["useEffect"]
  GETTABLEKS R4 R1 K9 ["useMemo"]
  GETTABLEKS R5 R1 K10 ["useRef"]
  GETTABLEKS R6 R1 K11 ["useCallback"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K5 ["Packages"]
  GETTABLEKS R8 R9 K12 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K13 ["UI"]
  GETTABLEKS R8 R9 K14 ["Pane"]
  GETTABLEKS R10 R7 K13 ["UI"]
  GETTABLEKS R9 R10 K15 ["TextInput"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K5 ["Packages"]
  GETTABLEKS R11 R12 K16 ["Dash"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K17 ["collectArray"]
  GETIMPORT R12 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K18 ["TokenAutocompleteItem"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K19 ["TokenTooltip"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K20 ["Types"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K22 ["Util"]
  GETTABLEKS R16 R17 K23 ["escapeStringPattern"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K21 ["Src"]
  GETTABLEKS R18 R19 K22 ["Util"]
  GETTABLEKS R17 R18 K24 ["TokenHelpers"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K21 ["Src"]
  GETTABLEKS R19 R20 K25 ["Enums"]
  GETTABLEKS R18 R19 K26 ["TokenValidationError"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R20 R0 K21 ["Src"]
  GETTABLEKS R19 R20 K20 ["Types"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K21 ["Src"]
  GETTABLEKS R21 R22 K27 ["Renderers"]
  GETTABLEKS R20 R21 K28 ["RendererTypes"]
  CALL R19 1 1
  DUPCLOSURE R20 K29 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R13
  RETURN R20 1
