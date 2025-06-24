// Pronosticos - Solucion a la Ejercitacion 10

// Modelo VECM del Ejercicio 1 Ejercitacion 9

clear
import excel "C:\Users\fergr\_UdeSA\Pronosticos\P_Ejer_9_Sol.xlsx", sheet("Ejercicio 1") cellrange(E1:G251) firstrow
gen obs=_n
tsset obs
dfgls y2
dfgls y1
tsline y1 y2
varsoc y1 y2
vecrank y1 y2, trend(none) max levela
vec y1 y2, trend(none) rank(1) lags(1)
matrix list e(pi)        // Matriz PI que vimos en clase = ALFA * BETA´
matrix list e(alpha)     // Matriz ALFA que vimos en clase
matrix list e(beta)      // Matriz BETA que vimos en clase
veclmar                  // Test LM de Autocorrelacion serial
vecstable                // Estabilidad del VEC






// Modelo VECM del Ejercicio 2 Ejercitacion 9

clear
import excel "C:\Users\fergr\_UdeSA\Pronosticos\P_Ejer_9_Sol.xlsx", sheet("Ejercicio 2") cellrange(F1:I251) firstrow
//use data_ejer9b, clear
gen obs=_n
tsset obs
dfgls y2
dfgls y1
dfgls y3
tsline y1 y2 y3
varsoc y1 y2 y3
vecrank y1 y2 y3, trend(none) max levela
vec y1 y2 y3, trend(none) rank(1) lags(1)
matrix list e(pi)        // Matriz PI que vimos en clase = ALFA * BETA´
matrix list e(alpha)     // Matriz ALFA que vimos en clase
matrix list e(beta)      // Matriz BETA que vimos en clase
veclmar                  // Test LM de Autocorrelacion serial
vecstable                // Estabilidad del VEC


// Modelo VECM del Ejercicio 3 Ejercitacion 9

clear
import excel "C:\Users\fergr\_UdeSA\Pronosticos\P_Ejer_9_Sol.xlsx", sheet("Ejercicio 3") cellrange(G1:K251) firstrow
gen obs=_n
tsset obs
dfgls y2
dfgls y1
dfgls y3
tsline y1 y2 y3
varsoc y1 y2 y3
vecrank y1 y2 y3, trend(none) max levela
vec y1 y2 y3, trend(none) rank(2) lags(1)
matrix list e(pi)        // Matriz PI que vimos en clase = ALFA * BETA´
matrix list e(alpha)     // Matriz ALFA que vimos en clase
matrix list e(beta)      // Matriz BETA que vimos en clase
veclmar                  // Test LM de Autocorrelacion serial
vecstable                // Estabilidad del VEC
