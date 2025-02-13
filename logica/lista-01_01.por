programa {
  funcao inicio() {
    // Cálculo do fatorial de um número: Crie um programa que peça ao usuário para inserir um número e calcule o fatorial desse número.
    inteiro num, i, fatorial=1

    escreva("Digite um número: ")
    leia(num)

    para(i=1; i<=num; i++){
      fatorial *= i
    }
    escreva(fatorial)
  }
}
