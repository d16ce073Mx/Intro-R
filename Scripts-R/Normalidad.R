#Prueba de Normalidad
datos<- c(23,34,45,65,54,32,23,43,54,67,87,65,45,34,54)
shapiro.test(datos)

# p > 0.05: No rechazar H0 (normal).
# p < 0.05: Rechazar H0 (no normal)

hist(datos)
plot(datos)


# Homocedasticidad con el dataset mtcars 
library(car)
data(mtcars)
mtcars
# Crear el modelo lineal
modelo <- lm(mpg~hp, data = mtcars)
# Prueba de Homocedasticidad con Breusch-Pagan basado en Chi-Cuadrado
ncvTest(modelo)
# p > 0.05: No rechazar H0 (normal).
# p < 0.05: Rechazar H0 (no normal)

library(ggplot2)
ggplot(data = mtcars, aes(x = fitted(modelo), y = resid(modelo))) +
  geom_point() 
