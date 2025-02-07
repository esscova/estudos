# Visualização de Dados (Histograma)
# Crie um histograma da coluna `Petal.Length` do dataset `iris`.

# dados
data(iris)

# histograma
hist(
  iris$Petal.Length,
  main = "Histograma de Petal.Length",
  xlab = "Petal Length",
  col = 'lightblue'
)

