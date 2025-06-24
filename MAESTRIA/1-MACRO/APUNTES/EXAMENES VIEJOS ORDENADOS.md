# Examen Final - Primer Trimestre - 2024

## I Devaluación: Niveles vs Tasas (20 puntos) F

Considere un marco como el del modelo de Sidrausky, en una economía pequeña y abierta, donde el agente representativo busca maximizar

$$\int_0^{\infty} [U(c_t) + V(m_t)] e^{-\rho t} dt, \quad (1)$$

sujeto a

$$\dot{m}_t = y - c_t - \pi_t m_t + g_t \quad (2)$$


2. Resuelva las condiciones de primer orden y calcule la ecuación $\dot{c} = 0$.

3. Combine la ecuación de $\dot{c} = 0$ de la respuesta anterior con la de $\dot{m} = 0$ del punto 1 (es decir, reemplazando $g$ para compensar por el impuesto inflacionario). Dibuje el diagrama de fases y muestre allí el estado estacionario.

4. Considere el efecto de una devaluación, que puede interpretarse como una reducción exógena en $m$. Describa la dinámica.

5. Ahora considera un aumento exógeno en la tasa de inflación/devaluación $\pi$. Describa la dinámica.

6. Explique las diferencias en la respuesta del consumo y la balanza de pagos a una devaluación y a un cambio en la tasa de devaluación.



## II Seguridad Social Según el Banco Mundial (20 puntos) F

Considere un modelo de generaciones superpuestas de dos períodos. La función de utilidad del consumidor típico nacido en el tiempo $t$ es

$$\ln c_{1t} + \ln c_{2t+1} \quad (1)$$

El consumidor tiene un ingreso exógeno $w_t$ en el primer período de su vida (para el consumidor descrito arriba es el período $t$) y puede consumir $c_t$ o ahorrar $s_t$. Los ahorros ganan una tasa de interés $r_{t+1}$ que consideramos exógena.

1. Escriba el problema del consumidor, estableciendo la restricción en el primer período y en el segundo período, y resuelva la tasa de ahorro.

2. ¿Por qué el consumidor no responde a la tasa de interés?

3. Ahora considere que el gobierno obtiene un subsidio de la comunidad internacional que pagará, para siempre, un beneficio de tamaño $b$ per cápita para todos los ancianos desde ahora hasta el infinito. Calcule la tasa de ahorro de un individuo típico nacido en el período $t$. ¿Cómo difiere de la respuesta en el punto 1?

4. El Banco Mundial argumenta que esto no tiene sentido, que debe haber un sistema de "dos pilares" con un componente de capitalización además del pago financiado por subvenciones internacionales. Suponga que el crecimiento de la población es cero. El gobierno sigue el consejo introducido en un esquema de capitalización que paga una tasa de interés $r_{t+1}$. Calcule la nueva tasa de ahorro que tiene tanto el esquema de capitalización como los beneficios de las subvenciones internacionales.

5. ¿Cómo se compara el stock de capital en estado estacionario de este enfoque sugerido por el Banco Mundial, con el de un sistema puro de capitalización sin los beneficios de las subvenciones? ¿Funciona la recomendación del Banco Mundial?


## III Políticas tecnológicas (10 puntos) F

Considere los siguientes modelos de cambio tecnológico que discutimos en clase

1. *Learning by doing*
2. Tecnología como un bien público
3. Efectos de escala en el desarrollo tecnológico
4. Escaleras de productos (*product ladders*)

Para cada uno de estos modelos proporcione una "respuesta de política" para lidiar con las consideraciones o ineficiencias discutidas en cada modelo.



## V Rigideces Salariales y Controles de Capitales (35 puntos) J

Considere un modelo de economía pequeña y abierta, con bienes transables y no-transables, y rigideces salariales a la baja. El problema del hogar representativo es elegir las secuencias de consumo de transables ($c_t^T$), no-transables ($c_t^N$), endeudamiento externo neto ($d_{t+1}$) y empleo ($h_t$) de modo de maximizar,


$$\sum_{t=0}^{\infty} \beta^t [\ln(c_t^T) + \ln(c_t^N)],$$

sujeto a la restricción (expresada en moneda doméstica)

$$\mathcal{E}_t c_t^T + P_t^N c_t^N + \mathcal{E}_t d_t = \mathcal{E}_t(1 - \tau_t)\frac{d_{t+1}}{1+r} + \mathcal{E}_t y_t^T + W_t h_t + \Phi_t + T_t,$$

donde $y_t^T$ es la dotación de transables, $P_t^N$ es el precio de los no-transables, $\mathcal{E}_t$ es el tipo de cambio nominal (igual al precio local de transables), $r > 0$ es la tasa de interés internacional (constante), $W_t$ son los salarios nominales y $\Phi_t$ son los beneficios derivados de la propiedad de empresas del sector no-transable. El modelo incluye también un impuesto proporcional a la deuda tomada en cada período, $\tau_t$, y transferencias de suma fija obtenidas del gobierno.

Asuma también que se satisface la restricción de ausencia de juegos de Ponzi apropiada, que el stock inicial de deuda neta es cero ($d_0 = 0$), y que el máximo de horas trabajadas por período es igual a uno ($h_t \leq 1$). Considere también que los salarios son fijos.

En el sector no-transable, que opera bajo competencia perfecta, la tecnología es $y_t^N = \alpha (h_t)^{\alpha}$, con $\alpha \in (0,1)$. Finalmente, en el mercado de trabajo existe una restricción institucional que imposibilita la baja de salarios nominales $W_t \geq W_{t-1}$. Conteste las siguientes consignas.

1. Enuncie las condiciones de optimalidad para la elección del hogar representativo de $c_t^T$, $c_t^N$, $d_{t+1}$ y $h_t$ (puede, o bien derivarlas, o simplemente enunciarlas argumentando brevemente por qué son las condiciones de optimalidad). Explique también cómo un cambio sorpresivo y transitorio en $\tau_t$ afecta las decisiones individuales de los hogares.

2. Enuncie la condición de optimalidad del problema de las empresas no-transables para la elección de $h_t$ (puede, o bien derivarla, o simplemente enunciarla argumentando brevemente por qué es la condición de optimalidad).

3. En equilibrio, $c_t^N = y_t^N$. Asuma que el gobierno mantiene un presupuesto balanceado: la recaudación por el impuesto a la deuda es igual a las transferencias de suma fija. En principio, asuma que $\tau_t = \bar{\tau}$ para todo $t$, y que $\beta(1+r) = (1-\bar{\tau})$. Muestre que, además de las condiciones $W_t \geq W_{t-1}$ y $h_t \leq 1$, las siguientes 3 ecuaciones caracterizan este equilibrio:

$$c_t^T = \frac{r}{1+r} \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j y_t^T, \quad p_t^N = \frac{c_t^T}{h_t^{\alpha}}, \quad P_t^N = \frac{W_t/\mathcal{E}_t}{\alpha h_t^{\alpha-1}},$$

donde $p_t^N$ es el precio relativo entre no-transables y transables (si no puede derivar estas ecuaciones, úselas como válidas para el resto del ejercicio).

4. Considere un equilibrio inicial donde $y_t^T = \bar{y}^T$ y $\tau_t = \bar{\tau}$ para todo $t \geq 0$. Caracterice la solución de pleno empleo, tanto algebraica como gráficamente.

5. Asuma que, partiendo del equilibrio anterior, en $t = 0$ ocurre una caída inesperada y transitoria (sólo por ese período) del ingreso de transables, i.e. $y_0^T < \bar{y}^T$, manteniendo el supuesto $\tau_t = \bar{\tau}$ para todo $t$. Compute los valores de equilibrio de las variables relevantes en $t = 0$ ante esta situación alternativa, asumiendo que el tipo de cambio es fijo. Muestre también el efecto gráficamente y explique intuitivamente. ¿Qué ocurre con la deuda en este caso?

6. ¿Cómo utilizaría el impuesto $\tau_0$ para mejorar la utilidad del período en el que se produce el shock negativo de bienes transables (asumiendo que para $t \geq 1$ el impuesto vuelve a $\tau_t = \bar{\tau}$)? Explique sólo intuitivamente.

7. Desde un punto de vista de bienestar (i.e. de la utilidad esperada a lo largo de la vida del agente representativo), para enfrentar a un shock como el de los incisos anteriores, ¿es preferible tener rigidez en el tipo de cambio flexible, o una de controles de los productos de la posibilidad de usar controles de capitales con un impuesto como $\tau_t$? Explique intuitivamente.

8. En clase enfatizamos que, si la economía está expuesta a ciclos de *booms* y *busts* en las variables externas, bajo tipo de cambio fijo la modalidad vulnerable ante externalidad negativa. Explique brevemente esta externalidad, en particular cómo los *booms* generan condiciones que ponen a la economía en una situación vulnerable ante eventuales *busts*. A la luz de esta externalidad, y si no se desea abandonar el tipo de cambio fijo, ¿cómo cree que se podría utilizar el control de capitales $\tau_t$ durante períodos de *booms* para mitigar esta potenciales vulnerabilidades? Explique intuitivamente.

# Examen Final - Primer Trimestre - 2021

## 1. Fondo Soberano Noruego, 23 puntos F
Supongamos que, ocupando el cargo de ministro de economía, usted está pensando en cómo usar los recursos naturales de su país. Asumimos, además, que busca maximizar la utilidad intertemporal dada por:

$$\int_0^{\infty} u(c_t)e^{-\rho t} dt$$

donde $\rho$ es la tasa de descuento. Los recursos naturales ($y_t$) son producidos sin costos y no existen activos domésticos en los que invertir. Por lo demás, usted posee mucha libertad. Por ejemplo, puede ahorrar parte de los recursos, pedir prestado, utilizar esos ahorros de forma discrecional, etc. Podemos sintetizar lo dicho hasta aquí en la siguiente ecuación que debe cumplirse:

$$\dot{b} = rb_t + y_t - c_t$$

En este ejercicio supondremos que $r = \rho$.

(a) Explique en palabras la ecuación para $\dot{b}$ y por qué tiene esa forma.

(b) Plantee el Hamiltoniano y obtenga las condiciones de primer orden. Analícelas.

(c) Compute el nivel óptimo de consumo en el período 0. (*Hint:* Integre intertemporalmente la restricción presupuestaria para obtener $c_0$. Si no puede resolver esto, siga a los siguientes puntos, ya que para responderlos no es esencial la resolución precisa de este punto.)

(d) Use su respuesta anterior para discutir si esto es consistente con el accionar del gobierno de Noruega (recuerde que el gobierno de Noruega gasta en cada período la tasa real de interés sobre sus activos acumulados). Explique las diferencias.

(e) Imagine un aumento transitorios en $y_t$. ¿Cuál sería la reacción óptima de $c_t$ y $b_t$?

(f) Imagine un aumento permanente en $y_t$. ¿En qué difiere esta situación de la respuesta en (e)?

(g) ¿Qué sucede si $y_t$ no es constante sino que se espera que aumente en el futuro?

(h) Asuma ahora que la función de utilidad incorpora el dinero como argumento, y que el país está en un régimen de patrón oro, con lo cual la única manera de obtener dinero es teniendo un superávit en la cuenta corriente. En ese contexto, suponga que hay un aumento inesperado y permanente en la dotación de recursos naturales. ¿Cómo cambiaría su respuesta al punto (f), asumiendo tanto una utilidad donde consumo y dinero son separables como una donde no lo son? (Nota: no es necesario hacer matemática para esta respuesta, aunque si la hacen no hay problema -pero les puede llevar mucho tiempo- con lo cual alcanza con que expliquen cómo sería la respuesta).


## 2. Generaciones Superpuestas con Foreign Aid, 18 puntos F
Considere un formato OLG con utilidad logarítmica y una función de producción Cobb-Douglas. La utilidad de los jóvenes nacidos en el momento $t$ es

$$\log(c_{1t}) + \beta \log(c_{2t+1})$$

con restricciones
$$c_{1t} + s_t = w_t, \quad y \quad c_{2t+1} = (1 + r_{t+1})s_t.$$

La función de producción es $y_t = f(k_t) = Ak_t^{\alpha}$.

(a) Encuentre la tasa de ahorro como una función del salario y la tasa de interés. Explique.

(b) Asumiendo que la población crece a tasa $n$, encuentre la ecuación que describe la evolución del stock de capital de la economía.

(c) Ahora, asuma que los jóvenes de esta economía reciben ayuda, en forma de una dotación fija $e$, en cada período $t$. Escriba cómo se modifica la restricción enfrentada por cada generación.

(d) Compute el impacto en el ahorro y en la acumulación de capital. ¿Cuál es el efecto de largo plazo sobre el stock de capital y el bienestar?

(e) Ahora, suponga que la ayuda va a los viejos. ¿Cómo se modifican los resultados?


(f) Basándose en las respuestas a (d) y (e), ¿piensa que la ayuda debe tener un sesgo "generacional"?
## 3.Multiplicador del Gasto y Tipo de Cambio, 44 puntos J

Considere un modelo de economía pequeña y abierta, sin incertidumbre, con bienes transables y no-transables. El hogar representativo elige secuencias de consumo de transables ($c_t^T$), no-transables ($c_t^N$), endeudamiento externo neto ($d_t$) y empleo ($h_t$) de modo de maximizar,

$$\sum_{t=0}^{\infty} \beta^t \left[ \frac{(c_t^T)^{1-\sigma} + (c_t^N)^{1-\sigma} - 1}{1 - \sigma} - \frac{(h_t)^{1+\varphi}}{1 + \varphi} \right], \quad \text{con } \sigma, \varphi > 0,$$

sujeto a,

$$S_t c_t^T + P_t^N c_t^N + S_t d_{t-1}(1 + r) + P_t^N g_t = S_t d_t + S_t y_t^T + W_t h_t + \Phi_t,$$

donde $y_t^T$ es la dotación de transables, $P_t^N$ es el precio de los no-transables, $S_t$ es el tipo de cambio nominal (y también puede de los transables), denominados que el precio internacional es constante e igual a 1), $r$ es la tasa de interés internacional (constante), $W_t$ son los salarios nominales, $\Phi_t$ son beneficios por la propiedad de empresas del sector no-transable, y $g_t$ denota gasto del gobierno en bienes no transables. Asuma también que se satisface la restricción de ausencia de juegos Ponzi apropiada y que el stock inicial de deuda $d_{-1} = 0)$. Los mercados son competitivos. La función de producción en el sector no-transable es $y_t^N = h_t$.

(a) Asumiendo que $\beta(1 + r) = 1$, argumente (sin necesidad de derivarlas algebraicamente) que las siguientes ecuaciones caracterizan el equilibrio:

$$c_t^T = \frac{r}{1 + r} \sum_{j=0}^{\infty} \left( \frac{1}{1 + r} \right)^j y_{t+j}^T, \quad [E.1] \quad d_t = c_t^T + d_{t-1}(1 + r) - y_t^T, \quad [E.2] \quad p_t = \left( \frac{c_t^T}{c_t^N} \right)^{\sigma}, \quad [E.3]$$

$$c_t^N + g_t = h_t, \quad [E.4] \quad w_t = 1, \quad [E.5] \quad (h_t)^{\varphi}(c_t^N)^{\sigma} = w_t, \quad [E.6]$$

donde $p_t = P_t^N/S_t$ es el precio relativo entre no-transables y transables, y $w_t = W_t/P_t^N$ es el salario real en términos de no transables. Explique también por qué el gasto $g_t$ no afecta a la balanza de pagos.

(b) Considere un equilibrio donde $g_t = \bar{g}$ y $y_t^T = \bar{y}^T$ para todo $t$. Caracterice la evolución de las variables endógenas en este equilibrio. (Aquí basta con identificar implícitamente la solución, pues no necesitará todos los valores de equilibrio.)

(c) Considere un aumento permanente y sorpresivo de $g_t$, partiendo de un equilibrio inicial como el del punto anterior. Compute el multiplicador del producto (esto es, $dh_t/dg_t$ en torno al equilibrio inicial). ¿Cuál es el efecto del gasto en el tipo de cambio real? ¿Qué diferencia existiría si el aumento del gasto fuese transitorio?

(d) Considere ahora una variante tal que, en el período $t = 0$, el precio de los bienes no transables $P_0^N$ está fijo en un valor $\bar{P}^N$, pero a partir del período siguiente el precio se puede acomodar libremente. Así, en ese período no necesariamente se cumple que el costo marginal es igual a ingreso marginal, y por tanto la ecuación [E.5] no se satisface en $t = 0$. Suponga que la autoridad monetaria utiliza el tipo de cambio nominal $S_t$ como instrumento y (para este punto) dispone un tipo de cambio fijo ¿Cómo sería el multiplicador de un aumento en el gasto en $t = 0$?

(e) Continuando con la rigidez de precio del punto anterior, en un régimen donde el tipo de cambio puede moverse libremente, suponga un política monetaria que quisiese evitar la pérdida de utilidad del agente representativo para senderos dados de $g_t$ o $y_t^T$ ¿Cómo sería el multiplicador del gasto en ese caso? ¿Qué le sucede al tipo de cambio nominal en el período inicial ante un aumento en $g_t$?

(f) Considere finalmente que el tipo de cambio está determinado por una regla que depende del gasto, es decir $S_t = S(g_t)$, donde $S'(·)$ es una función creciente, positiva y diferenciable. Si el proceso de $g_t$ es exógeno, está fijo como en los puntos anteriores, muestre cómo dependería el multiplicador del gasto de la derivada $S'(·)$. ¿Puede el multiplicador ser mayor a 1?


## 4. Seleccion Multiple: 1,5 puntos por respuesta correcta, -0,5 puntos por respuesta incorrecta. 

Solo una de las opciones es correcta. Incluya todas las respuestas de esta sección en una misma hoja, con el siguiente formato de respuesta: 4(a): Respuesta Correcta V

(a) Si la utilidad del consumo es lineal:
  I. La elasticidad de sustitución intertemporal es cero
  II. La elasticidad de sustitución intertemporal es infinita
  III. La elasticidad de sustitución intertemporal está indeterminada
  IV. La ecuación de Euler es suficiente para determinar el consumo


(c) Eliminar un sistema "pay-as-you-go" aumenta el stock de capital de largo plazo:
  I. Sólo en el largo plazo pero no en el corto
  II. Si los "viejos" residuales no reciben pagos
  III. Si la transición se financia con deuda
  IV. Si los "viejos" residuales reciben pagos

(d) Imagine un país con alta inflación, en el que la probabilidad de perder el precio de referencia es mayor a la de un país sin inflación. Según el modelo visto en clase:
  I. La gente debe buscar más para encontrar un mejor precio
  II. Dado que la gente busca más, el mercado se vuelve más competitivo
  III. La gente tiende a aceptar precios mayores de los bienes que en un contexto sin inflación
  IV. I. y III. son correctas.

(e) En un modelo de "quality ladder", en el que los productores usan los inputs más baratos (ajustados por calidad):
  I. El crecimiento es menor que el óptimo debido a que hay destrucción creativa
  II. El crecimiento sucede porque los inputs pueden sustituirse entre sí
  III. El crecimiento nunca puede ser superior al óptimo
  IV. El crecimiento puede ser superior al óptimo

(f) Estar en una situación de ineficiencia dinámica es más probable si:
  I. La productividad marginal del capital es mayor
  II. La tasa de crecimiento de la población es mayor
  III. La tasa de descuento es mayor
  IV. Ninguna de las anteriores

(g) En un modelo RBC SOE con función de utilidad GHH, para una economía que es deudora externa neta, ante un aumento inesperado en la tasa de interés internacional:
  I. El consumo deseado aumenta y la oferta de trabajo también.
  II. El consumo deseado disminuye y la oferta de trabajo aumenta.
  III. El consumo deseado disminuye y la oferta de trabajo también.
  IV. El consumo deseado aumenta pero la inversión disminuye.

(h) Con una curva de Phillips Neo-Keynesiana:
  I. Un aumento esperado en los costos marginales aumenta la inflación hoy.
  II. Un aumento sólo contemporáneo de costos marginales no puede aumentar la inflación hoy.
  III. La pendiente respecto a los costos marginales depende positivamente del parámetro que determina la importancia de los costos de ajuste de precios.
  IV. Todas las anteriores son correctas.

(i) Cuando la elasticidad de sustitución inter-temporal del consumo es igual a la intra-temporal entre transables y no transables:
  I. El canal del re-balanceo del gasto (expenditure switching) es máximo para el consumo de transables.
  II. El canal de la curva de rendimientos (yield curve) domina para el consumo de transables.
  III. El canal del re-balanceo del gasto es cero.
  IV. Ambos canales se compensan entre sí para el consumo transable.





# Examen Final - Primer Trimestre - 2020

## I Verdadero/Falso [12 puntos, 2 cada uno]

### 1. En una economía con "learning by doing" alcanza con que haya rendimientos crecientes a escala para generar crecimiento endógeno

### 2. Las diferencias de ingreso que se observan en el mundo pueden explicarse en un modelo de Solow solo si se producen por cambios en la productividad entre países

### 3. Una mejor tecnología de monitoreo del esfuerzo de trabajadores va a implicar una menor tasa de desempleo en equilibrio

### 4. El modelo de fondo soberano de Noruega (que todo dólar que entre lo transforma en un flujo permanente) podría ser racionalizado por un modelo neoclásico de crecimiento en economía abierta con costos de ajuste a la inversión.

### 5. Una depreciación esperada del tipo de cambio real baja la tasa de interés basada en el consumo.

### 6. La "política aritmética desagradable" (unpleasant monetarist arithmetic) dice que si un banco central compra reservas esterilizadas en una operación de mercado abierto la tasa de inflación de equilibrio sube.


## II El modelo de Sidrauski  F [28 puntos]

Asuma una economía con un individuo representativo (sin crecimiento de la población). Que maximiza

$$\max V_0 = \int_0^{\infty} u(c_t, m_t) \exp[-\theta t] dt, \quad u_c, u_m > 0, u_{cc}, u_{mm} < 0$$

donde $c$ y $m$ son el consumo y los saldos monetarios reales. El individuo puede tener su riqueza en dinero o en unidades de capital. Su restricción presupuestaria:

$$c + \frac{dk}{dt} + \frac{dM/dt}{P} = f(k) + x$$

donde $M$ es la cantidad nominal de dinero y $P$ el nivel de precios y $x$ las transferencias que recibe el individuo del gobierno (las que son iguales a $\sigma m$.

1. Escriba la restricción presupuestaria en términos de $c$ y $m$.

2. Asuma un stock de riqueza $a = k + m$. Escriba la restricción presupuestaria.

3. Compute las condiciones de primer orden.

4. Describa la demanda de dinero, de que depende.

5. Compute el stock de capital en el equilibrio de estado estacionario. ¿Cómo difiere del modelo sin dinero?

6. ¿Cuál es la tasa de inflación de equilibrio en el estado estacionario?

7. ¿Afecta la tasa de inflación al equilibrio de estado estacionario de las otras variables en la economía? Explique.

## III Resolviendo un modelo básico de search F [10 puntos]

Asuma un modelo básico de búsqueda laboral donde un individuo recibe todo los períodos una oferta laboral con salario $w$ que puede aceptar o no.

1. Escriba las ecuaciones que definen este problema en tiempo discreto.

2. Escriba las ecuaciones que definen este problema en tiempo continuo.

3. Resuelva para una ecuación para el salario de reserva.

4. Asuma que con probabilidad .5 el salario que recibe es $w^*$ y con probabilidad .5 es cero. Resuelva para el salario de reserva.

5. ¿Existe alguna configuración de parámetros donde acepte la oferta de cero y deje de buscar?



## IV Las peripecias de Pesce F [8 puntos]

El modelo de dinero con shopping time termina en un conjunto de dos ecuaciones que describen el equilibrio monetario del lado bueno de la curva de laffer. Estas ecuaciones son

$$g - \tau + B\frac{R-1}{R} = f(R_m)(1 - R_m) \quad (1)$$

y

$$\frac{M_0}{P_0} = f(R_m) - (g * B_0 - \tau_0) + \frac{B}{R} \quad (2)$$

1. Asuma que se aumenta el déficit. Explique las implicancias para la inflación. ¿Esta relación es única?

2. Asuma que el gobierno logra bajar exógenamente la tasa que paga sobre sus bonos. ¿Que implicancia tiene para la inflación?

3. Si B es 6 puntos del PBI y la tasa nominal, se reduce en 20 puntos porcentuales. ¿Que margen da eso para aumentar el déficit sin inflación?

4. Asuma ahora que en período cero Pesce emite lo necesario para cancelar el stock de bonos B. ¿Qué impacto tendría sobre la inflación en el corto y largo plazo?

## V Canal de oferta de la tasa política monetaria J [42 puntos]

Considere el modelo Neo Keynesiano de economía pequeña y abierta, con bienes transables y no transables, desarrollado en clase. El objetivo de este ejercicio es modificar el problema de las firmas para que sus decisiones estén afectadas directamente por la política monetaria. Será útil recordar que, en la versión vista en clase, el productor de cada variedad de bienes no transables operaba la función de producción $y_{jt}^N = z_t h_{jt}$. La relación entre costo marginal y salario estaba dada por

$$MC_t^N = \frac{W_t}{z_t}, \quad p_t^N mc_t^N = p_t \frac{w_t}{z_t}$$

Ambas representan la misma condición: la primera en términos nominales, la segunda expresada como función de precios relativos (donde $p_t^N = \frac{P_t^N}{P_t^T}$, $p_t = \frac{P_t}{P_t^T}$, $w_t = \frac{W_t}{P_t^T}$ y $mc_t^N = \frac{MC_t^N}{P_t^N}$). Recordar también que esta condición no tiene sub-índice $j$, pues los supuestos son tales que cada monopolista enfrenta el mismo costo marginal. Conteste las siguientes consignas.

1. **[3 puntos]** En primer lugar, separaremos las decisiones de precios de las de demanda de trabajo, para facilitar el análisis posterior. Asumiremos un esquema en dos etapas. Primero, un continuo de empresas competitivas idénticas produce un bien homogéneo intermedio $y_t^{N,I}$ usando la función de producción $z_t h_t$; pagando un salario nominal $W_t$, con un precio de venta $P_t^{N,I}$. Segundo, cada productor de variedades compra esos bienes intermedios ($x_{jt}^{N,I}$ denota la demanda del productor $j$) y lo transforman en su variedad con una tecnología lineal: $y_{jt}^N = x_{jt}^{N,I}$. Argumente que las dinámicas en esta especificación alternativa serán idénticas a las del modelo visto en clase.

2. **[14 puntos]** Asuma ahora que el productor del bien intermedio homogéneo tiene que pagar una fracción $\kappa \in [0,1]$ del costo salarial antes de vender el producto. Para poder realizar estos pagos debe tener activos líquidos. Llamemos $M_t^I$ a la demanda de dinero de estas firmas.¹(Usamos el término "dinero" de modo amplio. Podría ser, por ejemplo, una cuenta bancaria a la vista en un modelo con bancos.) Entonces la empresa debe satisfacer

$$M_t^I \geq \kappa W_t h_t. \quad (3)$$

Notar que la adición de la demanda de dinero convierte al problema de estas firmas en uno inter-temporal, donde el objetivo es elegir $h_t$ y $M_t^I$ para maximizar el valor presente esperado de sus beneficios,

$$E_t \left\{ \sum_{s=0}^{\infty} r_{t,t+s} \left[ P_{t+s}^{N,I} z_{t+s} h_{t+s} - W_{t+s} h_{t+s} - M_{t+s}^I + M_{t+s-1}^I \right] \right\},$$

sujeto a la restricción (3) (para cada $t$ y estado de la naturaleza) tomando todos los precios como dados.² ( El factor de descuento $r_{t,t+s}$, como en el problema de fijación de precios visto en clase, representa las preferencias inter-temporales de los hogares (que son los dueños de todas las empresas) Encuentre las condiciones de optimalidad de estas firmas e indique bajo qué condición la restricción (3) se cumplirá con igualdad.³ (Asuma que ésta se cumple para el resto del ejercicio.) Finalmente, utilizando que $E_t\{r_{t,t+1}\} = 1/R_t$ (del problema de los hogares), encuentre una expresión que relacione al precio del bien intermedio $P_t^{N,I}$ con el salario, la productividad, la tasa de interés y el parámetro $\kappa$.

---











# Examen Recuperatorio - Primer Trimestre - 2022

## 1 Opciones múltiples (conteste una sola opción)

**25 puntos**

1. **Cuando los insumos intermedios se hacen menos sustitutos** a) El crecimiento sube porque es más fácil reemplazar cada insumo. b) El crecimiento sube porque hay más incentivos a innovar c) El crecimiento decrece porque es más fácil reemplazar cada insumo. d) El crecimiento decrece porque hay menos incentivos a innovar.
    
2. **Considere un modelo de generaciones superpuestas en las que hay burbujas. en ese contexto,** a) La tasa de crecimiento de la economía es mayor que la tasa de interés b) La tasa de crecimiento de la economía es menor que la tasa de interés c) La tasa de crecimiento de la economía es igual a la tasa de interés d) No pueden existir burbujas si hay ineficiencia dinámica.
    
3. **En un modelo de estancamiento secular, si libero la restricción de colateral, la tasa de interés** a) Cae b) Sube c) No cambia d) Depende de los parámetros
    
4. **Un shock positivo y transitorio a la oferta agregada en un modelo NK** a) Incrementa la inflación y el producto b) Reduce la inflación y el producto c) Incrementa la inflación y decrece el producto d) Reduce la inflación y aumenta el producto
    
5. **En equilibrio en el modelo de Shapiro Stigliz, una mejor tecnología de monitoreo** a) Incrementa el salario de equilibrio b) Reduce el salario de equilibrio c) Incrementa la tasa de desempleo d) No cambia el salario de equilibrio
    
6. **En un modelo NK las expectativas son muy inestables porque:** a) Si el coeficiente de la inflación en la regla de Taylor es menor a uno hay múltiples equilibrios. b) Si el coeficiente de la inflación en la regla de Taylor es mayor a uno el sistema es globalmente inestable. c) El dinero es endógeno d) Todas las anteriores
    
7. **En un modelo NK un aumento permanente del gasto público** a) Aumenta el producto b) Decrece el producto c) No modifica el producto d) Depende de los parámetros estructurales del modelo.
    

## 2 Pesca óptima F

**35 puntos**

Ud es contratado por un candidato presidencial para definir la política óptima de pesca. De lo que se trata es de maximizar la utilidad

$$\int_0^{\infty} u(p)e^{-\rho t} dt \quad (1)$$

donde $u$ es una función de utilidad con las propiedades habituales y $p$ es la pesca en cada período.

El stock total de peces es $F$ y su evolución en el tiempo está dado por

$$\dot{F} = -p + R(F) \quad (2)$$

donde $R(F)$ es una función decreciente de $F$.

• a) Explique la función $\dot{F}$.

• b) Compute las condiciones de primer orden para este problema.
$$
\frac{\dot{p}_t}{p_t} = \sigma[R'(p_t) - \rho].
$$
• c) ¿Se pesca la máxima cantidad posible en cada período? Explique porque sí o porque no.

• d) Grafique en el espacio $(p, F)$ la trayectoria óptima de pesca en cada momento en función de diferentes stocks iniciales de $F$.

• e) Uno de los recursos más importantes de pesca es la especie _merlucius hubbsi_ (vulgarmente conocido como merluza) que de repente sufre una peste y una merma importante en su stock. ¿Qué debería hacer la Secretaría de Pesca?

## 3 Impuestos en el modelo OLG F

**35 puntos**

Imagine un modelo de generaciones superpuestas con dos generaciones. Los individuos tienen utilidad logarítmica y descuentan el futuro a tasa $\beta$. Esta pregunta trata de analizar si conviene gravar el ingreso (esto es el ingreso del trabajo y del capital) o si solo conviene gravar el ingreso salarial. Actualmente se grava únicamente el ingreso salarial, por lo que el Partido Obrero lo contrata para asegurarse de que si el capital también sea gravado.

a) Escriba las restricciones presupuestarias que en cada período enfrentan jóvenes y viejos con ambas estructuras tributarias.

b) Compute el nivel de ahorro en cada caso asumiendo que el monto a recaudar es idéntico e independiente de la estructura tributaria.

c) ¿Qué estructura tributaria genera mayor nivel de capital de equilibrio en la economía?

d) ¿En que condiciones ud puede armar el argumento que propicia el Partido Obrero?

## Programación dinámica en teoría de consumo J

**65 puntos**

### Sección 1 (50% de esta parte)

Considere una economía de dotaciones $y_t$, sin incertidumbre, donde $t = 1, 2, 3$. Suponga que la función de utilidad es

$$E[U] = \sum_{t=1}^{3} \beta^{t-1} \log (c_t)$$

Suponga que en cada período $t$ el consumidor tiene acceso a un activo financiero $a_{t+1}$ con el cual puede prestar (ahorrar) si $a_{t+1} > 0$, o tomar deuda cuando $a_{t+1} < 0$. Suponga que este activo financiero paga un retorno $r$, constante y libre de riesgo. De esta forma, la restricción de presupuesto del período $t$ es

$$a_{t+1} = (1 + r)a_t + y_t - c_t$$

y

$$a_4 \geq 0$$

Resuelva para encontrar la regla de consumo óptimo para cada período utilizando el método de programación dinámica (Ayuda: empezar del período 3 y resuelva hacia atrás, hasta encontrar el consumo del período 1.) Escriba en términos generales (para cualquier $t$ la regla de consumo óptima). Si no puede aplicar el método de programación dinámica, utilice el método de Lagrangiano.

### Sección 2 (50% de esta parte)

Suponga ahora que la economía es de $T$ períodos y con incertidumbre. Encuentre el consumo óptimo en el período 1 y el período 2. Muestre que:

$$c_2 = c_1 + \frac{1}{T-1} \left( \sum_{t=2}^T E_2[y_t] - \sum_{t=2}^T E_1[y_t] \right),$$

donde $E_t(y_t)$ es la esperanza condicional de $y_t$ con información hasta el período $t < t$. Note que esta expresión depende de dos supuestos implícitos: $r = 0$ y factor de descuento de 1. Interprete.

## 4 Ensayo F

**20 puntos**

• I. Use un modelo visto en clase (no son necesarias ecuaciones) para justificar la existencia de activos tipo Bitcoin (asuma que el Bitcoin no genera ninguna utilidad)

• II. Use un modelo visto en clase para justificar la imposibilidad de activos tipo Bitcoin

• III. ¿Qué relación ve entre la aceleración de la inflación en EEUU y la probabilidad de usar modelo I o II?






# Examen Recuperatorio - Primer Trimestre - 2020

## I Verdadero/Falso/Indeterminado [6 puntos, 2 cada uno]

- Una regla monetaria es mejor en términos de bienestar que mantener discrecionalidad en el Banco Central.

- En un modelo sin competencia perfecta, donde la innovación es endógena a partir de la producción de nuevas variedades de productos, el crecimiento resultante es siempre menor al que elegiría un planificador central.

- Transicionar de una régimen de reparto a uno de capitalización siempre mejora el stock de capital de equilibrio de la economía.

## II El modelo de Sidrauski [19 puntos, 2 puntos cada uno excepto el último que vale 5 puntos]

Asuma una economía con un individuo representativo (sin crecimiento de la población). Que maximiza

$$\max V_0 = \int_0^{\infty} (u(c_t) + v(m_t)) \exp[-\theta]dt, \quad u_c, u_m > 0, u_{cc}, u_{mm} < 0,$$

donde $c$ y $m$ son el consumo y los saldos monetarios reales. La restricción presupuestaria es:

$$c + \dot{m} = y - \pi m + x,$$

donde $y$ es el ingreso exógeno y fijo, $\pi$ las transferencias que recibe el individuo del gobierno.

1) Explique la restricción presupuestaria.
2) Arme el Hamiltoniano para este problema y escriba las condiciones de primer orden.
3) Describa la demanda de dinero. ¿De qué depende?

Ahora asumimos que $x = \sigma m$. Recuerde que de la definición de $m$ sabemos que $\frac{\dot{m}}{m} = \sigma - \pi$

4) Reemplace esto en la restricción presupuestaria y compute la inflación y el consumo para una situación de equilibrio.
5) Presente la ecuación de $\frac{\dot{m}}{m}$ como función de $m$. Grafique el diagrama de fase.
6) ¿Qué ocurre si el gobierno decide una emisión de una vez en el stock de dinero? Coméntelo en palabras y gráficamente.
7) ¿Qué ocurre si el gobierno aumenta la tasa de emisión de dinero? Coméntelo en palabras y gráficamente.
8) (Extra puntos). Asuma que el gobierno anuncia que va a aumentar el stock de dinero en el futuro por una única vez en un monto dado. ¿Qué pasa con la inflación desde ahora hasta ese momento? Coméntelo en palabras y gráficamente.

## III Utilización del Capital en el Modelo RBC SOE J [40 puntos]

Considere el modelo RBC de economía pequeña abierta desarrollado en clase o en el capítulo 4 del libro de Uribe y Schmitt-Grohe. En ese modelo, ante un shock inesperado, la única forma de alterar la producción endógenamente en ese momento es a través de las horas trabajadas; ya que el capital se asume que demora un período en volverse productivo. Consideraremos una alternativa algo más realista, donde es posible cambiar el grado de utilización de la capacidad instalada (ej. cambiar la cantidad de tiempo por día que las máquinas son utilizadas).

La versión centralizada del modelo asume que el hogar representativo busca maximizar

$$E_0 \sum_{t=0}^{\infty} \beta^t \left[ \frac{\left( c_t - \frac{h_t^{\omega}}{\omega} \right)^{1-\sigma} - 1}{1 - \sigma} \right],$$

sujeto a la restricción presupuestaria,¹

$$a_t(u_t k_t - 1)^{\alpha}(h_t)^{1-\alpha} + d_t \geq c_t + i_t + d_{t-1}(1 + r_{t-1}) + \frac{\phi}{2}(k_t - k_{t-1})^2,$$

¹ Utilizamos la convención de notación donde $t$ indica el momento en que las variables son decidas.

1

y a la evolución del capital,

$$k_t = [1 - \delta(u_t)]k_{t-1} + i_t.$$

La notación es análoga a la de clase, a excepción de la variable $u_t$. Ésta denota la utilización del stock de capital y aparece en dos lugares: (i) en la función de producción (permitiendo, *ceteris paribus*, cambiar el producto aun cuando el stock de capital esté predeterminado) y (ii) en la depreciación (asumimos que una mayor intensidad de uso deprecia más rápidamente el stock de capital). En particular, asumimos que la función $\delta(u_t) = \delta_0 u_t^{\chi}$ donde $\delta_0 > 0$ y $\chi > 1$ son parámetros. El resto del modelo es como el visto en clase. Conteste las siguientes consignas.

1. **[20 puntos]** Plantee el lagrangiano correspondiente al problema de maximización de la utilidad sujeto a la restricciones, y liste las condiciones de optimalidad de la elección de procesos contingentes $c_t$, $h_t$, $d_t$, $k_t$ y $u_t$.

2. **[7 puntos]** Utilizando la condición de optimalidad respecto a $u_t$, explique el *trade-off* asociado a esta decisión. Muestre también cómo, *ceteris paribus*, un aumento en $a_t$ afecta el nivel de utilización del capital deseado.

3. **[13 puntos]** La figura abajo muestra las funciones de respuesta al impulso ante un shock transitorio de productividad, tanto para el modelo sin utilización (líneas azules sólidas) como para el que incluye utilización (líneas rojas punteadas). Explique intuitivamente las diferencias reportadas. Discuta además si considerar utilización variable del capital ayuda o no a que el modelo replique los hechos estilizados que caracterizan a economías emergentes (e.g. exceso de volatilidad en el consumo y balanza comercial contra-cíclica).

IRF en el modelo RBC-SOE, con distintos supuestos de utilización de capital.
![[Pasted image 20250525172439.png]]




