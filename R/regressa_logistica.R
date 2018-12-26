#eleicão devido a investimento
eleicao = read.csv(file.choose(), sep=";", header=T)
fix(eleicao)
plot(eleicao$DESPESAS, eleicao$SITUACAO)

summary(eleicao)

#correlação entre investimento e eleição
cor(eleicao$DESPESAS, eleicao$SITUACAO)

modelo = glm(SITUACAO ~ DESPESAS, data=eleicao, family="binomial")
summary(modelo)

plot(eleicao$DESPESAS, eleicao$SITUACAO, col='red', pch=20)
points(eleicao$DESPESAS, modelo$fitted.values, pch=4)

#prever com base em novos candidatos
prever_eleicao = read.csv(file.choose(), sep=";", header=T)
fix(prever_eleicao)

prever_eleicao$RESULT = predict(modelo, newdata=prever_eleicao, type="response")
prever_eleicao$RESULT
fix(prever_eleicao)
