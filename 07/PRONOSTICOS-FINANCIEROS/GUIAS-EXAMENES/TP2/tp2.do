// Ejercicio 1
clear all
set more off
cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/GUIAS-EXAMENES/TP2"
use TP2_Ejer_1, clear
gen obs=_n
tsmktim dia, start(01jan1986)
************************************************************
*********** EJERCICIO 1 ************************************   
************************************************************

************************************************************ a)
************ r3m
/*
dfgls r3m 
// Segun el criterio de ng-perron el numero de rezagos optimo es 35

dfuller r3m, trend lags(`r(optlag)') regress 
// corremos la regresion con el numero optimo de rezagos y con tendencia deterministica
// obsrevamos que la tendencia no es significativa (p-valor = 0.178)

dfgls r3m, notrend
// Elegimos rezagos del modelo sin tendencia. ngperron elige 35

dfuller r3m,  lags(`r(optlag)') regress
// Vemos que el estadistico de prueba del ADF es mayor al valor critico por lo que
// no rechazamos la hipotesis nula de que hay raiz unitaria (no-estacionariedad)

** como en niveles no es estacionaria, probamos la primer diferencia

dfgls D.r3m 
// ngperron elige 40 rezagos

dfuller D.r3m, trend lags(`r(optlag)') regress
// no es significativa la tendencia

dfgls D.r3m, notrend
// para la regresion sin tendencia elige 40 rezagos

dfuller D.r3m, lags(`r(optlag)') regress 
// Para la primer diferencia podemos rechazar la hipótesis  nula de raiz unitaria
// La primer diferencia es estacionaria
// el proceso es I(1) sin tendencia deterministica ni en niveles ni en diferencias


** Realizamos el mismo procedimiento para las otras 2
************ r1y
dfgls r1y 
// elige 35 lags

dfuller r1y, trend lags(`r(optlag)') regress 
// trend no es significativo

dfgls r1y, notrend 
// elige 35 lags en la regresion sin trend

dfuller r1y, lags(`r(optlag)') regress 
// No rechazamos que haya raiz unitaria, vamos a diferencias


dfgls D.r1y 
// elige 40 lags

dfuller D.r1y, trend lags(`r(optlag)') regress 
// trend no es significativo

dfgls D.r1y, notrend
// elige 40 lags

dfuller D.r1y, lags(`r(optlag)') regress 
// rechazamos raiz unitaria. es estacionaria la primera diferencia
// el proceso es I(1) sin tendencia deterministica ni en niveles ni en diferencias


************ r13
dfgls r3y
// elgie 40 rezagos

dfuller r3y, trend lags(`r(optlag)') regress 
// la tendencia deterministica es siginificativa
// no rechazamos la hipotesis nula de raiz unitaria, pasamos a diferencias

dfgls D.r3y
// elige 40 lags

dfuller D.r3y, trend lags(`r(optlag)') regress 
// tendencia deterministica en la primer diferencia no es significativa

dfgls D.r3y, notrend
// elige 40 lags

dfuller D.r3y, lags(`r(optlag)') regress 
// Rechazamos hipotesis nula.
// el proceso es I(1) sin tendencia deterministica en diferencias, con td en niveles

*/

** Son tres procesos I(1) sin tendencia deterministica en diferencias 
** y r3y el unico con tendencia deterministica en niveles
************************************************************ b)

varsoc r3m r1y r3y 
// usando el criterio HQ elegimos 3 rezagos en el modelo VAR

vecrank r3m r1y r3y , trend(rtrend) max levela lags(3)
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

************************************************************ c)
vec r3m r1y r3y , trend(rtrend) rank(2) lags(3)
// usamos trend(rtrend) porque r3y resulta tener una tendencia deterministica en niveles 
// y vemos al correr el VEC que la misma (dentro de la relacion de cointegracion) es significativa.


************************************************************ d)
*var r3m r1y r3y , lags(3)
*vargranger

test ([D_r1y]L1._ce1=0) ([D_r1y]L1._ce2=0) ([D_r1y]LD.r3m=0) ([D_r1y]L2D.r3m=0)
// si causa
test ([D_r3y]L1._ce1=0) ([D_r3y]L1._ce2=0) ([D_r3y]LD.r3m=0) ([D_r3y]L2D.r3m=0)
// si causa
************************************************************ e)
irf create ejer1, step(7) set(ejer1, replace) 
vec r3m r1y r3y , trend(rtrend) rank(2) lags(3)
irf table irf, impulse(r3m) response(r1y)  

************************************************************
*********** EJERCICIO 2 ************************************   
************************************************************
use TP2_Ejer_2, clear
tsset t

dfgls RBER_AR
// rezagos optimos son 6

dfuller RBER_AR, trend lags(`r(optlag)') regress 
// trend significativo
// al 5% rechazamos la hipotesis nula de no-estacionariedad
// es I(0) con tendencia deterministica en niveles
** generamos una variable sin tendencias
reg RBER_AR t
predict res, residual
gen RBER_AR_detrended=res+343.2584




dfgls RBER_AR_sd6
// ngperron elige 2 rezagos

dfuller RBER_AR_sd6, trend lags(`r(optlag)') regress 
























