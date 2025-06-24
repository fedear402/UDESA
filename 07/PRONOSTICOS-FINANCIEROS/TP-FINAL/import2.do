cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS-FINANCIEROS/TP-FINAL"

import excel "LOPEZ-base_tp_final.xlsx", sheet("EDN.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
drop C
ipolate edn fecha, gen(edn_)
drop edn
rename edn_ edn
keep in 1/2737
save edn.dta, replace

import excel  "LOPEZ-base_tp_final.xlsx", sheet("CGPA2.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate cgpa2 fecha, gen(cgpa2_)
drop cgpa2
rename cgpa2_ cgpa2
keep in 1/2737
save cgpa2.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("TRAN.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate tran fecha, gen(tran_)
drop tran
rename tran_ tran
keep in 1/2737
save tran.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("CAPX.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate capx fecha, gen(capx_)
drop capx
rename capx_ capx
keep in 1/2737
save capx.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("CARC.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate carc fecha, gen(carc_)
drop carc
rename carc_ carc
keep in 1/2737
save carc.dta, replace


import excel "LOPEZ-base_tp_final.xlsx", sheet("DGCU2.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate dgcu fecha, gen(dgcu_)
drop dgcu
rename dgcu_ dgcu
keep in 1/2737
save dgcu.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("CEPU2.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate cepu fecha, gen(cepu_)
drop cepu
rename cepu_ cepu
keep in 1/2737
save cepu.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("CECO2.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate ceco fecha, gen(ceco_)
drop ceco
rename ceco_ ceco
keep in 1/2737
save ceco.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("TGNO4.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate tgno fecha, gen(tgno_)
drop tgno
rename tgno_ tgno
keep in 1/2737
save tgno.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("METR.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate metr fecha, gen(metr_)
drop metr
rename metr_ metr
keep in 1/2737
save metr.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("GBAN.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate gban fecha, gen(gban_)
drop gban
rename gban_ gban
keep in 1/2737
save gban.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("PAMP.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate pamp fecha, gen(pamp_)
drop pamp
rename pamp_ pamp
keep in 1/2737
save pamp.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("TGSU.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate tgsu fecha, gen(tgsu_)
drop tgsu
rename tgsu_ tgsu
keep in 1/2737
save tgsu.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("COME.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate come fecha, gen(come_)
drop come
rename come_ come
keep in 1/2737
save come.dta, replace

import excel "LOPEZ-base_tp_final.xlsx", sheet("YPFD.BA") firstrow clear
tsset fecha
format fecha %td
tsfill
ipolate ypfd fecha, gen(ypfd_)
drop ypfd
rename ypfd_ ypfd
keep in 1/2737
save ypfd.dta, replace

use edn.dta, clear
merge 1:1 fecha using cgpa2.dta
drop _merge
merge 1:1 fecha using tran.dta
drop _merge
merge 1:1 fecha using capx.dta
drop _merge
merge 1:1 fecha using carc.dta
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
merge 1:1 fecha using tgsu.dta
drop _merge
merge 1:1 fecha using pamp.dta
drop _merge
merge 1:1 fecha using come.dta
drop _merge
merge 1:1 fecha using ypfd.dta
drop _merge

drop C D E F G H


save Lopez-base-TP-FINAL.dta, replace
