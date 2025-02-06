# Filtragem de Dados
#- Filtre o dataset `iris` para incluir apenas as observações da espécie `setosa`.

# dados
data(iris)

# filtro
setosa <- iris[iris$Species == 'setosa', ]
setosa
