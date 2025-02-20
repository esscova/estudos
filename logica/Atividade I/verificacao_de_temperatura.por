programa {
  funcao inicio() {
    // Crie um programa que peça ao usuário para inserir uma temperatura e verifique se está frio, agradável ou quente.

    real temperatura

    escreva("Digite a temperatura atual: ")
    leia(temperatura)

    se(temperatura <= 10){
      escreva("Que frio é esse?")
    } senao{
      se(temperatura > 10 e temperatura <= 25){
        escreva("tranquilão")
      } senao{
        se(temperatura > 25 e temperatura <= 40){
          escreva("calorão")
        } senao{
          escreva("amostra grátis do inferno")
        }
      }
    }
  }
}
