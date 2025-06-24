cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECONOMETRIA/TPs/TP5"
clear all
set more off
* descargo todas las series y las convierto de ipc a tasa de inflacion
********* IPC Nivel General, Cobertura Nacional, disponible desde Dic-2016
import excel using "apendice4_.xls", sheet("4.1.1 IPC NG") cellrange("A42:B123") clear
rename A fecha
rename B data_ipc_ng_nacional_201612

describe fecha
gen dat = fecha - 21916 // esto es para convertir del formato de excel que cuenta desde 1900 
format dat %td // al formato de stata que cuenta desde 1960
gen dates_m = ym(year(dat), month(dat)) // aca las hace mensuales
format dates_m %tm
drop fecha
drop dat
sort dates_m
// esto convierte el ipc en tasa de inflacion
gen tasa_ipc_ng_nacional_201612 = .
forvalues i = 2/`=_N' {
    replace tasa_ipc_ng_nacional_201612 = (data_ipc_ng_nacional_201612 - data_ipc_ng_nacional_201612[`i'-1]) / data_ipc_ng_nacional_201612[`i'-1] if data_ipc_ng_nacional_201612[`i'-1] != 0 in `i'
}
drop data_ipc_ng_nacional_201612

save "ipc_ng_nacional_201612.dta", replace

******** IPC Nivel General, GBA, disponible desde Abr-2016
import excel using "apendice4_.xls", sheet("4.2.1") cellrange("A42:B131") clear
rename A fecha
rename B data_ipc_ng_gba_201604

describe fecha
gen dat = fecha - 21916
format dat %td
gen dates_m = ym(year(dat), month(dat))
format dates_m %tm
drop fecha
drop dat
sort dates_m


gen tasa_ipc_ng_gba_201604 = .
forvalues i = 2/`=_N' {
    replace tasa_ipc_ng_gba_201604 = (data_ipc_ng_gba_201604 - data_ipc_ng_gba_201604[`i'-1]) / data_ipc_ng_gba_201604[`i'-1] if data_ipc_ng_gba_201604[`i'-1] != 0 in `i'
}
drop data_ipc_ng_gba_201604

save "ipc_ng_gba_201604.dta", replace

********* IPC Nivel General, GBA, disponible desde Jun-1989 hasta Abr-08
import excel using "apendice4_.xls", sheet("4.18") cellrange("A38:B264") clear
rename A fecha
rename B data_ipc_ng_gba_198905
format fecha %tm

describe fecha
gen dat = fecha - 21916
format dat %td
gen dates_m = ym(year(dat), month(dat))
format dates_m %tm
drop fecha
drop dat
sort dates_m



gen tasa_ipc_ng_gba_198905 = .
forvalues i = 2/`=_N' {
    replace tasa_ipc_ng_gba_198905 = (data_ipc_ng_gba_198905 - data_ipc_ng_gba_198905[`i'-1]) / data_ipc_ng_gba_198905[`i'-1] if data_ipc_ng_gba_198905[`i'-1] != 0 in `i'
}
drop data_ipc_ng_gba_198905

save "ipc_ng_gba_198905.dta", replace

********** IPC Nivel General, CABA, disponible desde Jul-2012
import excel using "apendice4_.xls", sheet("4.23") cellrange("A8:B123") clear
rename A fecha
rename B data_ipc_ng_caba_201206
format fecha %tm

describe fecha
gen dat = fecha - 21916
format dat %td
gen dates_m = ym(year(dat), month(dat))
format dates_m %tm
drop fecha
drop dat
sort dates_m


gen tasa_ipc_ng_caba_201206 = .
forvalues i = 2/`=_N' {
    replace tasa_ipc_ng_caba_201206 = (data_ipc_ng_caba_201206 - data_ipc_ng_caba_201206[`i'-1]) / data_ipc_ng_caba_201206[`i'-1] if data_ipc_ng_caba_201206[`i'-1] != 0 in `i'
}
drop data_ipc_ng_caba_201206

save "ipc_ng_caba_201206.dta", replace

************ IPC Nivel General, Córdoba, disponible desde Jul-2013
import excel using "apendice4_.xls", sheet("4.24") cellrange("A8:B129") clear
rename A fecha
rename B data_ipc_ng_cba_201306
format fecha %tm

describe fecha
gen dat = fecha - 21916
format dat %td
gen dates_m = ym(year(dat), month(dat))
format dates_m %tm
drop fecha
drop dat
sort dates_m

gen tasa_ipc_ng_cba_201306 = .
forvalues i = 2/`=_N' {
    replace tasa_ipc_ng_cba_201306 = (data_ipc_ng_cba_201306 - data_ipc_ng_cba_201306[`i'-1]) / data_ipc_ng_cba_201306[`i'-1] if data_ipc_ng_cba_201306[`i'-1] != 0 in `i'
}
drop data_ipc_ng_cba_201306

save "ipc_ng_cba_201306.dta", replace

************ IPC Nivel General, San Luis, disponible desde Oct-2005
import excel using "apendice4_.xls", sheet("4.27") cellrange("A8:B222") clear
rename A fecha
rename B data_ipc_ng_sl_200510
format fecha %tm

describe fecha
gen dat = fecha - 21916
format dat %td
gen dates_m = ym(year(dat), month(dat))
format dates_m %tm
drop fecha
drop dat
sort dates_m

gen tasa_ipc_ng_sl_200510 = .
forvalues i = 2/`=_N' {
    replace tasa_ipc_ng_sl_200510 = (data_ipc_ng_sl_200510 - data_ipc_ng_sl_200510[`i'-1]) / data_ipc_ng_sl_200510[`i'-1] if data_ipc_ng_sl_200510[`i'-1] != 0 in `i'
}
drop data_ipc_ng_sl_200510

save "ipc_ng_sl_200510.dta", replace


* Junto todas una al lado de la otra

use "ipc_ng_gba_198905.dta", clear
merge 1:m dates_m using "ipc_ng_gba_201604.dta", nogen
* master
save "ipc_ng_gba_198905.dta", replace

use "ipc_ng_gba_198905.dta", clear
merge 1:m dates_m using "ipc_ng_caba_201206.dta", nogen
save "ipc_ng_gba_198905.dta", replace

use "ipc_ng_gba_198905.dta", clear
merge 1:m dates_m using "ipc_ng_cba_201306.dta", nogen
save "ipc_ng_gba_198905.dta", replace

use "ipc_ng_gba_198905.dta", clear
merge 1:m dates_m using "ipc_ng_sl_200510.dta", nogen
save "ipc_ng_gba_198905.dta", replace

use "ipc_ng_gba_198905.dta", clear
merge 1:m dates_m using "ipc_ng_nacional_201612.dta", nogen
save "ipc_ng_gba_198905.dta", replace


************************************************************
* a *
************************************************************

* serie final con todo junto como especifica l aconsigna
gen inflacion = .
local start_date = ym(1989, 6)
local end_date = ym(2006, 12)
forvalues i =`start_date' /`end_date'  {
    replace inflacion = tasa_ipc_ng_gba_198905 if dates_m == `i'
}

local start_date = ym(2007, 1)
local end_date = ym(2016, 12)
gen avg = (cond(missing(tasa_ipc_ng_sl_200510), 0, tasa_ipc_ng_sl_200510) + ///
cond(missing(tasa_ipc_ng_cba_201306), 0, tasa_ipc_ng_cba_201306) + ///
cond(missing(tasa_ipc_ng_caba_201206), 0, tasa_ipc_ng_caba_201206) + ///
cond(missing(tasa_ipc_ng_gba_201604), 0, tasa_ipc_ng_gba_201604)) / /// 
(cond(missing(tasa_ipc_ng_sl_200510), 0, 1) + ///
cond(missing(tasa_ipc_ng_cba_201306), 0, 1) + ///
cond(missing(tasa_ipc_ng_caba_201206), 0, 1) + ///
cond(missing(tasa_ipc_ng_gba_201604), 0, 1))
forvalues i = `start_date' /`end_date'  {
    replace inflacion = avg if dates_m == `i'
}
drop avg

local start_date = ym(2017, 1)
local end_date = ym(2023, 9)
forvalues i = `start_date' /`end_date'  {
    replace inflacion = tasa_ipc_ng_nacional_201612 if dates_m == `i'
}

* agarro muestra desde 2004
gen inflacion_muestra = inflacion
replace inflacion_muestra = . if dates_m < ym(2004,1)
gen fechas_muestra = dates_m
replace fechas_muestra = . if dates_m < ym(2004,1)

* grafico
format fechas_muestra %tm
tsset fechas_muestra
*line inflacion_muestra fechas_muestra


************************************************************
* b *
************************************************************
gen t=_n
replace t = . if dates_m < ym(2004,1)

gen t2=t^2
replace t2 = . if dates_m < ym(2004,1)

gen t3=t^3
replace t2 = . if dates_m < ym(2004,1)

* Tendencia lineal
reg inflacion_muestra t
predict i_lin // almacena el modelo (la tendencia)
predict i_resid_lin, resid // los residuos son la serie sin tendencia
outreg2 using "ic.doc", replace word
*line inflacion_muestra i_lin fechas_muestra, xtitle(fechas_muestra) title("Tendencia lineal") name(inflacion_lin, replace) 

* Tendencia Cuadratica
reg inflacion_muestra t t2
predict i_cuad 
predict i_resid_cuad, resid 
*line inflacion_muestra i_cuad fechas_muestra, xtitle(fechas_muestra) title("Tendencia Cuadratica") name(inflacion_quad, replace)

* Tendencia Cubica
reg inflacion_muestra t t3
predict i_cub
predict i_resid_cub, resid 
*line inflacion_muestra i_cub fechas_muestra, xtitle(fechas_muestra) title("Tendencia Cubica") name(inflacion_cub, replace)

** IC
reg inflacion_muestra t
asdoc estat ic, replace
reg inflacion_muestra t t2
asdoc estat ic, append
reg inflacion_muestra t t3
asdoc estat ic, append


************************************************************
* c *
************************************************************
gen meses=month(dofm(fechas_muestra))
tab meses, gen(dm)
reg i_resid_cub dm1-dm11 // modelo de estacionalidad
predict i_ciclo_cub, resid // variable ahora sin estacionalidad

* Variable desestacionalizada con tendencia
predict i_estacionalidad_cub 
gen i_des_cub = inflacion_muestra - i_estacionalidad_cub // le resta a los valores de inflacion el componente estacionario predicho por el modelo
* line inflacion_muestra i_des_cub fechas_muestra, title("Inflacion desestacionalizada con tendencia")
	
* Otros ciclos
reg i_resid_lin b12.meses
predict i_ciclo_lin, resid

reg i_resid_cuad b12.meses
predict i_ciclo_cuad, resid

* line i_ciclo_cub i_cycle_cuad i_cycle_lin fechas_muestra, title("Ciclo de inflacion") xtitle(meses) legend(label(1 "Cub") label(2 "Lin") label(3 "Cuad")) name(inflacion_muestra, replace)


************************************************************
* d *
************************************************************
** Con metodo crietrios de informacion
reg i_ciclo_cub L(1/12).i_ciclo_cub
gen sample_l12 = (e(sample) == 1)

forvalues lag = 1(1)12{
	qui reg i_ciclo_cub L(1/`lag').i_ciclo_cub if sample_l12 == 1
	estimates store lags_`lag'
}

est stats _all
asdoc est stats _all, replace

** Con metodo general a particular
forvalues lag = 12(-1)1 {
    qui reg i_ciclo_cub L(1/`lag').i_ciclo_cub if sample_l12 == 1
    test L`lag'.i_ciclo_cub
}

** evaluo los residuos del modelo AR(1)
reg i_ciclo_cub L(1/1).i_ciclo_cub
predict resid_ar1, resid
qui su resid_ar1
local m = r(mean)
corrgram resid_ar1, lags(12)
*line resid_ar1 fechas_muestra, xtitle(meses) title("Residuos AR(1)") yline(`m')
*ac resid_ar1
************************************************************
* e *
************************************************************
tsset dates_m
sort dates_m
tsappend, add(3)
local start_date = ym(2023, 10)
local end_date = ym(2023, 12)
forvalues i = `start_date' /`end_date'  {
    replace fechas_muestra = dates_m if dates_m == `i'
}

tsset fechas_muestra
arima i_ciclo_cub, ar(1)
predict i_ciclo_cub_pred, dynamic(ym(2023,10))
predict i_ciclo_std, mse dynamic(ym(2023,10))

* bandas
gen ub = i_ciclo_cub_pred + 1.96*sqrt(i_ciclo_std)
gen lb = i_ciclo_cub_pred - 1.96*sqrt(i_ciclo_std)

twoway (line i_ciclo_cub fechas_muestra if date<=ym(2023,10)) (rarea lb ub fechas_muestra if fechas_muestra>=ym(2023,10), color(gs14))  (line i_ciclo_cub_pred fechas_muestra if date>=ym(2023,10)), legend(order(1 "Real" 3 "Pronóstico" 2 "95% IC" ) ring(1) position(6) cols(3)) ytitle("Y") xtitle("Tiempo") name(ts2, replace)


arima i_cub, ar(1)
predict i_cub_pred, dynamic(ym(2023,10))
arima i_estacionalidad_cub, ar(1)
predict i_estacionalidad_cub_pred, dynamic(ym(2023,10))

gen tot = i_ciclo_cub + i_cub + i_estacionalidad_cub
gen tot_pred = i_ciclo_cub_pred + i_cub_pred + i_estacionalidad_cub_pred
gen ub_t = tot_pred + 1.96*sqrt(i_ciclo_std) 
gen lb_t = tot_pred - 1.96*sqrt(i_ciclo_std)
o

twoway (line tot fechas_muestra if date<=ym(2023,10)) (rarea lb_t ub_t fechas_muestra if fechas_muestra>=ym(2023,10), color(gs14))  (line tot_pred fechas_muestra if date>=ym(2023,10)), legend(order(1 "Real" 3 "Pronóstico" 2 "95% IC" ) ring(1) position(6) cols(3)) ytitle("Y") xtitle("Tiempo") name(ts1, replace)
graph combine ts1 ts2, cols(2)
