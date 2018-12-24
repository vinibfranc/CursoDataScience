summary(iris)
install.packages("sampling")
library(sampling)

#gerando estrato (conjunto de dados, vetor de colunas e vetor com tamanho dos estratos)
amostra_estrat = strata(iris, c("Species"), size=c(25,25,25), method="srswor")
summary(amostra_estrat)

summary(infert)
round(12 / 248 * 100)
round(120 / 248 * 100)
round(116 / 248 * 100)

amostra_infert = strata(infert, c("education"), size=c(5,48,47), method="srswor")
summary(amostra_infert)