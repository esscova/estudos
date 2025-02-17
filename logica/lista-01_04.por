programa {
  funcao inicio() {
    // Soma dos números em uma lista: Crie um programa que some todos os números em uma lista.
    inteiro vetor[5], i, soma=0

    escreva("Digite numeros para a soma: \n")
    para(i=0;i<5;i++){
      escreva(i+1," numero: ")
      leia(vetor[i])
      soma += vetor[i]
    }

    escreva("\nLista para soma: ", vetor)
    escreva("\nSoma: ", soma)

  }
}
