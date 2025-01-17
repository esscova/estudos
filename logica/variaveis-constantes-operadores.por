// Exercício 1:
// - Crie um programa que declare uma constante chamada "PI" com o valor 3.14.
// - Em seguida, o programa deve solicitar ao usuário o raio de um círculo e calcular a área do círculo usando a constante "PI".
// - Por fim, o programa deve exibir a área calculada.

// Exercício 2:
// - Crie um programa que declare duas variáveis do tipo inteiro: "idade" e "anoNascimento".
// - O programa deve solicitar ao usuário o seu ano de nascimento e calcular a idade da pessoa.
// - Em seguida, o programa deve exibir a idade calculada.

// Exercício 3:
// - Crie um programa que declare uma variável do tipo real chamada "salario" e outra variável do tipo inteiro chamada "percentualAumento".
// - O programa deve solicitar ao usuário o seu salário atual e o percentual de aumento.
// - O programa deve calcular o novo salário após o aumento.
// - Exiba o novo salário.

// Exercício 4:
// - Crie um programa que declare três variáveis do tipo inteiro: "numero1", "numero2" e "soma".
// - Peça ao usuário para digitar dois números inteiros.
// - Calcule a soma dos dois números.
// - Exiba a soma.

// Exercício 5:
// - Crie um programa que simule uma calculadora simples.
// - O programa deve solicitar ao usuário que digite dois números e a operação que deseja realizar (+, -, *, /).
// - Utilize uma estrutura de decisão para realizar a operação desejada e, em seguida, exibir o resultado.

programa {
    funcao inicio() {
      exercicio_1()
      exercicio_2()
      exercicio_3()
      exercicio_4()
      exercicio_5()
    }
    funcao exercicio_1 (){
        const real PI = 3.14
        real raio, area
        escreva ("Digite o raio do círculo: ")
        leia (raio)
        area = PI * raio * raio
        escreva ("A área do círculo é: ", area)
    }

    funcao exercicio_2 () {
        inteiro idade, anoNascimento
        escreva ("\n\nDigite o seu ano de nascimento: ")
        leia (anoNascimento)
        idade = 2025 - anoNascimento 
        escreva ("A sua idade é: ", idade, " anos")
    }

    funcao exercicio_3 () {
        real salario, novoSalario
        inteiro percentualAumento
        escreva ("\n\nDigite o seu salário atual: ")
        leia (salario)
        escreva ("Digite o percentual de aumento: ")
        leia (percentualAumento)
        novoSalario = salario + (salario * percentualAumento / 100)
        escreva ("O seu novo salário é: R$", novoSalario)
    }

    funcao exercicio_4 () {
        inteiro numero1, numero2, soma
        escreva ("\n\nDigite o primeiro número: ")
        leia (numero1)
        escreva ("Digite o segundo número: ")
        leia (numero2)
        soma = numero1 + numero2
        escreva ("A soma dos números é: ", soma)
    }

    funcao exercicio_5 () {
      real numero1, numero2, resultado
        caracter operacao
        escreva ("\n\nDigite o primeiro número: ")
        leia (numero1)

        escreva ("Digite o segundo número: ")
        leia (numero2)
        
        escreva ("Digite a operação desejada (+, -, *, /): ")
        leia (operacao)

        escolha (operacao) {
            caso '+':
                resultado = numero1 + numero2
                pare
            caso '-':
                resultado = numero1 - numero2
                pare
            caso '*':
                resultado = numero1 * numero2
                pare
            caso '/':
                se (numero2 != 0) {
                    resultado = numero1 / numero2
                } senao {
                    escreva ("Erro: Divisão por zero!")
                }
                pare
            caso contrario:
                escreva ("Operação inválida!")
        }

        se (operacao == '+' ou operacao == '-' ou operacao == '*' ou (operacao == '/' e numero2 != 0)) {
            escreva ("O resultado da operação é: ", resultado)
        }


    }
}

