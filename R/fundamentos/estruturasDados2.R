# vetores
x <- c(1, 2, 3, 4, 5, 6)
x
x[1]
x[1] <- 10
x[1]

# outros tipos de vetores
y <- c("a", "b", "c", "d")
y

z = c(1L, 2L, 3L)
z

# matrizes
VADeaths
colnames(VADeaths)
rownames(VADeaths)

# só coluna 1
VADeaths[,1]

# só linha 1
VADeaths[1,]

# linhas de 1 até 3
VADeaths[1:3,]

# dataframes
longley
longley[,1:3]
longley$Unemployed
longley['Unemployed']

# listas
ability.cov
ability.cov$cov
ability.cov[1]
class(ability.cov$cov)
class(ability.cov$center)
ability.cov$cov[, 1:3]

# fatores
state.region
