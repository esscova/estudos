# dados
dados <- data.frame(
  nome = c("Ana","Bruno", "Clara", "Diego", "João", "Maria"),
  vendas = c(100, NA, 250, NA, 300, 100)
)
head(dados)

# 1. registros com NA
cat("\nRegistros Faltantes\n")
dados[is.na(dados$vendas), ]

# 2. remover registros NA
dados_sem_NA <- na.omit(dados)
cat("\nDados sem NA\n")
head(dados_sem_NA)

# 3. NA por mean
dados$vendas[is.na(dados$vendas)] <- mean(dados$vendas, na.rm = T)
cat("\nSubstituindo valores ausentes pela média\n")
head(dados)
