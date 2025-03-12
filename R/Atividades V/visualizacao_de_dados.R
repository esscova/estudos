# pacote ggplot
library(ggplot2)

# dados
data(iris)
head(iris)

# graficos de dispersao

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(color = "blue") +
  theme_minimal() +
  ggtitle("Gráfico de Dispersão: Sepal Length vs Sepal Width")

ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(color = "red") +
  theme_minimal() +
  ggtitle("Gráfico de Dispersão: Petal Length vs Petal Width")

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  theme_minimal() +
  ggtitle("Gráfico de Dispersão: Sepal Length vs Sepal Width por Species")
  
# histograma para cada atributo numérico
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.2, fill = "blue", color = "black", alpha = 0.7) +
  theme_minimal() +
  ggtitle("Histograma de Sepal Length")

ggplot(iris, aes(x = Sepal.Width)) +
  geom_histogram(binwidth = 0.2, fill = "green", color = "black", alpha = 0.7) +
  theme_minimal() +
  ggtitle("Histograma de Sepal Width")

ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram(binwidth = 0.2, fill = "red", color = "black", alpha = 0.7) +
  theme_minimal() +
  ggtitle("Histograma de Petal Length")

ggplot(iris, aes(x = Petal.Width)) +
  geom_histogram(binwidth = 0.2, fill = "purple", color = "black", alpha = 0.7) +
  theme_minimal() +
  ggtitle("Histograma de Petal Width")

# Boxplots
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  theme_minimal() +
  ggtitle("Boxplot de Sepal Length por Species")

ggplot(iris, aes(x = Species, y = Sepal.Width, fill = Species)) +
  geom_boxplot() +
  theme_minimal() +
  ggtitle("Boxplot de Sepal Width por Species")

ggplot(iris, aes(x = Species, y = Petal.Width, fill = Species)) +
  geom_boxplot() +
  theme_minimal() +
  ggtitle("Boxplot de Petal Width por Species")

ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  theme_minimal() +
  ggtitle("Boxplot de Petal Length por Species")
