##############################################################3=======D#########
#libraries
# install.packages("ggplot2")
# install.packages("tidyverse")
# install.packages("readxl")
# install.packages("rstudioapi")
library(ggplot2)
library(tidyverse)
library(rstudioapi)
library(readxl)

# Seteamos el working directory al directory del archivo #
setwd(dirname(getActiveDocumentContext()$path))
getwd()

#################### Traemos el dataframe ######################################
read_excel("FigCinco.xlsx")
figcinco <- read_excel("FigCinco.xlsx")
figcinco1 <- figcinco [-1, ] #Arreglamos que tenga la primer fila con los titulos
names(figcinco1)

#################### Le cambiamos el nombre porque si no da error(?) ###########
names(figcinco1) [4] <- "tenyearmovingaverageannual"
names(figcinco1) [5] <- "tenyearmovingaverageannualfromdaily"

#################### Limpiamos #################################################
figcinco1_tidy <- figcinco1 %>% 
  select(Year, 
         Annualrealincome, 
         DayPaymentsx250days, 
         tenyearmovingaverageannual, 
         tenyearmovingaverageannualfromdaily) %>%
  gather(key = "variable", value = "value", -Year)

#################### PLOTEAMOS #################################################
p <- ggplot(figcinco1_tidy,
            aes(as.numeric(Year), as.numeric(value), 
                group=variable, colour=variable)) + 
            geom_line(size=0.25) + 
            geom_line(size=2)


# Nombres de los ejes
p <- p + labs(x="Years", y="Real Income")
p  

# Nombres de los ejes
p <- p + labs(x="Years", y="Real Income") +
  scale_color_manual(
    values=c("azure2", "azure2", "black", "grey"), 
    labels=c(" " , " " , "Annual payments", 
             "Day Payments x250days"),) 

p <- p + scale_x_continuous(breaks = seq(1250, 1850, by = 50)) +
  scale_y_continuous(breaks = seq(0.5, 5, by = 0.5)) +
  xlim(1250, 1850) + ylim(0.5, 5) +
  
  # Nombre del titulo
  ggtitle("Estimated annual real incomes") + 
  
  # Posicionar el titulo en el medio
  theme(plot.title = element_text(hjust = 0.5)) +
  
  # Poner las leyendas en el grafico
  theme( 
    legend.position = c(.95, .25),
    legend.justification = c("right", "top"),
    legend.margin = margin(6, 6, 6, 6),
  ) + 
  
  # Mas modificaciones
  theme(
    axis.text.x = element_text(colour='black'),
    axis.text.y = element_text(colour='black'),
    panel.background = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    panel.border = element_rect(colour='grey', fill=NA),
    strip.background = element_blank(),
    legend.justification = c(0, 1),
    legend.position = c(.70, .30),
    legend.background = element_blank(),
    legend.key = element_rect(colour = "white", fill = NA),
    legend.title = element_blank(),
    legend.text=element_text(size=12),
  )

# Solo funciona en una definicion aparte esto (?)
p <- p + scale_x_continuous(breaks = seq(1250, 1850, by = 50))
p