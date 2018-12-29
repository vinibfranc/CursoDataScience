install.packages("arules")
library(arules)
transacoes = read.transactions(file.choose(), format="basket", sep=",")
transacoes
inspect(transacoes)
image(transacoes)
regras = apriori(transacoes, parameter=list(supp=0.5, conf=0.5))
inspect(regras)
install.packages("arulesViz")
library(arulesViz)
plot(regras)
plot(regras, method="graph", control=list(type="items"))

#itens frequentes
transacoes2 = read.transactions(file.choose(), format="basket", sep=",")
image(transacoes2)
regras2 = eclat(transacoes2, parameter=list(supp=0.1, maxlen=15))
inspect(regras2)
plot(regras, method="graph", control=list(type="items"))
