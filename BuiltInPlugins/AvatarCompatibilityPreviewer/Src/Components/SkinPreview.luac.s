PROTO_0:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 1
  GETTABLEKS R2 R0 K0 ["Item"]
  GETUPVAL R3 1
  LOADK R5 K1 ["SkinPreview"]
  NAMECALL R3 R3 K2 ["use"]
  CALL R3 2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 3
  NEWTABLE R6 4 0
  SETTABLEKS R2 R6 K4 ["BackgroundColor"]
  LOADK R7 K1 ["SkinPreview"]
  SETTABLEKS R7 R6 K5 ["Style"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["Event"]
  GETTABLEKS R7 R8 K7 ["MouseEnter"]
  GETTABLEKS R8 R1 K8 ["enable"]
  SETTABLE R8 R6 R7
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["Event"]
  GETTABLEKS R7 R8 K9 ["MouseLeave"]
  GETTABLEKS R8 R1 K10 ["disable"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K12 [{"Border"}]
  GETTABLEKS R9 R0 K13 ["Selected"]
  JUMPIFNOT R9 [+15]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K14 ["UIStroke"]
  DUPTABLE R10 K17 [{"Color", "Thickness"}]
  GETTABLEKS R11 R3 K18 ["SelectedBorderColor"]
  SETTABLEKS R11 R10 K15 ["Color"]
  GETTABLEKS R11 R3 K19 ["SelectedBorderThickness"]
  SETTABLEKS R11 R10 K16 ["Thickness"]
  CALL R8 2 1
  JUMP [+19]
  GETTABLEKS R9 R1 K20 ["enabled"]
  JUMPIFNOT R9 [+15]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K14 ["UIStroke"]
  DUPTABLE R10 K17 [{"Color", "Thickness"}]
  GETTABLEKS R11 R3 K21 ["HoveredBorderColor"]
  SETTABLEKS R11 R10 K15 ["Color"]
  GETTABLEKS R11 R3 K22 ["HoveredBorderThickness"]
  SETTABLEKS R11 R10 K16 ["Thickness"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K11 ["Border"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Hooks"]
  GETTABLEKS R5 R6 K13 ["useToggleState"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K14 ["UI"]
  GETTABLEKS R6 R5 K15 ["Pane"]
  GETTABLEKS R8 R1 K16 ["ContextServices"]
  GETTABLEKS R7 R8 K17 ["Stylizer"]
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R8 1
