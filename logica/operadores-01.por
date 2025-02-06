programa {
  funcao inicio() {
    // Comparações de números: Crie um programa que peça ao usuário para inserir dois números e diga qual deles é maior, ou se são iguais.
    real n1, n2

    escreva("Digite o primeiro numero: ")
    leia(n1)

    escreva("Digite o segundo numero: ")
    leia(n2)

    se(n1==n2){
      escreva("[ ",n1," ] e [ ", n2, " ] são iguais")
    }senao{
      se(n1<n2){
        escreva("[ ",n1," ] é menor que [ ", n2, " ]")
      }senao{
        escreva("[ ",n1," ] é maior que [ ", n2, " ]")
      }
    }

  }
}
