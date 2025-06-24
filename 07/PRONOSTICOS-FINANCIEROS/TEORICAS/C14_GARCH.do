// Pronosticos - Clase 14 - GARCH


// Ejemplo II.4.1 de Carol Alexander
clear
import excel "Examples_II.4.xls", sheet("EX_II.4.1") cellrange(B1:C3198) firstrow
gen obs=_n
tsset obs
gen ret=ln(FTSE100/FTSE100[_n-1])
arch ret, arch(1/1) garch(1/1)


//Ejemplo del S&P500 de la primera clase 
clear
import excel "SP500_data.xlsx", sheet("Datos") cellrange(A1:B1282) firstrow
gen t=_n
tsset t
gen ret=log(Price/Price[_n-1])

arch ret, arch(1/1) garch(1/1)   // GARCH(1,1)
arch ret, arch(1) garch(1)       // GARCH(1,1) 
arch ret, earch(1) egarch(1)     // Exponential GARCH

// Calculando la volatilidad GARCH
arch ret, arch(1) garch(1)       // Estimo el modelo GARCH
predict var_garch, variance      // predict newvar, variance me guarda los predicted values de la varianza condicional
gen garch_vol=sqrt(var_garch)    // Le calculo la raiz cuadrada para obtener la volatilidad
tsline ret garch_vol

// Pronosticando Volatilidad Condicional Ex Ante
tsappend, add(20)
predict var_garch_out_of_sample, variance dynamic(1282)
gen garch_vol_out=sqrt(var_garch_out_of_sample) 





// Proyecciones: ARIMA  (basado en script del do file de Clase 10)
use wheat.dta, clear
gen t=_n
tsset t
*tsset yearmm
tsline wheat_srw
gen lws=ln(wheat_srw)
gen dlws=D.lws
tsline dlws
*drop if _n>468
*dfuller dlws, lags(17) regress
*dfgls dlws
*dfuller dlws, lags(1) regress
*dfuller dlws, lags(8) regress

*ac dlws
*pac dlws

// Estimacion del modelo: Ex post Out of sample
arima dlws if t<469, ar(1) ma(7,8) 

predict dlws_f_ex_post, dynamic(469)    // Me genera el forecast ex post dinamico a partir de t=469... t=468 y anteriores se usan para obtener forecast de 469, y con el de 469 y anteriores, el forecast de 470, etc
tsline dlws dlws_f_ex_post if t>444, xline(469)   // Grafico serie original y pronostico, dos anos antes y pongo linea vertical donde empieza el pronostico


// Estimacion del modelo: Ex ante Out of sample
tsappend, add(6)      
arima dlws, ar(1) ma(7,8) 
predict dlws_f_ex_ante, dynamic(502)
tsline dlws dlws_f_ex_ante if t>490  
