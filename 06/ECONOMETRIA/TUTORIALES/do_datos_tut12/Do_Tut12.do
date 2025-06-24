/**********************************************************************
                          Universidad de San Andrés
                                 ECONOMETRIA
                                  Tutorial 12
			       Estacionariedad y regresiones estacionarias
 					  	   Semestre de Otoño 2023
**********************************************************************/
cd "/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECONOMETRIA/TUTORIALES/do_datos_tut12"
clear all
set more off

* Definimos el directorio de trabajo

**# Ejercicio 1

* Simulación de distintos procesos AR(1):
clear all
set seed 1234
set obs 100
gen time=_n
tsset time

* Genero ruido blanco
gen rb=invnorm(runiform())

* Genero los distintos AR(1) variando el phi y grafico

local c = 1
foreach k in 0 0.1 0.4 0.6 0.9 1.2{
	gen y1_`c'=0
	replace y1_`c' = `k'*L.y1_`c' + rb if time>1
	line y1_`c' time, ytitle("Y") xtitle("Tiempo") title("phi = `k' ") name("plot`c'", replace)
	local c = `c' + 1
}

gr combine plot1 plot2 plot3 plot4 plot5 plot6

* ¿Comentarios?

** Ejercicio 2

* Borramos todo lo que hay en la memoria
clear all

* Importando la base de datos
import delimited using "emae.csv"

* Le damos formato temporal
gen date=ym(year,month)	
format date %tm	
tsset date

* Creamos el logaritmo de la variable
gen y=ln(emae)

* Generamos las variables que sirven como tendencia 
gen t=_n 
gen t2=t^2

* Le quito la tendencia 

reg y t t2
predict y_ce, resid
reg y_ce i.month
predict y_cycle, resid

* Grafico

* line y_cycle date, xtitle(mes) title("EMAE (log) ciclos)") 

* Ahora estimaremos un modelo AR(1). Para esto, tenemos que generar el rezago de la variable dependiente. Para esto uso el operador L.

gen l1_y_cicle = L.y_cycle

* Estimo el modelo

reg y_cycle l1_y_cicle

* También puedo estimar el modelo sin la necesidad de generar la variable

reg y_cycle L.y_cycle

* Predigo los residuos

predict resid_ar1, resid

* Grafico

line resid_ar1 date, xtitle(mes) title("Residuos AR(1)") 

* Correlograma

corrgram resid_ar1, lags(12)

* Hagamos el test

wntestq resid_ar1, lags(1)

* Rechazamos H0. No son ruido blanco. 

**********
* Estimemos un modelo mas complejo, un AR(p). Para esto tenemos que elegir el número óptimo de rezagos. Por tener frecuencia mensual, voy a estimar el modelo incluyendo de 1 a 12 rezagos. Para cada modelo, voy a guardar las estimaciones para luego ver el modelo que minimiza los criterios de informacion

* Tengo que estimar siempre las mismas observaciones. El modelo con el que voy a perder mas data es con el de 12 lags. Voy a generar una variable que toma valor 1 si la observacion se utiliza para estimar el modelo con 12 lags.

reg y_cycle L(1/12).y_cycle
gen sample_l12 = (e(sample) == 1)

* Estimamos los 12 modelos

forvalues lag = 1(1)12{
	qui reg y_cycle L(1/`lag').y_cycle if sample_l12 == 1
	estimates store lags_`lag'
}

est stats _all

* Nos quedamos con el AR(7).
*************

* Lo estimamos y graficamos los residuos

reg y_cycle L(1/7).y_cycle 

predict resid_ar7, resid

line resid_ar7 date, xtitle(mes) title("Residuos AR(7)") 

* ¿Son ruido blanco? 

* El rezago 12 es el significativo al 1%.

corrgram resid_ar7, lags(12)

* Hago el test a mano con cada uno de los 12 lags

forval k = 1(1)12{
	wntestq resid_ar7, lags(`k')
}


** Ejercicio 3
cd "/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECONOMETRIA/TUTORIALES/do_datos_tut12"

clear all


* Importamos los datos
import delimited using "pib_bra.csv", clear

*Generamos la variable con las fechas
gen date=yq(year,quarter)
format date %tq
tsset date

* Creamos series
gen y=log(pib_arg)
gen x=log(pib_bra)

* Graficando las series en niveles
twoway (line y date) (line x date, yaxis(2)), title("PIB real en niveles") name(log,replace) legend(ring(1) position(6) cols(2))

/*
	- Ambas series presentan tendencias que cambian en el tiempo, por lo cual 
	- se viola el primer criterio para considerar que una serie es estacionaria.
	- Para estimar modelos ADL necesitamos que las series sean estacionarias, de 
	- no serlo debemos convertirlas en estacionarias aplicando el operador diferencias tantas veces como se necesario hasta hacerlas estacionarias.
	- Estacionariedad: a) Media independiente del t, b) Varianza independiente del 
	t y finita, c) Covarianzas independientes del t
*/


* Miramos dos lags, un lead y la primera y segunda diferencia de la variable y
list y L.y L(2).y F.y D.y D(2).y in 1/5

* Genero la primera diferencia
gen dy=D.y
label variable dy "var. % PIB arg."
gen dx=D.x
label variable dx "var. % PIB bra."
gen t=_n

* Graficando series  en diferencias
twoway (line dy date) (line dx date), title("Tasas de crecimiento del PIB") name(dlog,replace) legend(ring(1) position(6) cols(2))

/*
	- Las series a las que les aplicamos las diferencias parecen tener un comportamiento estacionario.
	- Recuerden que las diferencias de logaritmos son una aproximación a tasas de crecimiento. En este caso como son datos trimestrales y aplicamos la primera diferencia los valores de esta nueva serie son las tasas de crecimiento trimestral del pib real, expresada en porcentaje (0,02 o 2%).
*/


* Comenzamos con un modelo autorregresivo. Tenemos que seleccionar el numero de rezagos, por lo que estimamos hasta el 4 lag por tratarse de data trimestral.

reg dy L(1/4).dy if t>5

* Comparo AR(4) con AR(3)

test L4.dy == 0

* No rechazo, por lo que el cuarto rezago no aporta poder explicativo.

* Comparo AR(3) vs AR(2)
reg dy L(1/3).dy if t>5
test L3.dy == 0

* Tampoco rechazo

* Comparo AR(2) vs AR(1)
reg dy L(1/2).dy if t>5
test L2.dy == 0

* AR(1)
reg dy L(1).dy if t>5
test L1.dy == 0

* Vamos a hacer un pronostico out of sample de la variable dy. 
* Agregaremos 8 observaciones a la base de datos (pronosticamos 2 años hacia adelante)

tsappend, add(8)

* Estimamos el modelo seleccionado, AR(1). Notar que lo hacemos con otro comando

arima dy, ar(1)

* Computamos el pronóstico

predict dy_p, dynamic(yq(2018,1))

* Computamos el std

predict dy_p_std, mse dynamic(yq(2018,1))

* Generamos banda superior e inferior del intervalo de confianza

gen yp_ub = dy_p + 1.96*sqrt(dy_p_std)
gen yp_lb = dy_p - 1.96*sqrt(dy_p_std)

* Graficamos

twoway (line dy date if date<=yq(2018,1)) (rarea yp_lb yp_ub date if date>=yq(2018,1), color(gs14))  (line dy_p date if date>=yq(2018,1)), legend(order(1 "Real" 3 "Pronóstico" 2 "95% IC" ) ring(1) position(6) cols(3)) ytitle("Y") xtitle("Tiempo")


* Estimamos un Modelo Distributed Lags con MCO
reg dy L(0/2).dx if t>5 /* Estimamos el modelo con dos rezagos */
estat ic /* Miro criterio de informacion */

*Analisis de los residuos
predict resid_dl_2, resid
corrgram resid_dl_2
ac resid_dl_2

/*
	-Noten que los residuos de la regresión presentan autocorrelación.
-Esto viola los supuestos del Teorema Gauss-Markov. Por tal motivo, el estimador no será el de menor varianza. Por lo que la varianza estimada será mayor y tendremos mayores probabilidades de aceptar la hipótesis nula β = 0 aún cuando sea falsa.
	-Por este motivo tendremos que utilizar un estimador para la varianza conocido como Newey-West o HAC.
	-Es siempre recomendable utilizar este ajuste (para autocorrelación y heterocedasticidad)
*/ 

*Modelo Distributed Lags estimador HAC
newey dy L(0/2).dx if t>5, lag(4)

*Efecto en el trimestre de impacto
display _b[dx] /* pedimos que muestre en pantalla valor beta asociado a dx */	
test _b[dx]=0 /* *Testeamos si el efecto contemporaneo es significativo o no */

*Efecto luego de 1 trimestres suponiendo que el aumento es permanente
display _b[dx] + _b[L1.dx] /* Valor Beta efecto contemporaneo + Beta efecto con 1 rezago. Esta cuenta asume un shock permanente en el valor de x */
test _b[dx] + _b[L1.dx]=0 /* Testeamos si el efecto acumulado a 1 lag es significativo */

*Efecto luego de 2 trimestres suponiendo que el aumento es permanente
display _b[dx] + _b[L1.dx] + _b[L2.dx]
test _b[dx] + _b[L1.dx] + _b[L2.dx]=0

*ESTIMAMOS MODELO DE REZAGOS DISTRIBUIDOS

*Computando criterios de informacion para distintas especificaciones ADL 
forvalues dl_j=0/4 {
	forvalues p=0/4 {
		if `p'==0 {
			quietly reg dy L(0/`dl_j').dx if t>5
		}
		else {
			quietly reg dy L(1/`p').dy L(0/`dl_j').dx if t>5
		}
		estimates store adl_`p'_`dl_j'
	}
}

/*
En este loop incorporamos un condicional "if":

	- Una condición IF genera caminos que se bifurcan. Obliga a optar según se cumpla o no la condición especificada al inicio del Código. Si la condición es verdadera ejecuta el Código entre las llaves detrás del if. Si la condición es falsa ejecuta el Código entre las llaves detrás del else.
	- Se corre una u otra línea de Código pero nunca se corren ambas. Como en este caso esta dentro de un loop cada vez que pase optará por uno u otro camino.
	- Así va a corer un modelo con 0 autoregresivos y solo efecto contemporaneo de x hasta un modelo con 4 componentes autoregresivos y 4 lags de x.
*/

estimates stats _all
estimates drop _all

/* 
El código nos devuelve los criterio de información de todos los modelos que calculamos.

En base a los criterios de información detectamos que el mejor modelo es aquel que tiene una componente autorregresiva y sólo efecto contemporáneo de la variable x.

En base a esto correremos este modelo para analizar los resultados.
*/

* Modelo ADL(1,0) MCO
reg dy L.dy dx if t>5

* Analisis de residuos
predict resid_adl_1_0, resid
tsline resid_adl_1_0
corrgram resid_adl_1_0
ac resid_adl_1_0

* Modelo ADL(1,0) HAC
newey dy L.dy dx if t>5,lag(4)

* Computando efectos dinamicos y test de hipotesis:

* Contemporaneo
display _b[dx]
test _b[dx]=0

* 1 periodo
display _b[dx]*(1+_b[L1.dy])
testnl _b[dx]*(1+_b[L1.dy])=0

* 2 periodos
display _b[dx]*(1+_b[L1.dy]^1+_b[L1.dy]^2)
testnl _b[dx]*(1+_b[L1.dy]^1+_b[L1.dy]^2)=0

* 3 periodos
display _b[dx]*(1+_b[L1.dy]^1+_b[L1.dy]^2+_b[L1.dy]^3)
testnl _b[dx]*(1+_b[L1.dy]^1+_b[L1.dy]^2+_b[L1.dy]^3)=0

* acumulado en el largo plazo
display _b[dx]/(1-_b[L1.dy])
testnl _b[dx]/(1-_b[L1.dy])=0



