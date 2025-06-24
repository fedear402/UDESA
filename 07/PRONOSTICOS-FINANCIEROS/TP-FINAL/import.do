clear all
import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("Demanda") firstrow clear
tsset fecha
format fecha %td

save Demanda.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("EDN.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
drop C
ipolate edn fecha, gen(edn_)
drop edn
rename edn_ edn
keep in 1/2707
save edn.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("CGPA2.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate cgpa2 fecha, gen(cgpa2_)
drop cgpa2
rename cgpa2_ cgpa2
keep in 1/2707
save cgpa2.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("TRAN.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate tran fecha, gen(tran_)
drop tran
rename tran_ tran
keep in 1/2707
save tran.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("TXAR.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate txar fecha, gen(txar_)
drop txar
rename txar_ txar
keep in 1/2707
save txar.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("CAPX.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate capx fecha, gen(capx_)
drop capx
rename capx_ capx
keep in 1/2707
save capx.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("CARC.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate carc fecha, gen(carc_)
drop carc
rename carc_ carc
keep in 1/2707
save carc.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("DOME.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate dome fecha, gen(dome_)
drop dome
rename dome_ dome
keep in 1/2707
save dome.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("DGCU2.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate dgcu fecha, gen(dgcu_)
drop dgcu
rename dgcu_ dgcu
keep in 1/2707
save dgcu.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("CEPU2.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate cepu fecha, gen(cepu_)
drop cepu
rename cepu_ cepu
keep in 1/2707
save cepu.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("CECO2.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate ceco fecha, gen(ceco_)
drop ceco
rename ceco_ ceco
keep in 1/2707
save ceco.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("TGNO4.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate tgno fecha, gen(tgno_)
drop tgno
rename tgno_ tgno
keep in 1/2707
save tgno.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("METR.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate metr fecha, gen(metr_)
drop metr
rename metr_ metr
keep in 1/2707
save metr.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("GBAN.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate gban fecha, gen(gban_)
drop gban
rename gban_ gban
keep in 1/2707
save gban.dta, replace

import excel "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL/base_tp_final.xlsx", sheet("ALUA.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate alua fecha, gen(alua_)
drop alua
rename alua_ alua
keep in 1/2707
save alua.dta, replace


use Demanda.dta, clear
merge 1:1 fecha using edn.dta
drop _merge
merge 1:1 fecha using cgpa2.dta
drop _merge
merge 1:1 fecha using tran.dta
drop _merge
merge 1:1 fecha using txar.dta
drop _merge
merge 1:1 fecha using capx.dta
drop _merge
merge 1:1 fecha using carc.dta
drop _merge
merge 1:1 fecha using dome.dta
drop _merge
merge 1:1 fecha using dgcu.dta
drop _merge
merge 1:1 fecha using cepu.dta
drop _merge
merge 1:1 fecha using ceco.dta
drop _merge
merge 1:1 fecha using tgno.dta
drop _merge
merge 1:1 fecha using metr.dta
drop _merge
merge 1:1 fecha using gban.dta
drop _merge
merge 1:1 fecha using alua.dta
drop _merge

drop C D E F G H

keep in 2/2708

save tp_final.dta, replace
