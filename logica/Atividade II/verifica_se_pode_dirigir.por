programa {
  funcao inicio() {
    /*
      Uma pessoa quer tirar a carta mas precisa ter 18 anos ou mais , 
      quero que imprima na tela se ela for maior de 18 que pode dirigir e se for menor de 18 que não está apto
    */
    inteiro idade
    escreva("Digite sua idade: ")
    leia(idade)

    se(idade<=0){
      escreva("Por favor digite uma idade válida...")
    }senao{
      se(idade>=100){
        escreva("Chame um Uber...")
      } senao{
        se(idade<=17){
          escreva("Ainda não pode dirigir...")
        }senao{
          escreva("Você já pode dirigir! e se dirigir não beba ;]")
        }
        }
    }
  }
}