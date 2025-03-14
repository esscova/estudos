programa {
  funcao inicio() {
    // calculadora de idade

    inteiro ano, anoNascimento, idade
    caracter opcao

    escreva("Digite o ano atual [YYYY]: ")
    leia(ano)

    escreva("Digite seu ano de nascimento [YYYY]: ")
    leia(anoNascimento)

    escreva("Já fez aniversário este ano? [S/N]: ")
    leia(opcao)

    enquanto(opcao != "S" ou opcao != "N"){
      escreva("Opção inválida, digite novamente: ")
      leia(opcao)
      pare
    }

    se(opcao == "S"){
      idade = ano - anoNascimento
    }senao{
      idade = ano - anoNascimento -1
    }

    escreva("Sua idade atual: ", idade)

  }
}
