MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createContext"]
  DUPTABLE R3 K13 [{"connectGamepadId", "setMapping", "loadMappingsForGamepad", "setIsUpdatingMappingFor"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["connectGamepadId"]
  LOADNIL R4
  SETTABLEKS R4 R3 K10 ["setMapping"]
  LOADNIL R4
  SETTABLEKS R4 R3 K11 ["loadMappingsForGamepad"]
  LOADNIL R4
  SETTABLEKS R4 R3 K12 ["setIsUpdatingMappingFor"]
  CALL R2 1 1
  RETURN R2 1
