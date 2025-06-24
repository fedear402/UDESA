Consistencia de MCO depende de exogeneidad.
Cantidad de instrumentos necesarios la determina la estructura del problema. Siempre necesitas $k$. (no está atado a la cantidad de variables endógenas)

Si kas $x$ ya son exogenas, variables instrumentales es peor por el teorema de Gauss Markov. Hay un costo de eficiencia por usar IV si no era necesario. Es un problema de eficiencia. Es muy ineficiente. 

Validez de instrumentos
- Rango: $\mathbb{E}(z_{i}x_{i}')=\Sigma_{zx}$ finita, invertible. ONstrimentos no correlacionados con las variables a instrumentar.
- Ortogonalidad: $\mathbb{E}(z_{ik}u_{i})=0$. Instrumentos no correlacionados con no observables

## Sobreidentificación
$p > K$ insturmentos validos $z_{i}$. 
$$
\frac{1}{n} \sum_{i=1}^{n}  z_{i}(y_{i}-x_{i}' \hat{\beta}_{IV}) = 0
$$
sistema de $p$ ecuaciones y $K$ incógnitas. Si queres consistencia, podes sacar los que te sobran para poder resolver el problema. 

Con 2 instrumentos validos, cualquier combinación lineal es también un instrumento válido.

### Modelo
$z_{i}^{0}$ es vector de $p >K$ instrumentos
- Lineal
- Aleatoria
- Rango
- Ortogonal
- $V(z_{i}^{0}u_{i})=\sigma ^{2}\mathbb{E}(z_{i}^{0}z_{i}^{0'})$. Varianza finita positiva definida. Suponiendo homocedasticidad

Descartar $p-K$ instrumentos es consistente
Cualquier combinación lineal de IV es un instrumento válido
$$
Z=Z^{0} A
$$
$$
\hat{\beta}_{IV}= (Z'X)^{-1}Z'Y
$$
Tiene que ser consistente para cualquier $A$. 

Combinación de IV con minima varianza asintotica es :
$$
A = (Z^{0'}Z^{0})^{-1}Z^{0'}X
$$
$$
\hat{\beta}_{IV}^*= (Z'X)^{-1}Z'X
$$
$Z=Z^{0}A=Z^{0}(Z^{0'}Z^{0})^{-1}Z^{0'}X=P_{Z^{0}}X$

$$
(X' P_{Z^{0}}X) ^{ -1 } X' P_{Z^{0} Y}
$$
 El estimador optimo sobreidentificado es MCO.
$$
\hat{\beta}_{IV}^*= (X^{*'}X^{*})^{-1}X^{*'}Y^*
$$
$X^*=P_{Z^0}X$
$Y^*=P_{Z^0}Y$

(MC2E)

---
Si tenes menos instrumentos que parametros, entonces no podes hacer nada. solo si son iguales podes resolver porque tenes $p$ ecuaciones con $K$ incognitas.



# Bootstrap
Muestra $Y_{n}$, $Y\sim(\mu,\sigma ^{2})$ población
$\sigma ^{2}=V(Y)$ Variabilidad en los datos
$\bar{Y}= \frac{\sum_{i=1}^{n}}{n}$ . Objeto. estimador consistente de $\mu$ 
$V(\bar{Y})$ Otro objeto. Variabilidad en el estimador. 
$V(\bar{Y})=\frac{\sigma ^{2}}{n}$. Varianza de los datos usando la varianza de los datos
$\hat{V}(\bar{Y})= \frac{\hat{\sigma}^{2}}{n}$
Pero no deberias calcular el estimador de algo que ves una sola vez ($\bar{Y}$). ves varios $Y$ y por eso podrias calcularle estimadores, pero no varios $\bar{Y}$. 
En realidad observas solo una varianza, de la muestra. No podrias calcular la varianza de un estimador.
Para la media $\bar{Y}$ hay una formula pero no hay para la mediana. 
cual seria $V(Med(Y))$. Con muestra fija no hay forma de resolverlo. Lo mismo pasa con la moda. 
Pero con $\bar{Y}$ podes porque tiene formula y es lineal. La mediana no tiene formula, no es lineal, como la moda, como gini.

$\hat{V}(\bar{Y})= \frac{\hat{\sigma}^{2}}{n}$ para $\sigma$ tenes los $n$ datos pero para $\bar{Y}$ no, esa formula es como tendria que haber sido la varianza del estimador.

Se deberia poder computar varianza de $\bar{Y}$ sin usar la formula que salia de cosas lineales y formula y hacer eso mismo para para otros como la mediana

Algoritmo:
sacar muestras bootstrap: de los $n$ datos sacar una muestra de $n$ valores, con reemplazo
Sacar la media de esa muestra bootstrap
repetir $B$ veces, y con las $B$ estimaciones de la media, computar la varianza de las $B$ medias. y con eso estas


Bootstrap es un metodo de muestras grande
No importa el valor de $B$ 


---
# Heterocedasticidad
$$
E(XY)^{2} \leq E(X)^{2} E(Y)^{2} \qquad  \text{ Cauchy Schwarz}
$$

