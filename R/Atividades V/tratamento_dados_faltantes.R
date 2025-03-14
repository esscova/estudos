# dados
set.seed(123)

dados <- data.frame(
  ID = 1:10,
  Idade = c(25, 30, NA, 22, 28, NA, 35, 40, NA, 29),
  Salario = c(3000, 4500, 5000, 5500, NA, 6000, 7500, NA, 8000, 9000)
)

# sem registros com NA
dados_sem_NA <- na.omit(dados) # remove registros com NA de qlqr atributo

# tratando dados com a media
dados$Idade[is.na(dados$Idade)] <- mean(dados$Idade, na.rm = T) # median() para mediana
dados$Salario[is.na(dados$Salario)] <- mean(dados$Salario, na.rm = T) # median() para mediana
dados$Idade <- round(dados$Idade) # valor inteiro
