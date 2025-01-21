// ESTRUTURAS DE REPETICAO


programa {
  funcao inicio() {
    exercicio1()
    exercicio2()

  }

  // **Exercício 1:** Crie um algoritmo que solicite ao usuário um número inteiro positivo e calcule a soma de todos os números pares de 1 até o número informado.
  funcao exercicio1 (){
        inteiro numero, soma = 0, i=2
    
    escreva("Digite um número inteiro positivo: ")
    leia(numero)

    enquanto(i <= numero){
      soma+=i
      i+=2
    }

    escreva("Soma dos números pares até ", numero, ": ", soma)
  }
  
  // **Exercício 2:** Faça um algoritmo que leia 10 números inteiros e apresente a quantidade de números primos digitados.
  funcao exercicio2 () {
    
    inteiro numero, i, contador = 0, primos = 0

    enquanto(contador<10){
      escreva("\n\nDigite um número inteiro: ")
      leia(numero)

      i=2
      enquanto(i <= numero/2){
        se(numero % i == 0){pare}
        i++
      }

      se(i>numero/2){primos++}
      contador++
    }

    escreva("Foram digitados ", primos, " números primos.")
  }

}
