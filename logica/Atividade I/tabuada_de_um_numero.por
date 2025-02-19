
programa {
  funcao inicio() {
    // Tabuada de um número: Crie um programa que peça ao usuário para inserir um número e imprima a tabuada desse número.

    inteiro num

    escreva("Digite um número para tabuada: ")
    leia(num)

    para(inteiro i=1; i<=10; i++){
      escreva(num, " X ", i, " = " , num*i, "\n")
    }
  }
}