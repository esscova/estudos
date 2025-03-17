programa {
  funcao inicio() {
    // calculadora de salario

    real salario
    inteiro percentualAumento

    escreva("Digite seu salário atual: R$ ")
    leia(salario)

    escreva("Digite seu percentual de aumento [%]: ")
    leia(percentualAumento)

    salario += salario * percentualAumento/100
    escreva("\nNovo salário: R$ ", salario)

  }
}
