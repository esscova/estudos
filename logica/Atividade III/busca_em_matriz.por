programa {
  funcao inicio() {
    // busca em matriz

    inteiro matriz[4][4] = {{1,2,3,4}, {5,6,7,8}, {8,7,6,5}, {4,3,2,1}}
    inteiro i, j, num
    logico encontrado = falso

    escreva("Digite o número que deseja pesquisar: ")
    leia(num)

    para(i=0;i<4;i++){
      para(j=0;j<4;j++){
        se(matriz[i][j] == num){
          encontrado = verdadeiro
        }
      }
    }

    se(encontrado){
      escreva("Encontrado")
    }senao{
      escreva("Não encontrado")
    }
  }
}
