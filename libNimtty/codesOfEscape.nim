# codesOfEscape.nim
const
  #-----------------------
  #--- Utilidade Geral ---
  #-----------------------
  cls*: string              = "\x1B[2J\x1B[H" # Limpar tela
  cursor11*: string         = "\x1B[1;1f"     # Posicionar o cursor em 1,1
  noCur*: string            = "\x1B[?25l"     # Ocultar cursor
  showCur*: string          = "\x1B[?25h"     # Exibir cursor
  rst*: string              = "\x1B[0m"       # Resetar formatação
  blinkSlow*: string        = "\x1B[5m"       # Piscar lento
  blinkRapid*: string       = "\x1B[6m"       # Piscar rápido

  #----------------------
  #--- Cores de Fonte ---
  #----------------------
  black*: string            = "\x1B[30m"      # Preto
  red*: string              = "\x1B[31m"      # Vermelho
  green*: string            = "\x1B[32m"      # Verde
  yellow*: string           = "\x1B[33m"      # Amarelo
  blue*: string             = "\x1B[34m"      # Azul
  magenta*: string          = "\x1B[35m"      # Magenta
  cyan*: string             = "\x1B[36m"      # Ciano
  white*: string            = "\x1B[37m"      # Branco

  #------------------------------
  #--- Cores de fonte intensa ---
  #------------------------------
  iBlack*: string           = "\x1B[90m"      # Preto intenso
  iRed*: string             = "\x1B[91m"      # Vermelho intenso
  iGreen*: string           = "\x1B[92m"      # Verde intenso
  iYellow*: string          = "\x1B[93m"      # Amarelo intenso
  iBlue*: string            = "\x1B[94m"      # Azul intenso
  iMagenta*: string         = "\x1B[95m"      # Magenta intenso
  iCyan*: string            = "\x1B[96m"      # Ciano intenso
  iWhite*: string           = "\x1B[97m"      # Branco intenso

  #----------------------
  #--- Cores de Fundo ---
  #----------------------
  bgBlack*: string          = "\x1B[40m"      # Fundo preto
  bgRed*: string            = "\x1B[41m"      # Fundo vermelho
  bgGreen*: string          = "\x1B[42m"      # Fundo verde
  bgYellow*: string         = "\x1B[43m"      # Fundo amarelo
  bgBlue*: string           = "\x1B[44m"      # Fundo azul
  bgMagenta*: string        = "\x1B[45m"      # Fundo magenta
  bgCyan*: string           = "\x1B[46m"      # Fundo ciano
  bgWhite*: string          = "\x1B[47m"      # Fundo branco

  #------------------------------
  #--- Cores de fundo intenso ---
  #------------------------------
  bgIBlack*: string         = "\x1B[100m"     # Fundo preto intenso
  bgIRed*: string           = "\x1B[101m"     # Fundo vermelho intenso
  bgIGreen*: string         = "\x1B[102m"     # Fundo verde intenso
  bgIYellow*: string        = "\x1B[103m"     # Fundo amarelo intenso
  bgIBlue*: string          = "\x1B[104m"     # Fundo azul intenso
  bgIMagenta*: string       = "\x1B[105m"     # Fundo magenta intenso
  bgICyan*: string          = "\x1B[106m"     # Fundo ciano intenso
  bgIWhite*: string         = "\x1B[107m"     # Fundo branco intenso

  #---------------------------------
  #--- Branco nas cores de fundo ---
  #---------------------------------
  whiteOnBlack*: string     = "\x1B[97;40m"   # Branco no preto
  whiteOnRed*: string       = "\x1B[97;41m"   # Branco no vermelho
  whiteOnGreen*: string     = "\x1B[97;42m"   # Branco no verde
  whiteOnYellow*: string    = "\x1B[97;43m"   # Branco no amarelo
  whiteOnBlue*: string      = "\x1B[97;44m"   # Branco no azul
  whiteOnMagenta*: string   = "\x1B[97;45m"   # Branco no magenta
  whiteOnCyan*: string      = "\x1B[97;46m"   # Branco no ciano
  whiteOnWhite*: string     = "\x1B[97;47m"   # Branco no branco
