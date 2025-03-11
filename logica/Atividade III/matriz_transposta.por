programa {
  funcao inicio() {
    inteiro matriz[2][3], transposta[3][2],j, i

    escreva("Digite os valores da matriz 2x3: \n")

    para(i=0; i<2; i++){  
      para(j=0; j<3; j++){  
        escreva("Valor da linha [", i + 1, "] da coluna [", j + 1, "]: ")
        leia(matriz[i][j])  
      }
    }
    
    para(i=0; i<2; i++){
      para(j=0; j<3; j++){
        transposta[j][i] = matriz[i][j]
      }
    }

    escreva("A matriz transposta 3x2 é: \n")
    para(i=0; i<3; i++){  
      para(j=0; j<2; j++){ 
        escreva(transposta[i][j], " ")  
      }
      escreva("\n")  
    }
  }
}

