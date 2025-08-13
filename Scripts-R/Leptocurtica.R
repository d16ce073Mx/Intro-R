rm()       
ls()       
gc()
rm(list = ls())
try(dev.off(dev.list()["RStudioGD"]),silent=TRUE)
try(dev.off(),silent=TRUE)
#install.packages("quantmod")
#library(quantmod)
#install.packages("tseries")
#library(tseries)
#install.packages("fImport")
#install.packages("car")
#library(fImport)
#library(carData)
library(car)
library(WRS2)
library(RColorBrewer)


setwd("/Users/s3mx/Documents/Doctorado/Semestre VII/Actividades/MTOM/Resultados/")
DFR<-read.table("AUDIO_10MB_MTOM.csv",header=TRUE,sep=",")
attach(DFR)
DFR$MB_S
DFRSOAP <- subset(DFR, MTOM %in% c("SIMPLE"))
DFRMTOM <- subset(DFR, MTOM %in% c("MTOM"))

hist(DFR$Tiempo,prob = TRUE)

hist(DFR$Tiempo,
     main = "Time Response",
     ylab = "Frecuency",
     xlab = "Seconds",
     breaks = 48,
     xlim = c(12,60),
     prob = TRUE,
     las=1,
     col = brewer.pal(12, "Set3"),
     ylim=c(0,0.1),
     xaxp=c(12,60,48)
)

lines(density(DFR$Tiempo, adjust=2), col="black",lwd = 3)
lines(density(DFR$Tiempo, na.rm=T), col = "red",lwd = 3) 
curve(dnorm(x,mean=mean(DFR$Tiempo,na.rm=T),sd=sd(DFR$Tiempo,na.rm=T)), add=T, col="blue",lwd = 3)


abline(v = mean(DFR$Tiempo),
       col = "red",
       lwd = 3)

abline(v = mean(DFRMTOM$Tiempo),
       col = "blue",
       lwd = 3)

abline(v = mean(DFRSOAP$Tiempo),
       col = "black",
       lwd = 3)


lines(density(DFR$Tiempo, adjust=2), col="black",lwd = 3)
lines(density(DFR$Tiempo, na.rm=T), col = "red",lwd = 3) 
curve(dnorm(x,mean=mean(DFR$Tiempo,na.rm=T),sd=sd(DFR$Tiempo,na.rm=T)), add=T, col="blue",lwd = 3)


hist(DFR$MB_S,prob = TRUE)

hist(DFR$MB_S,
     main = "Throughput",
     ylab = "Frecuency",
     xlab = "MB per seconds",
     breaks = 14,
     xlim = c(6,20),
     prob = TRUE,
     las=1,
     col = brewer.pal(12, "Set3"),
     ylim=c(0,0.15),
     xaxp=c(6,20,14)
)

abline(v = mean(DFR$MB_S),
       col = "red",
       lwd = 3)

abline(v = mean(DFRMTOM$MB_S),
       col = "blue",
       lwd = 3)

abline(v = mean(DFRSOAP$MB_S),
       col = "black",
       lwd = 3)

lines(density(DFR$MB_S, adjust=2), col="black", lwd=3)
lines(density(DFR$MB_S, na.rm=T), col = "red", lwd=3) 
curve(dnorm(x,mean=mean(DFR$MB_S,na.rm=T),sd=sd(DFR$MB_S,na.rm=T)), add=T, col="blue", lwd=3)


hist(DFR$Exito, prob = TRUE)
hist(DFR$Exito,
     main = "Success Rate",
     ylab = "Frecuency",
     xlab = "Percentage",
     breaks = 8,
     xlim = c(24,32),
     prob = TRUE,
     las=1,
     col = brewer.pal(12, "Set3"),
     ylim=c(0,0.3),
     xaxp=c(24,32,8)
)

lines(density(DFR$Exito, adjust=2), col="black", lwd=3)
lines(density(DFR$Exito,na.rm=T), col = "red", lwd=3) 
curve(dnorm(x,mean=mean(DFR$Exito,na.rm=T),sd=sd(DFR$Exito,na.rm=T)), add=T, col="blue", lwd=3)
abline(v = mean(DFRSOAP$Exito),
       col = "red",
       lwd = 3)

abline(v = mean(DFRMTOM$Exito),
       col = "blue",
       lwd = 3)

abline(v =mean(DFR$Exito),
       col = "black",
       lwd = 3)

