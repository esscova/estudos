# Visualização de Dados (Boxplot)
# Crie um boxplot da coluna `Sepal.Width` por espécie no dataset `iris`.

# dados
data(iris)

boxplot(
  Sepal.Width ~ Species,
  data = iris,
  main = 'Boxplot de Sepal.Width por Specie',
  col = 'lightgreen'
)
