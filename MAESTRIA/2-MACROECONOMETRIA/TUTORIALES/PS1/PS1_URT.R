#------------------------------------------------------------------------------#
# Universidad de San Andrés
# Maestría en Economía
# Macroeconometría
# 2024, 3er trimestre 
# Profesor: Javier Garcia-Cicco
# Tutor: Franco Nuñez

# Material basado en código de Luis Libonatti (usado en versiones anteriores de 
# la materia)

# Detalles adicionales de los tests en el otro material de clase
#------------------------------------------------------------------------------#

# Clean
remove(list = ls(all.names = TRUE))
gc()

# This is amazing
# R can automatically recognize your directory
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Data ####
# We are going to "call" the previous code.
# It is very useful to split long codes/processes into small codes.
source("PS1_Data.R")

# Unit Root Testing ####

library(urca) # "vars" already loads this library

z <- log(pcom)

# URT: Augmented-Dickey-Fuller
adf <- ur.df(y = z, type = "trend", lags = 2, selectlags = "Fixed")
summary(adf)

# Other tests####
# URT: Elliott, Rothenberg & Stock
ers <- ur.ers(y = z, type = "DF-GLS", model = "const", lag.max = 4)
summary(ers)
#
## URT: Kwiatkowski-Phillips-Schmidt-Shin
kpss <- ur.kpss(y = z, type = "tau", lags = "short")
summary(kpss)
#
## URT: Phillips & Perron
pp <- ur.pp(z, type = "Z-tau", model = "trend", lags = "short")
summary(pp)
#
## URT: Schmidt & Phillips
sp <- ur.sp(y = z, type = "tau", pol.deg = 1, signif = 0.01)
summary(sp)
#
## URT: Zivot & Andrews
za <- ur.za(y = z, model = "both", lag = 2)
summary(za)