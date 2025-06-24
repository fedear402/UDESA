cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS/TUTORIALES"
clear all
set more off
import excel using "tut-stata.xlsx", firstrow

drop in 1
drop t
gen t = _n
tsset t
tsset AR105


gen AR105lag1 = AR105[_n-1]
gen AR109lag1 = AR109[_n-1]

reg AR105 AR105lag1, nocons
reg AR109 AR109lag1, nocons

ac AR105
pac AR105
