programa {
  funcao inicio() {
    
    /*
      Soma dos Elementos de uma Matriz
      Crie um algoritmo que leia uma matriz 3x3 e calcule a soma de todos os seus elementos. 
      Exiba o resultado da soma ao final.
     */

    inteiro matriz[3][3],i,j
    inteiro soma = 0

    escreva("Digite os valores da matriz 3x3:\n")
    
    para(i=0;i<=2;i++){
      para(j=0;j<3;j++){
        escreva("Elemento [",i, "] [", j, "]: ")
        leia(matriz[i][j])
        soma+=matriz[i][j]
      }
    }
    
    escreva("\nA soma de todos os elementos da matriz é: ", soma,"\n")
  }
}
