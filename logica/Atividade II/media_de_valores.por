programa {
  funcao inicio() {
    // Crie um algoritmo que leia um vetor de 5 números reais. Em seguida, calcule e exiba a média dos valores armazenados no vetor.

    inteiro vetor[5], i, soma=0
    
    escreva("\n-=-= Cálculo da Média de valores em um vetor =-=-\n\n")

    // armazenando dados no vetor
    para(i=0;i<5;i++){
      escreva("Digite o ",i+1,"º valor inteiro: ")
      leia(vetor[i])
      soma+=vetor[i]
    }
    escreva("\nDados Armazenados: ",vetor)
    escreva("\nMédia do valores: ",soma/5)
  }
}
