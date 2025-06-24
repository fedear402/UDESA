// Programa de Fernando Grosz para datos de balances del BCRA 
// Curso de Pronosticos 2024  - Clase 8
// Departamento de Economia

clear
cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TEORICAS"   
// Root Folder: ustedes deben indicar aca el nombre de la carpeta en la computadora de ustedes

*insheet using "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TEORICAS/h_imput_200902.txt", clear
/* el comando "insheet" se usa para abrir archivos con extensión ".txt"
Miren los datos, haciendo click en el spreadheet con lupa 
Hay 4 variables y todas son números. Por eso en la Ventana de Variables, en 
FORMAT aparece una "g" al final. Cuando son alfanuméricas, aparece una "s" de string
Escriban en la command window (la chiquita, abajo de la ventana de resultados, "help insheet" 
y se les va a abrir el help*/
  
*rename v1 bank
*rename v2 year
*rename v3 account
*rename v4 number

*save h_imput_200902.dta, replace  
use h_imput_200902.dta
// Con este comando guardo la base de datos 
// con formato Stata en la root folder

/* 
"Replace" hace que si ya existía un archivo con ese nombre, lo reemplace con el 
mismo nombre (y se perderá el anterior) 

"Use xxx, clear" es un comando que sirve para abrir un archivo
"Rename old_name new_name" cambia el nombre de una variable de old_name a 
new_name
 
Pueden ver el listado de bancos en el siguiente link:
http://www.bcra.gob.ar/SistemasFinancierosYdePagos/Sistema_financiero_nomina_de_entidades.asp?bco=AAA00&tipo=1
Pueden ver el listado de cuentas en el siguiente link:
http://www.bcra.gov.ar/pdfs/comytexord/A0007.pdf
*/

sort bank year account
tostring account, generate(acct)
gen acct1 = substr(acct,1,1)
gen acct2 = substr(acct,1,2)
gen acct3 = substr(acct,1,3)
gen acct4 = substr(acct,1,4)

/* 
El comando "sort" ordena la base de datos por las variables que se mencionan 
a continuación: acá queremos de menor a mayor segun bank,
luego dentro de cada bank, de menor a mayor segun year, 
y luego, dentro de cada bank y year de menor a mayor según account

El comando "tostring" convierte variables numéricas en alfanuméricas.

Luego estamos generando las variables acct1, acct2, acct3 
y acct4 que consisten en los primeros 1, 2, 3 ó 4 primeros 
caracteres de account, respectivamente. 
*/

egen bank_year=group(bank year)
keep if bank <999
save data_new, replace

/*
El comando "egen" tiene muchos usos. 
En este caso, "egen xx=group(var1 var2)", 
me genera una nueva variable que se llama xx (bank_year)
que contiene un valor diferente para cada banco y para cada mes.

El comando "keep" indica lo que me queda en la base de datos; o sea, me quedo
con los datos que cumplen la condición que le estoy indicando y elimina lo 
demás. Es lo opuesto al comando "drop"
*/

***************************        CODE        ***********************

* Assets
use data_new, clear
keep if acct1=="1"
bysort bank_year: egen assets=sum(number)
collapse assets, by (bank year)
sort bank year
save assets, replace

/* "bysort bank_year: egen assets=sum(number)" le indica a Stata
sumar la variable "number" para cada bank_year y la llamará 
"assets"
Acá ven otro uso de "egen": "Egen xx=sum(var1)" te suma var1 y la llama xx

Si ustedes miran el Plan de Cuentas del BCRA, todo lo que 
empieza con "1" son cuentas del activo. De modo que el total
obtenido es el activo y lo guardo con el nombre "assets"
*/
  
* Liabilities
use data_new, clear
keep if acct1=="3"
bysort bank_year: egen liab=sum(number)
collapse liab, by (bank year)
sort bank year
save liab, replace

*Capital
use data_new, clear
keep if acct1=="4"
bysort bank_year: egen capi=sum(number)
collapse capi, by (bank year)
sort bank year
save capi, replace

* Loans to Private Sector
use data_new, clear
keep if acct4=="1317"  | acct4=="1357"
bysort bank_year: egen loans=sum(number)
collapse loans, by (bank year)
sort bank year
save loans, replace



***********************************  CURRENCY MISMATCH ****************************

// Ahora en lugar de abrir en cada paso la base data_new, vamos a usar preserve - restore. Esto hace más rapido al Stata

*Financial Assets in AR$
use data_new, clear
preserve
keep if acct3=="111" | acct3=="112" | acct3=="121"|acct3=="131" | acct3=="132" | acct3=="141" | acct3=="142" | acct3=="151" | acct3=="161" | acct3=="231"   
bysort bank_year: egen fin_assets_ar=sum(number)
collapse fin_assets_ar, by (bank year)
sort bank year
save fin_assets_ar, replace
restore


*Financial Assets in foreign currency
preserve
keep if acct3=="115" | acct3=="116" | acct3=="125"|acct3=="126"|acct3=="135"|acct3=="136"|acct3=="145"|acct3=="146"|acct3=="155"|acct3=="165"|acct3=="235" 
bysort bank_year: egen fin_assets_us=sum(number)
collapse fin_assets_us, by (bank year)
sort bank year
save fin_assets_us, replace
restore


*Financial Liabilities in AR$
preserve
keep if acct3=="311" | acct3=="312" | acct3=="321" | acct3=="322" | acct3=="331" | acct3=="332"  | acct3=="351" | acct3=="361" | acct3=="362" 
bysort bank_year: egen fin_liab_ar=sum(number)
collapse fin_liab_ar, by (bank year)
sort bank year
save fin_liab_ar, replace
restore

***************************************************************************************

// Cambiamos de tema: ahora vamos a fusionar (unir) las distintas bases de datos: 
// primero las que tienen datos de bancos; luego le vamos a agregar variables macro

/////////////////////   MERGE   /////////////////////////

use assets, clear
merge bank year using liab capi loans    
// Aca estoy uniendo assets con liab, capi y loans. Aca podemos agregar, 
// si quisieramos, las que creamos de currency mismatch

replace capi=-capi    
// le cambio el signo al patrimonio porque por una cuestion contable aparece 
// con signo negativo tanto el pasivo como el patrimonio

replace liab=-liab
drop _merge*
save data_new1, replace

/////  MERGE VARIABLES MACRO   /////    
// Recuerden, para hacer un merge, deben estar ordenados los archivos en 
// la variable a traves de la cual hacen el merge

use data_new1, clear
sort year bank
merge year using macrodata  
// El merge lo hago por year, porque las variables 
// macro no cambian con los bancos

drop _merge*
sort bank  
merge bank using newnames2
drop _merge*
sort bank year
tsset bank year   // Acá defino que mi base de datos es un panel

* Genero algunas variables:

sort bank year
gen cap_rat=capi/assets
by bank: gen grloans = loans/loans[_n-1]    
// / Noten aca que debemos indicar "by bank", si no, me va a generar mal el primer 
// valor de cada banco

by bank: gen dcall = call - call[_n-1]      
// Noten que como ya fusione la base de datos macro con la de bancos,
//  aca debo indicar "by bank" 

sort bank year
drop if year < 200400
drop if year > 200900

///   MARKET SHARE DE ASSETS
bysort year: egen ssassets=sum(assets)
gen asset_share=100*assets/ssassets

forvalues year=200406(100)200806 { 
preserve
keep if year==`year'
gsort -asset_share 
di "`year'"
list nombre asset_share 
restore
}

