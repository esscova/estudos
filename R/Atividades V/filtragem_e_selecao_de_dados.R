# pacote
library(dplyr)

# criando df
data <- data.frame(
  Nome = c('João', 'Ana', 'Carlos', 'Marta', 'Pedro'),
  Idade = c(23, 45, 35, 41, 29),
  Cidade = c('São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Salvador', 'São Paulo'),
  Salario = c(5000, 7000, 8000, 6200, 5400)
)
data

## REGISTROS ##

# registros onde o salário > 6000
data_filtrada <- data %>%
  filter(Salario > 6000)
data_filtrada

# registros onde idade > média
idade_filtrada <- data %>%
  filter(data$Idade > mean(data$Idade))
idade_filtrada

# registros salário > 6000 e idade < 40
salario_e_idade_filtrados <- data %>%
  filter(Salario > 6000 & Idade < 40)
salario_e_idade_filtrados

# registros onde a cidade == "São Paulo"
cidade_sp <- data %>%
  filter(Cidade == 'São Paulo')
cidade_sp

## ATRIBUTOS ##

# selecionando uma coluna
nomes <- select(data, Nome)
nomes

# selecionando multiplas colunas
nome_salario <- select(data, Nome, Salario)
nome_salario

# selecionando colunas exceto cidade
data_sem_cidades <- select(data, -Cidade)
data_sem_cidades

## ORDENAÇÃO ##

# ordenando idade
data %>%
  arrange(Idade) #ou arrange(desc(Idade))

# ordenando por salario maior -> menor
data %>%
  arrange(desc(Salario)) # ou arrange(Salario) menor -> maior

# ordem alfabetica no atributo Nome
data %>%
  arrange(Nome)

# ordenar por cidade e idade
data %>%
  arrange(Cidade, Idade)

# ordenar por cidade e maior salario
data %>%
  arrange(Cidade, desc(Salario))
