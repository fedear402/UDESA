// Solucion a los Ejercicios 2 y 4 del Examen Parcial de Pronosticos Financieros 2023
cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS/GUIAS-EXAMENES/PARCIAL2023/datos"
capture log close
log using PF_Parcial_2023_Sol.log, replace
// Ejercicio 2
use Datos_Ejer_2.dta, clear
// Item "a"
tsline price   
// Item "b"
dfgls price                            // Aca encontramos que segun Ng Perron corresponde usar 3 lags en el ADF de price con tendencia deterministica
dfuller price, lags(3) trend regress   // Corro el ADF con trend deterministico y encuentro que el trend deterministico es no significativo
dfgls price, notrend                   // Aca encontramos que segun Ng Perron corresponde usar 5 lags en el ADF de price sin tendencia deterministica
dfuller price, lags(5)  regress        // Corro el ADF sin trend deterministico. No rechazo H0. Concluyo que price no es I(0)
dfgls D.price                          // Aca encontramos que segun Ng Perron corresponde usar 2 lags en el ADF de D.price (serie price en primeras diferencias)
dfuller D.price, lags(2) trend regress // Corro el ADF con trend deterministico y encuentro que el trend deterministico es no significativo
dfgls D.price, notrend                 // Tambien 2 rezagos sin tendencia deterministica
dfuller D.price, lags(2) regress       // Corro el ADF sin trend deterministico. Rechazo H0. Concluyo que price es I(1) sin tendencia deterministica
// Alternativamente, siguiendo Ng Perron, partiendo de 11 lags llegan a que al usar 4 lags el estadistico t del ultimo rezago da arriba de 1.64. Se llega a la misma conclusion respecto al ADF
// Item "c"
log close
log using PF_Parcial_2023_Sol.log, replace

gen returns = D.price / L.price         // Genero la serie de retornos simples 
dfgls returns                           // Aca encontramos que segun Ng Perron corresponde usar 9 lags en el ADF de returns con tendencia determistica
dfuller returns, lags(9) trend regress  // Corro el ADF con trend deterministico y encuentro que el trend deterministico es no significativo
dfgls returns, notrend                  // Aca encontramos que segun Ng Perron corresponde usar 9 lags en el ADF de returns sin tendencia determistica
dfuller returns, lags(9)  regress       // Corro el ADF sin trend deterministico. No rechazo H0. Concluyo que price no es I(0)
dfgls D.returns                         // Aca encontramos que segun Ng Perron corresponde usar 10 lags en el ADF de D.price (serie price en primeras diferencias)
dfuller D.returns, lags(10) trend regress // Corro el ADF con trend deterministico y encuentro que el trend deterministico es no significativo
dfgls D.returns, notrend
dfuller D.returns, lags(10) regress       // Corro el ADF sin trend deterministico. Rechazo H0. Concluyo que price es I(1) sin tendencia deterministica
log close
// Item "d"
summarize returns, detail




// Ejercicio 4
use Datos_Ejer_4.dta, clear

log using PF_Parcial_2023_Sol.log, replace

// Item "a"
// ADF para inflacion en niveles
gen inflacion = D.ipc / L.ipc
gen crec_m = D.m / L.m
dfgls inflacion
dfuller inflacion, lags(6) trend regress
dfgls inflacion, notrend
dfuller inflacion, lags(10) regress
// ADF para inflacion en primeras diferencias
dfgls D.inflacion
dfuller D.inflacion, lags(5) trend regress
dfgls D.inflacion, notrend
dfuller D.inflacion, lags(9) regress
// Concluyo que inflacion es I(1) sin tendencia deterministica 
// ADF para crec_m en niveles
dfgls crec_m
dfuller crec_m, lags(11) trend regress
dfgls crec_m, notrend
dfuller crec_m, lags(11) regress
// ADF para crec_m en primeras diferencias
dfgls D.crec_m
dfuller D.crec_m, lags(10) trend regress
dfgls D.crec_m, notrend
dfuller D.crec_m, lags(11) regress
// Concluyo que crec_m es I(1) sin tendencia deterministica  

// Item "b"
regress D.inflacion D.crec_m LD.crec_m L2D.crec_m L3D.crec_m L4D.crec_m L5D.crec_m L6D.crec_m
// El p-value asociado al estadistico F es mayor a 0.10. Por lo tanto, deberiamos descartar esta estimacion.
// Es decir, las diferencias de la tasa de crecimiento de la cantidad de dinero y sus 6 primeros rezagos no explican las diferencias en la tasa de inflacion 

// Item "c"
estat dwatson
// El estadistico da 2.32 > 2. Por lo tanto, calculamos 4 - 2.32 = 1.68 para comparar 
// con los valores criticos de la tabla. Como el dU es tambien 1.68, coincide con el estadístico 
// Tecnicamente, mirando con mas decimales, el estadistico cae en la region en donde el test es inconcluso.


log close
