# Funções Aplicadas
# Use a função `apply` para calcular a média de cada coluna de uma matriz `mat <- matrix(1:12, nrow = 3)`.

mat <- matrix(1:12, nrow=3)
medias <- apply(mat, 2, mean)
medias
