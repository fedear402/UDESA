clear all
import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("Demanda") firstrow clear
tsset fecha
format fecha %td

save tp_final.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("EDN.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
drop D

ipolate edn fecha, gen(edn_)
ipolate tran fecha, gen(tran_)

drop edn
rename edn_ edn

drop tran
rename tran_ tran

keep in 1/2742

merge 1:1 fecha using tp_final.dta

drop _merge

keep in 1/2707



save tp_final.dta, replace

use tp_final.dta, clear
* Guardo datos de mayo en otro dta
keep if _n >= 2677
save mayo.dta, replace


* aca dejo solo hasta abril 2024
use tp_final.dta, clear
keep if _n < 2677
save tp_final.dta, replace


*tsline edn, name(edn)
*tsline dem_mw, name(demanda)

gen Lunes = (dow(fecha) == 1)
gen Martes = (dow(fecha) == 2)
gen Miercoles = (dow(fecha) == 3)
gen Jueves = (dow(fecha) == 4)
gen Viernes = (dow(fecha) == 5)
gen Sabado = (dow(fecha) == 6)
gen Domingo = (dow(fecha) == 0)

regress dem_mw Lunes Martes Miercoles Jueves Viernes Sabado
predict dem_mw_d , resid


foreach num of numlist 1/12 {
    local mes = "`num'"
    gen mes`mes' = month(fecha) == `num'
}

regress dem_mw_d mes2-mes12
predict dem_mw_dm , resid

tsline dem_mw_dm

*tsline dem_mw_dm

gen dia = ""
replace dia = "Lunes" if Lunes == 1
replace dia = "Martes" if Martes == 1
replace dia = "Miercoles" if Miercoles == 1
replace dia = "Jueves" if Jueves == 1
replace dia = "Viernes" if Viernes == 1
replace dia = "Sabado" if Sabado == 1
replace dia = "Domingo" if Domingo == 1

*graph box dem_mw, over(dia, sort(1)) name(semanabox, replace)


gen mes = ""
replace mes = "Ene" if mes1 == 1
replace mes = "Feb" if mes2 == 1
replace mes = "Mar" if mes3 == 1
replace mes = "Abr" if mes4 == 1
replace mes = "May" if mes5 == 1
replace mes = "Jun" if mes6 == 1
replace mes = "Jul" if mes7 == 1
replace mes = "Ago" if mes8 == 1
replace mes = "Sep" if mes9 == 1
replace mes = "Oct" if mes10 == 1
replace mes = "Nov" if mes11 == 1
replace mes = "Dic" if mes12 == 1

*graph box dem_mw, over(mes, sort(1)) name(mesbox, replace)



dfgls dem_mw_dm
dfuller dem_mw_dm, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; no hay raiz unitaria. Integrada de orden I(0)


dfgls edn
dfuller edn, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls edn, notrend
dfuller edn, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.edn
dfuller D.edn, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1)


var D.edn dem_mw_dm
vargranger

dfgls tran
dfuller tran, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls tran, notrend
dfuller tran, lags(`r(optlag)') regress
dfgls D.tran
dfuller D.tran, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1)

varsoc edn tran
// usando el criterio HQ elegimos 4 rezagos en el modelo VAR

vecrank edn tran , trend(rtrend) max levela lags(4) 

vec edn tran, trend(rtrend) rank(1) lags(4) 
