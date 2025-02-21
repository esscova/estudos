programa {
  funcao inicio() {
    // Inversão de vetor
    // Crie um algoritmo que leia 5 números inteiros e os armazene em um vetor. Em seguida, exiba o vetor na ordem inversa.
  
  inteiro vetor[5], i

  escreva("\n-=-= Inversão de Vetor =-=-\n")

  // armazenar valores
  para(i=0;i<5;i++){
    escreva("Digite o ", i+1, "º número: ")
    leia(vetor[i])
  }
  // inverter
  para(i=4;i>=0;i--){
    escreva(vetor[i], " ")
  }
  }
}
