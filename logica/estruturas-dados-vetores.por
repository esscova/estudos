// ESTRUTURAS DE DADOS: ARRAYS

// Crie um algoritmo que leia 5 números inteiros e os armazene em um vetor. Em seguida, exiba o vetor na ordem inversa.
// Crie um algoritmo que leia um vetor de 10 números reais. Em seguida, calcule e exiba a média dos valores armazenados no vetor.
// Crie um algoritmo que leia um vetor de 8 números inteiros. Em seguida, verifique se o número 5 está presente no vetor. 
//  Se estiver, exiba a mensagem "O número 5 está presente no vetor". Caso contrário, exiba a mensagem "O número 5 não está presente no vetor".

programa {
  funcao inicio() {
    inteiro vetor[8],i
    logico encontrado = falso

    para(i=0;i<=7;i++){
      escreva("Digite o ",i+1, "º número: ")
      leia(vetor[i])
    }

    para(i=0;i<=7;i++){
      se(vetor[i]==5){
        encontrado=verdadeiro
        escreva("O número 5 está presente no vetor")
        pare
      }
    }
    se (nao encontrado){
      escreva("O número 5 não está presente no vetor")
    }
  }

  funcao exercicio1 () {
    inteiro vetor[5], i

    para (i=0;i<=4;i++){
      escreva("Digite o ",i+1, "º número: ")
      leia(vetor[i])
    }

    escreva("\nOrdem inversa: ")
    para (i=4;i>=0;i--){
      escreva(vetor[i], " ")
    }

    escreva("\n")
  }

  funcao exercicio2 () {
    real vetor[10], soma, media
    inteiro i

    soma=0

    para(i=0;i<=9;i++){
      escreva("Digite o ",i+1, "º número: ")
      leia(vetor[i])
      soma+=vetor[i]
    }

    media = soma/10
    escreva("\nA média dos valores é: ", media,"\n")

  }
}
