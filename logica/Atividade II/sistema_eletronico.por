programa {
  funcao inicio() {
    // Crie um algoritmo que simule um sistema de caixa eletrônico. O usuário deve digitar a senha e o valor que deseja sacar. 
    // O sistema deve verificar se a senha está correta e se o saldo da conta é suficiente para realizar o saque. 
    // Utilize as estruturas de decisão condicional simples e composta (_if-else_) para implementar as validações necessárias e exibir as mensagens apropriadas na tela.

    inteiro senha = 1234, contador = 3, senhaInput, opcao
    real saldo = 1983.08, saque
    logico logado = falso

    escreva("\nSistema eletrônico\nDigite sua senha para continuar: ")
    leia(senhaInput)

    enquanto(senhaInput != senha e contador > 0){
      contador--
      escreva("Senha incorreta, restam ", contador, " tentativas.\nTente novamente: ")
      leia(senhaInput)
      se(contador == 0){
        escreva("\nTentativas de logar finalizadas...\n")
        pare
      }
    }

    se(senha == senhaInput){
      logado = verdadeiro
    }

    enquanto(logado){
      escreva("\nEscolha:\n[ 1 ] para consultar saldo\n[ 2 ] para saques\n[ 3 ] Sair\n")
      leia(opcao)

      se(opcao == 1){
        escreva("Saldo atual: R$", saldo, "\n")
      } senao {
        se(opcao == 2){
          escreva("Digite valor para saque: ")
          leia(saque)

          se(saque > saldo){
            escreva("Saldo insuficiente para realizar o saque.\n")
          } senao {
            saldo -= saque
            escreva("Saque de R$", saque, " realizado com sucesso.\n")
          }
        } senao {
          se(opcao == 3){
            escreva("Finalizando serviço...\n")
            pare
          } senao {
            escreva("Opção inválida. Tente novamente.\n")
          }
        }
      }
    }
  }
}
