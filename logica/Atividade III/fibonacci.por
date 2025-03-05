programa {
  funcao inicio() {
    // fibonacci
    inteiro a=0, b=1, contador=0, proximo

    // iniciando a sequencia do 0
    escreva(a, ",", b)

    // proximos 18 para completar a seq de 20
    enquanto(contador<18){ 
      proximo = a+b 
      escreva(",", proximo)

      a=b
      b=proximo
      contador++
    }
    
  }
}
