programa {
  funcao inicio() {
    // triangulo de asteriscos
    
    inteiro n,i,j

    escreva("Digite um número inteiro: ")
    leia(n)

    enquanto(n<=0){
      escreva("Digite um valor maior que zero\n")
      escreva("Digite um número inteiro: ")
      leia(n)
    }
    para(i=1; i<=n; i++){ // qtd de linhas
      para(j=1; j<=i; j++){ // '*' na primeira linha do loop
        escreva("*")
      }
      escreva("\n")
    }
  }
}

