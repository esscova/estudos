// ESTRUTURAS DE REPETICAO

// Crie um programa que simule um caixa eletrônico. O programa deve iniciar com um saldo de R$ 1000,00 e apresentar as seguintes opções:

// 1. **Sacar:** Solicitar o valor do saque e atualizar o saldo. Se o saldo for insuficiente, exibir uma mensagem de erro.
// 2. **Depositar:** Solicitar o valor do depósito e atualizar o saldo.
// 3. **Consultar Saldo:** Exibir o saldo atual.
// 4. **Sair:** Encerrar o programa.

// O programa deve repetir a exibição do menu até que o usuário escolha a opção "Sair".

programa {
  funcao inicio() {

    real valor, saldo = 1000.00
    inteiro opcao

    faca{
      escreva("===== Caixa Eletronico ===== \n")
      escreva("1. Sacar\n")
      escreva("2. Depositar\n")
      escreva("3. Consultar Saldo\n")
      escreva("4. Sair\n")
      escreva("Digite a opcao desejada: ")
      leia(opcao)

      escolha(opcao){
        caso 1:
          escreva("Digite o valor do saque: ")
          leia(valor)

          se(valor <= saldo){
            saldo-=valor
            escreva("Saque realizado com sucesso.\n")
          }senao{
            escreva("Saldo insuficiente.\n")
          }
        pare

        caso 2:
          escreva("Digite o valor para depósito: ")
          leia(valor)
          
          se(valor<=0){
            escreva("Digite um valor positivo.\n")
          }senao{
            saldo+= valor
            escreva("Depósito realizado com sucesso.\n")
          }
        pare

        caso 3:
          escreva("Saldo atual: R$",saldo,"\n")
        pare

        caso 4:
          escreva("Encerrando o programa...\n")
        pare

        caso contrario:
          escreva("Opcao invalida.\n")
      }
    }enquanto(opcao !=4)
  }
}
