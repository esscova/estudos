
// Crie um algoritmo que receba a idade de um usuário e determine se ele é maior de idade (18 anos ou mais) ou menor de idade. 
// Utilize uma estrutura de decisão condicional simples (if) para realizar a verificação e exibir a mensagem apropriada na tela.

// Crie um algoritmo que receba o salário bruto de um funcionário e calcule o valor do desconto do INSS, de acordo com a tabela fornecida na fonte. 
// Utilize a estrutura de decisão condicional encadeada (_if-else-if_) para implementar a lógica de cálculo do desconto, 
// considerando as diferentes faixas salariais e alíquotas.
// As alíquotas são de 7,5% para aqueles que ganham até R$ 1.518,00; 
// de 9% para quem ganha entre R$ 1.518,01 até R$ 2.793,88; 
// de 12% para os que ganham entre R$ 2.793,89 até R$ 4.190,83;
// e de 14% para quem ganha de R$ 4.190,84 até R$ 8.157,41.


// Crie um algoritmo que simule um sistema de caixa eletrônico. O usuário deve digitar a senha e o valor que deseja sacar. 
// O sistema deve verificar se a senha está correta e se o saldo da conta é suficiente para realizar o saque. 
// Utilize as estruturas de decisão condicional simples e composta (_if-else_) para implementar as validações necessárias e exibir as mensagens apropriadas na tela.


// Crie um algoritmo que receba três valores, representando os lados de um triângulo, e determine o tipo de triângulo: 
// **equilátero** (todos os lados iguais), **isósceles** (dois lados iguais) ou **escaleno** (todos os lados diferentes). 
// Utilize a estrutura de decisão condicional encadeada (_if-else-if_) para implementar a lógica de classificação do triângulo.

programa {
  funcao inicio() {
    exercicio_01()
    exercicio_02()
    exercicio_03()
    exercicio_04()
  }

  funcao exercicio_01 () {
    inteiro idade

    escreva("Digite sua idade: ")
    leia(idade)

    se (idade >= 18){
      escreva("Maior de idade")
    } senao {
      escreva("Menor de idade")
    }
  }
  funcao exercicio_02 () {
        real salario_bruto, desconto
    escreva("\n\nDigite valor do Salário: ")
    leia(salario_bruto)

    se (salario_bruto <= 1518.00){
      desconto = salario_bruto*0.075
    }senao{
      se(salario_bruto > 1518.00 e salario_bruto <= 2793.88){
        desconto = salario_bruto*0.09
      }senao{
        se(salario_bruto > 2793.88 e salario_bruto <= 4190.83){
          desconto = salario_bruto*0.12
        }senao{
          se(salario_bruto > 4190.83 e salario_bruto <= 8157.41){
            desconto = salario_bruto*0.14
          }
        }
      }
    }
    escreva("Seu desconto do INSS ficou (R$): ", desconto)
  }
  funcao exercicio_03 () {
    inteiro senha, senha_input
    real saldo, saque

    senha = 1234
    saldo = 100

    escreva("\n\nOlá usuário, digite sua senha: ")
    leia(senha_input)

    se(senha!=senha_input){
      escreva("Senha Incorreta, tente novamente")
    }senao{
      escreva("Digite o valor do saque: ")
      leia(saque)

      se(saque>saldo){
        escreva("Saldo insuficiente...")
      }senao{
        saldo-=saque
        escreva("Saque efetuado com sucesso, saldo atual: ", saldo)
      }

    }
  }

  funcao exercicio_04 () {
    real a,b,c
    escreva("\n\nDigite o primeiro lado: ")
    leia(a)

    escreva("Digite o segundo lado: ")
    leia(b)

    escreva("Digite o terceiro lado: ")
    leia(c)

    se(a==b e b==c){
      escreva("Triângulo equilátero com todos os lados iguais")
    }senao{
      se(a==b ou a==c){
        escreva("Triângulo isósceles com dois lados iguais")
      }
      senao{
        escreva("Triângulo escaleno com todos os lados diferentes")
      }
    }
  }
}
