programa {
  funcao inicio() {
    // Crie um algoritmo que leia um vetor de 8 números inteiros. Em seguida, verifique se o número 5 está presente no vetor. 

    inteiro vetor[8], i
    logico encontrado

    //obtendo dados
    para(i=0; i<8; i++){
      escreva("Digite o ", i+1, "º número: ")
      leia(vetor[i])
      se(vetor[i] == 5){
        encontrado = verdadeiro
      }
    }

    //informando numero 5
    se(encontrado){
      escreva("\nO número 5 está presente no vetor de dados\n")
    }senao{
      escreva("\nO número 5 não está presente no vetor de dados\n")
    }
  }
}
