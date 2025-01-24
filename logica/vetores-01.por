programa {
  funcao inicio() {
    /*
      Crie um algoritmo que peça ao usuário que informe oito números inteiros e os armazene-os em um
      vetor. Apresente o maior elemento e a posição em que ele se encontra no vetor.
     */

    inteiro vetor[8],i,maior, indice

    // obtendo dados
    escreva("Digite 8 números inteiros: \n")
    para(i=0;i<8;i++){
      escreva("Elemento [ ", i, " ]: ")
      leia(vetor[i])
    }

    maior = vetor[0]
    indice = 0

    // filtrando dados
    para(i=0;i<8;i++){
      se(vetor[i]>maior){
        maior = vetor[i]
        indice = i
      }
    }

    escreva("\nO maior número é: ",maior, " na posição [ ",indice, " ].")

  }
}
