// Filtro HP - Pronosticos
// https://www.stata.com/manuals/tstsfilterhp.pdf
C:\Users\fergr\_UdeSA\P_2024\

import excel "P_HP_MM.xls", sheet("ARG_Datos") cellrange(B11:C81) clear firstrow
rename Año year
gen log_pbi=ln(GDP)
tsset year
tsfilter hp gdp_hp = log_pbi, smooth(100) trend(y_g)
tsline gdp_hp
tsline log_pbi y_g

// Rolling whatever
//ssc install asrol 
// Tienen que instalarlo por unica vez
import excel "P_HP_MM.xls", sheet("ARG_Datos") cellrange(B11:C81) clear firstrow
rename Año year
gen log_pbi=ln(GDP)
tsset year
asrol log_pbi, stat(mean) window(year -5 6)
