/**********************************************************************
                          Universidad de San Andrés
                                 ECONOMETRÍA
                                  Tutorial 0
						    Introducción a Stata

***********************************************************************/


*Comentar con * o /* y*/ en el caso de comentar multiples lineas


/*               Algunas expresiones utiles para la escritura                 */
* En Stata, los condicionales se suelen comenzar con if
* Las condiciones pueden ser igualdades (==) o desigualdades (!= >= <= > <)
* y se enumeran con los operadores and (&) y or (|) [ver más en: help operators]
* Si se quiere accionar sobre una serie de observaciones ordenadas, se puede 
* utilizar el condicional in en lugar de if. Por ejemplo, in 5/l condiciona la 
* acción sobre las observaciones de orden 5 hasta la última [ver más en: help in]
* También se puede discriminar por categorías de una variable utilizando by o 
* bysort (más cómodo). Tienen una sintaxis particular [ver más en: help by]

*Clear all para limpiar bases
clear all

/*Con el comando global guardamos información hasta cerrar Stata
En este caso vamos a guardar el directorio, cosa que puede ser muy util*/
global path1 ""

/*Fijo directorio. No es obligatorio hacerlo de este modo. 
Al hacerlo puedo no nombrarlo cada vez que importo o guardo un archivo*/
cd "$path1"

* Para ver en qué directorio estoy trabajando (me muestra la ruta)
pwd

 * Abrimos un archivo log:
log using "clase0.log", replace

/*                       Importar datos                                       */
*Importamos la base de datos, que en este caso está guardada en Excel
*-- import excel "Grades-A.xlsx", sheet("") firstrow
*Importamos la base de datos, que en este caso está guardada en Csv
*-- import delimited "Grades-A.csv", comma
* También se pueden importar los datos desde Excel haciendo Copy & Paste. No recomendable.
 
*Importamos la base de datos, que en este caso está guardada en DTA
use "Grades-A.dta", clear

/*                     Unir bases de datos                                    */
*Unir verticalmente (por variable) --> Append
append using "Grades-B.dta"
*Unir horizontalmente (por id) --> Merge. Crea por default variable _merge.
merge m:m id using "PersonalInformation-A-B.dta" 

/*                 Explorar y manipular base de datos                         */
display _N /*[Cantidad de observaciones en la base de datos]*/
describe /*[Muestra las variables junto a su formato]*/
describe FirstGrade /*[Muestra una sola variable junto a su formato]*/
list /*[Muestra todas las variables y observaciones]*/

/* Para ver el output 'pausado' */
set more on
list
* Ahora solo ven las primeras cinco observaciones
set more off
list
* Ahora sale el output completo


rename SSGrade SchoolGrade /*[Renombramos variable --> rename old_name new_name]*/
sort SchoolGrade /*[Ordeno observaciones en función del valor de una variable,
                 Lo hace en forma creciente]]*/
order Private, first /*[Ordeno en primer lugar la variable seleccionada]*/
order id SchoolGrade /*[Ordeno en primer lugar la variable seleccionada]*/
generate MeanGrade = 0.5*FirstGrade + 0.5*SecondGrade /*[Genero una variable nueva]*/
egen TotalGrade = rowtotal(FirstGrade SecondGrade) /*[Suma de fila --> rowtotal var1 var2]*/
drop MeanGrade TotalGrade

set seed 1 /*[Lo random es "deterministico" con seed. Clave para entregas]*/
gen New_Grade = uniform() /*[Genero una variable con numeros aleatorios entre 0 y 1]*/
replace New_Grade = runiform(1, 2) /*[Remplazo con numeros aleatorios entre 1 y 2]*/
replace New_Grade = runiformint(2, 100) /*[Remplazo con numeros aleatorios entre 2 y 100]*/
gen Age2=Age^2 /*[Genero cuadrado de variable]*/
gen Aprobado=.
replace Aprobado=0 if FinalGrade<4
replace Aprobado=1 if FinalGrade>=4
 
/*                      Estadisticas descriptivas                             */                  
summarize FirstGrade SecondGrade /*[Muestra estadisticas descriptivas de las variable/s seleccionada/s]*/
sum FirstGrade SecondGrade, detail
bysort Professor: summarize FirstGrade SecondGrade 
tabulate FinalGrade/*[Tabula la variable seleccionada: Freq, Percent, Cum.]*/
tabulate ParentsDegree
tabstat FinalGrade /*[Muestra la media de la variable seleccionada]*/
tabstat FirstGrade SecondGrade, statistics (mean sum count max) /*[Genera una tabla que muestra los estadisticos descriptivos indicados entre parentesis]*/
tabstat FirstGrade SecondGrade if Professor == 0, statistics (mean sum count max) /*[Genero tabla para una categoria]]]*/
tabstat FirstGrade SecondGrade if Professor == 1, statistics (mean sum count max) /*[Genero tabla para una categoria]*/
tabstat FirstGrade SecondGrade, by(Professor) statistics (mean sum count max) /*[Genero tabla por categoria]*/
tabstat FirstGrade SecondGrade if (Professor == 0 & FinalGrade>5) | (Professor == 1 & FinalGrade<7), statistics (mean sum count max) 

/*                             Correlations                                   */

corr ParentsDegree SchoolGrade FinalGrade
pwcorr ParentsDegree SchoolGrade FinalGrade, sig star(.05)

ssc install corrtable
corrtable ParentsDegree SchoolGrade FinalGrade
corrtable ParentsDegree SchoolGrade FinalGrade, half

/*                           Preserve and Restore                             */
*Guardo data
preserve
*Genero cambios
keep if Age<20/*[borra las observaciones de aquellos que tienen menos de 20 años]*/
display _N
*Retorno
restore
display _N

/*                                Graphs                                      */

twoway scatter FirstGrade SecondGrade
twoway scatter FirstGrade SecondGrade if (Age > 20)
twoway scatter FirstGrade SecondGrade if (Age > 20), scheme(s1color)
twoway scatter FirstGrade SecondGrade if (Age > 20), title("Gráfico 1") subtitle("Subt")
twoway scatter FirstGrade SecondGrade if (Age > 20), by(Professor)

help graph
help twoway


/*                             Missings                                       */
*Mas sobre missings https://www.stata.com/manuals/rmisstable.pdf
ssc install misstable
misstable summarize /*[All variables with missing values]*/
misstable summarize Age SchoolGrade ParentsDegree /*[Missing observations per variable]*/
count if missing(ParentsDegree) /*[Missing observations]*/
count if ParentsDegree==./*[Missing observations]*/


*log close
exit
