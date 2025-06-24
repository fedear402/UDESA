// Solucion de la Ejercitacion 5 - Ejercicio 2, Ejemplo de Carol Alexander (CA), paginas 218-219

clear

cd C:\Users\fergr\_UdeSA\Pronosticos  // Aca ustedes deben cambiar la carpeta por aquella donde hayan descargado el Excel con los datos de este ejercicio
 
import excel P_Ejer_5_Excel_Datos_Ejer_2.xlsx, sheet("Data") firstrow   // Acá abro el Excel, que debio previamente haber sido descargado en la carpeta anterior
gen obs=_n                                                               // Genero una variable tiempo 
tsset obs                                                                // Indico a Stata cual es mi variable tiempo

//  FTSE

// Primero genero las variables que necesitamos para correr el ADF en niveles:
// Recuerden que "gen" es la abreviacion de "generate" y este comando funciona del siguiente modo:
// A la izquierda del "=" indican que nombre le quieren dar a la variable y a la derecha del "=" indican la operacion matematica que debe realizar Stata
gen log_FTSE100=log(FTSE100)             // log(precio)
gen delta_log_FTSE100=D.log_FTSE100      // delta log(precio) = retorno logaritmico
gen log_FTSE100_1=L.log_FTSE100          // Primer rezago de log(precio)
gen delta_log_FTSE100_1=L.delta_log_FTSE100   // Primer rezago de delta log(precio)

regress delta_log_FTSE100 log_FTSE100_1 delta_log_FTSE100_1   // Esta es la primera regresion que corre CA 

// Tambien debemos generar las variables que necesitamos para correr el ADF en primeras diferencias:
gen delta2_log_FTSE100=D2.log_FTSE100    // Segundas diferencias de log(precio)
gen delta2_log_FTSE100_1=L.delta2_log_FTSE100   // Primer rezago de segundas diferencias de log(precio)

regress delta2_log_FTSE100 delta_log_FTSE100_1 delta2_log_FTSE100_1  // Esta es la segunda regresion que corre CA 

// Esta es la primera regresion que corre CA. Notar que el ADF coincide con la celda AD19 
regress delta_log_FTSE100 log_FTSE100_1 delta_log_FTSE100_1
dfuller log_FTSE100, lags(1)  regress 

// Esta es la segunda regresion que corre CA. Notar que el ADF coincide con la celda AD39
regress delta2_log_FTSE100 delta_log_FTSE100_1 delta2_log_FTSE100_1
dfuller D.log_FTSE100, lags(1)  regress 


// SP500 (al script anterior le cambio el nombre a las variables; es esencialmente lo mismo)

// Primero genero las variables que necesitamos para correr el ADF en niveles:
gen log_SP500=log(SP500)             // log(precio)
gen delta_log_SP500=D.log_SP500      // delta log(precio) = retorno logaritmico
gen log_SP500_1=L.log_SP500          // Primer rezago de log(precio)
gen delta_log_SP500_1=L.delta_log_SP500   // Primer rezago de delta log(precio)

regress delta_log_SP500 log_SP500_1 delta_log_SP500_1   // Esta es la tercera regresion que corre CA 

// Tambien debemos generar las variables que necesitamos para correr el ADF en primeras diferencias:
gen delta2_log_SP500=D2.log_SP500 
gen delta2_log_SP500_1=L.delta2_log_SP500

regress delta2_log_SP500 delta_log_SP500_1 delta2_log_SP500_1

regress delta_log_SP500 log_SP500_1 delta_log_SP500_1 if _n>3  // Notar que el coeficiente de "log_SP500_1" coincide con la celda AD59
regress delta_log_SP500 log_SP500_1 delta_log_SP500_1 
dfuller log_SP500, lags(1)  regress 

regress delta2_log_SP500 delta_log_SP500_1 delta2_log_SP500_1  // Notar que el ADF coincide con la celda AD59
dfuller D.log_SP500, lags(1)  regress 


//  Tipo de cambio Pound - US dollar - Esto es esencialmente lo mismo que lo anterior

// Genero las variables que voy a necesitar 
gen log_FX=log(FX)             
gen delta_log_FX=D.log_FX      
gen log_FX_1=L.log_FX          
gen delta_log_FX_1=L.delta_log_FX   

regress delta_log_FX log_FX_1 delta_log_FX_1

gen delta2_log_FX=D2.log_FX 
gen delta2_log_FX_1=L.delta2_log_FX

regress delta2_log_FX delta_log_FX_1 delta2_log_FX_1

regress delta_log_FX log_FX_1 delta_log_FX_1
dfuller log_FX, lags(1)  regress 

regress delta2_log_FX delta_log_FX_1 delta2_log_FX_1
dfuller D.log_FX, lags(1)  regress 

// Siempre que no entiendan el funcionamiento de un comando o de una opcion de un comando pueden escribir en la ventana 
// de comandos HELP y el nombre del comando, y se les abre el help con la descripcion y ejemplos. 
// Prueben, por ejemplo, escribiendo en la ventana de comandos "help regress" sin comillas.
