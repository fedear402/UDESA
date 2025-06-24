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
figcinco1_Annualrealincome <- figcinco1 %>% 
  select(Year, 
         Annualrealincome) %>%
  gather(key = "variable", value = "value", -Year)

figcinco1_DayPaymentsx250days <- figcinco1 %>% 
  select(Year, 
         DayPaymentsx250days) %>%
  gather(key = "variable", value = "value", -Year)

figcinco1_tidy_tenyearmovingaverageannualfromdaily <- figcinco1 %>% 
  select(Year,
         tenyearmovingaverageannualfromdaily) %>%
  gather(key = "variable", value = "value", -Year)

figcinco1_tidy_tenyearmovingaverageannual <- figcinco1 %>% 
  select(Year,
         tenyearmovingaverageannual) %>%
  gather(key = "variable", value = "value", -Year)


#################### PLOTEAMOS #################################################

PLOT <- ggplot() + 
  geom_line(data=figcinco1_Annualrealincome, 
            aes(x=as.numeric(Year), y=as.numeric(value), group=variable),
            size=0.2) + 
  
  geom_line(data=figcinco1_DayPaymentsx250days, 
            aes(x=as.numeric(Year), y=as.numeric(value), group=variable),
            size=0.2) +
  
  geom_line(data=figcinco1_tidy_tenyearmovingaverageannualfromdaily, 
          aes(x=as.numeric(Year), y=as.numeric(value), group=variable, colour="Day Payments x250days"),
          size=2) + 
  
  geom_line(data=figcinco1_tidy_tenyearmovingaverageannual, 
            aes(x=as.numeric(Year), y=as.numeric(value), group=variable, colour="Annual payments"),
            size=2) + 
  scale_color_manual(values = c("black","azure3"))
PLOT

## POSICION DE LEYENDA ##
PLOT <- PLOT + theme( 
  legend.position = c(.95, .25),
  legend.justification = c("right", "top"),
  legend.margin = margin(6, 6, 6, 6),
)
PLOT

## NOMBRES DE LOS EJES ##
PLOT <- PLOT + labs(x="Years", y="Real Income")
PLOT

## ESTILOS ##
PLOT <- PLOT + theme(
  axis.text.x = element_text(colour='black'),
  axis.text.y = element_text(colour='black'),
  panel.background = element_blank(),
  panel.grid.minor = element_blank(),
  panel.grid.major = element_blank(),
  panel.border = element_rect(colour='grey', fill=NA),
  strip.background = element_blank(),
  legend.justification = c(0, 1),
  legend.position = c(.80, .25),
  legend.background = element_blank(),
  legend.key = element_rect(colour = "white", fill = NA),
  legend.title = element_blank(),
  legend.text=element_text(size=12),
)
PLOT

## ESCALA DEL EJE Y ##
PLOT <- PLOT +   scale_y_continuous(breaks = seq(0.5, 5, by = 0.5)) + ylim(0.5, 5)
PLOT

## TITULO ##
PLOT <- PLOT + ggtitle("Estimated annual real incomes") + 
  theme(plot.title = element_text(hjust = 0.5))
PLOT

## ESCALA DEL EJE X ##
PLOT <- PLOT + scale_x_continuous(breaks = seq(1250, 1850, by = 50))
PLOT

PLOT

