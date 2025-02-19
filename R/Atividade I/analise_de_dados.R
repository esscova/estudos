# Análise de Dados
# Carregue o dataset `mtcars` e faça uma análise exploratória básica, incluindo:
#  - Resumo estatístico.
#  - Gráfico de dispersão entre `mpg` e `wt`.
#  - Cálculo da correlação entre `mpg` e `wt`.


data(mtcars)
summary(mtcars)

plot(mtcars$wt, mtcars$mpg, main='grafico de dispersao', xlab='peso (wt)', ylab='milhas por galao(mpg)')
correlacao <- cor(mtcars$wt, mtcars$mpg)
correlacao

