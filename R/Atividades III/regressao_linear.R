# Regressão Linear
# Ajuste um modelo de regressão linear para prever `mpg` com base em `wt` no dataset `mtcars`.

# dados
data(mtcars)
head(mtcars)

# modelo de regressao
modelo <- lm(mpg ~ wt, data = mtcars)
summary(modelo)
