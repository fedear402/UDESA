// Pronosticos - Solucion al TP 1
log using C:\Users\fergr\_UdeSA\P_2024\P_TP1.log, replace
cd C:\Users\fergr\_UdeSA\P_2024
// Ejercicio 2


use P_TP1_Datos_Ejer2_PyM, clear
gen obs=_n
tsset obs

gen infl=IPC/IPC[_n-1] - 1 
gen crec_m= M/M[_n-1] - 1

drop if _n<101  // Esto equivale a eliminar las observaciones previas a mayo 2011
dfgls infl
dfuller infl, trend lags(1) regress
dfgls infl, notrend
dfuller infl, lags(1) regress
dfgls crec_m
dfuller crec_m, trend lags(1) regress
dfgls crec_m, notrend
dfuller crec_m, lags(1) regress

reg infl  L.crec_m L2.crec_m L3.crec_m L4.crec_m L5.crec_m L6.crec_m
// test (L.crec_m=0) (L2.crec_m=0) (L3.crec_m=0) (L4.crec_m=0) (L5.crec_m=0) (L6.crec_m=0)

estat dwatson
predict res, residual
ac res 
pac res



//  Ejercicio 4

use P_TP1_Datos_Ejer4_TB, clear
tsmktim dia, start(02jan1962)
tsset dia


twoway line r10y r1y dia  // Grafico de las series de tiempo

dfgls r1y
dfuller r1y, trend lags(46)  regress      // ADF sobre las serie r1y en niveles
dfgls D.r1y    
dfuller D.r1y, trend lags(46)  regress    // ADF sobre las serie r1y en primeras diferencias
dfgls D.r1y, notrend   
dfuller D.r1y, lags(46)  regress    



dfgls r10y
dfuller r10y, trend lags(46)  regress      // ADF sobre las serie r10y en niveles
dfgls D.r10y    
dfuller D.r10y, trend lags(46)  regress    // ADF sobre las serie r10y en primeras diferencias
dfgls D.r10y, notrend
dfuller D.r10y, lags(46)  regress    

log close
