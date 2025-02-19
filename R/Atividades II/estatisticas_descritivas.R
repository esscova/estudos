# Estatísticas Descritivas
# Calcule a média, mediana, desvio padrão e quartis para a coluna `Sepal.Length` do dataset `iris`.

# carregando dados
data(iris)

# estatisticas do atributo sepal.length

# media 
mean(iris$Petal.Length)

# mediana
median(iris$Petal.Length)

# desvio padrao
sd(iris$Petal.Length)

# quartis
quantile(iris$Petal.Length)
