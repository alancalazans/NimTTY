import libNimtty/nimtty

# Exemplo de menu simples
proc menu(): void =
  clrscr()
  textbackground(BGC_YELLOW)
  createFrame(row = 5, col = 10, width = 35, height = 10, " MENU ")
  reset()
  textcolor(GREEN)
  printAt(row = 8, col = 22, "1. Opção 1")
  printAt(row = 9, col = 22, "2. Opção 2")
  printAt(row = 10, col = 22, "3. Sair")
  reset()
  let escolha = inputAt(row = 12, col = 15, "Escolha uma opção: ")

  case escolha:
  of "1":
    printAt(row = 16, col = 10, "Você selecionou a Opção 1")
  of "2":
    printAt(row = 16, col = 10, "Você selecionou a Opção 2")
  of "3":
    printAt(row = 16, col = 10, "Saindo... ☻")
  else:
    printAt(row = 16, col = 10, "Opção inválida! 〇")

  printAt(row = 18, col = 10, "Pressione Enter para continuar...")
  discard input()

# Chamada da função principal
when isMainModule:
  menu()
