#comparação entre duas variáveis

plot(trees$Girth, trees$Volume)
plot(trees$Girth, trees$Volume, main="Árvores", ylab="Circunferência", xlab="Volume", col="blue")
plot(trees$Girth, trees$Volume, main="Árvores", ylab="Circunferência", xlab="Volume", col="blue", pch=20)
plot(trees$Girth, trees$Volume, main="Árvores", ylab="Circunferência", xlab="Volume", col="blue", pch=20, type="l")

#minimizando a sobreposição entre os dados
plot(jitter(trees$Girth), trees$Volume, main="Árvores", ylab="Circunferência", xlab="Volume", col="blue", pch=20)

#legendas em gráfico de dispersão
CO2
plot(CO2$conc, CO2$uptake, pch=20, col=CO2$Treatment)
legend("bottomright", legend=c("nonchilled","chilled"),cex=1, fill=c("black","red"))

#dispersão com Lattice
xyplot(CO2$conc ~ CO2$uptake)
xyplot(CO2$conc ~ CO2$uptake | CO2$Type)
xyplot(CO2$conc ~ CO2$uptake | CO2$Treatment)

esoph

dotplot(esoph$alcgp ~ esoph$ncontrols, data=esoph)
dotplot(esoph$alcgp ~ esoph$ncontrols | esoph$tobgp, data=esoph)