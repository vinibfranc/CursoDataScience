#parâmetros: x e lambda

#probabilidade exata
#média de 2 acidentes e x=3
dpois(3,2)
#probabilidade menor que
#média de 2 acidentes e x <= 3
ppois(3,2)
#probabilidade maior que
#média de 2 acidentes e x > 3
ppois(3,2, lower.tail=F)
