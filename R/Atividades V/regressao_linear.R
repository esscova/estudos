# dados
data(cars)
dim(cars)
head(cars)

# lm([target] ~ [predictor], data = [data source])
lm_speed <- lm(dist ~ speed, data = cars)
summary(lm_speed)

predicoes <- predict(lm_speed)
mse <- mean((cars$dist - predicoes)^2)
r2 <- summary(lm_speed)$r.squared
mse
r2

plot(cars$dist, cars$dist, main='Regressão linear: distancia x velocidade', pch=19, col='blue')
abline(lm_speed, col='red')
