#variável independente = speed; variável dependente = dist
dim(cars)
head(cars)
#correlação
cor(cars)
#modelo
modelo = lm(speed ~ dist, data=cars)
modelo
plot(modelo)
plot(speed ~ dist, data=cars)
abline(modelo)
modelo$coefficients
#prevendo dados
modelo$coefficients[1] + modelo$coefficients[2] * 22
predict(modelo, data.frame(dist=22))

#explorando dados
summary(modelo)
modelo$residuals
plot(modelo$fitted.values, cars$dist)
