MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-MappingsListRow"]
  DUPTABLE R5 K12 [{"Size", "Position"}]
  GETIMPORT R6 K15 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 15
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["Size"]
  GETIMPORT R6 K15 [UDim2.new]
  LOADK R7 K16 [0.5]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K11 ["Position"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K17 ["> TextButton"]
  DUPTABLE R9 K19 [{"BorderSizePixel"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K18 ["BorderSizePixel"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K20 [">> .DestKey"]
  DUPTABLE R10 K23 [{"TextColor3", "TextXAlignment", "Size"}]
  LOADK R11 K24 ["$TextSecondary"]
  SETTABLEKS R11 R10 K21 ["TextColor3"]
  GETIMPORT R11 K27 [Enum.TextXAlignment.Right]
  SETTABLEKS R11 R10 K22 ["TextXAlignment"]
  GETIMPORT R11 K15 [UDim2.new]
  LOADK R12 K28 [0.6]
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K29 [">> .SrcKey"]
  DUPTABLE R11 K31 [{"TextColor3", "TextXAlignment", "BackgroundColor3", "Size"}]
  LOADK R12 K32 ["$TextPrimary"]
  SETTABLEKS R12 R11 K21 ["TextColor3"]
  GETIMPORT R12 K34 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K22 ["TextXAlignment"]
  LOADK R12 K35 ["$MappingLabel"]
  SETTABLEKS R12 R11 K30 ["BackgroundColor3"]
  GETIMPORT R12 K15 [UDim2.new]
  LOADK R13 K36 [0.4]
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K10 ["Size"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K37 [":hover"]
  DUPTABLE R15 K38 [{"BackgroundColor3"}]
  LOADK R16 K39 ["$MappingLabelHover"]
  SETTABLEKS R16 R15 K30 ["BackgroundColor3"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
