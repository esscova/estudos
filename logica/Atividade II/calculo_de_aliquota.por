programa {
  funcao inicio() {
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
}

