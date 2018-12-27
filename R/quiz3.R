#Questão 2
dpois(12,10)

#Questão 4
jogos = matrix(c(41,34,18,7), nrow=2, byrow=T)
fix(jogos)
rownames(jogos) = c('Masculino','Feminino')
colnames(jogos) = c('Joga','Não joga')
fix(jogos)
chisq.test(jogos)
