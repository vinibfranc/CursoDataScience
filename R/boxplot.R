boxplot(trees$Volume, main="Árvores", xlab="Volume")
boxplot(trees$Volume, main="Árvores", xlab="Volume", col="blue", horizontal=T)
boxplot(trees$Volume, main="Árvores", xlab="Volume", col="blue", horizontal=T, outline=F)
boxplot(trees$Volume, main="Árvores", xlab="Volume", col="blue", horizontal=T, outline=F, notch=T)
boxplot.stats(trees$Height)
boxplot(trees, horizontal=T)

#boxplot com Lattice
library(lattice)
bwplot(trees$Volume, main="Árvores", xlab="Volume")