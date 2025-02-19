# Correlação entre Variáveis
# Calcule a matriz de correlação entre as colunas numéricas do dataset `iris`.

# dados
data(iris)

# correlacao
corr <- cor(iris[, 1:4])
corr
