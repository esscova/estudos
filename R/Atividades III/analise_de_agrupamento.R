# Análise de Agrupamento (Clustering)
# Aplique o algoritmo k-means para agrupar as observações do dataset `iris` (apenas colunas numéricas) em 3 clusters.

#dados
data(iris)
head(iris)

set.seed(123)
kmeans_resultado <- kmeans(iris[, 1:4], centers = 3)
table(iris$Species, kmeans_resultado$cluster)
