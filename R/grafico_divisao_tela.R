plot(trees)

#dividindo a tela
split.screen(figs=c(2,2))
screen(1)
plot(trees$Girth, trees$Volume)
screen(2)
plot(trees$Girth, trees$Height)
screen(3)
plot(trees$Height, trees$Volume)
screen(4)
hist(trees$Volume)

#voltando tela
close.screen(all=TRUE)