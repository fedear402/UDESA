/////////////////           CLASE 7  - Pronosticos  - 
//    Metodologia de Box-Jenkins 
///////////////////////      ARIMA

cd C:\Users\fergr\_UdeSA\Pronosticos\
use wheat.dta, clear
tsset yearmm
tsline wheat_srw
gen lws=ln(wheat_srw)
gen dlws=D.lws
tsline dlws
drop if _n>468
dfuller dlws, lags(17) regress
dfgls dlws
dfuller dlws, lags(1) regress
dfuller dlws, lags(8) regress

ac dlws
pac dlws

// Estimacion y seleccion del modelo

arima dlws, arima(1,0,1)
estat ic

arima dlws, arima(1,0,8)
estat ic

arima dlws, ar(1) ma(1,7,8)
estat ic

arima dlws, ar(1) ma(7,8)
estat ic

// Diagnostico

arima dlws, ar(1) ma(7,8)
predict resid1, residuals
wntestq resid1
estat aroots



