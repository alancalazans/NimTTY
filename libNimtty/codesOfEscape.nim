const
  # General Utility
  CLEAR*: string        = "\x1b[2J"
  SET11*: string        = "\x1b[1;1f" # Set the Cursor at 1,1
  # Text Modification
  BLINK_SLOW*: string   = "\x1b[5m"
  BLINK_RAPID*: string  = "\x1b[6m"
  # Colors
  CC_CLEAR*: string     = "\x1b[0m" # Console Color CLEAR
  # FG Colours
  BLACK*: string        = "\x1b[30m"
  RED*: string          = "\x1b[31m"
  GREEN*: string        = "\x1b[32m"
  YELLOW*: string       = "\x1b[33m"
  BLUE*: string         = "\x1b[34m"
  MAGENTA*: string      = "\x1b[35m"
  CYAN*: string         = "\x1b[36m"
  WHITE*: string        = "\x1b[37m"
  # FG Intense Colors
  IBLACK*: string       = "\x1b[30;1m"
  IRED*: string         = "\x1b[31;1m"
  IGREEN*: string       = "\x1b[32;1m"
  IYELLOW*: string      = "\x1b[33;1m"
  IBLUE*: string        = "\x1b[34;1m"
  IMAGENTA*: string     = "\x1b[35;1m"
  ICYAN*: string        = "\x1b[36;1m"
  IWHITE*: string       = "\x1b[37;1m"
  # BG Colors
  BGC_BLACK*: string    = "\x1b[40m"
  BGC_RED*: string      = "\x1b[41m"
  BGC_GREEN*: string    = "\x1b[42m"
  BGC_YELLOW*: string   = "\x1b[43m"
  BGC_BLUE*: string     = "\x1b[44m"
  BGC_MAGENTA*: string  = "\x1b[45m"
  BGC_CYAN*: string     = "\x1b[46m"
  BGC_WHITE*: string    = "\x1b[47m"
  # BG Intense Colors
  BGC_IBLACK*: string   = "\x1b[40;1m"
  BGC_IRED*: string     = "\x1b[41;1m"
  BGC_IGREEN*: string   = "\x1b[42;1m"
  BGC_IYELLOW*: string  = "\x1b[43;1m"
  BGC_IBLUE*: string    = "\x1b[44;1m"
  BGC_IMAGENTA*: string = "\x1b[45;1m"
  BGC_ICYAN*: string    = "\x1b[46;1m"
  BGC_IWHITE*: string   = "\x1b[47;1m"
