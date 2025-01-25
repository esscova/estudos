programa {
  funcao inicio() {
    /*
      Crie um algoritmo que peça ao usuário que informe 5 números inteiros, armazene-os em um vetor e mostre todos os elementos que são números primos. 
      Observação: Um número é considerado primo se ele é divisível por 1 e por ele mesmo 
      (O número 1 não é um número primo, pois ele tem apenas um divisor).
     */
  
  inteiro vetor[5],vetor_primos[5], i, j, contador

  // obtendo numeros
  escreva("Digite números: \n")
  para(i=0;i<5;i++){
    escreva("Digite o ",i+1, "º número: ")
    leia(vetor[i])
  }
  
  // filtrando numeros
  para(i=0;i<5;i++){
    
    se(vetor[i]<=1){
      vetor_primos[i] = 0
    }senao{
      contador=0
      para(j=1; j<=vetor[i]; j++){
        se(vetor[i] % j == 0){ // numeros primos so tem dois divisores(1 e ele mesmo)
          contador++
        }
      }

      se(contador==2){
        vetor_primos[i] = vetor[i] // contador achou 2 diviveis, entao é primo
      }senao{
        vetor_primos[i] = 0
      }
    }
  }

  // exibindo resultados
  escreva("\nNúmeros primos: \n")
  para(i=0;i<5;i++){
    se(vetor_primos[i] != 0){
      escreva(vetor_primos[i], " ")
    }
  }

  }
}
