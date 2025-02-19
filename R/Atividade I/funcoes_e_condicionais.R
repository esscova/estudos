# Funções e Condicionais
# Escreva uma função que recebe um número e retorna "Positivo", "Negativo" ou "Zero" dependendo do valor.

verifica_numero <- function(x){
  if(x>0){
    return("Positivo")
  }else if (x<0){
    return("Negativo")
  }else{
    return("Zero")
  }
}

verifica_numero(3)
verifica_numero(-3)
verifica_numero(0)

