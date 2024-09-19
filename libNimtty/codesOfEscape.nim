const
  #-----------------------
  #--- Utilidade Geral ---
  #-----------------------
  cls*: string              = "\e[2J"     # Limpar tela
  cursor11*: string         = "\e[1;1f"   # Posicionar o cursor em 1,1
  noCur*: string            = "\e[?25l"   # Oculta cursor
  showCur*: string          = "\e[?25h"   # Exibe cursor
  rst*: string              = "\e[0m"     # Eliminar cores (padrão)
  blinkSlow*: string        = "\e[5m"     # Piscar lento
  blinkRapid*: string       = "\e[6m"     # Piscar rápido

  #----------------------
  #--- Cores de Fonte ---
  #----------------------
  black*: string            = "\e[30m"    # Preto
  red*: string              = "\e[31m"    # Vermelho
  green*: string            = "\e[32m"    # Verde
  yellow*: string           = "\e[33m"    # Amarelo
  blue*: string             = "\e[34m"    # Azul
  magenta*: string          = "\e[35m"    # Vermelho claro
  cyan*: string             = "\e[36m"    # Azul claro
  white*: string            = "\e[37m"    # Branco

  #------------------------------
  #--- Cores de fonte intensa ---
  #------------------------------
  iBlack*: string           = "\e[30;1m"  # Preto intenso
  iRed*: string             = "\e[31;1m"  # Vermelho intenso
  iGreen*: string           = "\e[32;1m"  # Verde intenso
  iYellow*: string          = "\e[33;1m"  # Amarelo intenso
  iBlue*: string            = "\e[34;1m"  # Azul intenso
  iMagenta*: string         = "\e[35;1m"  # Vermelho claro intenso
  iCyan*: string            = "\e[36;1m"  # Azul claro intenso
  iWhite*: string           = "\e[37;1m"  # Branco intenso

  #----------------------
  #--- Cores de Fundo ---
  #----------------------
  bgBlack*: string          = "\e[40m"    # Fundo preto
  bgRed*: string            = "\e[41m"    # Fundo vermelho
  bgGreen*: string          = "\e[42m"    # Fundo verde
  bgYellow*: string         = "\e[43m"    # Fundo amarelo
  bgBlue*: string           = "\e[44m"    # Fundo azul
  bgMagenta*: string        = "\e[45m"    # Fundo vermelho claro
  bgCyan*: string           = "\e[46m"    # Fundo azul claro
  bgWhite*: string          = "\e[47m"    # Fundo branco

  #------------------------------
  #--- Cores de fundo intenso ---
  #------------------------------
  bgIBlack*: string         = "\e[40;1m"  # Fundo preto intenso
  bgIRed*: string           = "\e[41;1m"  # Fundo vermelho intenso
  bgIGreen*: string         = "\e[42;1m"  # Fundo verde intenso
  bgIYellow*: string        = "\e[43;1m"  # Fundo amarelo intenso
  bgIBlue*: string          = "\e[44;1m"  # Fundo azul intenso
  bgIMagenta*: string       = "\e[45;1m"  # Fundo vermelho claro intenso
  bgICyan*: string          = "\e[46;1m"  # Fundo azul claro intenso
  bgIWhite*: string         = "\e[47;1m"  # Fundo branco intenso

  #---------------------------------
  #--- Branco nas cores de fundo ---
  #---------------------------------
  whiteOnBlack*: string     = "\e[97;40m" # Branco no preto
  whiteOnRed*: string       = "\e[97;41m" # Branco no vermelho
  whiteOnGreen*: string     = "\e[97;42m" # Branco no verde
  whiteOnYellow*: string    = "\e[97;43m" # Branco no amarelo
  whiteOnBlue*: string      = "\e[97;44m" # Branco no azul
  whiteOnMagenta*: string   = "\e[97;45m" # Branco no vermelho claro
  whiteOnCyan*: string      = "\e[97;46m" # Branco no azul claro
  whiteOnWhite*: string     = "\e[97;47m" # Branco no branco
