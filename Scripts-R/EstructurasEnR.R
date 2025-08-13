#Tipos de estructuras en R
#Vector
v1 <- c(10,20,30,40)
v1
v2 <- c("rojo", "verde", "azul")
v2
v3 <- c(TRUE, FALSE, TRUE)
v3


#Matriz
m1 <- matrix(1:9, nrow = 3, ncol = 3)
m1 <- matrix(c(100, 105, 110,120, 125, 130,140, 145, 150),nrow = 3, byrow = TRUE) 
rownames(m1) <- c("Temporada 2020", "Temporada 2021", "Temporada 2022")
colnames(m1) <- c("Chivas", "Cruz Azul", "America")
m1

#Data Frame
df <- data.frame( equipo = c("America", "Cruz Azul", "Chivas"), 
                  goles = c(23, 31, 27),
                  campeon = c(TRUE, FALSE, FALSE))
print(df)
df

#Listas
lista <- list(
  nombre = "Chicharito", goles = c(10, 25, 30), 
  aprobado = TRUE,
  notas = data.frame(club = c("Santos", "Chiapas"), calificacion = c(12, 9)))

# Lista completa con todos los datos solicitados
jugadores <- list(
  Oribe_Peralta = list(
    nombre_completo = "Oribe Peralta Morones",
    edad = 40,
    fecha_nacimiento = "1984-01-12",
    ciudad_nacimiento = "Torreón, Coahuila",
    clubes = c("Santos Laguna", "América", "Guadalajara", "Monarcas", "León", "Chiapas"),
    goles = 168,
    hijos = 2,
    CURP = "PEMO850112HDFRRB08"
  ),
  Chicharito = list(
    nombre_completo = "Javier Hernández Balcázar",
    edad = 36,
    fecha_nacimiento = "1988-06-01",
    ciudad_nacimiento = "Guadalajara, Jalisco",
    clubes = c("Guadalajara", "Manchester United", "Real Madrid", "Bayer Leverkusen", "West Ham", "Sevilla", "LA Galaxy"),
    goles = 200,
    hijos = 2,
    CURP = "HEBJ880601HDFRLV09"
  ),
  Hirving_Lozano = list(
    nombre_completo = "Hirving Rodrigo Lozano Bahena",
    edad = 29,
    fecha_nacimiento = "1995-07-30",
    ciudad_nacimiento = "Ciudad de México",
    clubes = c("Pachuca", "PSV Eindhoven", "Napoli", "San Diego FC"),
    goles = 100,
    hijos = 2,
    CURP = "LOBH950730HDFZHR01"
  )
)

# Mostrar lista
print(jugadores)
  

#Fechas
fechitas <- c(cumpleaños = as.Date("August 11, 2025", format = "%B %d, %Y"),
              begin = as.Date("January 2, 1970", format = "%B %d, %Y"),
              other = as.Date("15JUN1998", format = "%d%b%Y"),
              other2 = as.Date('1998-09-15'),
              today = as.Date("2020/12/8")) 

weekdays(fechitas)
months(fechitas)
quarters(fechitas)

mean(fechitas)
mean(c(as.Date("2025/01/01"), as.Date("2025/08/11")))
range(fechitas)
as.Date("2025/08/11") + 10
as.Date("2025/08/11") -15



