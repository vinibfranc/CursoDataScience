install.packages("neuralnet")
library(neuralnet)

my_iris = iris
my_iris = cbind(my_iris, my_iris$Species=='setosa')
my_iris = cbind(my_iris, my_iris$Species=='versicolor')
my_iris = cbind(my_iris, my_iris$Species=='virginica')
summary(my_iris)
names(my_iris)[6] = 'setosa'
names(my_iris)[7] = 'versicolor'
names(my_iris)[8] = 'virginica'
summary(my_iris)

amostra = sample(2,150,replace=T,prob=c(0.7,0.3))
my_iris_treino = my_iris[amostra == 1,]
my_iris_teste = my_iris[amostra == 2,]
dim(my_iris_treino)
dim(my_iris_teste)
modelo = neuralnet(setosa + versicolor + virginica ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, my_iris_treino, hidden=c(5,4))
plot(modelo)

teste = compute(modelo, my_iris_teste[,1:4])
teste$net.result

resultado = as.data.frame(teste$net.result)
names(resultado)[1] = 'setosa'
names(resultado)[2] = 'versicolor'
names(resultado)[3] = 'virginica'

resultado$class = colnames(resultado[,1:3])[max.col(resultado[,1:3], ties.method='first')]
head(resultado)

confusao = table(resultado$class, my_iris_teste$Species)
sum(diag(confusao) * 100 / sum(confusao))
confusao
