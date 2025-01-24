programa {
  funcao inicio() {
    /*
      Crie um algoritmo que peça ao usuário que informe 10 números inteiros, armazene-os em um vetor
      e apresente a soma de todos os valores.
     */

    inteiro vetor[10],i,soma=0

    // obtendo dados
    escreva("Digite 8 números inteiros: \n")
    para(i=0;i<=9;i++){
      escreva("Elemento [ ", i, " ]: ")
      leia(vetor[i])
    }

    // soma
    para(i=0;i<=9;i++){
      soma += vetor[i]
    }

    escreva("\nA soma de todos os elementos é: ",soma)

  }
}
