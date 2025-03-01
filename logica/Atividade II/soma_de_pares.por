programa {
  funcao inicio() {
    //Soma de pares

    inteiro num, soma=0

    escreva("Digite um número inteiro e positivo: ")
    leia(num)

    enquanto(num<=0){
      escreva("Número inválido! Tente novamente. Digite um número inteiro e positivo: ")
      leia(num)   
    }

    para(inteiro i = 2; i<=num; i+=2){
      soma+=i
    }
    escreva("A soma dos números pares de 1 até ", num, " são: ", soma)
  }
}
