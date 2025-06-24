Prueba si hay evidencia de autocorrelación de orden 1 en los residuos de la regresión haciendo MCO.
$$
DW=\frac{\sum_{t=2}^T(e_{t}-e_{t-2})^2}{\sum_{t=1}^Te_{t}^2}
$$
$$
0 \leq DW \leq 4
$$
$DW\to 0$ Si hay autocorrelación de orden 1 positiva
$DW\to 4$ Si hay autocorrelación de orden 1 negativa

Los valores críticos para comparar con el estadístico DW se obtienen de la tabla de Durbin Watson para el número de observaciones (𝑇) y cantidad de parámetros (k) que se estiman en nuestro modelo. La tabla presenta dos valores críticos para un determinado “$T$” y determinado “k” que se denominan dL y dU.

$DW<2$ 
	$DW<dL$ 
		rechaza H0. Se concluye que hay autocorrelación de orden 1
	$DW>dL$
		se concluye que NO hay autocorrelación de orden 1
		
$dL<DW<dU$ 
	INCONCLUSO

$DW>dU$ 
	No se rechaza la H0 de que haya autocorrelación de orden 1

$DW>2$
	el estadístico es $4-DW$ y ese valor se compara con dL y dU tal como en el otro caso. Por ejemplo, cuando DW>2, si (4 – DW) < dL se rechaza la hipótesis nula de no autocorrelación de orden 1 y se concluye que existe autocorrelación de orden 1 negativa en los residuos de la regresión.

---
- Debe incluirse constante en la regresión
- no deben haber rezagos de la var dependiente en el lado derecho
