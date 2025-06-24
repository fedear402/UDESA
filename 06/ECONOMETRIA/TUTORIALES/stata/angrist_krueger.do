
* Seteamos directorio
cd "C:\Users\Rafael\Desktop\Cosas\Encare\Master UdeSA\Docencia Econometría\Tutorial 9"

* Importamos la base y borramos lo que pueda estar guardado en Stata
use "QOB.dta", clear

* Corremos la regresión de MCO normal

reg lwage educ ageq ageqsq race married smsa

* Corremos la primera etapa "a mano" y nos guardamos la parte explicada de educ

reg educ ageq ageqsq race married smsa i.qob
predict educ_gorro

* Corremos la segunda etapa

reg lwage educ_gorro ageq ageqsq race married smsa

* Corremos la regresión con 2SLS. Ver que los coeficientes coinciden (casi, 
* temas de redondeo) pero la inferencia no!

ivregress 2sls lwage (educ=i.qob) ageq ageqsq race married smsa

* Corremos la misma regresión pero mostrando la primera etapa, corriendo de
* nuevo la primera etapa para constrastar.

reg educ ageq ageqsq race married smsa i.qob
ivregress 2sls lwage (educ=i.qob) ageq ageqsq race married smsa, first

* Corremos un comando que muestra (entre otras cosas) el contraste de la
* hipótesis de que el instrumento excluido (qob) no afecta a educ

estat firststage


