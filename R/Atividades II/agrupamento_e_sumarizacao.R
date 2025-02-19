# Agrupamento e Sumarização

# Use o pacote `dplyr` para agrupar o dataset `mtcars` por `cyl` (cilindros) 
# e calcular a média de `mpg` (milhas por galão) para cada grupo.

# bibliotecas
library("dplyr")

# dados
data("mtcars")

# primeiras linhas
head(mtcars)

# dimensoes
dim(mtcars)

# media de milhas por galao
mtcars %>%
  group_by(cyl) %>%
  summarise(media_mpg = mean(mpg))
