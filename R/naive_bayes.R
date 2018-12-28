#pacotes: e1071 e klaR
install.packages("e1071", dependencies=T)
library(e1071)
credito = read.csv(file.choose(), se=",", header=T)
head(credito)
dim(credito)
#divisão de treino e teste (70/30)
amostra = sample(2, 1000, replace=T, prob=c(0.7,0.3))
amostra

credito_treino = credito[amostra == 1,]
credito_teste = credito[amostra == 2,]

dim(credito_treino)
dim(credito_teste)

#criação do modelo
#parâmetros => variável de resposta ~ atributos explicativos, dataset
modelo = naiveBayes(class ~ . , credito_treino)
class(modelo)

#avaliação de desempenho
predicao = predict(modelo, credito_teste)
predicao
#matriz de confusão
confusao = table(credito_teste$class, predicao)
confusao
#taxa de acertos
taxa_acertos = (confusao[1] + confusao[4]) / sum(confusao)
taxa_acertos
#taxa de erro
taxa_erros = (confusao[2] + confusao[3]) / sum(confusao)
taxa_erros

#simulando modelo em produção
novo_credito = read.csv(file.choose(), sep=",", header=T)
novo_credito

dim(novo_credito)
predict(modelo, novo_credito)