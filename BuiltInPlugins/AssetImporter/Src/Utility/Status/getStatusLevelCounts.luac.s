PROTO_0:
  LOADN R1 0
  LOADN R2 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K0 ["Level"]
  JUMPIFNOTEQKS R8 K1 ["Warning"] [+3]
  ADDK R2 R2 K2 [1]
  JUMP [+5]
  GETTABLEKS R8 R7 K0 ["Level"]
  JUMPIFNOTEQKS R8 K3 ["Error"] [+2]
  ADDK R1 R1 K2 [1]
  FORGLOOP R3 2 [-12]
  DUPTABLE R3 K6 [{"errors", "warnings"}]
  SETTABLEKS R1 R3 K4 ["errors"]
  SETTABLEKS R2 R3 K5 ["warnings"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  RETURN R2 1
