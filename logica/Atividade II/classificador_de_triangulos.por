programa {
  funcao inicio() {
    // Classificador de triângulos

    real a, b, c

    escreva("Classificador de triângulos\n\n")
    
    // dados
    escreva("Digite o 1º lado do triângulo: ")
    leia(a)
    escreva("Digite o 2º lado do triângulo: ")
    leia(b)
    escreva("Digite o 3º lado do triângulo: ")
    leia(c)
    
    escreva("\nCalculando...\n")

    // tipo de triângulo
    se (a == b e b == c) {
      escreva("Triângulo equilátero, todos os lados são iguais.\n")
    } senao {
      se (a != b e a != c e b != c) {
        escreva("Triângulo escaleno, todos os lados são diferentes.\n")
      } senao {
        escreva("Triângulo isósceles, com dois lados iguais.\n")
      }
    }
  }
}

