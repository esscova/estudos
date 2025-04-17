programa {
  funcao inicio() {
    somar_dois_numeros(1,2)
    informar_inteiro_impar_par(3)
    informar_maior_de_idade(4)
    calcular_aprovacao(3.0, 8., 10.0)


  }
  // Escreva um algoritmo que leia dois números inteiros e exiba a soma deles.
  funcao somar_dois_numeros (inteiro num1, inteiro num2){
    inteiro soma = num1 + num2
    escreva("\nSoma: ",num1, " + ", num2, " = ",soma)
  }

  // Escreva um algoritmo que leia um número inteiro e informe se ele é par ou ímpar. (Dica: Use o operador MOD para obter o resto da divisão).
  funcao informar_inteiro_impar_par(inteiro num){
    se(num % 2 == 0){
      escreva("\nO número ",num, " é par.")
    }senao{
      escreva("\nO número ",num, " é ímpar")
    }
  }

  // Escreva um algoritmo que leia a idade de uma pessoa em anos e informe se ela é maior de idade (idade >= 18) ou menor de idade.
  funcao informar_maior_de_idade(inteiro idade){
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
  
  // Escreva um algoritmo que leia três notas de um aluno (de 0 a 10) e calcule a média. Se a média for maior ou igual a 7.0, exiba "Aprovado". Caso contrário, exiba "Reprovado".
  funcao calcular_aprovacao(real n1, real n2, real n3){
    real notas[3]
    real soma = 0, media

    notas[0] = n1
    notas[1] = n2
    notas[2] = n3

    para (inteiro i = 0; i < 3; i++) {
        se (notas[i] < 0 ou notas[i] > 10) {
            escreva("Nota ", i+1, " inválida! Deve estar entre 0 e 10.")
            retorne
        }
        soma = soma + notas[i]
    }

    media = soma / 3
    escreva("Média: ", media, " - ")

    se (media >= 7.0){
        escreva("Aprovado")
    } senao {
        escreva("Reprovado")
    }
}


}
