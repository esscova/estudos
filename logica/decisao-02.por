programa {
  funcao inicio() {
    // Crie um programa que peça ao usuário para inserir dois números e verifique se o primeiro número é divisível pelo segundo.
  
    inteiro num1, num2

    escreva("Digite o primeiro número: ")
    leia(num1)

    escreva("Digite o segundo número: ")
    leia(num2)

    se(num2 == 0) {
      escreva("\nErro: divisão por zero")
    } senao {
      se(num1 % num2 == 0) {
        escreva("\nO número ", num1, " é divisível por ", num2)
      } senao {
        escreva("\nO número ", num1, " não é divisível por ", num2)
      }
    }
  } 
}
