2022.
**1(a) Un estimador consistente es insesgado pero uno insesgado no necesariamente es consistente.** F. Un estimador consistente no necesariamente es insesgado. **(b) El método delta provee una estrategia para obtener un estimador consistente a partir de otro estimador que ya se sabe que es consistente.** F. El metodo delta te da un estimador de la varianza asintotica a partir de otro estimador que ya conoces su varianza asintotica; sí parte de uno consistente. **(c) El estimador de efectos fijos resuelve un problema de inconsistencia de MCO cuando las variables relevantes omitidas no varían por individuo.** F. Resuelve un problema de sesgo.  **(d) Si $\hat{\theta}$ es un estimador máximo verosímil e insesgado para $\theta_0$, entonces el estimador máximo verosímil de $\sqrt{\theta_0}$ es sesgado.** F/V. El estimador $\sqrt{\theta_0}$ no necesariamente es sesgado, lo que sí, es maximo verosimil. El tema es que $\sqrt{  }$  es concava por lo que la desigualdad de jensen $E(g(x)) \leq g(E(x))$ no es debil es estricta y entonces ahi sí te queda sesgado.


### 2. 
Supongamos que $Y_i, i = 1, \ldots, n$ son variables aleatorias independientes e idénticamente distribuidas con $E(Y_i) = 0$ y $V(Y_i) = \sigma^2 < \infty$. Consideremos $S_n^2 = \frac{1}{n} \sum_{i=1}^n (Y_i - \bar{Y}_n)^2$ (a) Mostrar que $S_n^2$ es un estimador consistente para $\sigma^2$. Ayuda: recordá que $\sigma^2 = E(Y^2) - E(Y)^2$ y que $S_n^2 = 1/n\sum Y_i^2 - \bar{Y}_n^2$ (b) Considera el estadístico $t_n$ definido como: $t_n \equiv \sqrt{n} \frac{\bar{Y}_n}{S_n}$ en donde $S_n = \sqrt{S_n^2}$. Demostrá que $t_n \xrightarrow{d} N(0, 1)$. 
$S_n^2 = \frac{1}{n} \sum_{i=1}^n (Y_i)^2 -\frac{1}{n} \sum_{i=1}^n 2  Y_{i} \bar{Y}_n +\frac{1}{n} \sum_{i=1}^n (\bar{Y}_n)^{2}=$
Usamos LGN porque asumimos que los $Y_{i}$ son iid y tienen espernanza finita. 



### 3. 
Consideremos el modelo lineal $Y = X\beta + u$, en donde $X$ incluye un intercepto y valen todos los supuestos clásicos, salvo que ahora $E(u|X) = \mu$, un vector constante (y con todos sus elementos iguales) y distinto de cero. Usando el teorema de Frisch-Waugh-Lovell, demostrá que el estimador de MCO de las pendientes sigue siendo insesgado.

### 4. 
Suponé que estás interesado en el siguiente modelo

$$Y_i = \beta_1 X_i + \beta_2 Z_i + u_i$$

en donde $Y_i$ son los logaritmos de salarios, $X_i$ la educación en años y $Z_i$ es un indicador de inteligencia de la persona. Discutí los efectos sobre el sesgo del estimador mínimo-cuadrático en las siguientes circunstancias.

(a) El INDEC te otorga información de todas las variables, pero solo para personas que terminaron la escuela primaria y pasaron un test de inteligencia.

(b) El INDEC te da información para todas las personas, pero no te da información sobre la inteligencia.

(c) ¿Cómo es que disponer de información de paneles (para los mismos individuos en varios períodos) puede ayudar a resolver el problema del punto anterior?

**NOTA.** En este ejercicio espero respuestas cortas, de no más de cuatro líneas por ítem, sin demostraciones.

---

# Econometría Avanzada. 2023. Walter Sosa Escudero

### 1. Verdadero o falso: 
Indique si las siguientes afirmaciones son verdaderas o falsas y justifique su respuesta. Se espera una respuesta corta, de no más de 7 líneas por ítem. No se asignará puntaje a respuestas sin justificación.

(a) El método delta provee una estrategia para obtener la distribución asintótica de una función continua de un estimador cuya distribución asintótica es conocida.

(b) Cuando el estimador de MCO es consistente, de ser sesgado, el sesgo tiende a desaparecer cuando el tamaño de la muestra tiende a infinito.

(c) En el modelo probit, $\partial E(y|x)/\partial x_k$ es positiva porque $f(x'\beta) > 0$ para cualquier valor de $x'\beta$.

(d) El 'artilugio' de Cramer-Wold se usa para garantizar que un vector converge en probabilidad a un vector de constantes. 


2. **Consideremos $S^2 = \sum_{i=1}^n e_i^2/n$, en donde $e_i$ son residuos de regresar $Y$ en $X$. Suponé que valen todos los supuestos que hicimos para demostrar que el estimador de MCO es insesgado, y además que los $u_i$ son independientes e idénticamente distribuidos con $E(u^{2}_i|x_i) = \sigma_0^2$. Demostrá que $S^2$ es un estimador consistente para $\sigma_0^2$. Espero una prueba detallada como las que hicimos en clase, explicitando en cada paso los supuestos que utilizás.**  $S^{2}=e'e/n=u'M_{X}u/n=u'(I-X(X'X)^{-1}X)u / n$. Si 

### 3. 
Consideremos el modelo lineal $Y = X\beta + u$, en donde $X$ es una matriz de $K$ variables explicativas y $n$ observaciones. Suponé que $Z$ es una matriz de $p > K$ instrumentos válidos. Demostrá que el estimador de mínimos cuadrados en dos etapas de $\beta$ es idéntico al estimador de MCO que regresa $Y$ en $X$ y $H$, en donde $H$ son residuos de regresar $X$ en $Z$. Ayuda: usá el Teorema de Frisch/Waugh/Lovell para 'eliminar' el efecto de $H$.

### 4. 
Suponé que estás interesado en el siguiente modelo

$$Y_i = \beta_1 X_i + \beta_2 G_i + u_i$$

en donde $Y_i$ son los logaritmos de salarios, $X_i$ la educación en años y $G_i$ es un indicador del género.

(a) ¿Qué efecto tiene sobre el estimador MCO omitir la inteligencia de los individuos?

(b) ¿Qué efecto tiene sobre el estimador MCO que el INDEC solo te dé información de personas que pasaron un test de inteligencia?

(c) ¿Qué efecto tiene en el estimador de MCO la correlación entre educación y género?

(d) ¿Cómo construirías el error estándar de $e^{\hat{\beta}_2} - 1$ usando bootstrap?

**NOTA.** En este ejercicio espero respuestas cortas, de no más de seis líneas por ítem, sin demostraciones.

---

# Econometría Avanzada. 2024. Walter Sosa Escudero


### 1. Verdadero o falso: 
Indique si las siguientes afirmaciones son verdaderas o falsas y justifique su respuesta. Se espera una respuesta corta, de no más de 7 líneas por ítem. No se asignará puntaje a respuestas sin justificación.

(a) Bootstrap es un método para obtener la varianza de una función diferenciable de un estimador cuya distribución asintótica es conocida.

(b) El estimador de efectos fijos resuelve el problema de sesgo por variable omitida.

(c) En el modelo probit, $\partial E(y|x)/\partial x_k$ es positiva si y solo si $\beta_k > 0$.

(d) La propiedad de invariancia dice que si $\hat{\theta}$ es MV para $\theta_0$, entonces $g(\hat{\theta})$ es consistente para $g(\theta_0)$ para cualquier $g(.)$ invertible.

### 2. 
Supongamos que $Y_i, i = 1, \ldots, n$ son variables aleatorias independientes e idénticamente distribuidas con $E(Y_i) = 0$ y $V(Y_i) = \sigma^2 < \infty$. Consideremos

$$S_n^2 = \frac{1}{n} \sum_{i=1}^n (Y_i - \bar{Y}_n)^2$$

(a) Mostrar que $S_n^2$ es un estimador consistente para $\sigma^2$. Ayuda: recordá que $\sigma^2 = E(Y^2) - E(Y)^2$ y que $S_n^2 = 1/n\sum Y_i^2 - \bar{Y}_n^2$

(b) Considera el estadístico $t_n$ definido como:

$$t_n \equiv \sqrt{n} \frac{\bar{Y}_n}{S_n}$$

en donde $S_n = \sqrt{S_n^2}$. Demostrá que $t_n \xrightarrow{d} N(0, 1)$. Nota: podés usar el resultado anterior sin haberlo demostrado, es decir, tomar la consistencia de $S_n^2$ como dada.

*Aclaración: espero una demostración detallada y formal de estos resultados, como las que trabajamos en clase.*

### 3. 
Consideremos el modelo de variables instrumentales para el caso exactamente identificado, de modo que $X$ y $Z$ tienen exactamente $K$ columnas. En clase derivamos el estimador de variables instrumentales, $\hat{\beta}_{VI}$. Consideremos un estimador alternativo, $\tilde{\beta}_{VI}$, que regresa las predicciones de $Y$ en base a $Z$ en las predicciones de $X$ en base a $Z$. Mostrar que $\tilde{\beta} = \hat{\beta}_{VI}$. Ayuda 1: recordar que $(AB)^{-1} = B^{-1}A^{-1}$ si $A$ y $B$ son invertibles. Ayuda 2: decenas de veces les dije en clase que es importante chequear las dimensiones de los vectores y matrices.

### 4. 
Suponé que estás interesado en el siguiente modelo

$$Y_i = \beta_1 X_i + \beta_2 G_i + u_i$$

en donde $Y_i$ es la tasa de criminalidad en la región $i$, $X_i$ es la superficie de la región $i$ (en kilómetros cuadrados) y $G_i$ es un índice de eficiencia del sistema judicial de la región $i$ (mayor cuanto más eficiente es el sistema).

(a) ¿Bajo qué condiciones omitir la ineficiencia no sesga al estimador MCO que regresa $Y$ en $X$?

(b) ¿Qué efecto tiene sobre el estimador MCO que no haya observaciones disponibles para regiones muy pequeñas?

(c) Supongamos que $\beta_1$ y $\beta_2$ son distintos de cero y que $X$ y $G$ son independientes. ¿Cuál es el efecto sobre el sesgo del estimador que regresa $Y$ solo en $X$ si no hay observaciones para regiones muy pequeñas?

(d) ¿Cómo construirías un estimador consistente de $e^{\hat{\beta}_2} - 1$ y de su varianza asintótica? (en este caso, suponer que no hay problemas ni de omisión de variables ni de selectividad)

**NOTA.** En este ejercicio espero respuestas cortas, de no más de seis líneas por ítem, sin demostraciones.