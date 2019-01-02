trees
hist(trees$Height, main="Árvores", ylab="Frequência", xlab="Altura", col="blue")
hist(trees$Height, main="Árvores", ylab="Frequência", xlab="Altura", col="blue", density=20, breaks=20)
hist(trees$Girth)
hist(trees$Volume)

#histograma com Lattice
library(lattice)
histogram(trees$Volume, main="Árvores", xlab="Volume", aspect=0.5, type="count", nint=10)

#usando chickwts para fazer histograma condicional
aggregate(chickwts$weight, by=list(chickwts$feed), FUN=sum)

histogram(~weight | feed, data=chickwts)