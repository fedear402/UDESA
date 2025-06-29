setwd("C:/Users/feder/OneDrive/Documents/Udesa/03 Cuatrimestre/Historia Economica/TP 7/Tutorial 7-20220503")
read.csv("DatosEjercitacion7.csv")
Datos <- read.csv("DatosEjercitacion7.csv")

########################## A: FILAS Y COLUMNAS #################################

Columnas <-  ncol(Datos) #7L 
Filas <- NROW(Datos) #10L

########################## B: PROMEDIOS ########################################

# Creamos un dataframe que sea el mismo que antes pero sin la columna de a�os 
# para as� cuando los sumamos, no suma los a�os y solo los datos de salarios.

Datos_sin_a�os <- Datos [, -1] 
dim(Datos_sin_a�os) #dimensiones de la matriz

# Creamos la funcion de promedio de todos los datos (porque leimos mal la consigna) 
# Esta bien que ya existe mean() pero para probar

Suma1 <- sum(Datos_sin_a�os, na.rm=T) #Creamos objetos necesarios para la funcion
Cantidad1 <- length(Datos_sin_a�os) * NROW(Datos_sin_a�os) #Creamos objetos necesarios para la funcion

promedio_general <- function(Datos_sin_a�os) {
  Suma1 <- sum(Datos_sin_a�os, na.rm=T) 
  Cantidad1 <- length(Datos_sin_a�os) * NROW(Datos_sin_a�os) #Esto tiene que usar el total de la matriz de datos relevantes 
  resultado <- Suma1/Cantidad1
  return(resultado)
}
promedio_general(Datos_sin_a�os)

# Creamos la funcion de promedio y la aplicamos a cada ciudad. 

Suma <- sum(Datos_sin_a�os, na.rm=T) #Creamos objetos necesarios para la funcion
Cantidad <- NROW(Datos_sin_a�os) #Creamos objetos necesarios para la funcion

promedio <- function(Datos_sin_a�os) {
  Suma <- sum(Datos_sin_a�os, na.rm=T) 
  Cantidad <- NROW(Datos_sin_a�os) #Esta va a usar solo la cantidad de datos en cada pa�s
  resultado <- Suma/Cantidad
  return(resultado)
}

#Promedio de cada ciudad

promedio_Londres <- promedio(Datos_sin_a�os$London) # 7.607
promedio_Amberes <- promedio(Datos_sin_a�os$Antwerp) # 5.666
promedio_Italia <- promedio(Datos_sin_a�os$N..Italy) # 2.611
promedio_Valencia <- promedio(Datos_sin_a�os$Valencia) # 5.365
promedio_Cracovia <- promedio(Datos_sin_a�os$Krakow) # 2.352
promedio_Viena <- promedio(Datos_sin_a�os$Vienna) # 2.863

########################## C: Minimo de  Krakow ################################

min(Datos$Krakow, na.rm=T) #1.92

########################## D: Maximo de Antwerp ################################

max(Datos$Antwerp, na.rm=T) #7.66

########################## E: Percentage increase from 1375 to 1825 - Lond #####

diferencia <- Datos$London [10] - Datos$London [1]

decimal <- diferencia / Datos$London [1]

Cambio_porcentual <- decimal * 100 #413.3%

########################## F: Grafico ##########################################

#Grafico tal como esta en la imagen

A�o <- Datos$Year #Vector de los datos para cada a�o
Salarios <- Datos$London #Vector de los datos para cada a�o de la ciudad 
Amberes <- Datos$Antwerp #Vector de los datos para cada a�o de la ciudad
Viena <- Datos$Vienna #Vector de los datos para cada a�o de la ciudad
Italia <- Datos$N..Italy #Vector de los datos para cada a�o de la ciudad
Cracovia <- Datos$Krakow #Vector de los datos para cada a�o de la ciudad
Valencia <- Datos$Valencia #Vector de los datos para cada a�o de la ciudad

#Funcion del grafico ...

plot(A�o, Salarios, col = "black", type = "o", ylim = NULL, lty = 1,) 
  lines(A�o, Amberes, pch = 1, col = "black", type = "b", lty = 2, ylim = NULL)
  lines(A�o, Valencia, pch = 1, col = "black", type = "b", lty = 3, ylim = NULL)

#Leyenda del grafico ...

legend("topleft", legend=c("Londres", "Amberes", "Valencia"),
       col=c("black"), lty = c(1, 2, 3), cex=1.5)







# Extra # Grafico pero con todas las variables y colorido #

A�o <- Datos$Year #Vector de los datos para cada a�o
Salarios <- Datos$London #Vector de los datos para cada a�o de la ciudad
Amberes <- Datos$Antwerp #Vector de los datos para cada a�o de la ciudad
Viena <- Datos$Vienna #Vector de los datos para cada a�o de la ciudad
Italia <- Datos$N..Italy #Vector de los datos para cada a�o de la ciudad
Cracovia <- Datos$Krakow #Vector de los datos para cada a�o de la ciudad
Valencia <- Datos$Valencia #Vector de los datos para cada a�o de la ciudad

#Funcion del grafico ...

plot(A�o, Salarios, col = "black", type = "o", ylim = NULL, lty = 1,)
  lines(A�o, Amberes, pch = 16, col = "blue", type = "b", lty = 1, ylim = NULL)
  lines(A�o, Italia, pch = 11, col = "yellow", type = "b", lty = 1, ylim = NULL)
  lines(A�o, Viena, pch = 3, col = "pink", type = "b", lty = 1, ylim = NULL)
  lines(A�o, Cracovia, pch = 18, col = "green", type = "b", lty = 1, ylim = NULL)
  lines(A�o, Valencia, pch = 1, col = "orange", type = "b", lty = 1, ylim = NULL)

#Leyenda del grafico ...
  
legend("topleft", legend=c("Londres", "Amberes", "Italia", "Viena", "Cracovia", "Valencia"),
       col=c("black", "blue", "yellow", "pink", "green", "Orange"), lty = 1, cex=1.5, 
       pch = c(1, 16, 11, 3, 18, 1))

