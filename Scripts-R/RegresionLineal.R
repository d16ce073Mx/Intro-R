library(ggplot2)
data(mtcars)
mtcars
p <- ggplot(mtcars, aes(wt, hp)) +
  geom_point()
p


#Regresion Suavizada
p + geom_smooth()


#Regresion Lineal
p + geom_smooth(method = "lm")


