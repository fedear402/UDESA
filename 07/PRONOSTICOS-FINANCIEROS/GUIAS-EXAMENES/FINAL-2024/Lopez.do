cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/GUIAS-EXAMENES/FINAL-2024"

clear all

capture log close 
log using "Lopez.log", replace
************************************************************
*********** EJERCICIO 1 ************************************   
************************************************************
use pbi_argen, clear
************************************************************ a)
* Convertimos a logaritmos
gen lpbi=ln(pbi)
gen lc=ln(consumo)
gen linv=ln(inversion)
gen lgp = ln(gasto_pub)
gen limpo = ln(importaciones)


tsset trim

tsfilter hp pbi_c = lpbi, smooth(400) trend(y_g) // tenemos pbi_c es el pbi ciclico, y_g la tendencia

tsfilter hp c_c = lc, smooth(400) trend(c_g) // consumo

tsfilter hp inv_c = linv, smooth(400) trend(inv_g) // inversion

tsfilter hp gp_c = lgp, smooth(400) trend(gp_g) //gasto pub

tsfilter hp impo_c = limpo, smooth(400) trend(impo_g) //imports

su pbi_c c_c  inv_c gp_c impo_c
// vemos que la inversion es la que tiene mayor desvio estandar

** Podemos ver la volatiliad con la regla de raiz cuadrada del tiempo que usa Alexander

su pbi_c 
disp r(sd)* sqrt(4)
su c_c 
disp r(sd)* sqrt(4)
su inv_c 
disp r(sd)* sqrt(4)
su gp_c 
disp r(sd)* sqrt(4)
su impo_c
disp r(sd)* sqrt(4)


************************************************************ b)
*buscamos orden de integracion
** PBI
dfgls pbi_c //elegimos 1 rezago
dfuller pbi_c, trend lags(`r(optlag)') regress // Trend no siginificativo
dfgls pbi_c, notrend //elegimos 1 rezago
dfuller pbi_c, lags(`r(optlag)') regress
// A nivel 5% podemos decir que es integrada de orden I(0) porque rechazamos HO: raiz unitaria

dfgls c_c //elegimos 6 rezago
dfuller c_c, trend lags(`r(optlag)') regress // Trend no siginificativo
dfgls c_c, notrend //elegimos 6 rezago
dfuller c_c, lags(`r(optlag)') regress
// A nivel 5% es I(0)

** las dos son I(0) si tendencia deterministica en niveles


************************************************************ c)
varsoc pbi_c c_c
// Con el criterio HQ tenemos 1 rezago para  VAR(1)

var pbi_c c_c, lags(1)

vargranger
/*Vemos que PBI causa en sentido de granger al consumo
es decir hay una relacion lead-lag en la que el PBI. 
Los valores de PBI sirven para predecir valores de consumo presentes 
y futuros mejor que solo los rezagos de consumo*/

************************************************************
*********** EJERCICIO 2 ************************************   
************************************************************
use MROZ, clear
logit inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6
mfx // para efectos marginales


count if (age>=50 & inlf==1)
************************************************************
*********** EJERCICIO 3 ************************************   
************************************************************

clear all
import excel using "rates.xlsx",firstrow 
// Lo pase a excel para convertir las fechas en tring a fechas en formato stata porque 
// en stata es imposible 
generate d = date(fechas, "DMY")
drop dates del G H I fechas K
tsset d
tsfill 
ipolate m1 d, gen(m1_)
ipolate m2 d, gen(m2_)
ipolate m3 d, gen(m3_)
ipolate m4 d, gen(m4_)
*** aca interpola los missing values con el valor de la ultima fecha para la fecha que haya datos

************************************************************ a)
// M1
dfgls m1_ //27 lags con MAIC
dfuller m1_, trend lags(27) regress
// Trend significativo
// No rechaza H0
dfgls D.m1_ //27 lags
dfuller D.m1_, trend lags(27) regress
// Trend significativo y rechazamos H0 -- Es I(1)
// Hay tendencia deterministica en niveles y en diferencias por lo que
// tendremos que especificar tendencia cuadratica en el vec (no restringida)


dfgls m2_ //3 lags
dfuller m2_, trend lags(3) regress
// Trend significativo no rechaza H0
dfgls D.m2_ //27 lags
dfuller D.m2_, trend lags(27) regress
// Trend significativo y rechazamos H0 -- Es I(1)
// Hay tendencia deterministica en niveles y en diferencias

dfgls m3_ //12 lags
dfuller m3_, trend lags(12) regress
// Trend significativo no rechaza H0
dfgls D.m3_ //27 lags
dfuller D.m3_, trend lags(27) regress
// Trend significativo y rechazamos H0 -- Es I(1)
// Hay tendencia deterministica en niveles y en diferencias

dfgls m4_ //12 lags
dfuller m4_, trend lags(12) regress
// Trend significativo no rechaza H0
dfgls D.m4_ //27 lags
dfuller D.m4_, trend lags(27) regress
// Trend significativo y rechazamos H0 -- Es I(1)
// Hay tendencia deterministica en niveles y en diferencias

************************************************************ b)

varsoc m1_ m2_ m3_ m4_
// usando el criterio HQ elegimos 4 rezagos en el modelo VAR

vecrank m1_ m2_ m3_ m4_ , trend(trend) max levela lags(4) 
// trend(trend) porque hay tendencia en diferencias por lo que esperamos tendencia cuadratica en el VEC, por eso no a restringimos
/*
TEST DE TRAZA
H0 : r<=R
Rechazamos H0 solo si el estadistico de pueba es mayor al valor critico
En este caso, no rechazamos para R = 3, no rechazamos que sea como mucho 3 el rango (al 5%)


TEST DE MAXIMO AUTOVALOR
H0 : r = R
Rechazamos H0 solo si el estadistico de pueba es mayor al valor critico
En este caso, no rechazamos para R = 3, entonces no rechazamos que el rango sea 3 (al 5%)
*/
// Encontramos 3 relaciones de cointegracion y una tendencia estocastica (variables - rango)

************************************************************ c)
vec m1_ m2_ m3_ m4_ , trend(trend) rank(3) lags(4) 
// de nuevo usamos trend sin restricciones, especificamos el rango de la matriz pi = 3 y 4 rezagos
// el primer desequilibrio (ce: cointegrating equation) es
// Z_1 = m1 -0.98*m4; luego los otros dos:
// Z_2 = m2 -0.993*m4
// Z_3 = m3 -0.997*m4 

************************************************************ d)
/*
Para testear causalidad de m1 a por ejemplo m2 debemos testear la significatividad conjunta de
todas las variables con rezafos de m1 en la primer ecuacion.
Sabemos que almenos debe haber 1 'Granger causal flow' porque sino no estaria cointegradas,
asi que testeamos si m1 causa a alguna de las demas:
*/
*m1 causa a m2?
test ([D_m2_]L1._ce1=0) ([D_m2_]L1._ce2=0) ([D_m2_]L1._ce3=0)  ([D_m2_]LD.m1_=0) ([D_m2_]L2D.m1_=0) ([D_m2_]L3D.m1_=0)
// Hay causalidad

*m1 causa a m3?
test ([D_m3_]L1._ce1=0) ([D_m3_]L1._ce2=0) ([D_m3_]L1._ce3=0)  ([D_m3_]LD.m1_=0) ([D_m3_]L2D.m1_=0) ([D_m3_]L3D.m1_=0)
// Hay causalidad

*m1 causa a m4?
test ([D_m4_]L1._ce1=0) ([D_m4_]L1._ce2=0) ([D_m4_]L1._ce3=0)  ([D_m4_]LD.m1_=0) ([D_m4_]L2D.m1_=0) ([D_m4_]L3D.m1_=0)
// Hay causalidad

//M1 causa en sentido de granger a las 3


************************************************************ e)
irf create ej3e, step(90) set(ej3e, replace)  // 3 meses
quietly vec m1_ m2_ m3_ m4_ , trend(trend) rank(3) lags(4)
irf table irf, impulse(m1_) response(m3_)  
irf graph irf, impulse(m1_) response(m3_)  
*** en 3 meses va a aumentar


irf create ej3e, step(10) set(ej3e, replace)  // 10 cias
quietly vec m1_ m2_ m3_ m4_ , trend(trend) rank(3) lags(4)  
irf table irf, impulse(m1_) response(m3_)  
irf graph irf, impulse(m1_) response(m3_) 
** aumenta y despues se reduce el efecto

irf create ej3e, step(1) set(ej3e, replace) // 1 dia
quietly vec m1_ m2_ m3_ m4_ , trend(trend) rank(3) lags(4) 
irf table irf, impulse(m1_) response(m3_)  
irf graph irf, impulse(m1_) response(m3_)  
** inmediatamente, el shock causa un aumento al dia siguiente

log close
