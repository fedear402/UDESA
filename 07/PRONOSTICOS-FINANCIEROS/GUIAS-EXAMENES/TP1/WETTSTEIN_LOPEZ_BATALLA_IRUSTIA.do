
//Batalla, Irustia, Lopez, y Wettstein//



clear all
*cd "/Users/federicolopez/Downloads/"
use  "P_TP1_Datos_Ejer2_PyM.dta"

*************** EJERCICIO 2
log using ejercicio2.log, replace
drop in 1/99

gen t = _n
tsset t

gen infla = (D.IPC / L.IPC)
gen base = (D.M / L.M)

dfgls infla
* CRITERIO MAIC = 1 rezago
dfgls base
* CRITERIO MAIC = 1 rezago


* Test de dickey fuller
dfuller infla, lag(1) noconstant
* no rechaza hipotesis nula de que tiene raiz unitaria

dfuller base, lag(1) noconstant
* rechaza hipotesis nula de que tiene raiz unitaria



*** b)
reg infla L1.base L2.base L3.base L4.base L5.base L6.base
testparm L1.base L2.base L3.base L4.base L5.base L6.base

* economicamente, siginificaria que la base monetaria no tiene efecto sobre la inflacion

*** c)
estat dwatson

* el resultado es 0.8 bastante lejos de 2, lo cual suiere que hay autocorrelacion

log close


************ EJERCICIO 4
clear all
//Ejercicio 4A//
*cd "C:\Users\juanb\Downloads"
use "P_TP1_Datos_Ejer4_TB.dta", clear
log using ejercicio4.log, replace
tsset tiempo
//intentamos encontrar la cantidad optima de lags//
dfgls r1y
dfgls r10y
//son 46//
dfuller r1y, lags(46)
dfuller r10y, lags(46)
//no son estacionarias, ahora debemos encontrar sus ordenes de integracion//
//generamos variables para las diferencias entre la variable en t y en t-1. 
//Si corremos DF devuelta con estas nuevas variables generadas y rechaza h0, 
//es porque son de orden 1.
gen dr1y =r1y-L.r1y
gen dr10y =r10y-L.r10y
dfgls dr1y
dfgls dr10y
dfuller dr1y, lags(46)
dfuller dr10y, lags(46)
//Vemos que efectivamente son I(1), yay!//

//Ejercicio 4B//
//Para que haya una relacion a largo plazo deberian estar cointegradas las dos variables. 
//El primer requisito para esto ya se cumple como vimos en el inciso A, son ambas de raiz 
//unitaria. Luego, se tiene que ejecutar el test Engle-Granger. Se tendria que correr una 
//regresion contra la otra, y ver si los rezagos son tambien I(1)
log close 
