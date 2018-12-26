#média = 8, dp = 2; objeto < 6 kg
pnorm(6,8,2)
#média = 8, dp = 2; objeto > 6 kg
pnorm(6,8,2,lower.tail=F)
#ou
1 - pnorm(6,8,2)
#menos de 6 ou mais de 10 kg
pnorm(6,8,2) + pnorm(10,8,2,lower.tail=F)
#menos de 10 kg e mais de 8kg
pnorm(10,8,2) - pnorm(8,8,2)

#dados aleatórios normalmente distribuídos
x = rnorm(100)
x
#diagrama de normalidade
qqnorm(x)
qqline(x)
shapiro.test(x)
