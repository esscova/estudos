# Análise de Frequência
# Crie uma tabela de frequência para a coluna `Species` do dataset `iris`.

# dados
data(iris)
head(iris)

# frequencia
frequencia <- table(iris$Species)
print(frequencia)
