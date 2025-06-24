/**********************************************************************
                          Universidad de San Andrés
                                 ECONOMETRIA
                                  Tutorial 11
			           Introducción a series de tiempo
 					  	   Semestre de Primaera 2023
**********************************************************************/

cd ""
	
**# Simulación Teorema de Frisch-Waugh-Lovell #**

* Borramos todo lo que esté en Stata

clear all

* Le decimos que queremos que cree una base de datos de 1000 observaciones

set obs 1000

* Seteamos la semilla para poder replicar los resultados

set seed 444

* Generamos tres variables independientes y el término de error

gen x1 = rnormal(3,5)
gen x2 = rnormal(1,3)
gen x3 = rnormal(10,8)
gen u = rnormal()

* Generamos la variable dependiente

gen y = 3*x1 + 4*x2 + x3 + u

* Corremos las regresiones previas al método indirecto

* Variable dependiente contra X2

reg y x2 x3
predict residuals_y, resid

* Ahora, x1 contra X2

reg x1 x2 x3
predict residuals_x1, resid

* Corremos el método directo

reg y x1 x2 x3

* Metodo indirecto

reg residuals_y residuals_x1

* Ahora vamos a replicar lo que hicimos anteriormente (la puesta en práctica del Teorema de Frish-Waugh-Lovell), pero mil veces. 

* Los resultados de cada una de las 1000 iteraciones deben guardarse; para esto crearemos una matriz.

mat def resultados = J(1000, 3 ,.) 

* Esta matriz tiene 1000 filas, 3 columnas y el valor inicial es un missing. Podemos ver la matriz creada con este comando

mat list resultados

* Ahora escribiremos el código del loop, que lo haremos para valores de 1 a 1000. 


* Hacemos que itere asignandole a "i" desde el valor 1 al 1000.
forvalues i = 1(1)1000{ 
	
	* Guardamos en la columna 1 fila 'i', el valor de i
	mat resultados[`i', 1] = `i'
	
	* Borramos todo lo que hay en Stata
	clear 
	
	* Seteamos la cantidad de observaciones
	set obs 1000
	
	* Le decimos que define la semilla igual al valor de i
	set seed `i'
	
	* Generamos las tres variables
	gen x1 = rnormal(3,5)
	gen x2 = rnormal(1,3)
	gen x3 = rnormal(10,8)
	gen u = rnormal()
	
	* Generamos la variable dependiente
	gen y = 3*x1 + 4*x2 + x3 + u
	
	* Obtenemos Y* e X* 
	reg y x2 x3
	predict residuals_y, resid

	reg x1 x2 x3
	predict residuals_x1, resid

	* Estimamos el método directo
	reg y x1 x2 x3
	
	* Guardamos el betahat1 en la columna 2 de la matriz
	mat resultados[`i', 2] = _b[x1]
	
	* Estimamos el método indirecto
	reg residuals_y residuals_x1
	
	* Guardamos el betatilde1 en la columna 3 de la matriz
	mat resultados[`i', 3] = _b[residuals_x1]

	* Y aquí termina el loop
}

* Vemos los resultados en la matriz

mat list resultados

* Vamos a guardar todas las variables

clear

* Utilizando el comando svmat, vamos pasar la matriz resultados a variables

svmat resultados

* Le cambiamos los nombres a las variables

rename resultados1 seed
rename resultados2 beta_directo
rename resultados3 beta_indirecto

* Ahora generamos una variable que sea la diferencia de los betas

gen diff_betas = beta_directo - beta_indirecto

* Podemos hacer un summary de la variable

summ diff_betas

* O podemos hacer un gráfico de linea entre la semilla y la diferencia de betas

twoway line diff_betas seed, lcolor(orange_red) scheme(s1color) ysc(r(-2 2))

* En ambos podemos ver que la diferencia es 0!


**# Ejercicio 

/* Los objetivos de este ejercicio son conocer distintas formas de calcula la tendencia y la estacionalidad de una serie. 

Presentaremos la estimacion de tres tipos de tendencias:
	- Lineal	
	- Cuadrática
	- Con un filtro Hodrick-Prescott
	
La estacionalidad de una serie la estimaremos con variables dummies. 

¡Lo importante aquí es la intuición!
*/

* Borramos todo lo que hay en la memoria
clear all

* Comenzamos importando la base de datos
import delimited using "emae.csv"

* La exportamos como un dta
save "emae.dta", replace

* Vamos a crear la variable temporal y establecemos que vamos a trabajar con series de tiempo
gen date=ym(year,month)	// Las fechas para Stata (como para la mayoría de los softwares) son secuencias numericas.

format date %tm	// Aplicamos un formato de fecha a la serie generada (solo enmascara los números), de modo que sea legible para el usuario. 

tsset date // Establecemos que estamos trabajando con una base de datos cuya información es temporal (series de tiempo).


help tsset	// El comando help nos provee información sobre el comando que especifiquemos detrás. 


* Creamos el logaritmo de la variable
gen y=ln(emae)

* Vamos a crear series que servirán como  tendencias deterministicas (lineal y cuadrática)
gen t=_n // El comando _n genera una serie incremental (representa el número de observaciones) _N (es el total de observaciones)

gen t2=t^2 	// Se genera la tendencia cuadrática

* Inspección visual de la serie (EMAE)

line y date, xtitle(mes) title("EMAE (log)") name(emae, replace)

* Tendencia lineal

reg y t // hacemos la regresión de la variable y respecto a la tendencia lineal
predict y_lin // almacena el los valores del modelo, es decir E(yt|xt), en la varible y_lin
predict y_resid_lin, resid // almacena los errores del modelo en la variable y_lin_resid *y=y_lin+y_resid_lin
estat ic // devuelve los valores de los criterios de información (AIC y BIC)de la reg
line y y_lin date, xtitle(mes) title("EMAE (log) y Tendencia lineal") name(emae_lin, replace)

* Tendencia Cuadratica

reg y t t2 // hacemos la regresión de la variable y respecto a la tendencia cuadrática
predict y_cuad // *almacena el los valores del modelo, es decir E(yt|xt), en la varible y_cuad 
predict y_resid_cuad, resid // almacena los errores del modelo en la variable y_cuad_resid *y=y_cuad+y_cuad_resid
estat ic // devuelve los valores de los criterios de información (AIC y BIC)de la reg
line y y_cuad date, xtitle(mes) title("EMAE (log) y Tendencia Cuadratica") name(emae_quad, replace)

* Tendencia HP

* Estimación filtro HP
ssc install hprescott

hprescott y, smooth(129600) stub(hp) // Como opciones figuran lambda (129600) y el prefijo con el que se almacenarán las series de tendencia y residuo. La serie de tendencia generada se llamará hp_nombre_sm_# y el resto hp_nombre_#
rename hp_y_sm_1 y_hp // renombramos variable hp_y_sm_1 como y_hp (tenencia)gen y_resid_hp=hp_y_1 
rename hp_y_1 y_resid_hp  // renombramos variable hp_y_1 como y_resid_hp (residuo)


line y y_hp date, xtitle(mes) title(EMAE (log) y Tendencia HP) name(emae_hp, replace)

*Comparando residuos

line y_resid_lin y_resid_cuad y_resid_hp date, xtitle(mes) title(EMAE (log) y residuos de tendencia) legend(label(1 "Lineal") label(2 "Cuadratica") label(3 "HP")) name(resid, replace)

**# AJUSTE ESTACIONAL DE LAS SERIES

* Y= T+C+S+e
* Ya calculamos la tendencia (por eso estamos trabajando con la estimación de los residuos de las tendencias lineales, cuadráticas y de hp).

* Camino 1: generar dummies para cada mes y luego hacer la regresión.
tab month, gen(dq) // Tabula los meses y genera variables con nombre dq, una por cada valor único de la variable month. Le asigna valor 1 al mes tabulado. Así, la primera variable asigna 1 a los meses de enero y al resto 0, en a segunda 1 en los meses de febrero y en el resto cero y así para todos los meses.

reg y_resid_lin dq1-dq11 // Regreso variable filtrada tend. Lineal de estacionalidad
reg y_resid_lin dq1-dq12, nocons // Alternativamente pongo todos meses y omito constante

*Si no tenemos una variable de month o quarter porque creamos directamente la fecha en Stata, la manera de generarla es la siguiente:
* gen month=month(dofm(date)) *donde dates es una variable con valores 1993m1 
* gen quarter=quarter(dofq(date)) * donde dates es una variable con valores 1993q1

* Camino 2: que la regresión cree las dummies. Noten que acá sí o sí tenemos constante y una dummy menos.
regress y_resid_lin b12.month
predict y_cycle_lin, resid // Almacena serie filtrada de estacionalidad y tend. lineal

* Variable desestacionalizada
predict y_estac_lin
gen y_des_lin = y - y_estac_lin
line y y_des_lin date
	
*Comparación de los ciclos
regress y_resid_cuad b12.month
predict y_cycle_cuad, resid

regress y_resid_hp b12.month
predict y_cycle_hp, resid

line y_cycle_lin y_cycle_cuad y_cycle_hp date, xtitle(mes) title(EMAE (log) ciclos) legend(label(1 "Lineal") label(2 "Cuadratica") label(3 "HP")) name(emae_ciclo, replace)

*Comando útil. Cerrar todas las ventanas de gráfico que tengamos abiertas.
window manage close graph _all


