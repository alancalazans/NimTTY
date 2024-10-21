# nimtty.nim
include codesOfEscape

# ---
# Função para limpar o terminal
# ---
proc clrscr*() =
  stdout.write(cls)

# ---
# Funções para movimentar o cursor
# ---
proc posCol*(col: int) =
  stdout.write("\x1B[" & $col & "G")

proc posRowCol*(row, col: int) =
  stdout.write("\x1B[" & $row & ";" & $col & "f")

proc clrscrPosRowCol*(row, col: int) = # Limpar e ir para a linha, coluna
  stdout.write(cls)
  posRowCol(row, col)

# ---
# Funções referente ao cursor
# ---
proc noCursor*() =
  stdout.write(noCur)

proc showCursor*() =
  stdout.write(showCur)

# ---
# Limpa estilos ativados
# ---
proc reset*() =
  stdout.write(rst)

# ---
# Funções para cor de texto e de fundo
# ---
proc textColor*(color: string) =
  stdout.write(color)

proc textBackground*(color: string) =
  var cor: string = color
  cor[2] = '4' # A cor fornecida será a cor do primeiro plano. Substitua '3' por '4'.
  stdout.write(cor)

# ---
# Funções de saída
# ---
proc print*(str: string) =
  if str.len > 0:
    try:
      stdout.write(str)
      stdout.flushFile() # Para garantir que a saída seja exibida imediatamente.
    except IOError: # A exceção IOError é mais apropriada para operações de E/S.
      echo "Erro ao escrever no stdout"

proc printAt*(row, col: int, str: string) =
  posRowCol(row, col)
  print(str)

# ---
# Funções de entrada
# ---
proc input*(): string =
  try:
    # Usei result = em vez de return para seguir o estilo idiomático do Nim.
    result = stdin.readLine()
  except IOError:
    echo "Erro de leitura do stdin"
    result = ""

proc input*(prompt: string): string =
  if prompt.len > 0:
    try:
      stdout.write(prompt)
      stdout.flushFile()
    except IOError:
      echo "Erro ao escrever o prompt para stdout"
  
  try:
    # Usei result = em vez de return para seguir o estilo idiomático do Nim.
    result = stdin.readLine()
  except IOError:
    echo "Erro de leitura do stdin"
    result = ""

proc inputAt*(row, col: int, prompt: string): string =
  posRowCol(row, col)
  result = input(prompt)

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
