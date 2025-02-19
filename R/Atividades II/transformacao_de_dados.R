# Transformação de Dados
# - Crie uma nova coluna no dataset `iris` chamada `Sepal.Ratio`, que é a razão entre `Sepal.Length` e `Sepal.Width`.

# dados
data(iris)

# nova coluna sepal.ratio
iris$Sepal.Ratio <- iris$Sepal.Length / iris$Sepal.Width

iris
