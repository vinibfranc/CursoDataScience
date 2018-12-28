install.packages("class", dependencies=T)
library(class)

head(iris)
summary(iris)

amostra = sample(2,150,replace=T,prob=c(0.7,0.3))
iris_treino = iris[amostra == 1,]
iris_teste = iris[amostra == 2,]

dim(iris_treino)
dim(iris_teste)

previsao = knn(iris_treino[,1:4], iris_teste[,1:4], iris_treino[,5], k=3)
table(iris_teste[,5], previsao)
