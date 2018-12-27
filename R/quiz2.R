#Questão 1
(-0.89)^2

#Questão 2
X = c(15,18,20,25,30,44)
Y = c(240,255,270,283,300,310)
cor(X,Y)

#Questaõ 7
dim(women)
head(women)
cor(women)
fix(women)

modelo = lm(height ~ weight, data=women)
modelo
plot(height ~ weight, data=women)
abline(modelo)

predict(modelo, data.frame(weight=30))

#Questão 8
modelo2 = lm(weight ~ height, data=women)
modelo2
plot(weight ~ height, data=women)
abline(modelo2)

predict(modelo2, data.frame(height=70))

#Questão 10
10 - 3
