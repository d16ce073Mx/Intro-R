#Funciones Estadísticas Básicas
library(datasets)
data(airquality) # Cargar dataset
airquality 
summary(airquality$Temp)  
#Resumen de la columna Temp del Dataset airquality

data("airquality")   

# Media de Ozone (omitimos NA)
mean(airquality$Ozone, na.rm = TRUE)
media_ozono <- mean(airquality$Ozone, na.rm = TRUE)

# Mediana de Ozone
median(airquality$Ozone, na.rm = TRUE)
mediana_ozono <- median(airquality$Ozone, na.rm = TRUE)

# Desviación estándar de Ozone
sd(airquality$Ozone, na.rm = TRUE)
sd_ozono <- sd(airquality$Ozone, na.rm = TRUE)

# Varianza de Ozone
var(airquality$Ozone, na.rm = TRUE)
var_ozono <- var(airquality$Ozone, na.rm = TRUE)

# Máximo y mínimo de Ozone
max(airquality$Ozone, na.rm = TRUE)
min(airquality$Ozone, na.rm = TRUE)
max_ozono <- max(airquality$Ozone, na.rm = TRUE)
min_ozono <- min(airquality$Ozone, na.rm = TRUE)

# Rango de Ozone
diff(range(airquality$Ozone, na.rm = TRUE))
rango_ozono <- diff(range(airquality$Ozone, na.rm = TRUE))

# Resumen completo de la columna Ozone
summary(airquality$Ozone)
resumen_ozono <- summary(airquality$Ozone)

# Mostrar resultados
print(paste("Media:", media_ozono))
print(paste("Mediana:", mediana_ozono))
print(paste("Desviación estándar:", sd_ozono))
print(paste("Varianza:", var_ozono))
print(paste("Máximo:", max_ozono))
print(paste("Mínimo:", min_ozono))
print(paste("Rango:", rango_ozono))
print("Resumen completo:")
print(resumen_ozono)

