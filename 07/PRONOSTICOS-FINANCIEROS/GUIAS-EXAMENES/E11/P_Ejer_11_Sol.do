// Pronósticos  - Solucion a la Ejercitacion 11


// Ejercicio 1: verdadero, ver pag 30 de Notas de Clase 11. Ahi van a encontrar el desarrollo.

// Ejercicio 2: VEC bivariado
use UK_rates, clear              
gen obs=_n
tsset obs
dfgls mth1
dfgls D.mth1  
dfgls mth12
dfgls D.mth12
tsline  mth1 mth12
varsoc mth12 mth1     // Uso 2 lags
vecrank mth12 mth1, trend(constant) max levela    //  al 95% y 99% encuentramos 1 relacion de cointegracion

vec mth12 mth1, trend(constant) rank(1) lag(2)    //  Estimo el VEC

vecstable, graph  // Vemos que es estable: hay una raiz 
veclmar           // Vemos que no hay correlacion serial 

matrix A = e(alpha)
matrix B = e(beta)
matrix pi = e(pi)
matrix list A
matrix list B
matrix list pi        
/* 
El vector alfa (en este caso en un vector porque hay una sola relacion de cointegracion) contiene el valor de los coeficientes 
de los estimadores del residuo de cointegracion y representa la velocidad de ajuste hacia el restablecimiento del equilibrio de largo plazo. 
El vector beta contiene los estimadores de la relacion de largo plazo entre las variables
Les queda a ustedes verificar que alfta*beta´ = pi. Stata presenta el alfa como de 1x2, pero en realidad, es de 2x1 y lo presenta 
de esa manera para que ocupe menos espacio en la ventana de resultados. Al vector beta deben quitarle la entrada de la constante y la 
multiplicacion de estos vectores es bastante simple, especialmente porque la primera entrada de beta es 1. La matriz pi es de 2x2.
*/

test ([D_mth1]L1._ce1=0) ([D_mth1]LD.mth12=0)    // H0: mth12 no causa en sentido de Granger a mth1
test ([D_mth12]LD.mth1=0) ([D_mth12]L1._ce1=0)   // H0: mth1 no causa en sentido de Granger a mth12

// m12 causa en sentido de Granger a m1 (al 1%, 5% o 10% de probabilidad de error tipo I)
// m1 causa en sentido de Granger a m12 al 10% de probabilidad de error tipo I pero no la causa al 5% o 10% de probabilidad de error tipo I


// Ejercicio 3: VECM Multivariado

use UK_rates, clear                  // Inciso "a"
gen obs=_n
tsset obs
tsline  mth1 mth2 mth3 mth6 mth9 mth12
// a. Primero testeamos por raices unitarias cada variable. Concluimos que cada tasa en niveles es I(1)  
dfgls mth1
dfgls D.mth1  
dfgls mth2
dfgls D.mth2
dfgls mth3
dfgls D.mth3
dfgls mth6
dfgls D.mth6
dfgls mth9
dfgls D.mth9
dfgls mth12
dfgls D.mth12
// b. Luego elegimos el número de lags segun alguno de los criterios de seleccion:   (Inciso b)
varsoc mth1 mth2 mth3 mth6 mth9 mth12
* Elegimos 2 lags siguiendo BIC
// c. Testeamos por la cantidad de relaciones de cointegracion   (Inciso c)
// Trace y Max stat, si bien solo pide trace stat
vecrank mth1 mth2 mth3 mth6 mth9 mth12, trend(constant) max level99   //  al 99%
vecrank mth1 mth2 mth3 mth6 mth9 mth12, trend(constant) max levela    //  al 95% y 99% 
// No hace falta aclarar 2 lags porque por default Stata toma 2 lags, salvo que le indiquemos otro valor
// 4. Si encuentro que al menos una relación de cpointegracion, estimo el VECM: (Inciso d)
vec mth1 mth2 mth3 mth6 mth9 mth12, trend(constant) rank(4) lag(2)
// 5. Tests de Diagnostico
vecstable, graph         // Estabilidad del VEC
// El VECM es estable: como hay 4 relaciones de cointegracion entre las 6 variables, hay 2 tendencias estocasticas (o sea, k-r). 
matrix alfa = e(alpha)
matrix beta = e(beta)
matrix pi = e(pi)
matrix list beta
matrix beta_t = beta'   // Matriz beta traspuesta
matrix list beta_t


/* Les queda a ustedes escribir las 4 relaciones de cointegracion. 
Simplmente, para cada una de las 4 relaciones de cointegracion cuyos estimadores se guardan en beta_t, 
hay que tomar la suma de la multiplicacion de la tasa por el coeficiente que corresponde, como en el ejercicio 2 se 
hizo con una sola relacion de cointegracion.  */


// Ejercicio 4: VAR 


// Aca ustedes tienen que probar y ver si llegan a algo

use Base_PyM,clear

gen obs=_n
tsmktim yearmm, start(2003m1)   

tsset yearmm

gen infl=IPC/IPC[_n-1] - 1 
gen crec_m= M/M[_n-1] - 1

dfgls infl
dfgls crec_m

// Ambas series son I(0)

// A continuacion se sugiere como se puede encarar este ejercicio

// Probemos con 6 rezagos
var infl crec_m, lags(1/6)
// Reviso si existe la causalidad en sentido de Granger que se me pide 
vargranger
// Encuentro que crec_m no causa en sentido de Granger a la infl

// Pruebo con 12 rezagos y reviso con vargranger
var infl crec_m, lags(1/12)
vargranger
// Ahora encuentro causalidad en sentido de Granger que se me pide. Pero no terminamos aca
// Debo chequear que los 12 lags que impuse arbitrariamente esten justificados por alguno de los criterios de seleccion de lags
// Tambien debo chequear por estabilidad del VAR
// Y debo chequear que los residuos no presenten correlacion serial (test LM, de multiplicadores de Lagrange)
varsoc
varstable
varlmar, mlag(12)
// Todo anduvo ok excepto el test LM porque en 12 lags me da un p-value de 0.006. No sirve lo que encontramos

// Probemos con 18 lags ahora. Van a ver que todo funciona excepto que ninguno de los criterios de seleccion justifica usar 18 lags
// Pero con el comando varsoc vemos que 13 lags estaría justificado por AIC, de modo que probemos con 13 lags ahora. ¿Podemos decir algo ahora?
