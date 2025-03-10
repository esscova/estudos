programa {
  funcao inicio() {
    // matriz e variáveis
    inteiro matriz[3][3], i, j
    real soma = 0

    // matriz com valores e somar, por coluna
    para(j = 0; j < 3; j++) {  // colunas
      escreva("Digite os valores para a coluna [", j + 1, "]:\n")
      para(i = 0; i < 3; i++) {  // linhas
        escreva("Valor da linha [", i + 1, "] da coluna [", j + 1, "]: ")
        leia(matriz[i][j])
        soma += matriz[i][j] // soma
      }
      escreva("\n")
    }

    escreva("Soma de todos os elementos da matriz: ", soma)
  }
}

