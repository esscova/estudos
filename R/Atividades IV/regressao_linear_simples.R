# dados
data(mtcars)
dim(mtcars)
head(mtcars)

# 1. modelo de regressão linear
modelo <- lm(mpg ~ wt, data = mtcars)

# 2. resumo do modelo
summary(modelo)

# 3. grafico
plot(mtcars$wt, mtcars$mpg,main = "Relação entre wt e mpg")
abline(modelo, col="red")
