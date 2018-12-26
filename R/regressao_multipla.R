colnames(mtcars)
dim(mtcars)

#regressão linear simples
#mpg é variável de resposta (dependente)
cor(mtcars[1:4])

modelo = lm(mpg ~ disp, data=mtcars)
modelo

#coeficiente de determinação
summary(modelo)$r.squared

#coeficiente de determinação ajustado
summary(modelo)$adj.r.squared

#gráfico do modelo
plot(mpg ~ disp, data=mtcars)
abline(modelo)

#200 polegadas cúbicas => 21,36 galões por milhas
predict(modelo, data.frame(disp=200))

#regressão linear múltipla
modelo = lm(mpg ~ disp + hp + cyl, data=mtcars)

#coeficiente de determinação
summary(modelo)$r.squared

#coeficiente de determinação ajustado
summary(modelo)$adj.r.squared

predict(modelo, data.frame(disp=200, hp=100, cyl=4))
