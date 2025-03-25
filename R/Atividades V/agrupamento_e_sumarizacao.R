library(dplyr)

# dados
dados <- data.frame(
  regiao = c("Norte", "Sul", "Leste", "Oeste", "Norte", "Sul", "Leste", "Oeste"),
  vendas = c(500, 300, 400, 600, 700, 500, 450, 650)
)

# media de vendas por regiao
dados %>%
  group_by(regiao) %>%
  summarise(mean(vendas))
