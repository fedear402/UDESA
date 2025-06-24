###======================================================###
###                  Economic History I                  ###
###                                                      ###
###            Tutorial 7 - Introduction to R            ###
###                     May 2022                         ###
###======================================================###
# Tutors: Matías Gómez Seeber and Matías Harari.

# Esta tutorial se basa en el paper de Allen (2001)

# La entrega de esta tutorial debera tener un script con el código que 
# usaron que se pueda correr + el archivo pdf con sus respuestas.

# Empezamos con acciones simples, como operaciones aritméticas básicas

5 + 3
5 - 3
5 / 3
5 ^ 3
5 * (10 - 3)

# También podemos usar funciones predefinidas para hacer cáculos (y más!)

sqrt(4) # Raíz cuadrada
log(10) # Logaritmo natural
paste("Historia", "Económica") # Trabajar con strings


### OBJETOS ###

# R almacena información como objetos. Cada objeto puede ser nombrado como 
# nos guste pero no puede empezar con números ni tener espacios

# Para asignar valores a un objeto usaremos "<-" o "=" (poco recomendado)

suma <- 5 + 3
suma

# Cuidado! Si usamos el mismo nombre para otro objeto, lo va a sobreescribir

suma <- 5 - 3
suma

# Los objetos pueden ser letras, palabras, oraciones

materia <- "Historia Económica"
materia

### VECTORES ###

# Conjuntos de elementos ordenados
# Usamos la funcion c() para ingresar datos en un vector
# Usamos comas para separar los elementos de un vector

# A continuación se presentan los salarios nominales en gramos de plata 
# desde 1375 a 1825 de Londres en periodos de 50 años. 

salarios.londres <- c(3.45, 4.51, 3.85, 3.17, 4.61, 7.10, 9.65, 10.49, 11.53, 17.71)

sal.lon.first <- c(3.45, 4.51, 3.85, 3.17, 4.61)

sal.lon.second <- c(7.10, 9.65, 10.49, 11.53, 17.71)

sal.all <- c(sal.lon.first, sal.lon.second)

# Para acceder a distintos elementos de un vector, usamos corchetes []

salarios.londres[2] # ¿Cuál es el segundo elemento de salarios.londres?

salarios.londres[c(4, 2)] # Usamos un vector de posiciones para muchos elementos.

# Como todos los elementos del vector son números, podemos aplicarle operaciones 
# matemáticas (0.48 es el precio hoy del gramo de plata en dólares).

sal.dolares <- salarios.londres * 0.48 # multiplica cada elemento por 0.48
sal.dolares

# También podemos hacer operaciones entre vectores elemento a elemento.

vector1 <- c(1,2,3,4)
vector2 <- c(4,3,2,1)

vector1 + vector2
vector1 * vector2


### DATA FRAMES ###

base <- data.frame(vector1,vector2)
base

### FUNCIONES ###

# Toman uno o más objetos como input y devuelven otro objeto como output.
# Podemos crear nuestras propias funciones o usar algunas predefinidas

numero_siguiente <- function(x){x+1}
numero_siguiente(17)

promedio <- function(vector_cualquiera){
  suma <- sum(vector_cualquiera)
  cantidad <- length(vector_cualquiera)
  media <- suma/cantidad
  return(media)
}
promedio(c(1,2,3,1))

# Algunas funciones básicas de R son:
  
length(salarios.londres)

min(salarios.londres)

max(salarios.londres)

range(salarios.londres)

mean(salarios.londres)

# Otra forma de calcular la media:
sum(salarios.londres) / length(salarios.londres) # Lo que guardamos como función promedio
promedio(salarios.londres)

### IMPORTAR DATOS ###

# Muchas veces los datos que queremos usar no los construimos nosotros,
# sino que provienen de otra fuente y simplemente los usamos.
# Estos datos pueden por ejemplo estar almacenados en Excel. 

# Antes de abrir los datos, tenemos que fijar nuestro directorio:
  
setwd("C:/Users/Documents/UDESA/Historia_Económica/Tutorial 7/Bases Tut 7")
setwd("I:/.shortcut-targets-by-id/1CXDvmDAlPZ6H9T1Xf0iftS_K4leV4BrC/Tutoriales_2022/Tutorial 7/Bases Tut 7")
getwd()

# Una forma de establecer el directorio es ir a:
# Session -> Set working directory -> Choose directory
  
# Para importar datos en archivos csv usamos el comando:
  
salarios <- read.csv("DatosEjercitacion7.csv") 
?read.csv # Siempre pueden pedir documentación sobre las funciones

class(salarios)
# Algunas funciones importantes para trabajar con bases de datos son:

names(salarios) # Nombres de las columnas
nrow(salarios) # Número de filas
ncol(salarios) # Número de columnas
dim(salarios) # Dimensión de la base (filas y columnas)
summary(salarios) # Estadísticas descriptivas

# A veces hay problemas con los nombrees de las columnas. Podemos cambiarlos!
names(salarios)[4]
names(salarios)[4] <- "N_Italy"
names(salarios)

# El operador $ es una forma de acceder a variables en particular de nuestra base
# por ejemplo:
  
salarios$London
min(salarios$London)

### GUARDAR ARCHIVOS ###

# Para exportar archivos como csv:
  
write.csv(salarios, file = "salarios.csv")

#Para exportar archivos RDS:

save(salarios, file = "salarios.RDS")


?plot

# Un ejemplo simple...

# Creamos nuestras variables y graficamos
x <- 1:8
y1 <- sqrt(x)

plot(x, y1, type = "S")

plot(x, y1, 
     type = "b", pch = 19, 
     col = "red", 
     xlab = "x", ylab = "y")

# Para graficar múltiples variables usamos el comando lines

y2  <- y1/2 + 1
y2
plot(x, y1, 
     type = "b", pch = 19, 
     col = "red", 
     xlab = "x", ylab = "y")

lines(x, y2, 
      type = "b", pch = 1, 
      col = "blue")
# Podemos agregar una leyenda
legend("topleft", legend=c("Line 1", "Line 2"),
       col=c("red", "blue"), lty = 1:2, cex=0.8)

# Link para gráficos básicos: https://sites.harding.edu/fmccown/r/

