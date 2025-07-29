setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
gc()
rm(list = ls())
library(ggplot2)
library(tidyverse)
library(readxl)
#------------------------------------------------------------------
#                 1)
#------------------------------------------------------------------
# Retrieve with R the following time series:
# • p_com, the commodity price index from the IMF.
# • er, the ARS/USD nominal bilateral exchange rate (Com. “A” 3500) from the Central Bank of Argentina.
# • pc, the following consumer price indexes (CPI) from datos.gob.ar
#   – pc_H , the historical CPI from INDEC.
#   – pc_SL, the CPI of the Province of San Luis.
#   – pc_BA, the CPI of the Autonomous City of Buenos Aires.
#   – pc_GBA, the CPI of the Greater Buenos Aires area from INDEC.
#   – pc_ARG, the national CPI from INDEC.
#################################  Commodity Price Index (IMF) ####
pcom.file <- paste(tempfile(), ".ashx", sep = "")
link <- "https://www.imf.org/-/media/Files/Research/CommodityPrices/Monthly/external-data.ashx"
download.file(link, pcom.file, mode = "wb")
pcom_col_names <- read_excel(pcom.file, skip = 0, n_max = 1) %>% names()
pcom_col_desc  <- read_excel(pcom.file, skip = 1, n_max = 1) %>% names()
pcom_col_type  <- read_excel(pcom.file, skip = 2, n_max = 1) %>% names()
pcom_col_freq  <- read_excel(pcom.file, skip = 3, n_max = 1) %>% names()
pcom_info <- data.frame(
  col_names = pcom_col_names,
  col_desc = pcom_col_desc,
  col_type = pcom_col_type,
  col_freq = pcom_col_freq
)
pcom <- read_excel(pcom.file, skip = 4, col_names = pcom_col_names)
pcom <- as.numeric(pcom$PALLFNF)
pcom <- pcom[complete.cases(pcom)] # delete NAs
pcom <- ts(pcom, start = c(2003, 01), frequency = 12) # time-series format
remove(pcom.file)
#############################  Nominal Exchange Rate (USD/ARS) ####
tcn.file <- paste(tempfile(), ".xls", sep = "")
download.file("http://www.bcra.gov.ar/Pdfs/PublicacionesEstadisticas/com3500.xls", tcn.file, mode = "wb")
er <- read_excel(tcn.file, skip = 1, sheet = 2)
er <- as.numeric(er$`Tipo de cambio nominal promedio mensual`)
er <- er[complete.cases(er)] # delete NAs
er <- ts(er, start = c(2002, 03), frequency = 12)
remove(tcn.file)
#######################################  Consumer Price Index  ####
ipc <- read.csv(url("https://apis.datos.gob.ar/series/api/series/?ids=178.1_NL_GENERAL_0_0_13&limit=5000&format=csv"))
ipc <- ts(ipc$nivel_general, start = c(1943, 01), frequency = 12)
infl <- diff(log(ipc))
infl_actual <- (ipc / stats::lag(ipc, -1) ) - 1
infl <- window(infl, end = c(2006, 12))

# CPI, Province of San Luis (2006-2012)
ipc.sl <- read.csv(url("https://apis.datos.gob.ar/series/api/series/?ids=197.1_NIVEL_GENERAL_2014_0_13&limit=5000&format=csv"))
ipc.sl <- ts(ipc.sl$nivel_general, start = c(2005, 10), frequency = 12)
infl.sl <- diff(log(ipc.sl))
infl.sl <- window(infl.sl, start = c(2007, 01), end = c(2012, 07))

# CPI, City of Buenos Aires (2012-2016)
ipc.ba <- read.csv(url("https://apis.datos.gob.ar/series/api/series/?ids=193.1_NIVEL_GENERAL_JULI_0_13&limit=5000&format=csv"))
ipc.ba <- ts(ipc.ba$nivel_general, start = c(2012, 07), frequency = 12)
infl.ba <- diff(log(ipc.ba))
infl.ba <- window(infl.ba, end = c(2016, 04))

# CPI, Greater Buenos Aires (INDEC)
ipc.gba <- read.csv(url("https://apis.datos.gob.ar/series/api/series/?ids=101.1_I2NG_2016_M_22&limit=5000&format=csv"))
ipc.gba <- ts(ipc.gba$ipc_2016_nivel_general, start = c(2016, 04), frequency = 12)
infl.gba <- diff(log(ipc.gba))
infl.gba<- window(infl.gba, end = c(2016, 12))

# CPI, National (INDEC)
ipc.arg <- read.csv(url("https://apis.datos.gob.ar/series/api/series/?ids=145.3_INGNACNAL_DICI_M_15&limit=5000&format=csv"))
ipc.arg <- ts(ipc.arg$ipc_ng_nacional, start = c(2016, 12), frequency = 12)
infl.arg <- diff(log(ipc.arg))

#------------------------------------------------------------------
#                 2)
#------------------------------------------------------------------
infl_total <- c(infl, infl.sl, infl.ba, infl.gba, infl.arg)
pc <- c(1, cumprod(exp(infl_total)))
pc <- ts(pc, start = c(1943, 01), frequency = 12)
pc <- 100 * (pc / mean(tail(pc, 12))) # Normalize to 100 at the end of the sample

remove(infl, infl.sl, infl.ba, infl.gba, infl.arg)

####################################### Final Series ####
pcom <- window(pcom, start = c(2004, 01), end = c(2019, 12))
er <- window(er, start = c(2004, 01), end = c(2019, 12))
pc <- window(pc, start = c(2004, 01), end = c(2019, 12))
save(pcom, er, pc, file = "0-PS1-ej1y2.RData")



