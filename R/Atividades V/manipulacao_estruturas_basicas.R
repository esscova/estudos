# vetores
nomes <- c("João", "Maria", "José")
idades <- c(40, 30, 20)
salarios <- c(3000, 4000, 2000)
ativo <- c(TRUE, FALSE, TRUE)

# matrizes
matriz <- cbind(idades, salarios)

# dataframe
dados <- data.frame(
  nomes = nomes,
  matriz,
  ativo = ativo
)
dados
cat("\nFunções\n\n")

# explorando
variaveis <- list(nomes, idades, salarios, ativo, matriz, dados)

for (i in 1:length(variaveis)){
    print(paste("cls: ", class(variaveis[[i]])))
    print(paste("str: "))
    str(variaveis[[i]])
    print(paste("summary: "))
    if(is.data.frame(variaveis[[i]]) || is.numeric(variaveis[[i]])){
      print(summary(variaveis[[i]]))
    } else {
      print("summary não aplicável")
    }
    cat("\n")
}
