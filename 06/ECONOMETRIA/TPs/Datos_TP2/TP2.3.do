* EJERCICIO 2

clear all
cd "/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06_Cuatrimestre/ECONOMETRIA/TPs/Datos_TP2"

* merge de las bases
use caract_univs.dta
sort id
merge 1:1 id using mov_univs.dta
tabulate _merge
drop if _merge != 3
drop _merge

* resumenes
local vars "Ing_eg Ing_hog gastos_educ sal_pro prom_prueba dot_univ"

foreach var of local vars {
    qui su `var'
    local obs = r(N)
    local mean = r(mean)
    local sd = sqrt(r(Var))
    local min = r(min)
    local max = r(max)

    display "Variable: `var'"
    display "Number of Observations: `obs'"
    display "Mean: `mean'"
    display "Standard Deviation: `sd'"
    display "Minimum: `min'"
    display "Maximum: `max'"
}

* regresion
reg Ing_eg Ing_hog gastos_educ sal_pro prom_prueba dot_univ
outreg2 using salida3.tex, replace

* log lin
gen ln_Ing_eg = ln(Ing_eg)
reg ln_Ing_eg Ing_hog gastos_educ sal_pro prom_prueba dot_univ
outreg2 using salidalog.tex, replace

* movilidad
reg movilidad gastos_educ sal_pro prom_prueba dot_univ
outreg2 using salidamov.tex, replace
