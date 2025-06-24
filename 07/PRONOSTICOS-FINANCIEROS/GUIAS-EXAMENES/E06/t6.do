cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS/TUTORIALES/TUT6"
clear all
import excel using "P_Ejer_6_Excel_Datos.xls", firstrow
gen t = _n
tsset t
qnorm FTSE100
sktest FTSE100
clear all
import excel using "P_Ejer_6_Excel_Datos.xls", sheet("Datos_Ejer_3") firstrow
gen t = _n
tsset t
reg E Año
predict a, resid

corrgram a
ac a
pac a
