programa {
  funcao inicio() {
      // Ano de nascimento

      inteiro ano,idade
      caracter opcao

      escreva("Digite sua idade: ")
      leia(idade)

      enquanto(idade<=0 ou idade>=120){
        escreva("Por favor digite um valor válido...\nDigite sua idade: ")
        leia(idade)
      }

      escreva("Digite ano atual [XXXX]: ")
      leia(ano)

      enquanto(ano<=0 ou ano>2025){
        escreva("Por favor digite um ano válido...\nDigite o ano atual [XXXX]: ")
        leia(ano)
      }

      escreva("Já fez aniversário este ano? [S/N] ")
      leia(opcao)

      se(opcao=="N"){
        ano--
      }

      escreva("\nCalculando...\n")
      escreva("Seu ano de nascimento é: ", ano  - idade,"\n")
  }
}
