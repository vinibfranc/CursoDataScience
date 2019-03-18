getwd()

class(iris)


iristeste = iris
save(iristeste, file="iristeste.Rdata")
rm(iristeste)

load(file="iristeste.Rdata")
iristeste

x = c(12, 34, 16, 79)
y = c(1, 6, 9, 14)
plot(x, y)

quit()