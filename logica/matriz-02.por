programa {
  funcao inicio() {
    
    /*
      Escreva um algoritmo em **Portugol** que leia uma matriz 2x3 e exiba a sua matriz transposta (uma matriz 3x2).
     */

    inteiro matriz[2][3], transposta[3][2]
    inteiro i,j

    escreva("Digite os elementos da matriz 2x3:\n")
    
    para(i=0;i<2;i++){
      para(j=0;j<3;j++){
        escreva("Elemento [",i, "] [", j, "]: ")
        leia(matriz[i][j])
      }
    }

    // transposta
    para(i=0;i<2;i++){
      para(j=0;j<3;j++){
        transposta[j][i] = matriz[i][j]
      }
    }

    escreva("\nMatriz composta \n")
    para(i=0;i<3;i++){
      para(j=0;j<2;j++){
        escreva(transposta[i][j], " ")
      }
      escreva("\n")
    }
  }
}
