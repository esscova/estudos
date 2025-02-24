# Exportação de Dados
# Exporte o dataset `iris` filtrado para a espécie `virginica` para um arquivo CSV.

#dados
data(iris)
head(iris)

# selecao
virginica <- iris[iris$Species == "virginica", ]
write.csv(virginica, "virginica.csv", row.names = F)
