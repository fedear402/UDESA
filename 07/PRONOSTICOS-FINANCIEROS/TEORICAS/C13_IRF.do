// Pronosticos 

// IRF: Impulse Response Functions


// Ejemplo 1: Modelos VAR
cd C:\Users\fergr\_UdeSA\Pronosticos
use Precios_y_Dinero,clear

tsmktim yearmm, start(2003m1)   

tsset yearmm

gen infl=IPC/IPC[_n-1] - 1 
gen crec_m= M/M[_n-1] - 1

var crec_m infl, lags(1/2)
varsoc
varstable, graph
vargranger                     // Cuando ven esto, ¿cual de las dos variables dirian que es mas exogena y cual mas endogena?

/* IRF: las funciones de impulso-respuesta miden el efecto de un shock en una variable endogena sobre la misma
variable y sobre las demas variables endogenas. Primero es necesario haber corrido un VAR/VEC/ARIMA. */

irf create order1, step(12) set(var1, replace) order(crec_m infl) replace           // "irf create" crea el archivo var1.irf 
// la opcion step(12) indica que va a calcular los impactos del shock por hasta 12 periodos (meses) 


var crec_m infl, lags(1/2)
irf table irf, impulse(infl) response(crec_m)   //Genero una tabla con las respuestas sobre crec_m de un impulso (shock) sobre inflacion 
// Notar que el primer valor de la tabla es -0.788619 que coincide con el coeficiente de [crec_m]L1.infl
// Notar que el segundo valor es -0.0898. 
// Cuando infl(t) es shockeado encontramos segun la estimacion del VAR que crec_m(t+1) aumenta en -0.788619 (cae) y ademas
// infl(t+1) aumenta en 0.532. De manera que si queremos ver que pasa en t+2, podemos decir que crec_m(t+2) va a aumentar en
// 0.15*(-0.78)+(-0.215)*0+(-0.789)*0.5322+0.45*1    es decir,
// [crec_m]L1.crec_m*(-0.78)+[crec_m]L2.crec_m*0+[crec_m]L1.infl*0.5322+[crec_m]L2.infl*1
// Esta cuenta da el valor de -0.0898 que aparece como step 2

irf table irf, impulse(infl) response(crec_m infl)            // Pedimos la respuesta en las dos variables en lugar de una sola del shock en infl
irf table irf, impulse(infl) response(crec_m infl) noci       // Que no incluya los intervalos de confianza (noci); CI=Confidence Intervals
irf table oirf, impulse(infl) response(crec_m)                // Muestra la funcion de impulso-respuesta del modelo estimado ortogonalizado 
irf table oirf, impulse(infl) response(crec_m infl) noci      // idem con respuesta en ambas y sin CI 
irf table oirf fevd, impulse(infl) response(crec_m infl) noci // fevd=Forecast Error Variance Decomposition (FEVD)

// La FEVD indica cuanto de la variabilidad en la variable dependiente es explicado por un shock a la variable misma versus
// un shock a cualquiera de las demas variables endogenas

// En esta ultima tabla el valor de 0.9889 de la ultima columna, (2) (FEVD), step 12, se interpreta de esta manera:
// Esta ultima columna contiene la respuesta sobre infl de un impulso en infl (ver al final del cuadro, abajo, nota aclaratoria)
// De manera que despues de 12 meses, el 98,89% de la variabilidad en infl (el shock tuvo lugar en step 0) obedece a shocks sobre la misma variable (infl)
// El valor de (1) fevd, step 6, de 0.0434 se interpreta como que el 4,34% de la variabilidad en crec_m obedece a shocks sobre la inflacion
  
irf table fevd, impulse(crec_m infl) response(crec_m) noci    // Como tenemos 2 variables solamente, notar que la suma de las columnas da 1
irf table fevd, impulse(crec_m infl) response(infl) noci 

irf graph irf, impulse(infl) response(crec_m)          // Grafico de la IRF que se explicita 

irf graph oirf, impulse(infl) response(crec_m)         // Grafico de la OIRF que se explicita 

irf graph irf, impulse(infl) response(crec_m infl)     // 2 Graficos 



// Ejemplo 2: UK Rates
// Usemos solo dos tasas para analizar el caso bivariado: mth1 y mth12

use UK_rates, clear
gen obs=_n
tsset obs
// 1. Primero testeamos por raices unitarias cada tasa (omitido)
// 2. Luego elegimos el número de lags segun alguno de los criterios de seleccion:
varsoc mth1 mth12
// 3. Testeamos por la cantidad de relaciones de cointegracion
vecrank mth1 mth12, trend(constant) max levela
// 4. Si encuentro que hay al amenos una relación de cpointegracion, estimo el VECM:
vec mth1 mth12, trend(constant) rank(1) lags(2)
// 5. Tests de Diagnostico
veclmar                  // Test LM de Autocorrelacion serial
vecstable, graph         // Estabilidad del VEC
  


// Causalidad en Sentido de Granger en VECM: caso de VARSOC indicando que cantidad optima es de 2 lags
vec mth1 mth12, trend(constant) rank(1) lags(2)
test ([D_mth1]L1._ce1=0) ([D_mth1]LD.mth12=0)    // H0: mth12 no causa en sentido de Granger a mth1
test ([D_mth12]LD.mth1=0) ([D_mth12]L1._ce1=0)   // H0: mth1 no causa en sentido de Granger a mth12

// Funciones de Impulso Respuesta
irf set vec_ex, replace
irf create vec_ex, step(50) replace
irf graph oirf
irf graph oirf, impulse(mth1 mth12) response(mth1 mth12)




/* Manual de Stata:
https://www.stata.com/manuals/tsirfcreate.pdf#tsirfcreate
https://www.stata.com/manuals/tsirf.pdf
https://www.stata.com/manuals13/tsirftable.pdf#tsirftable
https://www.stata.com/manuals/tsirfgraph.pdf#tsirfgraph


