# Visualização de Dados (Scatter Plot com Facetas)
# Use o pacote `ggplot2` para criar um scatter plot de `Sepal.Length` vs. `Sepal.Width` no dataset `iris`, com facetas por espécie.

# bibliotecas
library(ggplot2)

# dados
data(iris)

head(iris)

# plot
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  facet_wrap(~ Species) +
  labs( title="Sepal.Length vs. Sepal.Width por Espécie")
