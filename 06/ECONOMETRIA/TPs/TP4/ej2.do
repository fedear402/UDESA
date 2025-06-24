cd "/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECONOMETRIA/TPs/TP4"
clear all
use datos_brumm.dta
***  1)
reg inflat money output
test (_cons = 1) (money =  1) (output = -1)
* A MANO ****
* regresion sin restriccion
reg inflat money output
* me guardo el src
local sum_no_restr = e(rss)
*outreg2 using out2.doc, replace
* el modelo restringido
cap gen inflahat = 1 + money - output
* saco la src y la guardo
cap gen restr = (inflat - inflahat)^2
qui su restr
local sum_restr = r(sum)
* calculo con la formula del test F y comparo con el valor critico a 0.05:
disp ( (`sum_restr' - `sum_no_restr')/3 ) / ( `sum_no_restr'/(76 - 3 ) )
disp invFtail(3, 76 - 3 , 0.05)
***************
***   4)
ivregress 2sls inflat money (output=initial), first
ivregress 2sls inflat money (output=poprate), first
ivregress 2sls inflat money (output=inv), first
ivregress 2sls inflat money (output=school), first
* first stage
reg output money initial
reg output money poprate
reg output money inv
reg output money school
***   5)
reg inflat money output
ivregress 2sls inflat money (output=inv), first
ivregress 2sls inflat money (output=inv)
test output = -1
di invttail(76,0.005)
di invttail(76,0.025)
