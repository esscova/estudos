programa {
  funcao inicio() {
    
    /*
      Desenvolva um algoritmo que leia uma matriz 4x4, peça para o usuário informar um número e verifique se ele está presente na matriz. 
      Exiba a mensagem "Encontrado" ou "Não encontrado" conforme o caso.
     */

    inteiro matriz[4][4]
    inteiro i,j,numero, ocorrencia=0
    logico encontrado = falso

    escreva("Digite os elementos da matriz 4x4:\n")
    
    // populando a matriz
    para(i=0;i<4;i++){
      para(j=0;j<4;j++){
        escreva("Elemento [",i, "] [", j, "]: ")
        leia(matriz[i][j])
      }
    }

    // lendo numero para buscar na matriz
    escreva("\nDigite o número que deseja buscar na matriz: ")
    leia(numero)

    // procurando o numero na matriz
    para(i=0;i<4;i++){
      para(j=0;j<4;j++){
        se(matriz[i][j] == numero){
          encontrado = verdadeiro
          ocorrencia++
        }
      }
    }

    // resultado
    se(encontrado){
      escreva("\nO número [",numero,"] foi encontrado na matriz. com ", ocorrencia, " ocorrência(s)")
    }senao{
      escreva("\nNúmero não encontrado na matriz.")
    }
  }
}
