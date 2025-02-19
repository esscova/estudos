# Data Frames
# Crie um data frame com as colunas `Nome`, `Idade` e `Salário`, contendo 5 linhas de dados.
# Filtre as linhas onde o salário é maior que 3000.

dados <- data.frame(
  Nome = c("huguinho", "zezinho", "luizinho", "fulano", "beltrano"),
  Idade = c(25,30,35,40,45),
  Salário = c(2500,3000,3500,4000,4500)
)

dados[dados$Salário > 3000, ]

