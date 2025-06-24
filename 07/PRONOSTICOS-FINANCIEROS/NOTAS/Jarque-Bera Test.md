$$
JB=\frac{n}{6}\left( Skewness^2+\frac{K_{E}^2}{4} \right)
$$
$$
JB \sim \chi_{2}^2
$$
$H_{0}: normal$

Valor crítica: aprox 9  si p(error tipo I) = 1%
Valor crítica: aprox 6 p(error tipo I) = 5%
### Hipótesis del Test de Jarque-Bera

- **Hipótesis Nula (H0):** La distribución de los datos es normal. Esto implica que la asimetría (skewness) y la curtosis de la distribución son iguales a las de una distribución normal teórica (asimetría = 0 y curtosis = 3).
    
- **Hipótesis Alternativa (H1):** La distribución de los datos no es normal. Esto significa que al menos uno de los parámetros (asimetría o curtosis) no coincide con el de una distribución normal.

### Probabilidad de Error Tipo I (Nivel de Significancia)

- Se usa comúnmente un nivel de significancia del 5% (𝛼=0.05α=0.05). Esto significa que existe un 5% de probabilidad de rechazar incorrectamente la hipótesis nula cuando es verdadera (error tipo I).


El estadístico JB sigue aproximadamente una distribución Chi-cuadrado (𝜒2χ2) con 2 grados de libertad bajo la hipótesis nula de normalidad.

#### Valores Críticos de la Distribución Chi-cuadrado con 2 Grados de Libertad

- Para un nivel de significancia del 5% (𝛼=0.05α=0.05), el valor crítico de 𝜒2χ2 con 2 grados de libertad es aproximadamente 5.991.

Si el valor calculado del estadístico JB es mayor que el valor crítico de 5.991, entonces se rechaza la hipótesis nula de normalidad a favor de la hipótesis alternativa con un nivel de significancia del 5%.

### Implementación en Stata

Para realizar el test de Jarque-Bera en Stata, puedes utilizar el comando `estat normality` después de ajustar un modelo de regresión, o puedes usar el comando `sktest` para testar la normalidad de una variable. Aquí está cómo usar `sktest`:

stata

Copy code

`sktest variable`

Reemplaza `variable` con el nombre de la variable que deseas probar. Este comando producirá los resultados del test de Jarque-Bera, incluyendo el valor del estadístico y el p-value correspondiente.