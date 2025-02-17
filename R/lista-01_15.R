# Análise de Componentes Principais (PCA)

# Aplique a análise de componentes principais (PCA) nas colunas numéricas do dataset `iris` e plote os dois primeiros componentes.

# carregando dados
data(iris)
head(iris)

# aplicando pca
pca <- prcomp(iris[, 1:4], scale = TRUE) #scale padroniza dados

# plot
plot(pca$x[, 1], pca$x[, 2], col = iris$Species, pch = 19,
     main = "PCA de Iris", xlab = "PC1", ylab = "PC2")
legend("topright", legend = levels(iris$Species), col = 1:3, pch = 19)
