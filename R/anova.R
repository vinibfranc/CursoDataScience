tratamento = read.csv(file.choose(), se=';', header=T)
fix(tratamento)
boxplot(tratamento$Horas ~ tratamento$Remedio)

#Anova de 1 fator
an = aov(Horas ~ Remedio, data=tratamento)
summary(an)

tukey = TukeyHSD(an)
tukey
plot(tukey)

#Anova de 2 fatores
an2 = aov(Horas ~ Remedio * Sexo, data=tratamento)
summary(an2)
