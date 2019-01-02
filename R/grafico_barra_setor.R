InsectSprays
spray =  aggregate(. ~ spray, data=InsectSprays, sum)
spray
#gráfico de barras
barplot(spray$count, col=gray.colors(6), xlab="Spray", ylab="Total", names.arg=spray$spray)
box()

#gráfico de setor (pizza)
pie(spray$count, labels=spray$spray, main="Spray", col=c(1:6))
pie(spray$count, labels=NA, main="Spray", col=c(1:6))
legend("bottomright", legend=spray$spray, cex=1, fill=c(1:6))
#opções legenda: bottomright, bottom, bottomleft, left, topleft, top, topright, right, center