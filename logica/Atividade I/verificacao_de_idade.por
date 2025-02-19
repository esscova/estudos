programa {
  funcao inicio() {
    // Verificação de idade: Crie um programa que peça ao usuário para inserir a sua idade e verifique se ele é menor de idade, adulto ou idoso.
    inteiro idade

    escreva("Digite sua idade: ")
    leia(idade)

    // idade valida?
    enquanto(idade <= 0) {
      escreva("Digite uma idade válida: ")
      leia(idade)
    }

    // faixa etaria
    se(idade <= 17) {
      escreva("Menor de idade\n")
    } senao {
      se(idade <= 21) {
        escreva("Jovem adulto\n")
      } senao {
        se(idade <= 64) {
          escreva("Adulto\n")
        } senao {
          escreva("Idoso\n")
        }
      }
    }
  }
}
