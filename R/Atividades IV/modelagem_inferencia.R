# pacotes necessários
required_packages <- c("caret", "rpart", "class", "Metrics", "FNN")
new_packages <- required_packages[!(required_packages %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)
lapply(required_packages, library, character.only = TRUE)

#  dados fictícios
set.seed(42)
n <- 100
X <- rnorm(n)
Y <- 3*X + rnorm(n)  # dependente com relação linear

# treino e teste
data <- data.frame(X, Y)
set.seed(42)
trainIndex <- createDataPartition(data$Y, p = 0.8, list = FALSE)
trainData <- data[trainIndex,]
testData <- data[-trainIndex,]

# avaliar modelos de regressão
evaluate_regression <- function(predictions, actual) {
  rmse <- rmse(actual, predictions)
  r_squared <- cor(actual, predictions)^2
  cat("RMSE:", rmse, "\n")
  cat("R²:", r_squared, "\n")
}

# modelo linear
linear_model <- lm(Y ~ X, data = trainData)
summary(linear_model)
predictions_linear <- predict(linear_model, newdata = testData)

cat("Desempenho do modelo linear:\n")
evaluate_regression(predictions_linear, testData$Y)

# arvores de regressão
tree_model <- rpart(Y ~ X, data = trainData)
summary(tree_model)
predictions_tree <- predict(tree_model, newdata = testData)

cat("Desempenho da árvore de regressão:\n")
evaluate_regression(predictions_tree, testData$Y)

# KNN para regressão
# k = 3, X em uma matriz para knn.reg
train_X <- as.matrix(trainData$X)
test_X <- as.matrix(testData$X)

knn_model <- knn.reg(train = train_X, test = test_X, y = trainData$Y, k = 3)

cat("Desempenho do modelo KNN:\n")
evaluate_regression(knn_model$pred, testData$Y)

# regressão logística
# Criando um problema de classificação binária
set.seed(42)
data$Class <- ifelse(data$Y > median(data$Y), 1, 0)

# nova divisao de dados para regressão logística
trainIndex_log <- createDataPartition(data$Class, p = 0.8, list = FALSE)
trainData_log <- data[trainIndex_log,]
testData_log <- data[-trainIndex_log,]

logistic_model <- glm(Class ~ X, data = trainData_log, family = binomial)
summary(logistic_model)

predictions_logistic <- predict(logistic_model, newdata = testData_log, type = "response")
predictions_logistic_bin <- ifelse(predictions_logistic > 0.5, 1, 0)

conf_matrix_logistic <- confusionMatrix(as.factor(predictions_logistic_bin), as.factor(testData_log$Class))
cat("Acurácia da regressão logística:", conf_matrix_logistic$overall['Accuracy'], "\n")


# Visualização dos resultados
# gráfico do Modelo Linear
plot(testData$Y, predictions_linear, main = "Modelo Linear", xlab = "Real", ylab = "Predito")
abline(0, 1, col = "red")  # Linha de referência y = x
# Ajuste os limites do gráfico, se necessário
xlim <- range(c(testData$Y, predictions_linear))
ylim <- range(c(testData$Y, predictions_linear))
plot(testData$Y, predictions_linear, main = "Modelo Linear", xlab = "Real", ylab = "Predito", xlim = xlim, ylim = ylim)
abline(0, 1, col = "red") 

# gráfico da Árvore de Regressão
plot(testData$Y, predictions_tree, main = "Árvore de Regressão", xlab = "Real", ylab = "Predito")
abline(0, 1, col = "red")
xlim <- range(c(testData$Y, predictions_tree))
ylim <- range(c(testData$Y, predictions_tree))
plot(testData$Y, predictions_tree, main = "Árvore de Regressão", xlab = "Real", ylab = "Predito", xlim = xlim, ylim = ylim)
abline(0, 1, col = "red")

# gráfico do KNN
plot(testData$Y, knn_model$pred, main = "KNN", xlab = "Real", ylab = "Predito")
abline(0, 1, col = "red")
xlim <- range(c(testData$Y, knn_model$pred))
ylim <- range(c(testData$Y, knn_model$pred))
plot(testData$Y, knn_model$pred, main = "KNN", xlab = "Real", ylab = "Predito", xlim = xlim, ylim = ylim)
abline(0, 1, col = "red")

# gráfico da Regressão Logística
# precisa ser ajustado para usar a classificação binária
plot(testData_log$Class, predictions_logistic_bin, main = "Regressão Logística", xlab = "Real", ylab = "Predito")
