// Pronosticos -- Solucion a Ejercitacion 12

// Ejercicio 1:
use mroz, clear
regress lwage exper expersq educ  age kidslt6 kidsge6
test (age) (kidslt6) (kidsge6)     // Si no se aclara, Stata entiende que testeas que la restriccion sea igual a cero
regress lwage exper expersq educ  
lincom 2*(exper + 2*expersq*4)    // Esto les calcula la combinacion lineal que indiquen, sabiendo que la derivada parcial va a ser esta expresion que se indica
// Item e: Modelo de Probabilidad Lineal
regress inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6  
// Item f: Modelo Probit
probit inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6  // Corre estimacion por PROBIT
mfx     // calcula los efectos marginales, y se corre despues de correr probit. Evalua el g(xb) en la media de cada variable

// Item g: Modelo Logit
logit inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6  // Corre estimacion por LOGIT
mfx     
// Item h
logistic inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6  // Reporta odds ratios






// Ejercicio 2:
clear
import excel "MSFT_2002_data.xlsx", sheet("MSFT Historical Data") cellrange(A1:B5001) firstrow
gen t=_n
tsset t
gen ret_msft=ln(Price/Price[_n-1])
arch ret_msft, arch(1/1) garch(1/1)
tsappend, add(3) 
predict var_garch, variance dynamic(5001)
predict var1, variance     
gen vol_garch=sqrt(var_garch)    
list t vol_garch if t>5000 

