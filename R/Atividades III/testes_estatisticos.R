# Testes Estatísticos

# Realize um teste t para comparar as médias de `Sepal.Length` entre as espécies `setosa` e `versicolor` no dataset `iris`.

# dados
data(iris)
head(iris)

# amostras

# comprimento da sepala para setosa
setosa <- iris$Sepal.Length[iris$Species == "setosa"]
setosa

# comprimento da sepala para versicolor
versicolor <- iris$Sepal.Length[iris$Species == "versicolor"]
versicolor

resultado_teste <- t.test(setosa, versicolor)
print(resultado_teste)
