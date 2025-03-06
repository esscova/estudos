programa {
  funcao inicio() {
                  // GERENCIADOR DE ESTOQUE    
    inteiro opcao
    real estoque
    
    estoque = 0
    opcao = 0

    enquanto(opcao != 4){
      escreva("\nMenu de Opções:\n")
      escreva("1 - Cadastrar produto\n")
      escreva("2 - Consultar produto\n")
      escreva("3 - Baixar estoque\n")
      escreva("4 - Sair\n")
      escreva("Escolha a opção desejada: ")
      leia(opcao)
    
      escolha(opcao){
        caso 1:
        escreva("Produto cadastrado com sucess.\n")
        estoque+=1
        
        caso 2:
        escreva("Estoque atual: ", estoque, "produto(s)\n")
        pare
        
        caso 3:
        real quantidade
        escreva("Digite a quantidade a ser baixada: ")
        leia(quantidade)

        se(quantidade <= estoque){
          estoque -= quantidade
          escreva("Estoque atualizado. Produtos restantes: ", estoque, "\n")
        }senao{
          escreva("Estoque insuficiente.\n")
        }
        pare
        
        caso 4:
        escreva("Saindo do sistema...\n")
        pare
        
        caso contrario:
        escreva("Opção inválida, tente novamente. \n")
      }
    }
  }
}