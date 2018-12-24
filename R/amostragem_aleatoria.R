iris
dim(iris)

#conjunto de dados, quantidade de aleatórios, com ou sem repo, vetor de probabilidade
amostra = sample(c(0,1), 150, replace=TRUE, prob=c(0.5, 0.5))
amostra

length(amostra[amostra==1])
length(amostra[amostra==0])

set.seed(2345)
sample(c(100), 1)
