* EJERCICIO 2

clear all
cd "/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06_Cuatrimestre/ECONOMETRIA/TPs/Datos_TP1"


use trade_ghana_1.dta

gen base = 1

* total de paises en base 1
qui su base if base == 1
global total_paises1 = r(N)
display "cantidad de paises en base 1: " $total_paises1

* porcentaje de paises por continente
levelsof region, local(levels)
foreach level of local levels {
	qui count if region == "`level'"
	local count = r(N)
    display "total de `level': " ( `count' / $total_paises1 ) * 100 "%"
}
* mismo idioma
qui su comlang_off
display "% de paises que comparten el idioma: " r(sum)/$total_paises1 * 100 "%"

* mismo idioma, contiguo
qui su comlang_off if contig == 1
display "% de paises que comparten el idioma: " r(sum)/$total_paises1 * 100 "%"

* importo base 2
append using trade_ghana_2.dta
replace base = 2 if _n > $total_paises1

*limpio imports
list imports if real(imports) == . & imports != ""
replace imports = subinstr(imports, ",", ".", .)
destring imports, replace

* total de paises en base 2
qui su base if base == 2
global total_paises2 = r(N)
display "cantidad de paises en base 2: " $total_paises2

* importaciones promedio para cada base
gen promedio_por_base = .
scalar totalav = 0
levelsof base, local(levels)
foreach level of local levels {
	qui su imports if base == `level', detail
	local avg = r(mean)
	local media = r(p50)
	replace promedio_por_base = r(mean) if base == `level'
    display "pormedio impo base `level': " `avg'
	display "media impo base `level': " `media'
	scalar totalav = totalav + `avg'
}

* Total
qui su imports, detail
display "promedio de todo impo: " r(mean)
display "media de todo impo: " r(p50)

* Simple
local num_levels = wordcount("`levels'")
display "promedio simple de los promedios: " scalar(totalav) / `num_levels'

* Ponderado
levelsof promedio_por_base, local(promedios)
gen proporcion = .
foreach promedio of local promedios {
	qui su imports
	local total = r(N)
	qui su imports if promedio_por_base == `promedio'
	replace proporcion = r(N)/ `total' * `promedio' if promedio_por_base==`promedio'
}

levelsof proporcion, local(asdf)
local suma = 0
foreach val of local asdf {
    local suma = `suma' + `val'
}
display "promedio ponderado de los promedios: " `suma'
drop proporcion
drop promedio_por_base

*limpio PBI
replace gdp = subinstr(gdp, "NO INFORMATION", ".", .)
destring gdp, replace

* Datos del PBI
qui su base, detail
local totaltotal = r(N)
qui su gdp, detail
display "promedio pbi: " r(mean)
display "desvio pbi: " r(sd)
display "faltantes pbi: " `totaltotal' - r(N)

* reemplazo con promedios
** promedio de gdp segun continente
gen pro_gdp_region = .
levelsof region, local(regiones)
foreach reg of local regiones{
	qui su gdp if region == "`reg'"
	replace pro_gdp_region = r(mean) if region == "`reg'"
}
replace gdp = pro_gdp_region if gdp == .

* correlaciobnes
cor gdp exports imports dist

* NX
gen NX = exports - imports
hist NX if NX != 0, width(66010.745)
