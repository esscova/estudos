# pacotes
library(dplyr)
library(ggplot2)

# dados
data(iris)
head(iris)

# estatisticas por especies
iris %>%
  group_by(Species) %>%
  summarise(
    media = mean(Petal.Length),
    mediana = median(Petal.Length),
    desvio_padrao = sd(Petal.Length)
  )
# boxplot Petal.Length por especie
ggplot(iris, aes(x = Species, y = Petal.Length)) +
  geom_boxplot()+
  theme_minimal()
