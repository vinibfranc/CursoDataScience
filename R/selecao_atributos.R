#usando SVM (support vector machine)
modelo = svm(class ~ ., credito_treino)
modelo

predicao = predict(modelo, credito_teste)
predicao

#usando os 20 atributos disponíveis = 72,6% de acerto
confusao = table(credito_teste$class, predicao)
confusao

taxa_acerto = (confusao[1] + confusao[4]) / sum(confusao)
taxa_acerto
taxa_erro = (confusao[2] + confusao[3]) / sum(confusao)
taxa_erro

#fazendo seleção de atributos
install.packages("FSelector", dependencies=T)
library(FSelector)
random.forest.importance(class ~ ., credito)

#criando novo modelo após seleção
modelo = svm(class ~ checking_status + duration + credit_history + purpose, credito_treino)
predicao = predict(modelo, credito_teste)

#usando 4 atributos mais relevantes = 73,7% de acerto
confusao = table(credito_teste$class, predicao)
confusao

taxa_acerto = (confusao[1] + confusao[4]) / sum(confusao)
taxa_acerto
taxa_erro = (confusao[2] + confusao[3]) / sum(confusao)
taxa_erro
