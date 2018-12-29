dim(iris)
head(iris)
summary(iris)
#pegando todas as colunas menos a classe e definindo o n de clusters como 3
cluster = kmeans(iris[1:4], center=3)
cluster
cluster$cluster
table(iris$Species, cluster$cluster)
plot(iris[,1:4], col=cluster$cluster)
