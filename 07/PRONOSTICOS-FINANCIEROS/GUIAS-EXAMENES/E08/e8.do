set more off
clear all
cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/GUIAS-EXAMENES/E08"   
import excel using "broad.xlsx", cellrange(A5) firstrow sheet(Real)

** 2 )
** guarda una copia como dta
save broad.dta, replace

** 3 ) 
** Convierte la variable de fechas que estan como string a variables de fechas
tostring A, replace format(%td) force
gen y = substr(A, 6, 8)
egen m = seq(), f(1) t(12)
tostring m, replace
gen year = y + "m" + m
generate date = monthly(year, "YM")
format date %tm
drop year m y A
tsset date

** 4 )
order date, first

** 5 )
ds
local vars `r(varlist)'
foreach var in `vars' {
    local newname = lower("`var'")
    rename `var' `newname'
}
label variable  rbdz "Algeria"
label variable  rbar "Argentina"
label variable  rbau "Australia"
label variable  rbat "Austria"
label variable  rbbe "Belgium"
label variable  rbbr "Brazil"
label variable  rbbg "Bulgaria"
label variable  rbca "Canada"
label variable  rbcl "Chile"
label variable  rbcn "China"
label variable  rbtw "Chinise_Taipei"
label variable  rbco "Colombia"
label variable  rbhr "Croacia"
label variable  rbcy "Cyprus"
label variable  rbcz "Czech"
label variable  rbdk "Denmark"
label variable  rbee "Estonia"
label variable  rbxm "Euro_Area"
label variable  rbfi "Finland"
label variable  rbfr "France"
label variable  rbde "Germany"
label variable  rbgr "Greece"
label variable  rbhk "Hong Kong"
label variable  rbhu "Hungary"
label variable  rbis "Iceland"
label variable  rbin "India"
label variable  rbid "Indonesia"
label variable  rbie "Ireland"
label variable  rbil "Israel"
label variable  rbit "Italy"
label variable  rbjp "Japan"
label variable  rbkr "Korea"
label variable  rblv "Latvia"
label variable  rblt "Lithuania"
label variable  rblu "Luxemburgo"
label variable  rbmy "Malaysia"
label variable  rbmt "Malta"
label variable  rbmx "Mexico"
label variable  rbnl "Netherlands"
label variable  rbnz "New Zealand"
label variable  rbno "Norway"
label variable  rbpe "Peru"

** 6 )
tsmktim year2, start(1994m1) // ado para generar variable tiempo
order year2, first
tsset year2
*twoway line rbxm rbar rbbr year2, name(tcr)

/* En base a este gráfico indique si un aumento del tipo de cambio real es una
apreciación del TCR o una depreciación del TCR de la economía que analice. */

** 7 )
clear all
import excel Exports_and_Imports_by_Areas_and_Co.xlsx, sheet("Exports, FOB") cellrange(B7:L240) firstrow

** 8 )
rename B country
rename C Y2011
rename D Y2012
rename E Y2013
rename F Y2014
rename G Y2015
rename H Y2016
rename I Y2017
rename J Y2018
rename K Y2019
rename L Y2020


drop if _n==1 // Australia aparece repetido en filas 1 y 25
// Elimino subtotales (y cosas que no son economías)
drop if country=="Advanced Economies"
// drop if country=="Euro Area"
drop if country=="Austria"
drop if country=="Belgium"
drop if country=="Cyprus"
drop if country=="Estonia, Rep. of"
drop if country=="Finland"
drop if country=="France"
drop if country=="Germany"
drop if country=="Greece"
drop if country=="Ireland"
drop if country=="Italy"
drop if country=="Latvia"
drop if country=="Lithuania"
drop if country=="Luxembourg"
drop if country=="Malta"
drop if country=="Netherlands, The"
drop if country=="Portugal"
drop if country=="Slovak Rep."
drop if country=="Slovenia, Rep. of"
drop if country=="Spain"
drop if country=="Emerging and Developing Economies"
drop if country=="Emerging and Developing Asia"
drop if country=="Emerging and Developing Europe"
drop if country=="Middle East and Central Asia"
drop if country=="Sub-Saharan Africa"
drop if country=="Western Hemisphere"
drop if country=="Other Countries not included elsewhere"
drop if country=="Countries & Areas not specified"
drop if country=="Memorandum Items"
drop if country=="Africa"
drop if country=="Middle East"
drop if country=="European Union"
drop if country=="Emerging Market and Developing Economies by Source of Export Earnings: Fuel"
drop if country=="Emerging Market and Developing Economies by Source of Export Earnings: Nonfuel"
drop if country=="Europe not specified"
drop if country=="Africa not specified"
drop if country=="Asia not specified"
drop if country=="Sub-Saharan Africa"
drop if country=="Special Categories"

** 9 )
reshape long Y, i(country) j(year)
rename Y exports
sort year
by year: egen we = max(exports)
sort country year
save exp_uruy, replace





** 10 )
clear all
import excel Exports_and_Imports_by_Areas_and_Co.xlsx, sheet("Imports, CIF") cellrange(B7:M229) firstrow
rename B country
rename C Y2011
rename D Y2012
rename E Y2013
rename F Y2014
rename G Y2015
rename H Y2016
rename I Y2017
rename J Y2018
rename K Y2019
rename L Y2020
drop if _n==1 // Australia aparece repetido en filas 1 y 25
// Elimino subtotales (y cosas que no son economías)
drop if country=="Advanced Economies"
// drop if country=="Euro Area"
drop if country=="Austria"
drop if country=="Belgium"
drop if country=="Cyprus"
drop if country=="Estonia, Rep. of"
drop if country=="Finland"
drop if country=="France"
drop if country=="Germany"
drop if country=="Greece"
drop if country=="Ireland"
drop if country=="Italy"
drop if country=="Latvia"
drop if country=="Lithuania"
drop if country=="Luxembourg"
drop if country=="Malta"
drop if country=="Netherlands, The"
drop if country=="Portugal"
drop if country=="Slovak Rep."
drop if country=="Slovenia, Rep. of"
drop if country=="Spain"
drop if country=="Emerging and Developing Economies"
drop if country=="Emerging and Developing Asia"
drop if country=="Emerging and Developing Europe"
drop if country=="Middle East and Central Asia"
drop if country=="Sub-Saharan Africa"
drop if country=="Western Hemisphere"
drop if country=="Other Countries not included elsewhere"
drop if country=="Countries & Areas not specified"
drop if country=="Memorandum Items"
drop if country=="Africa"
drop if country=="Middle East"
drop if country=="European Union"
drop if country=="Emerging Market and Developing Economies by Source of Export Earnings: Fuel"
drop if country=="Emerging Market and Developing Economies by Source of Export Earnings: Nonfuel"
drop if country=="Europe not specified"
drop if country=="Africa not specified"
drop if country=="Asia not specified"
drop if country=="Sub-Saharan Africa"
drop if country=="Special Categories"
reshape long Y, i(country) j(year)
rename Y imports
sort year
by year: egen wi = max(imports)
sort country year
save imp_uruy, replace



* 11 )
clear all
use "imp_uruy.dta", clear
merge 1:1 country year using "exp_uruy.dta"

























