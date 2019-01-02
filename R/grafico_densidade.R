densidade = density(trees$Height)
densidade
plot(densidade)

#gerar um gráfico em cima do outro
hist(trees$Height, main=NULL, xlab=NULL)
par(new=TRUE)
plot(densidade)

#densidade com Lattice
library(lattice)
densityplot(CO2$conc)
densityplot(~ CO2$conc | CO2$Treatment, plot.points=F)