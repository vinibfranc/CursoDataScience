install.packages("randomForest", dependencies=T)
library(randomForest)

#carrega Credito.csv
credito = read.csv(file.choose(), sep=';', header=T)

#amostragem de treino e teste
amostra = sample(2, 1000, replace=T, prob=c(0.7,0.3))

treino = credito[amostra==1,]
teste = credito[amostra==2,]
dim(treino)
dim(teste)

#modelo
floresta = randomForest(CLASSE ~ ., data=treino, ntree=200, proximity=T)

#previsão
previsao = predict(floresta, teste)

#matriz de confusao
floresta$confusion

#taxa de erro aceitável (23%)
erro = (floresta$confusion[2] + floresta$confusion[3]) / sum(floresta$confusion)
erro

