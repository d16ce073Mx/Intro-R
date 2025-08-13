#Funciones
library(ggplot2)

outliersReplace <- function(data, lowLimit, highLimit){
  data[data < lowLimit] <- mean(data)
  data[data > highLimit] <- median(data)
  data     #devolvemos el dato       
}

mtcars2<-outliersReplace(mtcars$qsec,14.5,22)

data("mtcars")
mtcars2
summary(mtcars2)
quantile(mtcars2)
         
boxplot(mtcars2)
par(mfrow = c(1, 2))
boxplot(mtcars$qsec)
boxplot(mtcars2)
