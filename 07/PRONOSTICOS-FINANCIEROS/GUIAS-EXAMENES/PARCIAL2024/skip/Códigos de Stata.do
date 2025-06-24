*Códigos para el parcial.
*Siempre usar el clear para borrar todo de antemano
clear

*Abrir y cerrar un logfile
log using nombre que le tengo que poner, replace // Sin opcion "replace" les permite correrlo una sola vez con ese nombre 
log close //Conviene siempre cerrar el logfile ala final

*Primero defino el directorio y lo meto todo en una carpeta.

*Importacion de archivos. 
*Para archivos tipo .do, voy al File Import y busco el archivo.
use archivo, clear // Stata va a buscar esta base de datos en el directorio que le acabo de indicar.
insheet using "C:\Users\fergr\_UdeSA\Pronosticos\h_imput_200902.txt", clear //se usa para abrir archivos con extensión ".txt"

* Si tengo variables string, voy a necesitar destringearlas y otros códigos útiles
destring nombrevar, replace
drop if obs ><= numero //Sirve para eliminar observaciones de la base de datos.
rename old_name new_name
     
*Para regresiones
reg var1 var2 ...
predict y_sombrero, xb  //crea la variable y_sombrero con los valores predichos de y (recta estimada) 
predict res, residual  //crea la variable res que sera igual a los residuos
gen nombrevar = lo que queremos que sea
save data_new, replace
sort nombrevar nombrevar // ordena la base de datos por las variables que se mencionan a continuación
tostring account, generate(acct) //El comando "tostring" convierte variables numéricas en alfanuméricas.


*Tipos de test
test (var1=0) (var2=0) // Test F de que estos dos betas son simultaneamente iguales a cero
estat imtest, white // Test de White
estat hettest var1 // Test de Breush-Pagan 

*Series de tiempo
gen obs=_n	// Genera variable con nombre obs que toma valires 1, 2, 3, etc 
tsset obs   // Debemos indicar cual es la variable tiempo  
gen inflacion=(ipc/ipc[_n-1] -1)*100   // Stata entiende por IPC[_n-1] el primer rezago de IPC 
dfuller nombrevar // Para correr el DF sin lags
dfuller nombrevar, lags(2) trend regress   // Test ADF y "regress" permite ver la regresion
dfgls nombrevar // Nos va a dar los criterios de lags optimos para el DF
tsline nombrevar // Grafico de las series de tiempo

*Lags
gen IPC1=L.ipc	  // Genera el primer rezago de IPC  
gen IPC2=L2.ipc   // Genera el segundo rezago de IPC 
gen inf = (ipc/ipc1 -1 ) * 100    // Genera la serie inf que pueden corroborar es igual a inflacion
gen IPC_dif=D.ipc	// Genera con el nombre IPC_dif las primeras diferencias de IPC  
dfgls nombrevar // Nos va a dar los criterios de lags optimos para el DF

*Para ver la funcion de correlacion y la funcion de correlacion parcial:

ac nombrevar
pac nombrevar
estat dwatson // Estadistico de Durbin Watson para ver correlacion

*Para correr una regresion con errores que son AR(1), podemos manejarnos desde el menu o ejecutar
arima nombrevar, arima(1,0,0)

*Para guerdar una base de datos en formato stata (extension dta)
save "directorio", replace