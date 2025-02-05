programa {
  funcao inicio() {
    /*Faça um programa que tem  pegue sua idade e mostre o seu ano de nascimento.*/
    inteiro idade, anoNascimento, anoAtual, mes
    
    escreva("Digite sua idade: ")
    leia(idade)
    
    escreva("Qual ano atual?: ")
    leia(anoAtual)

    anoNascimento = anoAtual - idade

    escreva("\nVocê nasceu no ano de: ", anoNascimento)

  }
}
