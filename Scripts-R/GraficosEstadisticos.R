library(ggplot2)
data("mtcars")
mtcars
summary(mtcars)
plot(x = mtcars$mpg, y = mtcars$cyl)

#Cajas y Bigotes
boxplot(mtcars$mpg)
boxplot(mtcars$mpg~mtcars$cyl)

#Histograma
hist(mtcars$mpg)

#Gráfica de Barras
promedio_mpg <- tapply(mtcars$mpg, mtcars$cyl, mean)
tapply(mtcars$mpg, mtcars$cyl, mean)

barplot(promedio_mpg,
        main = "Promedio de MPG por cilindrada",
        xlab = "Cilindros",
        ylab = "Millas por galón (MPG)",
        col = "red")

#Gráfica de Dispersión
ggplot(mtcars, aes(x=qsec, y=mpg, size = cyl, color=factor(carb)))+
  geom_point(alpha=0.5, color="black") +
  scale_size(range = c(.1, 1), name="MT Cars") 

#Gráfica de Lineas
ggplot(mtcars, aes(x = qsec, y = mpg, color = wt)) +
  geom_line()

#Gráfica de Densidad
ggplot(mtcars, aes(x = qsec)) +
  geom_density(color = 4,    # Color
               lwd = 1,      # Ancho
               linetype = 1) # Tipo de Linea


#Gráfica de Violín
ggplot(mtcars, aes(x = cyl, y = hp)) +
  geom_violin()

ggplot(mtcars, aes(x = cyl, y = mpg)) +
  geom_violin(trim = FALSE,
              draw_quantiles = c(0.25, 0.5, 0.75))


#Facetas por Categoria
ggplot(mtcars, aes(x = cyl, y = hp, color = cyl)) +
  geom_point(show.legend = FALSE) +
  facet_wrap(~cyl)


##Mapas
# install.packages("ggplot2")
install.packages("sf")
library(ggplot2)
library(sf)

# Import a geojson or shapefile
map <- read_sf("https://raw.githubusercontent.com/R-CoderDotCom/data/main/ukraine.geojson")

ggplot(map) +
  geom_sf()


library(ggplot2)
library(maps)

world <- map_data("world")
ggplot(data = world, aes(x = long, y = lat, group = group)) + 
  geom_polygon() 

world <- map_data("world", "Mexico")
ggplot(data = world, aes(x = long, y = lat, group = group)) + 
  geom_polygon() 

ggplot(world, aes(map_id = region)) +
  geom_map(data = world, map = world,
           aes(x = long, y = lat, map_id = region))




#Configguración de una matriz de gráficos de 2x2 
par(mfrow = c(2, 2)) 

# Creación de gráficos
plot(1:10, main = "Plot 1")
plot(rnorm(100), main = "Plot 2")
hist(rpois(50, lambda = 5), main = "Plot 3")
boxplot(rnorm(20), main = "Plot 4")

#Regresar el plot
par(mfrow = c(1, 1))

