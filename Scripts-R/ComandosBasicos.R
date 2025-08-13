# Comandos Básicos en R
# Tipos de Datos Básicos

num    <- 4.5               # Numérico
int    <- as.integer(4)     # Entero
txt    <- "Hola R"          # Texto (cadena)
logico <- TRUE              # Lógico (TRUE/FALSE)

#Asignación de Valoes
x <- 10        # Asigna el valor 10 a x
y = 5          # También válido

#Lectura de Archivos

read.csv("archivo.csv")            # Leer CSV
write.csv(df, "salida.csv")        # Guardar CSV


library(datasets)
data()
data(airquality)
head(mtcars)
airquality
summary(airquality$Temp)


