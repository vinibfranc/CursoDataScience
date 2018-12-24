#n de sucessos, n de experimentos, probabilidade

# jogar moeda e cair cara 3 vezes
dbinom(3,5,0.5)

# 4 sinais de 4 tempos, prob = 0,1,2,3,4 sinais verdes?
dbinom(0,4,0.25)
dbinom(1,4,0.25)
dbinom(2,4,0.25)
dbinom(3,4,0.25)
dbinom(4,4,0.25)

#probabilidade cumulativa
pbinom(4,4, 0.25)

# prova 12 questões, acertar no chute 7 sendo que cada uma tem 4 alternativas
dbinom(7,12,0.25)
dbinom(12,12,0.25)
