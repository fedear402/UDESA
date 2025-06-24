cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL"
clear all
use tp_final2.dta

gen ln_edn = log(edn)
gen ln_cgpa2 = log(cgpa2)
gen ln_tran = log(tran)
gen ln_capx = log(capx)
gen ln_carc = log(carc)
gen ln_dgcu = log(dgcu)
gen ln_cepu = log(cepu)
gen ln_ceco = log(ceco)
gen ln_tgno = log(tgno)
gen ln_metr = log(metr)
gen ln_gban = log(gban)
gen ln_tgsu = log(tgsu)
gen ln_pamp = log(pamp)
gen ln_ypfd = log(ypfd)



************************************************************************************************************************
dfgls ln_edn
dfuller ln_edn, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_edn, notrend
dfuller ln_edn, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_edn
dfuller D.ln_edn, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls D.ln_edn, notrend
dfuller D.ln_edn, lags(`r(optlag)') regress
// Rechazamos H0; es I(1)

************************************************************************************************************************
dfgls ln_cgpa2
dfuller ln_cgpa2, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_cgpa2, notrend
dfuller ln_cgpa2, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_cgpa2
dfuller D.ln_cgpa2, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls D.ln_cgpa2, notrend
dfuller D.ln_cgpa2, lags(`r(optlag)') regress
// Rechazamos H0; es I(1)

************************************************************************************************************************
dfgls ln_tran
dfuller ln_tran, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_tran, notrend
dfuller ln_tran, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_tran
dfuller D.ln_tran, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls D.ln_tran, notrend
dfuller D.ln_tran, lags(`r(optlag)') regress
// Rechazamos H0; es I(1)

************************************************************************************************************************
dfgls ln_capx
dfuller ln_capx, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_capx, notrend
dfuller ln_capx, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_capx
dfuller D.ln_capx, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls ln_carc
dfuller ln_carc, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_carc, notrend
dfuller ln_carc, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_carc
dfuller D.ln_carc, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls ln_dgcu
dfuller ln_dgcu, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_dgcu, notrend
dfuller ln_dgcu, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_dgcu
dfuller D.ln_dgcu, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls D.ln_dgcu, notrend
dfuller D.ln_dgcu, lags(`r(optlag)') regress
// Rechazamos H0; es I(1)

************************************************************************************************************************
dfgls ln_cepu
dfuller ln_cepu, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_cepu, notrend
dfuller ln_cepu, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_cepu
dfuller D.ln_cepu, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls ln_ceco
dfuller ln_ceco, trend lags(`r(optlag)') regress // Trend es siginificativo
// No rechazamos H0. Hay raiz unitaria
dfgls D.ln_ceco
dfuller D.ln_ceco, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias y en niveles

************************************************************************************************************************
dfgls ln_tgno
dfuller ln_tgno, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_tgno, notrend
dfuller ln_tgno, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_tgno
dfuller D.ln_tgno, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls D.ln_tgno, notrend
dfuller D.ln_tgno, lags(`r(optlag)') regress
// Rechazamos H0; es I(1)

************************************************************************************************************************
dfgls ln_metr
dfuller ln_metr, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_metr, notrend
dfuller ln_metr, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_metr
dfuller D.ln_metr, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls D.ln_metr, notrend
dfuller D.ln_metr, lags(`r(optlag)') regress
// Rechazamos H0; es I(1)

************************************************************************************************************************
dfgls ln_gban
dfuller ln_gban, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_gban, notrend
dfuller ln_gban, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_gban
dfuller D.ln_gban, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls ln_tgsu
dfuller ln_tgsu, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_tgsu, notrend
dfuller ln_tgsu, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_tgsu
dfuller D.ln_tgsu, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls D.ln_tgsu, notrend
dfuller D.ln_tgsu, lags(`r(optlag)') regress 
// Rechazamos H0; es I(1)

************************************************************************************************************************
dfgls ln_pamp
dfuller ln_pamp, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_pamp, notrend
dfuller ln_pamp, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_pamp
dfuller D.ln_pamp, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
dfgls ln_ypfd
dfuller ln_ypfd, trend lags(`r(optlag)') regress // Trend es no siginificativo
dfgls ln_ypfd, notrend
dfuller ln_ypfd, lags(`r(optlag)') regress // No rechazamos H0. Hay raiz unitaria
dfgls D.ln_ypfd
dfuller D.ln_ypfd, trend lags(`r(optlag)') regress // Trend es siginificativo
// Rechazamos H0; es I(1) con tendencia deterministica en diferencias

************************************************************************************************************************
************************************************************************************************************************
************************************************************************************************************************



******************** ELECTRICIDAD
varsoc ln_edn ln_tran ln_cepu 
// usando el criterio HQ elegimos 2 rezagos en el modelo VAR

vecrank ln_edn ln_tran ln_cepu , trend(trend) max levela lags(2)
// trend(trend) porque ln_cepu tiene tendencia en diferencias por lo que esperamos tendencia cuadratica en el VEC, por eso no a restringimos
/*
TEST DE TRAZA
H0 : r<=R
Rechazamos H0 solo si el estadistico de pueba es mayor al valor critico
En este caso, no rechazamos para R = 1, no rechazamos que sea como mucho 1 el rango


TEST DE MAXIMO AUTOVALOR
H0 : r = R
Rechazamos H0 solo si el estadistico de pueba es mayor al valor critico
En este caso, no rechazamos para R = 1, entonces no rechazamos que el rango sea 1
*/

vec ln_edn ln_tran ln_cepu, trend(trend) rank(1) lags(2)


predict ce_elect, ce
tsline ce_elect, xlabel(, format(%dy) labsize(vsmall)) scheme(white_piyg)

test ([D_ln_tran]L1._ce1=0) ([D_ln_tran]LD.ln_edn=0)
// EDN causa en sentido de Granger a TRAN

irf create elect, step(10) set(elect, replace) 
irf table irf, impulse(ln_edn) response(ln_tran)  
irf graph irf, impulse(ln_edn) response(ln_tran) scheme(white_piyg)

	  
******************** GAS
varsoc ln_cgpa2 ln_dgcu  ln_metr
// usando el criterio HQ elegimos 2 rezagos en el modelo VAR

vecrank ln_cgpa2 ln_dgcu  ln_metr, max levela lags(2)
// trend(trend) porque ln_cepu tiene tendencia en diferencias por lo que esperamos tendencia cuadratica en el VEC, por eso no a restringimos
/*
TEST DE TRAZA
H0 : r<=R
Rechazamos H0 solo si el estadistico de pueba es mayor al valor critico
En este caso, no rechazamos para R = 2, no rechazamos que sea como mucho 2 el rango


TEST DE MAXIMO AUTOVALOR
H0 : r = R
Rechazamos H0 solo si el estadistico de pueba es mayor al valor critico
En este caso, no rechazamos para R = 2, entonces no rechazamos que el rango sea 2
*/
vec ln_cgpa2 ln_dgcu  ln_metr, rank(2) lags(2)

******************** PETROLEO
varsoc ln_carc ln_capx ln_ypfd
vecrank ln_carc ln_capx ln_ypfd, trend(trend) max levela lags(2)



************************************************************************************************************************
************************************************************************************************************************
************************************************************************************************************************
* Graficos
format fecha %dy
**************** Todas las series
twoway (line ln_edn fecha, lc(red)) ///
      (line ln_cgpa2 fecha, lc(blue)) ///
      (line ln_tran fecha, lc(green)) ///
      (line ln_capx fecha, lc(cyan)) ///
      (line ln_carc fecha, lc(orange)) ///
      (line ln_dgcu fecha, lc(purple)) ///
      (line ln_cepu fecha, lc(pink)) ///
      (line ln_ceco fecha, lc(gray)) ///
      (line ln_tgno fecha, lc(brown)) ///
      (line ln_metr fecha, lc(black)) ///
      (line ln_gban fecha, lc(ltblue)) ///
      (line ln_tgsu fecha, lc(yellow)) ///
      (line ln_pamp fecha, lc(magenta)) ///
      (line ln_ypfd fecha, lc(darkgray)), ///
      scheme(white_piyg) ///
      legend(order(1 "EDN" 2 "CGPA" 3 "TRAN" 4 "CAPX" ///
	  5 "CARC" 6 "DGCU" 7 "CEPU" 8 "CECO" 9 "TGNO" 10 "METR" ///
	  11 "GBAN" 12 "TGSU" 13 "PAMP" 14 "YPFD") ///
      position(3) ring(10) cols(1) ///
      lwid(thin) fcolor(white) lcolor(black)) ///
      graphregion(margin(0 0 0 0)) ///
	  xlabel(, format(%dy) labsize(vsmall))


* ELECTRICIDAD
twoway (line ln_edn fecha, lc(red)) ///
       (line ln_tran fecha, lc(green)) ///
       (line ln_cepu fecha, lc(pink)), ///
	   xlabel(, format(%dy) labsize(vtiny)) legend(off) ///
       title("Electricidad") ///
       name(electricidad, replace) scheme(white_piyg)

* GAS
twoway (line ln_tgno fecha, lc(brown)) ///
       (line ln_gban fecha, lc(ltblue)) ///
       (line ln_tgsu fecha, lc(yellow)) ///
       (line ln_pamp fecha, lc(magenta)) ///
	   (line ln_cgpa2 fecha, lc(blue)) ///
       (line ln_dgcu fecha, lc(purple)) ///
       (line ln_metr fecha, lc(black)), ///
	   xlabel(, format(%dy) labsize(vtiny)) legend(off) ///
       title("Gas") ///
       name(gas, replace) scheme(white_piyg)	   

* GAS - selección
twoway (line ln_cgpa2 fecha, lc(blue)) ///
      (line  ln_dgcu fecha, lc(purple)) ///
      (line  ln_metr fecha, lc(black)), ///
	  xlabel(, format(%dy) labsize(vtiny)) legend(off) ///
	  title("Gas - Selección") ///
	  name(gasa, replace) scheme(white_piyg)

* PETROLEO
twoway (line ln_carc fecha, lc(orange)) ///
       (line ln_capx fecha, lc(cyan)) ///
       (line ln_ypfd fecha, lc(darkgray)), ///
	   xlabel(, format(%dy) labsize(vtiny)) legend(off) ///
       title("Petróleo") ///
       name(petroleo, replace) scheme(white_piyg)

* Combine all graphs with titles into one image
graph combine electricidad gas petroleo gasa, cols(2)
