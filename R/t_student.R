#média=75, amostra=9, dp=10, salario < 80 por hora?
pt(1.5, 8)
#média=75, amostra=9, dp=10, salario > 80 por hora?
pt(1.5, 8, lower.tail=F)
1 - pt(1.5, 8)
