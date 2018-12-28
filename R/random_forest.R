install.packages("randomForest", dependencies=T)
library(randomForest)

floresta = randomForest(class ~ ., data=credito_treino, ntree=100, importance=T)
varImpPlot(floresta)

previsao = predict(floresta, credito_teste)

#matriz de confusão
confusao = table(previsao, credito_teste$class)
confusao
taxa_acerto = (confusao[1] + confusao[4]) / sum(confusao)
taxa_acerto
taxa_erro = (confusao[2] + confusao[3]) / sum(confusao)
taxa_erro
