programa {
  funcao inicio() {
    // Verificação de divisibilidade
    // Crie um programa que peça ao usuário para inserir dois números e verifique se o primeiro número é divisível pelo segundo.
  
    inteiro num1, num2

    escreva("-=-= Verificador de divisibilidade =-=-\n\n")
  
    escreva("Digite o 1º número: ")
    leia(num1)

    escreva("Digite o 2º número: ")
    leia(num2)

    se(num2 == 0) {
      escreva("\nErro: Divisão por zero não permitida.\n-------------")
    } senao {
      se(num1 % num2 == 0) {
        escreva("\n[ ", num1, " ] é divisível por [ ", num2, " ]\n-------------")
      } senao {
        escreva("\n[ ", num1, " ] não é divisível por [ ", num2, " ]\n-------------")
      }
    }
  }
}

