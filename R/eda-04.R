# Agregação de Dados
#- Use a função `aggregate` para calcular a média de `Sepal.Length` por espécie no dataset `iris`.

# dados
data(iris)

# aggregate
media_por_especie <- aggregate(
  Sepal.Length ~ Species, 
  data = iris,
  FUN = mean
)

media_por_especie
