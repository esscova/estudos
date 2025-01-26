programa {
  funcao inicio() {
    /*
      Faça um algoritmo que leia e mostre um vetor de 10 números inteiros. 
      A seguir, peça ao usuário para informar um valor inteiro e positivo e mostre todos os números do vetor que são divisíveis por esse número. 
    */
    inteiro vetor[10],i, numero

    // obtendo dados
    escreva("Digite 10 números inteiros\n")
    para(i=0; i<10;i++){
      escreva("Digite o ", i+1, "º número: ")
      leia(vetor[i])
    }

    escreva("\n\nDigite um número inteiro positivo: ")
    leia(numero)

    // filtrando e exibindo dados
    escreva("\nOs números diviveis por [ ", numero, " ] são: ")
    para(i=0;i<10;i++){
      se(numero == 0){
        escreva("Erro de divisão por zero (0)\n")
        pare
      }senao{
        se(vetor[i] % 2 == 0){
          escreva(vetor[i], " ")
        }
      }
    }
  }
}
