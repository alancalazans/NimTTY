include codesOfEscape

# ---
# Função para limpar o terminal
# ---
proc clrscr*() =
  stdout.write(CLEAR)

# ---
# Funções para movimentar o cursor
# ---
proc clrscrPosRowCol*(row, col: int) = # Clear and Goto line, col
  stdout.write(CLEAR)
  stdout.write("\x1b[" & $row & ";" & $col & "f")

proc posCol*(col: int) =
  stdout.write("\x1b[" & $col & "G")

proc posRowCol*(row, col: int) =
  stdout.write("\x1b[" & $row & ";" & $col & "f")

# ---
# Funções para referente ao cursor
# ---
proc noCursor*() =
  stdout.write("\x1b[?25l")

proc reset*() =
  stdout.write(CC_CLEAR)

proc showCursor*() =
  stdout.write("\x1b[?25h")

# ---
# Funções para cor de texto e de fundo
# ---
proc textColor*(color: string) =
  stdout.write(color)

proc textBackground*(color: string) =
  var cor: string = color
  cor[2]='4' # The given color will be fg color. Replace '3' with '4'.
  stdout.write(cor)

# ---
# Funções de saída
# ---
proc print*(text: string) =
  stdout.write(text)

proc printAt*(row, col: int, text: string) =
  posRowCol(row, col)
  stdout.write(text)

# ---
# Funções de entrada
# ---
proc input*(): string =
  stdin.readLine()

proc inputAt*(row, col: int, question: string): string =
  posRowCol(row, col)
  stdout.write(question)
  stdin.readline()

# ---
# Função para criar um frame
# ---
proc createFrame*(row, col: int, width: int, height: int, label: string) =
  # Calcula as coordenadas do canto inferior direito
  var rightCol = col + width - 1
  var bottomLine = row + height - 1

  # Imprime os cantos
  printAt(row, col, "┏")
  printAt(row, rightCol, "┓")
  printAt(bottomLine, col, "┗")
  printAt(bottomLine, rightCol, "┛")

  # Imprime a borda superior
  posRowCol(row, col + 1)
  for i in 1..width-2:
    stdout.write("━")

  # Imprime a borda lateral esquerda
  for i in row + 1..bottomLine-1:
    printAt(i, col, "┃")

  # Imprime a borda lateral direita
  for i in row + 1..bottomLine-1:
    printAt(i, rightCol, "┃")

  # Imprime a borda inferior
  posRowCol(bottomLine, col + 1)
  for i in 1..width-2:
    stdout.write("━")

  # Imprime o rótulo
  var labelCol = col + (width - label.len) div 2
  printAt(row, labelCol, label)
