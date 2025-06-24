
cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS/GUIAS-EXAMENES/PARCIAL2024"
clear all
capture log close
log using "Lopez-Parcial-2024.log", replace
set more off
// Ejercicio 2
use aluminium.dta, clear

*************** a)
tsline alum_price, name(alum_price)

*************** b)
gen log_price = log(alum_price)

dfgls log_price 
// Criterio SC recomienda 1 lag en el ADF de log_price con tendencia

dfuller log_price, lags(1) trend regress 
// Este test ADF sugiere que trend no es significativa

dfgls log_price, notrend
// Criterio SC recomienda 1 lag en el ADF de log_price sin tendencia

dfuller log_price, lags(1) regress 
// ADF sin trend. a nivel 5% podriamos rechazar la H0 (no estacionariedad)
// porque el estadístico nos da menor que el valor critico a ese nivel
// -2.881 >  -2.979
// Entonce es I(0)

*************** c)
gen log_r = log(D.alum_price / L.alum_price)
// generamos la variable de retornos logaritmicos

su log_r, detail
// obtenemos la asimetria y curtosis
// Skewness      -.9954262
// Kurtosis       3.871859

disp 128/6*( -0.9954262^2+ 3.871859^2/4)
// manualmente nos da 58.81, mayor al valor crítico de 6
// se rechaza H0 de normalidad

qnorm log_r, name(qq)

// Ejercicio 3

ac log_price, name(ac)
pac log_price, name(pac)

//Guesses: AR(1), AR(2) y ARMA(1,1)
arima log_price, arima(1,0,0) 
estat ic

arima log_price, arima(2,0,0) 
estat ic

arima log_price, arima(1,0,1) 
estat ic

arima log_price, arima(2,0,1) 
estat ic

arima log_price, arima(1,0,2) 
estat ic

arima log_price, arima(2,0,2) 
estat ic


qui arima log_price, ar(1) 
predict res, residuals 
wntestq res
// No son ruido blanco los residuos


qui arima log_price, arima(1,0,1) 
predict res3, residuals 
wntestq res3
// son ruido blanco los residuos
estat aroots, name(roots)
// raices dentro del circulo unitario
log close
