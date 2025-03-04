library(ggplot2)

# dados
dados <- data.frame(
  nome = c("Ana", "Bruno", "Clara", "Diego", "Zeh","Brenda"),
  idade = c(25, 24, 35, 40, 45, 35),
  salario = c(3000, 3000, 4500, 4200, 6000, 3400),
  cidade = c("SP", "RJ", "SP", "RJ", "MG", "MG")
)

# grafico dispersao [idadexsalario, cor por cidade, linha de tendencia] 
ggplot(dados, aes(y=idade, x=salario, color=cidade))+
  geom_point(size=5)+
  geom_smooth(method = "lm", se = F)
