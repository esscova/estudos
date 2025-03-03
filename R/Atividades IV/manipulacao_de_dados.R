library(dplyr)

# dados
dados <- data.frame(
  nome = c("Ana", "Bruno", "Clara", "Diego", "Zeh"),
  idade = c(25, 24, 35, 40, 45),
  salario = c(3000, 5000, 4500, 3200, 6000),
  cidade = c("SP", "RJ", "SP", "RJ", "MG")
)

# filtrar idade>30
filtro_idade <- dados %>% filter(idade>30)
filtro_idade

# sort salario
filtro_idade %>% arrange(desc(salario))

# media salario por cidade
dados %>%
  group_by(cidade) %>%
  summarise(mean(salario))
