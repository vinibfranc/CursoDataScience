#com outliers
boxplot(iris$Sepal.Width)
#sem outliers
boxplot(iris$Sepal.Width, outline=F)
#ver números do boxplot
boxplot.stats(iris$Sepal.Width)$out

#pacote outliers
install.packages('outliers')
library(outliers)
#outliers superior
outlier(iris$Sepal.Width)
#outliers inferior
outlier(iris$Sepal.Width, opposite=T)
