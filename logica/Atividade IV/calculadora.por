programa {
  funcao inicio() {
    // calculadora
    real numero1, numero2, resultado
      caracter operacao
      escreva ("\n\nDigite o primeiro número: ")
      leia (numero1)

      escreva ("Digite o segundo número: ")
      leia (numero2)
      
      escreva ("Digite a operação desejada (+, -, *, /): ")
      leia (operacao)

      escolha (operacao) {
          caso '+':
              resultado = numero1 + numero2
              pare
          caso '-':
              resultado = numero1 - numero2
              pare
          caso '*':
              resultado = numero1 * numero2
              pare
          caso '/':
              se (numero2 != 0) {
                  resultado = numero1 / numero2
              } senao {
                  escreva ("Erro: Divisão por zero!")
              }
              pare
          caso contrario:
              escreva ("Operação inválida!")
      }

      se (operacao == '+' ou operacao == '-' ou operacao == '*' ou (operacao == '/' e numero2 != 0)) {
          escreva ("O resultado da operação é: ", resultado)
      }
  }
}

