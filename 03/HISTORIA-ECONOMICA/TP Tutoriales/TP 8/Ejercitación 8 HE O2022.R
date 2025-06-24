
###======================================================###
###             Humphries & Weisdorf (2019)              ###
###======================================================###

# Ahora vamos a intentar replicar la Figura 2 del paper de Humphries y Weisdorf (2019)

rm(list = ls())

# Vamos al directorio de trabajo donde esté la base de datos

getwd()

# Como el archivo esta en formato xlsx, necesitaremos instalar un nuevo paquete para poder abrirlo 
# install.packages("readxl")
#install.packages("readxl")
# Los paquete solo deben instalarse una vez
library(readxl) # Cargamos el paquete cada vez que iniciamos sesion
read_excel("HWFigura2.xlsx")
figdos <- read_excel("HWFigura2.xlsx")

names(figdos)

# Primero probamos con plot

plot(figdos$Decade, figdos$Annual_income,
     type= "l", lwd = 4, 
     bty='L', # Gráfico sin bordes
     col="black",
     xaxp  = c(1250, 1850, 12), # Etiquetas de los ejes
     ylim = c(25,225),
     yaxp  = c(25, 225, 8),
     xlab=" ", ylab="Indices (1260-1850=100)")

lines(figdos$Decade, figdos$Annual_daily_income,
      type= "o", pch=23, lwd = 1,
      bg="gray", col="black")

lines(figdos$Decade, figdos$GDP_pc,
      type= "o", pch=21, lwd = 1,
      bg="white", col="black")

legend(1250,240, # Coordenadas x y para ubicar leyenda
       c("Estimated annual income from annual work",
         "Estimated annual income from daily work", 
         "GDP per capita"), 
       bty = "n", # Leyenda sin bordes
       col=c("black", "grey", "black"), 
       pch=c(32,23,21), lwd=c(4,2,1),
       cex=0.8)

### Vamos a utilizar el paquete ggplot, que tiene muchísimas más opciones:

#install.packages('ggplot2')
library(ggplot2)

# Data preparation
# Necesitamos reordenar nuestra tabla para usar ggplot de manera más eficiente

library(tidyverse)

# el pipeline le aplica todo lo anterior

figdos_tidy <- figdos %>% 
  select(Decade, Annual_income, Annual_daily_income, GDP_pc) %>%
  gather(key = "variable", value = "value", -Decade)

head(figdos_tidy)

# Ahora sí, empezamos con ggplot

p <- ggplot(figdos_tidy,
            aes(Decade, value, 
                group=variable, colour=variable))
p # Todavía no indicamos qué tipo de geom usar!!

p <- p + geom_line(size=1.5) 
p
# Vean mas opciones en:
# https://github.com/rstudio/cheatsheets/blob/main/data-visualization-2.1.pdf

# También podemos editar los colores

p <- p +  scale_color_manual(
  values=c("black", "red", "blue"), 
  labels=c("Income from daily work",
           "Income from annual work",
           "GDP per capita"))
p

# Hay librerías con paletas de colores. Acá un ejemplo:

#install.packages("wesanderson")
library(wesanderson)
p <- p + scale_color_manual(
  values = wes_palette(4,type = "continuous"),
  labels=c("Income from daily work",
           "Income from annual work",
           "GDP per capita"))
p

# Editamos etiquetas, leyendas, etc
p <- p + labs(x = " ", y = "Indices (1260-1850=100)") +
  ggtitle("Estimated real incomes") + 
  theme(legend.title=element_blank(),
        legend.position="bottom")
p

# Con ggthemes pueden utilizar estilos predefinidos

# install.packages("ggthemes")
library(ggthemes)

p <- p + theme_minimal()
p 


