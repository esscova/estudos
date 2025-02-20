programa {
  funcao inicio() {
    // Verificação de notas
    // Crie um programa que peça ao usuário para inserir sua nota em uma prova e imprima se ele foi aprovado ou reprovado (considerando que a nota mínima para aprovação é 7)

  real nota

  escreva("Digite sua nota: ")
  leia(nota)

  
  enquanto(nota<0){
    escreva("Erro: nota negativa.\n\nDigite valor válido: ")
    leia(nota)
  }
  se(nota<7){
    escreva("Reprovado")
  }senao{
    escreva("Aprovado") 
  }
  }
}
