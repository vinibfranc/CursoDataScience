install.packages("TeachingSampling")
library(TeachingSampling)

# total da população, intervalo
amostra_sist = S.SY(150, 10)
amostra_sist

amostra_sist_iris = iris[amostra_sist,]
amostra_sist_iris
