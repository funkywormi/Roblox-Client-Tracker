PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["CellProps"]
  GETTABLEKS R1 R0 K2 ["OnToggle"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Row"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["CellProps"]
  GETTABLEKS R2 R3 K2 ["OnFocused"]
  JUMPIFNOT R2 [+7]
  MOVE R3 R2
  MOVE R4 R0
  GETTABLEKS R5 R1 K3 ["Row"]
  GETTABLEKS R6 R1 K4 ["ColumnIndex"]
  CALL R3 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R4 R2 K1 ["CellProps"]
  GETTABLEKS R3 R4 K2 ["OnFocusLost"]
  JUMPIFNOT R3 [+8]
  MOVE R4 R3
  MOVE R5 R0
  MOVE R6 R1
  GETTABLEKS R7 R2 K3 ["Row"]
  GETTABLEKS R8 R2 K4 ["ColumnIndex"]
  CALL R4 4 0
  RETURN R0 0

PROTO_5:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellPressed"]
  JUMPIFNOT R1 [+14]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellPressed"]
  GETTABLEKS R4 R0 K3 ["Row"]
  GETTABLEKS R3 R4 K4 ["item"]
  GETTABLEKS R2 R3 K5 ["path"]
  GETTABLEKS R3 R0 K6 ["ColumnIndex"]
  GETVARARGS R4 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellDoubleClick"]
  JUMPIFNOT R1 [+14]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellDoubleClick"]
  GETTABLEKS R4 R0 K3 ["Row"]
  GETTABLEKS R3 R4 K4 ["item"]
  GETTABLEKS R2 R3 K5 ["path"]
  GETTABLEKS R3 R0 K6 ["ColumnIndex"]
  GETVARARGS R4 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["Columns"]
  GETTABLEKS R3 R0 K1 ["ColumnIndex"]
  GETTABLE R1 R2 R3
  GETTABLEKS R2 R1 K2 ["Key"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R1 K3 ["Name"]
  GETTABLEKS R3 R0 K4 ["Row"]
  GETTABLEKS R5 R3 K5 ["item"]
  GETTABLE R4 R5 R2
  RETURN R4 1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["CellProps"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K14 [{"AnchorPoint", "Size", "Position", "GetAutocompleteItems", "Item", "LayoutOrder", "OnChanged", "OnDoubleClick", "OnPressed", "Schema", "Value"}]
  GETIMPORT R5 K17 [Vector2.new]
  LOADN R6 0
  LOADK R7 K18 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["AnchorPoint"]
  GETIMPORT R5 K20 [UDim2.new]
  LOADN R6 1
  LOADN R7 250
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  GETIMPORT R5 K20 [UDim2.new]
  LOADN R6 0
  LOADN R7 0
  LOADK R8 K18 [0.5]
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K5 ["Position"]
  GETTABLEKS R5 R1 K6 ["GetAutocompleteItems"]
  SETTABLEKS R5 R4 K6 ["GetAutocompleteItems"]
  GETTABLEKS R5 R0 K7 ["Item"]
  SETTABLEKS R5 R4 K7 ["Item"]
  LOADN R5 3
  SETTABLEKS R5 R4 K8 ["LayoutOrder"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K21 ["onChanged"]
  SETTABLEKS R5 R4 K9 ["OnChanged"]
  GETTABLEKS R5 R0 K10 ["OnDoubleClick"]
  SETTABLEKS R5 R4 K10 ["OnDoubleClick"]
  GETTABLEKS R5 R0 K11 ["OnPressed"]
  SETTABLEKS R5 R4 K11 ["OnPressed"]
  GETTABLEKS R5 R0 K12 ["Schema"]
  SETTABLEKS R5 R4 K12 ["Schema"]
  GETTABLEKS R5 R0 K13 ["Value"]
  SETTABLEKS R5 R4 K13 ["Value"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellEdited"]
  JUMPIFNOT R1 [+23]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellEdited"]
  MOVE R2 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["Row"]
  GETTABLEKS R4 R5 K4 ["item"]
  GETTABLEKS R3 R4 K5 ["path"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["ColumnIndex"]
  CALL R1 3 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K1 [{"ForceRefresh"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["ForceRefresh"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onToggle"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["textRef"]
  DUPCLOSURE R1 K6 [PROTO_1]
  SETTABLEKS R1 R0 K7 ["fetchCellContentsWidthIfOverflow"]
  DUPCLOSURE R1 K8 [PROTO_2]
  SETTABLEKS R1 R0 K9 ["onAbsoluteSizeChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onTextInputFocused"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["onTextInputFocusLost"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["onPressed"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onDoubleClick"]
  DUPCLOSURE R1 K14 [PROTO_7]
  SETTABLEKS R1 R0 K15 ["getTextFromProps"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K16 ["getPropertyCell"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["onChanged"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["RowIndex"]
  GETTABLEKS R4 R2 K1 ["RowIndex"]
  JUMPIFNOTEQ R3 R4 [+11]
  GETTABLEKS R3 R0 K2 ["getTextFromProps"]
  MOVE R4 R1
  CALL R3 1 1
  GETTABLEKS R4 R0 K2 ["getTextFromProps"]
  MOVE R5 R2
  CALL R4 1 1
  JUMPIFEQ R3 R4 [+14]
  GETTABLEKS R3 R2 K3 ["SetCellContentsWidth"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R3 R2 K3 ["SetCellContentsWidth"]
  GETTABLEKS R4 R2 K4 ["ColumnIndex"]
  GETTABLEKS R5 R2 K1 ["RowIndex"]
  GETTABLEKS R6 R0 K5 ["fetchCellContentsWidthIfOverflow"]
  CALL R6 0 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"ForceRefresh"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["state"]
  GETTABLEKS R4 R5 K0 ["ForceRefresh"]
  ADDK R3 R4 K2 [1]
  SETTABLEKS R3 R2 K0 ["ForceRefresh"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETIMPORT R3 K1 [settings]
  CALL R3 0 1
  GETTABLEKS R2 R3 K2 ["Studio"]
  GETTABLEKS R1 R2 K3 ["ThemeChanged"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K4 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["onThemeChanged"]
  RETURN R0 0

PROTO_14:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["onThemeChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  JUMPIFNOT R0 [+2]
  NOT R2 R1
  JUMPIF R2 [+2]
  NOT R3 R0
  AND R2 R3 R1
  RETURN R2 1

PROTO_17:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R5 R3 K2 ["ForceRefresh"]
  GETTABLEKS R6 R2 K2 ["ForceRefresh"]
  JUMPIFNOTEQ R5 R6 [+7]
  GETTABLEKS R5 R4 K3 ["StyleModifier"]
  GETTABLEKS R6 R1 K3 ["StyleModifier"]
  JUMPIFEQ R5 R6 [+3]
  LOADB R5 1
  RETURN R5 1
  GETTABLEKS R5 R4 K4 ["CellProps"]
  GETTABLEKS R6 R1 K4 ["CellProps"]
  GETTABLEKS R7 R4 K5 ["Row"]
  GETTABLEKS R8 R1 K5 ["Row"]
  GETTABLEKS R9 R4 K6 ["Columns"]
  GETTABLEKS R10 R1 K6 ["Columns"]
  DUPCLOSURE R11 K7 [PROTO_16]
  JUMPIFNOT R5 [+2]
  NOT R12 R6
  JUMPIF R12 [+2]
  NOT R13 R5
  AND R12 R13 R6
  JUMPIF R12 [+12]
  JUMPIFNOT R7 [+2]
  NOT R12 R8
  JUMPIF R12 [+2]
  NOT R13 R7
  AND R12 R13 R8
  JUMPIF R12 [+6]
  JUMPIFNOT R9 [+2]
  NOT R12 R10
  JUMPIF R12 [+2]
  NOT R13 R9
  AND R12 R13 R10
  JUMPIFNOT R12 [+2]
  LOADB R12 1
  RETURN R12 1
  JUMPIFNOT R5 [+66]
  JUMPIFNOT R6 [+65]
  JUMPIFNOT R9 [+64]
  JUMPIFNOT R10 [+63]
  GETTABLEKS R14 R4 K8 ["ColumnIndex"]
  GETTABLE R12 R9 R14
  GETTABLEKS R14 R1 K8 ["ColumnIndex"]
  GETTABLE R13 R10 R14
  GETTABLEKS R14 R12 K9 ["Key"]
  GETTABLEKS R15 R13 K9 ["Key"]
  GETTABLEKS R18 R7 K10 ["item"]
  GETTABLE R16 R18 R14
  GETTABLEKS R18 R8 K10 ["item"]
  GETTABLE R17 R18 R15
  GETTABLEKS R19 R5 K11 ["Expansion"]
  GETTABLEKS R20 R5 K12 ["GetItemId"]
  GETTABLEKS R21 R7 K10 ["item"]
  CALL R20 1 1
  GETTABLE R18 R19 R20
  GETTABLEKS R20 R6 K11 ["Expansion"]
  GETTABLEKS R21 R6 K12 ["GetItemId"]
  GETTABLEKS R22 R8 K10 ["item"]
  CALL R21 1 1
  GETTABLE R19 R20 R21
  JUMPIFEQ R18 R19 [+3]
  LOADB R18 1
  RETURN R18 1
  JUMPIFEQ R16 R17 [+26]
  FASTCALL1 TYPEOF R16 [+3]
  MOVE R19 R16
  GETIMPORT R18 K14 [typeof]
  CALL R18 1 1
  JUMPIFNOTEQKS R18 K15 ["table"] [+17]
  LOADB R18 1
  GETTABLEKS R19 R16 K16 ["Value"]
  GETTABLEKS R20 R17 K16 ["Value"]
  JUMPIFNOTEQ R19 R20 [+9]
  GETTABLEKS R19 R16 K17 ["Actions"]
  GETTABLEKS R20 R17 K17 ["Actions"]
  JUMPIFNOTEQ R19 R20 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  RETURN R18 1
  LOADB R18 1
  RETURN R18 1
  LOADB R12 0
  RETURN R12 1

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnCellAction"]
  JUMPIFNOT R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnCellAction"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Id"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["item"]
  GETTABLEKS R2 R3 K3 ["path"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["ColumnIndex"]
  CALL R0 3 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Columns"]
  GETTABLEKS R4 R1 K2 ["ColumnIndex"]
  GETTABLE R2 R3 R4
  GETTABLEKS R3 R2 K3 ["Key"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R2 K4 ["Name"]
  GETTABLEKS R4 R1 K5 ["Width"]
  JUMPIF R4 [+8]
  GETIMPORT R4 K8 [UDim.new]
  GETTABLEKS R7 R1 K1 ["Columns"]
  LENGTH R6 R7
  DIVRK R5 R9 K6 ["UDim"]
  LOADN R6 0
  CALL R4 2 1
  GETTABLEKS R5 R1 K10 ["Row"]
  GETTABLEKS R6 R1 K11 ["CellProps"]
  GETTABLEKS R8 R5 K12 ["item"]
  GETTABLE R7 R8 R3
  GETUPVAL R8 0
  LOADK R10 K13 ["ActionIconSize"]
  NAMECALL R8 R8 K14 ["GetAttribute"]
  CALL R8 2 1
  GETUPVAL R9 0
  LOADK R11 K15 ["CellSpacing"]
  NAMECALL R9 R9 K14 ["GetAttribute"]
  CALL R9 2 1
  LOADNIL R10
  LOADB R11 0
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R13 R7
  GETIMPORT R12 K17 [typeof]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K18 ["table"] [+13]
  GETTABLEKS R13 R7 K19 ["Value"]
  FASTCALL1 TOSTRING R13 [+2]
  GETIMPORT R12 K21 [tostring]
  CALL R12 1 1
  MOVE R10 R12
  GETTABLEKS R12 R7 K22 ["Schema"]
  JUMPIFNOT R12 [+8]
  LOADB R11 1
  JUMP [+6]
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R13 R7
  GETIMPORT R12 K21 [tostring]
  CALL R12 1 1
  MOVE R10 R12
  GETTABLEKS R13 R1 K23 ["Tooltip"]
  OR R12 R13 R10
  LOADB R13 0
  JUMPIFEQKNIL R12 [+12]
  LOADB R13 0
  JUMPIFEQKS R12 K24 [""] [+9]
  GETTABLEKS R14 R0 K25 ["state"]
  GETTABLEKS R13 R14 K26 ["textOverflows"]
  JUMPIFNOT R13 [+3]
  GETTABLEKS R14 R6 K27 ["DisableTooltip"]
  NOT R13 R14
  GETUPVAL R14 1
  GETTABLEKS R15 R1 K28 ["Style"]
  GETTABLEKS R16 R6 K29 ["CellStyle"]
  CALL R14 2 1
  GETTABLEKS R17 R1 K31 ["RowIndex"]
  MODK R16 R17 K30 [2]
  JUMPIFNOTEQKN R16 K9 [1] [+4]
  GETTABLEKS R15 R14 K32 ["BackgroundOdd"]
  JUMPIF R15 [+2]
  GETTABLEKS R15 R14 K33 ["BackgroundEven"]
  GETTABLEKS R17 R1 K34 ["Emphasis"]
  JUMPIFNOT R17 [+3]
  GETTABLEKS R16 R14 K32 ["BackgroundOdd"]
  JUMP [+2]
  GETTABLEKS R16 R14 K33 ["BackgroundEven"]
  GETTABLEKS R17 R1 K35 ["HighlightCell"]
  JUMPIFNOT R17 [+24]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K36 ["Hover"]
  GETTABLE R17 R14 R18
  JUMPIFNOT R17 [+19]
  GETTABLEKS R19 R1 K31 ["RowIndex"]
  MODK R18 R19 K30 [2]
  JUMPIFNOTEQKN R18 K9 [1] [+8]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K36 ["Hover"]
  GETTABLE R18 R14 R19
  GETTABLEKS R17 R18 K32 ["BackgroundOdd"]
  JUMPIF R17 [+6]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K36 ["Hover"]
  GETTABLE R18 R14 R19
  GETTABLEKS R17 R18 K33 ["BackgroundEven"]
  MOVE R16 R17
  GETTABLEKS R18 R6 K37 ["Expansion"]
  GETTABLEKS R19 R6 K38 ["GetItemId"]
  GETTABLEKS R20 R5 K12 ["item"]
  CALL R19 1 1
  GETTABLE R17 R18 R19
  GETTABLEKS R19 R14 K39 ["Arrow"]
  GETTABLEKS R18 R19 K40 ["Size"]
  GETTABLEKS R20 R5 K41 ["depth"]
  GETUPVAL R21 0
  LOADK R23 K42 ["Indent"]
  NAMECALL R21 R21 K43 ["getAttribute"]
  CALL R21 2 1
  MUL R19 R20 R21
  GETTABLEKS R21 R1 K2 ["ColumnIndex"]
  JUMPIFEQKN R21 K9 [1] [+2]
  LOADB R20 0 +1
  LOADB R20 1
  MOVE R21 R20
  JUMPIFNOT R21 [+2]
  GETTABLEKS R21 R5 K44 ["hasChildren"]
  JUMPIFNOT R20 [+2]
  MOVE R22 R19
  JUMP [+1]
  LOADN R22 0
  LOADNIL R23
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R25 R7
  GETIMPORT R24 K17 [typeof]
  CALL R24 1 1
  JUMPIFNOTEQKS R24 K18 ["table"] [+92]
  GETTABLEKS R24 R7 K45 ["Actions"]
  JUMPIFNOT R24 [+88]
  ADD R22 R22 R9
  NEWTABLE R23 0 0
  GETIMPORT R24 K47 [ipairs]
  GETTABLEKS R25 R7 K45 ["Actions"]
  CALL R24 1 3
  FORGPREP_INEXT R24
  GETTABLEKS R29 R28 K48 ["Id"]
  GETUPVAL R32 3
  GETTABLEKS R31 R32 K49 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R30 R31 K50 ["NoOp"]
  JUMPIFNOTEQ R29 R30 [+20]
  LOADK R30 K51 ["Action "]
  MOVE R31 R27
  CONCAT R29 R30 R31
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K52 ["createElement"]
  GETUPVAL R31 5
  NEWTABLE R32 2 0
  SETTABLEKS R27 R32 K53 ["LayoutOrder"]
  GETUPVAL R34 4
  GETTABLEKS R33 R34 K54 ["Tag"]
  LOADK R34 K55 ["ActionIcon"]
  SETTABLE R34 R32 R33
  CALL R30 2 1
  SETTABLE R30 R23 R29
  JUMP [+47]
  GETTABLEKS R29 R28 K48 ["Id"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K52 ["createElement"]
  GETUPVAL R31 6
  NEWTABLE R32 8 0
  LOADK R33 K56 ["Round"]
  SETTABLEKS R33 R32 K28 ["Style"]
  GETIMPORT R33 K59 [UDim2.fromOffset]
  MOVE R34 R8
  MOVE R35 R8
  CALL R33 2 1
  SETTABLEKS R33 R32 K40 ["Size"]
  SETTABLEKS R27 R32 K53 ["LayoutOrder"]
  NEWCLOSURE R33 P0
  CAPTURE VAL R6
  CAPTURE VAL R28
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R33 R32 K60 ["OnClick"]
  GETUPVAL R34 4
  GETTABLEKS R33 R34 K54 ["Tag"]
  LOADK R34 K55 ["ActionIcon"]
  SETTABLE R34 R32 R33
  DUPTABLE R33 K62 [{"Icon"}]
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K52 ["createElement"]
  GETUPVAL R35 7
  DUPTABLE R36 K64 [{"Image"}]
  GETTABLEKS R37 R28 K61 ["Icon"]
  SETTABLEKS R37 R36 K63 ["Image"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K61 ["Icon"]
  CALL R30 3 1
  SETTABLE R30 R23 R29
  ADD R29 R8 R9
  ADD R22 R22 R29
  FORGLOOP R24 2 [inext] [-78]
  LOADN R24 0
  JUMPIFNOT R21 [+4]
  GETTABLEKS R26 R14 K15 ["CellSpacing"]
  ADD R25 R26 R18
  ADD R24 R24 R25
  GETIMPORT R25 K65 [UDim2.new]
  LOADN R26 1
  MINUS R27 R24
  LOADN R28 1
  LOADN R29 0
  CALL R25 4 1
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K52 ["createElement"]
  GETUPVAL R27 5
  NEWTABLE R28 4 0
  LOADK R29 K66 ["Box"]
  SETTABLEKS R29 R28 K28 ["Style"]
  GETIMPORT R29 K65 [UDim2.new]
  GETTABLEKS R30 R4 K67 ["Scale"]
  GETTABLEKS R31 R4 K68 ["Offset"]
  LOADN R32 1
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K40 ["Size"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K69 ["Change"]
  GETTABLEKS R29 R30 K70 ["AbsoluteSize"]
  GETTABLEKS R30 R0 K71 ["onAbsoluteSizeChanged"]
  SETTABLE R30 R28 R29
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K54 ["Tag"]
  GETUPVAL R30 8
  LOADK R31 K72 ["LayerViewCell"]
  GETTABLEKS R33 R5 K41 ["depth"]
  JUMPIFNOTEQKN R33 K73 [0] [+3]
  LOADK R32 K74 ["Section"]
  JUMP [+1]
  LOADNIL R32
  CALL R30 2 1
  SETTABLE R30 R28 R29
  DUPTABLE R29 K77 [{"Left", "Right"}]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K52 ["createElement"]
  GETUPVAL R31 5
  NEWTABLE R32 4 0
  GETTABLEKS R33 R1 K2 ["ColumnIndex"]
  SETTABLEKS R33 R32 K53 ["LayoutOrder"]
  GETIMPORT R33 K65 [UDim2.new]
  LOADN R34 1
  MINUS R35 R22
  LOADN R36 1
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K40 ["Size"]
  JUMPIFNOT R20 [+6]
  GETIMPORT R33 K59 [UDim2.fromOffset]
  MOVE R34 R19
  LOADN R35 0
  CALL R33 2 1
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K78 ["Position"]
  GETUPVAL R34 4
  GETTABLEKS R33 R34 K54 ["Tag"]
  LOADK R34 K79 ["X-RowS X-Middle"]
  SETTABLE R34 R32 R33
  DUPTABLE R33 K82 [{"Toggle", "Text"}]
  JUMPIFNOT R21 [+73]
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K52 ["createElement"]
  GETUPVAL R35 5
  DUPTABLE R36 K84 [{"AutomaticSize", "LayoutOrder"}]
  GETIMPORT R37 K87 [Enum.AutomaticSize.XY]
  SETTABLEKS R37 R36 K83 ["AutomaticSize"]
  LOADN R37 1
  SETTABLEKS R37 R36 K53 ["LayoutOrder"]
  DUPTABLE R37 K62 [{"Icon"}]
  GETUPVAL R39 4
  GETTABLEKS R38 R39 K52 ["createElement"]
  LOADK R39 K88 ["ImageButton"]
  NEWTABLE R40 8 0
  GETIMPORT R41 K59 [UDim2.fromOffset]
  MOVE R42 R18
  MOVE R43 R18
  CALL R41 2 1
  SETTABLEKS R41 R40 K40 ["Size"]
  LOADN R41 1
  SETTABLEKS R41 R40 K89 ["BackgroundTransparency"]
  GETTABLEKS R42 R14 K39 ["Arrow"]
  GETTABLEKS R41 R42 K63 ["Image"]
  SETTABLEKS R41 R40 K63 ["Image"]
  GETTABLEKS R42 R14 K39 ["Arrow"]
  GETTABLEKS R41 R42 K90 ["Color"]
  SETTABLEKS R41 R40 K91 ["ImageColor3"]
  GETIMPORT R41 K93 [Vector2.new]
  MOVE R42 R18
  MOVE R43 R18
  CALL R41 2 1
  SETTABLEKS R41 R40 K94 ["ImageRectSize"]
  JUMPIFNOT R17 [+5]
  GETTABLEKS R42 R14 K39 ["Arrow"]
  GETTABLEKS R41 R42 K95 ["ExpandedOffset"]
  JUMP [+4]
  GETTABLEKS R42 R14 K39 ["Arrow"]
  GETTABLEKS R41 R42 K96 ["CollapsedOffset"]
  SETTABLEKS R41 R40 K97 ["ImageRectOffset"]
  GETUPVAL R43 4
  GETTABLEKS R42 R43 K98 ["Event"]
  GETTABLEKS R41 R42 K99 ["Activated"]
  GETTABLEKS R42 R0 K100 ["onToggle"]
  SETTABLE R42 R40 R41
  CALL R38 2 1
  SETTABLEKS R38 R37 K61 ["Icon"]
  CALL R34 3 1
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K80 ["Toggle"]
  JUMPIFNOT R11 [+26]
  GETTABLEKS R35 R7 K101 ["Disabled"]
  JUMPIF R35 [+23]
  GETTABLEKS R34 R0 K102 ["getPropertyCell"]
  DUPTABLE R35 K105 [{"OnDoubleClick", "OnPressed", "Schema", "Size", "Value"}]
  GETTABLEKS R36 R0 K106 ["onDoubleClick"]
  SETTABLEKS R36 R35 K103 ["OnDoubleClick"]
  GETTABLEKS R36 R0 K107 ["onPressed"]
  SETTABLEKS R36 R35 K104 ["OnPressed"]
  GETTABLEKS R36 R7 K22 ["Schema"]
  SETTABLEKS R36 R35 K22 ["Schema"]
  SETTABLEKS R25 R35 K40 ["Size"]
  GETTABLEKS R36 R7 K19 ["Value"]
  SETTABLEKS R36 R35 K19 ["Value"]
  CALL R34 1 1
  JUMP [+28]
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K52 ["createElement"]
  GETUPVAL R35 9
  DUPTABLE R36 K110 [{"LayoutOrder", "Size", "Position", "Text", "TextXAlignment", "ref"}]
  LOADN R37 3
  SETTABLEKS R37 R36 K53 ["LayoutOrder"]
  SETTABLEKS R25 R36 K40 ["Size"]
  GETIMPORT R37 K59 [UDim2.fromOffset]
  LOADN R38 5
  LOADN R39 0
  CALL R37 2 1
  SETTABLEKS R37 R36 K78 ["Position"]
  SETTABLEKS R10 R36 K81 ["Text"]
  GETIMPORT R37 K111 [Enum.TextXAlignment.Left]
  SETTABLEKS R37 R36 K108 ["TextXAlignment"]
  GETTABLEKS R37 R0 K112 ["textRef"]
  SETTABLEKS R37 R36 K109 ["ref"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K81 ["Text"]
  CALL R30 3 1
  SETTABLEKS R30 R29 K75 ["Left"]
  JUMPIFNOT R23 [+34]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K52 ["createElement"]
  GETUPVAL R31 5
  NEWTABLE R32 4 0
  GETIMPORT R33 K93 [Vector2.new]
  LOADN R34 1
  LOADK R35 K113 [0.5]
  CALL R33 2 1
  SETTABLEKS R33 R32 K114 ["AnchorPoint"]
  GETIMPORT R33 K87 [Enum.AutomaticSize.XY]
  SETTABLEKS R33 R32 K83 ["AutomaticSize"]
  GETIMPORT R33 K65 [UDim2.new]
  LOADN R34 1
  LOADN R35 253
  LOADK R36 K113 [0.5]
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K78 ["Position"]
  GETUPVAL R34 4
  GETTABLEKS R33 R34 K54 ["Tag"]
  LOADK R34 K115 ["X-RowS"]
  SETTABLE R34 R32 R33
  MOVE R33 R23
  CALL R30 3 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K76 ["Right"]
  CALL R26 3 -1
  RETURN R26 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R2 K11 ["Dash"]
  GETTABLEKS R6 R5 K12 ["join"]
  GETTABLEKS R7 R2 K13 ["Styling"]
  GETTABLEKS R8 R7 K14 ["joinTags"]
  GETTABLEKS R9 R2 K15 ["UI"]
  GETTABLEKS R10 R9 K16 ["Button"]
  GETTABLEKS R11 R9 K17 ["Image"]
  GETTABLEKS R12 R9 K18 ["Pane"]
  GETTABLEKS R13 R9 K19 ["PropertyCell"]
  GETTABLEKS R14 R9 K20 ["Tooltip"]
  GETTABLEKS R15 R9 K21 ["TextLabel"]
  GETTABLEKS R16 R9 K22 ["DEPRECATED_TextInput"]
  GETTABLEKS R18 R2 K23 ["Util"]
  GETTABLEKS R17 R18 K24 ["StyleModifier"]
  GETTABLEKS R19 R0 K25 ["Src"]
  GETTABLEKS R18 R19 K23 ["Util"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R18 K26 ["Constants"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K27 ["styles"]
  CALL R20 1 1
  GETTABLEKS R21 R1 K28 ["PureComponent"]
  LOADK R23 K29 ["LayerViewCell"]
  NAMECALL R21 R21 K30 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K31 [PROTO_10]
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R22 R21 K32 ["init"]
  DUPCLOSURE R22 K33 [PROTO_11]
  SETTABLEKS R22 R21 K34 ["didUpdate"]
  DUPCLOSURE R22 K35 [PROTO_14]
  SETTABLEKS R22 R21 K36 ["didMount"]
  DUPCLOSURE R22 K37 [PROTO_15]
  SETTABLEKS R22 R21 K38 ["willUnmount"]
  DUPCLOSURE R22 K39 [PROTO_17]
  SETTABLEKS R22 R21 K40 ["shouldComponentUpdate"]
  DUPCLOSURE R22 K41 [PROTO_19]
  CAPTURE VAL R20
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R15
  SETTABLEKS R22 R21 K42 ["render"]
  RETURN R21 1
