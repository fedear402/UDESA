* EJERCICIO 3

clear all
cd "/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06_Cuatrimestre/ECONOMETRIA/TPs/Datos_TP1"


import delimited paises21.csv

reg gdppc pstability
scatter gdppc pstability || lfit gdppc pstability

outreg2 using results.tex, replace
