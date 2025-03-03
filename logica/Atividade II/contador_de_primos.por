programa {
  funcao inicio() {
    // Contador de números primos
        
    inteiro numero, i, contador, primos
    contador = 0
    primos = 0

    enquanto(contador < 10){
      escreva("\n\nDigite um número inteiro: ")
      leia(numero)

      // <= 1 não são primos
      se(numero <= 1){
        contador++
        continue
      }

      i = 2
      enquanto(i <= numero / 2){
        se(numero % i == 0){ // n for divisível por i, não eh primo
          pare
        }
        i++
      }

      // se não foi divisível por nenhum número até a metade do número entao eh primo
      se(i > numero / 2){
        primos++
      }

      contador++
    }

    escreva("Foram digitados ", primos, " números primos.")
}

}
