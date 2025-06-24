* Introduccion a STATA - (Do Files) - Pronosticos 2024 - Universidad de San Andres
clear
*con el asterisco ustedes pueden escribir aclaraciones que les sean utiles en un mismo renglon o linea
*Stata no va a leer lo que escriban en la linea despues del asterisco como un comando que estan ejecutando
*con CLEAR borran si habia una base de datos abierta previamente

cd "/Users/federicolopez/Downloads"
*con cd ... especificamos el directorio desde donde vamos a trabajar.
// La doble barra cumple el mismo rol que el asterisco pero puede usarse a continuaci√≥n de un comando

use ejemplo_casa, clear // Stata va a buscar esta base de datos en el directorio que le acabo de indicar en la linea 7 de este do file

regress saleprice lotsize bedroom bath stories driveway recroom basement gas aircond garage desireloc // Regresi√≥n por MCO

test (gas=0) (bath=0) // Test F de que estos dos betas son simultaneamente iguales a cero

* Abriendo Excel
clear
import excel "ejemplo_casa.xls", sheet("HPRICE") firstrow

/* Cuando usamos barra y asterisco, Stata entiende que todo lo
 que escribamos
a partir de la barra y asterisco
no es parte del code, 
hasta que cerremos con asterisco y barra (OJO, se empieza con barra asterisco
 y se cierra con asterisco barra), es decir, 
podemos escribir la cantidad de lineas que querramos, o solamente en una parte de una linea como ayuda memoria
sin que Stata lo tome como parte del code. Se va a ver de este color, verde, cuando tengan abierto el do-file */

* VEAMOS ALGUNAS COSAS MUY UTILES

* (1) ¬øComo calculamos el valor predicho de y (y sombrero) o los residuos de la ultima regresion corrida?

use ejemplo_casa, clear
regress saleprice lotsize bedroom bath stories driveway recroom basement gas aircond garage desireloc
predict y_sombrero, xb                 /*crea la variable y_sombrero con los valores predichos de y (recta estimada)*/ 
predict res, residual                  /*crea la variable res que sera igual a los residuos */


* (2) ¬øComo corremos el test de heterocedasticidad de White?
use "Ejemplo_Casa.dta", clear   // Alternativamente, siempre podemos especificar el directorio completo donde se encuentra ul archivo
/* Recordemos que el test de heterocedasticidad de White consiste en regresar los residuos por MCO/OLS 
(Monimos Cuadrados Ordinarios/Ordinary Least Squares) al cuadrado contra todas las variables Explicativas, 
sus cuadrados y sus productos cruzados. De manera que tenemos que tener corrida una regresion cuando 
ejecutemos el comando del test de White para que Stata entienda cuales son los residuos y cuales son las 
variables explicativas sobre las cuales debera correr esa regresion auxiliar con las Xs, sus cuadrados y 
sus productos cruzados y calcular el estadistico del test de White
 
El comando es "estat imtest, white" y al ejecutarlo, Stata reportara el estadistico de White y el p-value correspondiente. 
Recordemos que el estadistico tiene una distribucion chi-cuadrado con un cantidad de grados de libertad igual a 
las pendientes que hay que estimar en la regresion auxiliar, en este caso 71, y se reporta entre parentesis 
donde dice chi2(.) */

regress saleprice lotsize bedroom bath stories driveway recroom basement gas aircond garage desireloc
estat imtest, white

* (3) Tambien podemos correr el test de heterocedasticidad de Breusch Pagan; se ejecuta con este comando:
estat hettest lotsize
/*Recordemos que el estadistico de este test se calcula a partir del ESS (Explained Sum of Squares o Suma de Cuadrados Explicada) 
de una regresion donde la variable dependiente son los residuos al cuadrado de la regresion original 
(es decir, la del ultimo comando, regress) divididos por el RSS sobre "N" de esta regresion
en la(s) variable(s) (varlist) que nosotros sospechamos que genera(n) la heterocedasticidad. 
El estadistico de este test es ESS/2 y tiene una distribucion chi-cuadrado con q grados de libertad, 
donde q es la cantidad de pendientes que hay que estimar en la regresion auxiliar (se excluye la constante). 
En este caso, solo hemos elegido "lotsize" como la unica variable que sospechamos que genera la heterocedasticidad.*/

* (4) ¬øComo correr una regresion por MCP/WLS (Minimos Cuadrados Ponderados o Weighted Least Squares)? 
* Para entenderlo, propongo el siguiente ejemplo: corremos una regresion de saleprice en una constante, lotsize, bedroom y bath:

regress saleprice lotsize bedroom bath

* Si nosotros multiplicamos el modelo (esta ecuacion) por 1/raiz(lotsize) es equivalente a usar MCP/WLS usando como ponderador 1/raiz(lotsize).
*Para comprobar esto, probemos las dos cosas. Primero, notemos que multiplicar a la izquierda y a la derecha del "=" por 1/raiz(lotsize) implica regresar salepreice/raiz(lotsize) en 1/raiz(lotsize), en lote/raiz(lotsize), en bedroom/raiz(lotsize) y en bath/raiz(lotsize) y sin constante. Generemos estas variables:

gen raiz_lote=sqrt(lotsize)                     /*Genera la raiz cuadrada de lotsize)*/
gen price_div_raiz_lote=saleprice/raiz_lote     /*Genera precio sobre raiz de lote*/
gen inv_raiz_lote=1/raiz_lote                   /*Genera la inversa de la raiz de lote*/
gen bedroom_div_raiz_lote=bedroom/raiz_lote     /*Genera bedroom sobre raiz de lote*/
gen bath_div_raiz_lote=bath/raiz_lote           /*Genera bath sobre raiz de lote*/
regress price_div_raiz_lote inv_raiz_lote raiz_lote bedroom_div_raiz_lote bath_div_raiz_lote, noconstant            // noconstant elimina la constante de la regresiÛn*/

* Corroboremos que esto es lo mismo que correr la regresion con la opcion de weight:

gen inversa_lote=1/lotsize
regress saleprice lotsize bedroom bath [weight=inversa_lote]

* Note que Stata entiende por weight por lo que multiplicamos la varianza de los ERRORES del modelo original 

* (5) Estimacion bajo Heterocedasticidad usando White Heteroskedasticity Standard Errors se corre con la siguiente opcion:

regress saleprice lotsize bedroom bath stories driveway recroom basement gas aircond garage desireloc, vce(robust)

* (6) LOG FILE: imaginense que ustedes trabajan en un paper con un coautor y quieren compartir los resultados de algunas regresiones, 
*  o lo que sea, lo que aparece en la ventana de resultados al ejecutar comandos... o simplemente lo quieren imprimir para leerlo 
*  y revisarlo en otro momento y en papel. Esto se puede lograr abriendo un log file. En Stata 16, pueden abrir uno directamente 
*  desde el icono que esta la derecha del icono de Imprimir, o simplemente, con el comando:


log using "Clase_intro.log", replace   // Sin opcion "replace" les permite correrlo una sola vez con ese nombre 

* Prueben de correr todo lo anterior, luego cierren el log (log close) y abran el archivo que acaban de crear
* El log file se abre desde el Explorador de Windows (si usan Windows), con click derecho, "open as Notepad"
* Es un archivo de texto y va a contener todo lo que haya aparecido en la ventana de resultados

log close





// (7) SERIES DE TIEMPO

// Vamos a abrir la base de datos:

use "Precios_y_Dinero_data.dta", clear


// (8) A proposito, las variables que estan en color rojo indican que son alfanumericas. Para convertirlas a numericas usamos el comando destring
// se puede hacer para varias variables simultaneamente en la misma linea
// esto es algo que pasa muy seguido cuando bajan una base de datos de internet 

destring mmyy ipc m m_en_ars, replace

// vemos que mmyy que tiene caracteres alfanumericos no es convertida a numerica
// replace hace que las nuevas variables reemplacen a las anteriores. Alternativamente pueden darles otro nombre


// (9) ¬øComo crear las series de inflacion y tasa de crecimiento de la base monetaria? ¬øComo corremos el test de Dickey Fuller Aumentado?
gen obs=_n				// Genera variable con nombre obs que toma valires 1, 2, 3, etc 
tsset obs   						   // Debemos indicar cual es la variable tiempo  
gen inflacion=(ipc/ipc[_n-1] -1)*100   // Stata entiende por IPC[_n-1] el primer rezago de IPC 
gen crec_bm=(m/m[_n-1] -1)*100
dfuller inflacion, lags(2) trend regress   // Test ADF y "regress" permite ver la regresion

// Alternativamente, se pueden generar rezagos (lags) de esta manera, y crear luego inflacion crecimiento de la base monetaria*/
gen IPC1=L.ipc		      // Genera el primer rezago de IPC  
gen IPC2=L2.ipc           // Genera el segundo rezago de IPC 
gen inf = (ipc/IPC1 -1 ) * 100    // Genera la serie inf que pueden corroborar es igual a inflacion

// Tambi√©n pueden crear una serie en diferencias:
gen IPC_dif=D.ipc		      // Genera con el nombre IPC_dif las primeras diferencias de IPC  


// Por ultimo, conviene guardar la base de datos en formato stata (extension dta)

save "Precios_y_Dinero_1.dta", replace

// Para ver la funcion de correlacion y la funcion de correlacion parcial:

ac inflacion

pac inflacion

ac inflacion, level(99)

pac inflacion, level(99)

// Para correr una regresion con errores que son AR(1), podemos manejarnos desde el menu o ejecutar
 
arima inflacion crec_bm, arima(1,0,0)
 
