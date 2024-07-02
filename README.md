# NimTTY
## Uma Interface de Console Aprimorada para a Linguagem Nim

NimTTY oferece uma experiência de console aprimorada para desenvolvedores Nim, especialmente em ambientes Linux. Ele garante a renderização correta de sequências de escape ANSI, proporcionando uma saída visualmente mais rica e informativa para suas aplicações.

### Compatibilidade com Windows

Embora otimizado para Linux, o NimTTY também pode ser utilizado no Windows Habilitando Sequências de Escape ANSI no Prompt de Comando ou através do emulador de console **Cmder**, disponível em https://cmder.app/.

#### Habilitando Sequências de Escape ANSI no Prompt de Comando do Windows

Se você optar por usar o Prompt de Comando nativo do Windows, siga estas etapas para garantir a renderização correta das sequências de escape ANSI:

1. **Verificação de Versão:** Certifique-se de estar utilizando o Windows 10 versão 1511 ou superior.

2. **Ativação do Modo ANSI:** Habilite o modo ANSI no Prompt de Comando executando o seguinte comando:

   cmd

   ```cmd
   reg add HKCU\Console /v VirtualTerminalLevel /t REG_DWORD /d 1 /f
   ```

   Reinicie o Prompt de Comando após executar o comando para que as alterações sejam aplicadas.

## Gerenciando suas ferramentas Nim com Choosenim

Compilar projetos Nim se torna muito mais fácil com as ferramentas certas! Para isso, recomendamos o **Choosenim**, similar a gerenciadores como `Rustup` e `Pyenv`. Com ele, você instala e gerencia múltiplas versões do compilador e ferramentas do Nim de maneira prática.

**Para começar:**

- Faça o download do **Choosenim** em: https://github.com/dom96/choosenim.
- Siga as instruções para descompactar, executar e configurar o Choosenim em seu sistema.
- Uma vez configurado, adicione o compilador Nim à sua variável de ambiente `PATH`.

Pronto! Agora você pode gerenciar diferentes versões do Nim e suas ferramentas com facilidade.
