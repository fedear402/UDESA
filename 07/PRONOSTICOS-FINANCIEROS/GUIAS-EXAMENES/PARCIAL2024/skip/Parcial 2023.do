*Ej 2
log using "C:\Users\Ignacio Yenarópulos\Desktop\Parcial Pronosticos\ParcialResuelto.txt", replace
clear

*A
import excel "C:\Users\Ignacio Yenarópulos\Desktop\Parcial Pronosticos\Datos_Ejer_2.xlsx", sheet("Sheet1") firstrow
gen obs=_n
tsset obs
tsline price
dfgls price
*ng perron=3

*B
dfuller price, regress
*Rechazo a 5%

*Si diferencio 1 vez
gen difprice= d.price
dfuller difprice
*Rechazo a 1%
drop if obs >72


*C
sort obs
gen retorno = (price / price[_n-1]) - 1 if _n > 1
reg obs retorno
dfuller retorno
*Orden de itegracion igual a 0

*D

sum retorno, detail
predict res, residual
sum res , detail
 
*El jarque es = (71/6)*((0.0411534*0.0411534)*((1.751138* 1.751138)-3)/4

*Ej 4
clear
import excel "C:\Users\Ignacio Yenarópulos\Desktop\Parcial Pronosticos\Datos_Ejer_4.xlsx", sheet("Sheet1") firstrow
gen obs=_n
tsset obs
gen inflacion = (ipc / ipc[_n-1]) - 1 if _n > 1
gen crec_mt = (m / m[_n-1]) - 1 if _n > 1

dfuller inflacion
*No rechazas
gen difinflacion= d.inflacion
dfuller difinflacio
*Rechazas a 1%
dfuller crec_mt
gen difcrec= d.crec_mt
dfuller difcrec
*Rechazas entonces es integrada de orden 1

reg difinflacion difcrec l6.difcrec
estat dwatson
*Como el valor del test es cercano a 2, no hay correlacion 

log close