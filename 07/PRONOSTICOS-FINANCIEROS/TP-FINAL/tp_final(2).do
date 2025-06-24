cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL"
clear all
use tp_final.dta

gen Lunes = (dow(fecha) == 1)
gen Martes = (dow(fecha) == 2)
gen Miercoles = (dow(fecha) == 3)
gen Jueves = (dow(fecha) == 4)
gen Viernes = (dow(fecha) == 5)
gen Sabado = (dow(fecha) == 6)
gen Domingo = (dow(fecha) == 0)

gen dia = ""
replace dia = "Lunes" if Lunes == 1
replace dia = "Martes" if Martes == 1
replace dia = "Miercoles" if Miercoles == 1
replace dia = "Jueves" if Jueves == 1
replace dia = "Viernes" if Viernes == 1
replace dia = "Sabado" if Sabado == 1
replace dia = "Domingo" if Domingo == 1

foreach num of numlist 1/12 {
    local mes = "`num'"
    gen mes`mes' = month(fecha) == `num'
}

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

gen ln_edn = log(edn)
gen ln_cgpa2 = log(cgpa2)
gen ln_tran = log(tran)
gen ln_txar = log(txar)
gen ln_capx = log(capx)
gen ln_carc = log(carc)
gen ln_dome = log(dome)
gen ln_dgcu = log(dgcu)
gen ln_cepu = log(cepu)
gen ln_ceco = log(ceco)
gen ln_tgno = log(tgno)
gen ln_metr = log(metr)
gen ln_gban = log(gban)
gen ln_alua = log(alua)

/*
************************************************************************************************************************
tsline base2ALUAR
gen l_dem_aluar = ln(base2ALUAR)
tsline l_dem_aluar
dfgls l_dem_aluar
dfuller l_dem_aluar, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls l_dem_aluar, notrend
dfuller l_dem_aluar, lags(`r(optlag)') regress
// Rechazamos H0; no hay raiz unitaria. Integrada de orden I(0)
graph box l_dem_aluar, over(dia, sort(1)) name(semanabox, replace)


************************************************************************************************************************
dfgls edn
dfuller edn, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls edn, notrend
dfuller edn, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.edn
dfuller D.edn, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls cgpa2
dfuller cgpa2, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls cgpa2, notrend
dfuller cgpa2, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.cgpa2
dfuller D.cgpa2, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls tran
dfuller tran, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls tran, notrend
dfuller tran, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.tran
dfuller D.tran, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls txar
dfuller txar, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls txar, notrend
dfuller txar, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.txar
dfuller D.txar, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls capx
dfuller capx, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls capx, notrend
dfuller capx, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.capx
dfuller D.capx, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls carc
dfuller carc, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls carc, notrend
dfuller carc, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.carc
dfuller D.carc, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls dome
dfuller dome, trend lags(`r(optlag)') regress // Trend es siginificativo
// No rechazamos H0. Hay raiz unitaria
dfgls D.dome
dfuller D.dome, trend lags(`r(optlag)') regress // Trend es no siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en niveles

************************************************************************************************************************
dfgls dgcu
dfuller dgcu, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls dgcu, notrend
dfuller dgcu, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.dgcu
dfuller D.dgcu, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls cepu
dfuller cepu, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls cepu, notrend
dfuller cepu, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.cepu
dfuller D.cepu, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls ceco
dfuller ceco, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ceco, notrend
dfuller ceco, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ceco
dfuller D.ceco, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls tgno
dfuller tgno, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls tgno, notrend
dfuller tgno, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.tgno
dfuller D.tgno, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls metr
dfuller metr, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls metr, notrend
dfuller metr, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.metr
dfuller D.metr, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls gban
dfuller gban, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls gban, notrend
dfuller gban, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.gban
dfuller D.gban, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls alua
dfuller alua, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls alua, notrend
dfuller alua, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.alua
dfuller D.alua, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias
*/
************************************************************************************************************************

************************************************************************************************************************

************************************************************************************************************************

twoway (line ln_edn fecha, lc(red)) ///
      (line ln_cgpa2 fecha, lc(blue)) ///
      (line ln_tran fecha, lc(green)) ///
      (line ln_txar fecha, lc(magenta)) ///
      (line ln_capx fecha, lc(cyan)) ///
      (line ln_dome fecha, lc(yellow)) ///
      (line ln_dgcu fecha, lc(orange)) ///
      (line ln_cepu fecha, lc(purple)) ///
      (line ln_ceco fecha, lc(pink)) ///
      (line ln_tgno fecha, lc(gray)) ///
      (line ln_metr fecha, lc(brown)) ///
      (line ln_gban fecha, lc(black)) ///
      (line ln_alua fecha, lc(lightblue)), ///
	  scheme(white_piyg) ///
      legend(order(1 "EDN" 2 "CGPA" 3 "TRAN" 4 "TXAR" 5 "CAPX" 6 "DOME" 7 "DGCU" 8 "CEPU" 9 "CECO" 10 "TGNO" 11 "METR" 12 "GBAN" 13 "ALUA") ///
      position(3) ring(10) cols(1) ///
      lwid(thin) fcolor(white) lcolor(black)) ///
      graphregion(margin(0 0 0 0)) ///
	  xlabel(, format(%td) labsize(vsmall))
