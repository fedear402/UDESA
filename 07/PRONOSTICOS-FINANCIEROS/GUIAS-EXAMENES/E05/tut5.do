cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS/TUTORIALES/TUT5"
clear all
import excel using "P_Ejer_5_Excel_Datos_Ejer_2.xlsx", firstrow
tsset Date
gen d = _n
tsset d

gen lFTSE100 = log(FTSE100)
gen lSP500 = log(SP500)
gen lFX = log(FX)

dfuller lFTSE100, lags(1) regress
dfuller lSP500, lags(1) regress
dfuller lFX, lags(1) regress


dfuller d.lFTSE100, lags(1) regress
dfuller d.lSP500, lags(1) regress
dfuller d.lFX, lags(1) regress
