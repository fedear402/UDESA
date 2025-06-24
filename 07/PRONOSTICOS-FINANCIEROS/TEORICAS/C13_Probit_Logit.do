// Pronosticos - Clase 13

// Probit y Logit

/*Recordemos que estos modelos se usan cuando la variable dependiente es binaria.
Es importante destacar que con los comandos probit y logit se obtienen los 
estimadores de los beta y que estos NO son los efectos marginales */ 

//Base de Datos de participacion en la fuerza laboral

use mroz, clear

probit inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6  // Corre estimacion por PROBIT
mfx     // calcula los efectos marginales, pero se corre despues de correr probit
dprobit inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6 // calcula los efectos marginales
predict p_somb,xb

//Alternativamente, pueden correr primero dprobit como en la linea anterior y luego correr simplemente probit
dprobit inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6 // calcula los efectos marginales
probit

test (exper=0) (expersq=0) // Test de hipótesis que experiencia no afecta la probabilidad de estar empleado

predict p_somb, xb   // Calcula el valor predicho de y*(i)

probit inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6, vce(robust)  // Robust S.E.

logit inlf educ  nwifeinc exper expersq  age kidslt6 kidsge6  // Corre estimacion por LOGIT
mfx
