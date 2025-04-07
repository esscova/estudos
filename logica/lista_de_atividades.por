programa {
  funcao inicio() {
    somar_dois_numeros(1,2)
    informar_inteiro_impar_par(3)
    informar_maior_de_idade(4)

  }
  funcao somar_dois_numeros (inteiro num1, inteiro num2){
    // Escreva um algoritmo que leia dois números inteiros e exiba a soma deles.
    inteiro soma = num1 + num2
    escreva("\nSoma: ",num1, " + ", num2, " = ",soma)
  }
  funcao informar_inteiro_impar_par(inteiro num){
    // Escreva um algoritmo que leia um número inteiro e informe se ele é par ou ímpar. (Dica: Use o operador MOD para obter o resto da divisão).
    se(num % 2 == 0){
      escreva("\nO número ",num, " é par.")
    }senao{
      escreva("\nO número ",num, " é ímpar")
    }
  }

  funcao informar_maior_de_idade(inteiro idade){
    // Escreva um algoritmo que leia a idade de uma pessoa em anos e informe se ela é maior de idade (idade >= 18) ou menor de idade.
    se(idade <= 0 ou idade>= 120){
      escreva("\nDigite uma idade válida;")
    }senao{
      se(idade>=18){
        escreva("\nCom ", idade," anos é maior de idade")
      }senao{
        escreva("\nCom ", idade," anos é menor de idade")
      }
    }
  }

}
