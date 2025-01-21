// ESTRUTURAS DE REPETIÇÃO

programa {
  funcao inicio() {
    exercicio1()
    exercicio2()
  }

  // Escreva um algoritmo que leia um número inteiro positivo _n_ e exiba na tela um triângulo formado por asteriscos com _n_ linhas
  funcao exercicio1 () {

    inteiro i, j, n
    i = 1

    escreva("\n\nDigite um numero inteiro: ")
    leia(n)

    enquanto(i <= n){
      j = 1
      enquanto(j <= i){
        escreva("*")
        j++
      }
      escreva("\n")
      i++
    }
  }

  // Crie um programa que gere e exiba os primeiros 20 números da sequência de Fibonacci. 
  // A sequência de Fibonacci é formada pela soma dos dois termos anteriores, começando por 0 e 1. 
  // Exemplo: 0, 1, 1, 2, 3, 5, 8, 13, ...
  funcao exercicio2 () {
    inteiro a, b, proximo, contador
    a = 0
    b = 1
    contador = 0

    escreva(a, ",", b)

    enquanto(contador<18){
      proximo = a+b
      escreva(",", proximo)

      a=b
      b=proximo
      contador++
    }

  }
}
