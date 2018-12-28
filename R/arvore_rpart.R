install.packages("rpart", dependencies=T)
library(rpart)

credito = read.csv(file.choose(), sep=",", header=T)
#divisão de treino e teste (70/30)
amostra = sample(2, 1000, replace=T, prob=c(0.7,0.3))
amostra

credito_treino = credito[amostra == 1,]
credito_teste = credito[amostra == 2,]

#criação da árvore com rpart
arvore = rpart(class ~ ., data=credito_treino, method="class")
print(arvore)
plot(arvore)
text(arvore, use.n=T, all=T, cex=.8)

#testando (mostra probabilidades)
teste = predict(arvore, newdata=credito_teste)
teste

#binarizando
cred = cbind(credito_teste, teste)
fix(cred)
cred['Result'] = ifelse(cred$bad >= 0.5, "bad", "good")
fix(cred)

#matriz de confusão
confusao = table(cred$class, cred$Result)
confusao
taxa_acerto = (confusao[1] + confusao[4]) / sum(confusao)
taxa_acerto
taxa_erro = (confusao[2] + confusao[3]) / sum(confusao)
taxa_erro
