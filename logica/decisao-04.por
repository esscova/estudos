programa {
  funcao inicio() {
    // Crie um programa que peça ao usuário para inserir sua nota em uma prova e imprima se ele foi aprovado ou reprovado (considerando que a nota mínima para aprovação é 7).

    real nota

    escreva("Digite sua nota: ")
    leia(nota)

    se(nota<0){
      escreva("Dado inválido...")
    }senao{
      se(nota>=7){
        escreva("Aprovado")
      }senao{
        escreva("Não aprovado.")
      }
    }
  }
}
