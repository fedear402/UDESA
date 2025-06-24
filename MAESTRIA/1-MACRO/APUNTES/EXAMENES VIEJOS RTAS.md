# Examen Final - Primer Trimestre - 2024

## I Devaluación: Niveles vs Tasas (20 puntos)

Considere un marco como el del modelo de Sidrausky, en una economía pequeña y abierta, donde el agente representativo busca maximizar

$$\int_0^{\infty} [U(c_t) + V(m_t)] e^{-\rho t} dt, \quad (1)$$

sujeto a

$$\dot{m}_t = y - c_t - \pi_t m_t + g_t \quad (2)$$

1. Muestre que en este modelo, si en equilibrio $g$ se elige para compensar el impuesto inflacionario, el cambio en los saldos reales es equivalente a la cuenta corriente de la economía.

**Respuesta:** Si $g_t$ se determina para compensar el impuesto inflacionario, entonces $g_t = \pi_t m_t$. Consecuentemente, podemos reexpresar la restricción presupuestaria en equilibrio como:

$$\dot{m}_t = y_t - c_t - \pi_t m_t + \pi_t m_t$$
$$\dot{m}_t = y_t - c_t$$

Luego, el cambio en los saldos reales de la economía ($\dot{m}_t$) será igual a la cuenta corriente ($y_t - c_t$).

2. Resuelva las condiciones de primer orden y calcule la ecuación $\dot{c} = 0$.

**Respuesta:** El Hamiltoniano que para resolver este modelo puede expresarse como:

$$H : [U(c_t) + V(m_t) + \lambda_t(y_t - c_t - \pi_t m_t + g_t)] \quad (3)$$

Donde $c_t$ es variable de control, $m_t$ de estado y $\lambda_t$ de co-estado. Las condiciones de primer orden del problema son:

$$\frac{\partial H}{\partial c_t} = 0 \Rightarrow U'_{c_t} = \lambda_t$$

$$\frac{\partial H}{\partial m_t} = -\dot{\lambda}_t + \rho \lambda_t \Rightarrow V'_{m_t} - \lambda_t \pi_t = -\dot{\lambda}_t + \lambda_t \rho \Rightarrow \dot{\lambda}_t = \lambda_t(\pi_t + \rho) - V'_{m_t}$$

Luego, debemos calcular las ecuación para $\dot{c}_t = 0$. Para esto, derivamos la primero CPO respecto del tiempo en ambos lados, que nos queda $U''_{c_t} \dot{c}_t = \dot{\lambda}_t$. Luego, reemplazamos $\lambda_t$ y $\dot{\lambda}_t$ en la segunda CPO. Llegamos a:

$$\dot{c}_t = \frac{U'_c(\pi_t + \rho) - V'_{m_t}}{U''_c} \quad (4)$$

Por lo que la ecuación para $\dot{c}_t = 0$ será:

$$V'_{m_t} = U'_c(\pi_t + \rho) \quad (5)$$
3. Combine la ecuación de $\dot{c} = 0$ de la respuesta anterior con la de $\dot{m} = 0$ del punto 1 (es decir, reemplazando $g$ para compensar por el impuesto inflacionario). Dibuje el diagrama de fases y muestre allí el estado estacionario.

**Respuesta:** En estado estacionario, asumimos que $\pi_t = \pi$ constante Dado que $g_t = \pi_t m_t$, llegamos a que $\dot{m}_t = y_t - c_t$. Por lo tanto, cuando $\dot{m}_t = 0$ llegamos a la ecuación de equilibrio:

$$c_t = y_t \quad (6)$$

Así, el diagrama de fases ($c$ en el eje vertical, $m$ en el horizontal) con (6) y (5) es:

[DIAGRAMA DE FASES mostrando curvas $\dot{c}=0$ y $\dot{m}=0$ intersectándose en punto de equilibrio, con flechas indicando dirección del movimiento]

Notar que (6) no depende de $m_t$, por lo que será horizontal. Por otro lado, de (5) identificamos que hay una relación positiva entre $c$ y $m_t$ (suponiendo utilidades marginales decrecientes del consumo y tenencias de dinero).

Viendo las dinámicas fuera de las curvas de $\dot{c} = 0$ y $\dot{m} = 0$, observamos que el estado estacionario es un punto de ensilladura (saddle-path), por lo que existe un único sendero de equilibrio que converge al estado estacionario.

4. Considere el efecto de una devaluación, que puede interpretarse como una reducción exógena en $m$. Describa la dinámica.

**Respuesta:** Los parámetros profundos del modelo no cambian, por lo que las curvas del diagrama de fase se ven inalteradas. Sin embargo, hay un cambio en el punto donde se encuentra la economía. La siguiente figura muestra dicho movimiento.

[SEGUNDO DIAGRAMA mostrando el movimiento desde punto A hasta B, luego ajuste a través del saddle path hasta punto D]

Al ser impactada por el shock, la economía pasa del punto A hacia el B. Dado este shock, los agentes reaccionan disminuyendo su consumo de forma inmediata, por lo que se ubican en un punto como el C. En este punto, el nivel de consumo y tenencia de dinero es menor que en el punto inicial A.

Luego, se produce un ajuste paulatino en el que la economía se mueve por el Saddle Path hasta llegar al punto D. Notar que D=A, por lo que eventualmente la economía vuelve a su punto inicial.

5. Ahora considera un aumento exógeno en la tasa de inflación/devaluación $\pi$. Describa la dinámica.

**Respuesta:** Ante un shock exógeno en $\pi_t$:

- La ecuación (6) se ve inalterada

- En la ecuación (5) necesito, para un cierto nivel de consumo, mayor utilidad marginal de tenencia de dinero. Por lo tanto, menos cantidad de dinero. Es decir, hay un desplazamiento a la izquierda de la curva $\dot{c}_t = 0$.

[TERCER DIAGRAMA mostrando el desplazamiento de las curvas y el nuevo equilibrio]

Como puede verse en el gráfico, hay un ajuste inmediato de A a B, donde aumenta el consumo y la cantidad de dinero permanece constante. Luego, la economía se mueve por el Saddle Path hacia el punto final C. En este equilibrio final el nivel de consumo es igual al inicial, pero la cantidad de dinero es menor.

6. Explique las diferencias en la respuesta del consumo y la balanza de pagos a una devaluación y a un cambio en la tasa de devaluación.

**Respuesta:** La respuesta se desprende de la interpretación de los dos incisos anteriores. En el primer caso hay una caída inicial del consumo y saldos monetarios que paulatinamente se revierte hasta volver al punto inicial. Dado el sendero del consumo, hay inicialmente un superávit de balanza comercial que paulatinamente desaparece. Así, en este mundo sin otros activos financieros externos para el sector privado (equivalente al control de capitales), las reservas internacionales del banco central varían según lo hace la balanza comercial. Así que, ante una devaluación, las reservas aumentan inicialmente.

En el segundo caso, hay un aumento inicial del consumo sin variación de la cantidad de dinero. En el tiempo, el consumo y la cantidad de dinero disminuyen. En el equilibrio final, el consumo vuelve a su nivel inicial pero la cantidad de dinero es menor. Dado el sendero del consumo, hay inicialmente un déficit de balanza comercial que paulatinamente desaparece. Así, las reservas internacionales caerán ante un aumento en la tasa de devaluación.

## II Seguridad Social Según el Banco Mundial (20 puntos)

Considere un modelo de generaciones superpuestas de dos períodos. La función de utilidad del consumidor típico nacido en el tiempo $t$ es

$$\ln c_{1t} + \ln c_{2t+1} \quad (1)$$

El consumidor tiene un ingreso exógeno $w_t$ en el primer período de su vida (para el consumidor descrito arriba es el período $t$) y puede consumir $c_t$ o ahorrar $s_t$. Los ahorros ganan una tasa de interés $r_{t+1}$ que consideramos exógena.

1. Escriba el problema del consumidor, estableciendo la restricción en el primer período y en el segundo período, y resuelva la tasa de ahorro.

**Respuesta:** Las restricciones presupuestarias son

- $c_{1,t} + s_t = w_t$
- $c_{2,t+1} = s_t(1 + r_{t+1})$

Así, el problema del consumidor se puede expresar de la siguiente forma:

$$\max \ln(w_t - s_t) + \ln((1 + r_{t+1})s_t)$$

La condición de optimalidad es

$$\frac{1}{w_t - s_t} = \frac{1}{(1 + r_{t+1})s_t} (1 + r_{t+1}) \Rightarrow s_t = \frac{w_t}{2}$$

2. ¿Por qué el consumidor no responde a la tasa de interés?

**Respuesta:** El efecto renta y sustitución de la tasa de interés se compensan en el caso de la función de utilidad logarítmica, generando que la decisión óptima no depende de la tasa de interés.

3. Ahora considere que el gobierno obtiene un subsidio de la comunidad internacional que pagará, para siempre, un beneficio de tamaño $b$ per cápita para todos los ancianos desde ahora hasta el infinito. Calcule la tasa de ahorro de un individuo típico nacido en el período $t$. ¿Cómo difiere de la respuesta en el punto 1?

**Respuesta:** Esto cambia las restricciones presupuestarias de la siguiente forma:

- $c_{1,t} + s_t = w_t$
- $c_{2,t+1} = s_t(1 + r_{t+1}) + b_t$

Haciendo que el problema de maximización se transforme en:

$$\max \ln(w_t - s_t) + \ln((1 + r_{t+1})s_t + b_t)$$

Resolvemos la maximización:

$$\frac{\partial L}{\partial s_t} = 0 \rightarrow \frac{-1}{w_t - s_t} + \frac{(1 + r_{t+1})}{(1 + r_{t+1})s_t + b_t} = 0$$

Despejando obtenemos:

$$s_t = \frac{w_t}{2} - \frac{b_t}{2((1 + r_{t+1}))}$$

Se encuentra que el ahorro es menor. Como el agente es más rico en el segundo período, suaviza consumo (i.e. trae parte del ingreso futuro para ahorrar menos en el primer período.

4. El Banco Mundial argumenta que esto no tiene sentido, que debe haber un sistema de "dos pilares" con un componente de capitalización además del pago financiado por subvenciones internacionales. Suponga que el crecimiento de la población es cero. El gobierno sigue el consejo introducido en un esquema de capitalización que paga una tasa de interés $r_{t+1}$. Calcule la nueva tasa de ahorro que tiene tanto el esquema de capitalización como los beneficios de las subvenciones internacionales.

**Respuesta:** La introducción del sistema de capitalización modifica las restricciones presupuestarias del agente, donde ahora pasan a ser:

- $c_{1,t} + s_t = w_t - d_t$
- $c_{2,t+1} = s_t(1 + r_{t+1}) + b_t + (1 + r_{t+1})d_t$

Haciendo que el problema de maximización se transforme en:

$$\max \ln(w_t - s_t - d_t) + \ln((1 + r_{t+1})s_t + b_t + (1 + r_{t+1})d_t)$$

Resolvemos la maximización:

$$\frac{\partial L}{\partial s_t} = 0 \rightarrow \frac{-1}{w_t - s_t - d_t} + \frac{(1 + r_{t+1})}{(1 + r_{t+1})s_t + b_t + (1 + r_{t+1})d_t} = 0$$

Mediante una serie de despejes se encuentra que:

$$s_t = \frac{w_t}{2} - \frac{b_t}{2((1 + r_{t+1}))} - d_t$$

5. ¿Cómo se compara el stock de capital en estado estacionario de este enfoque sugerido por el Banco Mundial, con el de un sistema puro de capitalización sin los beneficios de las subvenciones? ¿Funciona la recomendación del Banco Mundial?
**Respuesta:** Aquí hay que notar que la tasa de ahorro agregado en el inciso 4 no cambió. Ahora la tasa de ahorro agregado sería la sumatoria entre $s_t + d_t$ haciendo que el ahorro agregado en el inciso 4 siga siendo $s_t = \frac{w_t}{2} - \frac{b_t}{2((1+r_{t+1}))}$. Como el ahorro agregado es el mismo, el stock de capital es el mismo. De este modo, la recomendación no funciona no lograr cambiar el ahorro agregado o el stock de capital.

## III Políticas tecnológicas (10 puntos)

Considere los siguientes modelos de cambio tecnológico que discutimos en clase

1. *Learning by doing*
2. Tecnología como un bien público
3. Efectos de escala en el desarrollo tecnológico
4. Escaleras de productos (*product ladders*)

Para cada uno de estos modelos proporcione una "respuesta de política" para lidiar con las consideraciones o ineficiencias discutidas en cada modelo.

**Respuesta:** Los ejemplos de políticas son:

- **Learning by doing:** Cualquier política que permita incorporar la externalidad que produce la producción de uno sobre la tecnología agregada. Subsidios por ejemplos.

- **Tecnología como bien público:** Patentes como paliativo.

- **Efectos de escala:** Ampliar los mercados para aprovechar los rendimientos crecientes a escala. Relaciona fuertemente con la apertura de los mercados internacionales.

- **Product ladders:** Evitar que los mercados se beneficien de generar únicamente pequeñas innovaciones. Regular la competencia y evitar la obsolescencia.

---


## IV Términos de Intercambio y Cuenta Corriente (15 puntos)

La Figura 1 abajo muestra la cuenta corriente de Chile entre 2001 y 2013. Se distinguen cuatro períodos: del 2001 al 2003 con posición deficitaria, del 2004 al 2007 con superávit, un vaivén durante la crisis global de 2008 y 2009, y un aumento paulatino en el déficit desde 2010. La Figura 2 muestra el precio internacional del Cobre (principal determinante de los términos de intercambio de Chile) en la línea punteada, y el pronóstico de expertos sobre el valor más probable para el precio para años próximo al de pronóstico (e.g. el valor esperado en el 2005 indica el valor esperado en promedio para el período 2004-2014). En la figura se observan dos períodos de crecimiento del precio del cobre (entre 2003 y a partir de 2010, y cierta estabilidad una caída importante durante la recesión global en 2008 y 2009.

Enfocándose en los dos períodos con aumento de precio de cobre, juzgue la habilidad de un modelo RBC de economía pequeña y abierta (como el visto en clase) para explicar el comportamiento de la cuenta corriente fue cualitativamente diferente. A pesar de que en ambos el precio del cobre aumentó. Escriba su respuesta en no más de una carilla (notar que no se requiere desarrollar un modelo, pero sí explicar brevemente qué supone uno).

**Respuesta:** En un modelo RBCSOE, podemos interpretar un shock de términos de intercambio como uno de productividad (por ejemplo, si asumimos que todo lo producido se exporta y todo lo usado se importa, y productividad entra a la restricción presupuestaria multiplicado por los términos de intercambio). En ese modelo, el efecto de todos los shocks a los términos de intercambio/productividad depende de la percepción sobre la duración del shock.

Si el shock es percibido como permanente (o que se mantenga en el futuro), el ahorro no debería moverse mucho (por suavizamiento del consumo). La inversión sí aumentaría, porque se espera que la productividad/términos de intercambio sean altos a futuro. Entonces, la cuenta corriente debería empeorar menos (más probable que sea deficitaria).

Si el shock es considerado como transitorio, los consumidores ahorrarán parte del ingreso extra para suavizar su consumo. Por otro lado, los incentivos a invertir serían menores. Bajo ese escenario, la cuenta corriente debería ser más positiva que la situación anterior (podría generar un superávit).

En los datos, vemos que si bien en ambos períodos aumentó el precio del cobre, en el primero se experimentó un shock mucho, por lo que podemos aducir que los shocks en ese período se percibieron más bien como transitorios. Por el contrario, luego del 2010 vemos también un aumento fuerte en el precio esperado, por lo que podemos pensar que los shocks durante ese período se percibieron más bien como permanentes. De esta manera, incorporando no solo el valor del precio sino también sus expectativas, podemos explicar el comportamiento diferente de la cuenta corriente en esos dos períodos.

## V Rigideces Salariales y Controles de Capitales (35 puntos)

Considere un modelo de economía pequeña y abierta, con bienes transables y no-transables, y rigideces salariales a la baja. El problema del hogar representativo es elegir las secuencias de consumo de transables ($c_t^T$), no-transables ($c_t^N$), endeudamiento externo neto ($d_{t+1}$) y empleo ($h_t$) de modo de maximizar,

$$\sum_{t=0}^{\infty} \beta^t [\ln(c_t^T) + \ln(c_t^N)],$$

sujeto a la restricción (expresada en moneda doméstica)

$$\mathcal{E}_t c_t^T + P_t^N c_t^N + \mathcal{E}_t d_t = \mathcal{E}_t(1 - \tau_t)\frac{d_{t+1}}{1+r} + \mathcal{E}_t y_t^T + W_t h_t + \Phi_t + T_t,$$

donde $y_t^T$ es la dotación de transables, $P_t^N$ es el precio de los no-transables, $\mathcal{E}_t$ es el tipo de cambio nominal (igual al precio local de transables), $r > 0$ es la tasa de interés internacional (constante), $W_t$ son los salarios nominales y $\Phi_t$ son los beneficios derivados de la propiedad de empresas del sector no-transable. El modelo incluye también un impuesto proporcional a la deuda tomada en cada período, $\tau_t$, y transferencias de suma fija obtenidas del gobierno.

Asuma también que se satisface la restricción de ausencia de juegos de Ponzi apropiada, que el stock inicial de deuda neta es cero ($d_0 = 0$), y que el máximo de horas trabajadas por período es igual a uno ($h_t \leq 1$). Considere también que los salarios son fijos.

En el sector no-transable, que opera bajo competencia perfecta, la tecnología es $y_t^N = \alpha (h_t)^{\alpha}$, con $\alpha \in (0,1)$. Finalmente, en el mercado de trabajo existe una restricción institucional que imposibilita la baja de salarios nominales $W_t \geq W_{t-1}$. Conteste las siguientes consignas.

1. Enuncie las condiciones de optimalidad para la elección del hogar representativo de $c_t^T$, $c_t^N$, $d_{t+1}$ y $h_t$ (puede, o bien derivarlas, o simplemente enunciarlas argumentando brevemente por qué son las condiciones de optimalidad). Explique también cómo un cambio sorpresivo y transitorio en $\tau_t$ afecta las decisiones individuales de los hogares.

**Respuesta:** Sea $\beta^t \lambda_t$ el multiplicador de Lagrange. Además de la restricción presupuestaria, las siguientes son las condiciones de optimalidad para las elecciones del hogar:

$$\frac{1}{c_t^T} = \mathcal{E}_t \lambda_t, \quad \frac{1}{c_t^N} = P_t^N \lambda_t, \quad \lambda_t \mathcal{E}_t = \beta \frac{1+r}{1-\tau_t} \lambda_{t+1} \mathcal{E}_{t+1},$$

que podemos combinar para obtener,

$$\frac{c_t^T}{c_t^N} = p_t^N, \quad c_{t+1}^T = \beta \frac{(1+r)}{1-\tau_t} c_t^T,$$

donde $p_t^N = P_t^N/\mathcal{E}_t$. Finalmente, en cuanto a $h_t$, al no generar ninguna desutilidad, los hogares eligen trabajar lo máximo posible.

Mirando la ecuación $c_{t+1}^T = \beta \frac{(1+r)}{1-\tau_t} c_t^T$, observamos que un aumento en $\tau_t$ genera un efecto análogo a un incremento en $r$. Así, habrá dos efectos: uno de sustitución intertemporal a favor del consumo futuro, reduciendo el consumo en $t$; y otro de ingreso (cuyo signo depende de si el cambio planteado accede o accede antes de del cambio en $\tau_t$).

2. Enuncie la condición de optimalidad del problema de las empresas no-transables para la elección de $h_t$ (puede, o bien derivarla, o simplemente enunciarla argumentando brevemente por qué es la condición de optimalidad).

**Respuesta:** Las empresas buscan maximizar beneficios $(P_t^N (h_t)^{\alpha} - W_t h_t)$, por lo que eligen $h_t$ en base a igualar la derivada de los beneficios a 0. Esto arroja la siguiente condición de optimalidad

$$P_t^N = \frac{W_t/\mathcal{E}_t}{\alpha h_t^{\alpha-1}}$$

3. En equilibrio, $c_t^N = y_t^N$. Asuma que el gobierno mantiene un presupuesto balanceado: la recaudación por el impuesto a la deuda es igual a las transferencias de suma fija. En principio, asuma que

$\tau_t = \bar{\tau}$ para todo $t$, y que $\beta(1+r) = (1-\bar{\tau})$. Muestre que, además de las condiciones $W_t \geq W_{t-1}$ y $h_t \leq 1$, las siguientes 3 ecuaciones caracterizan este equilibrio:

$$c_t^T = \frac{r}{1+r} \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j y_t^T, \quad p_t^N = \frac{c_t^T}{h_t^{\alpha}}, \quad P_t^N = \frac{W_t/\mathcal{E}_t}{\alpha h_t^{\alpha-1}},$$

donde $p_t^N$ es el precio relativo entre no-transables y transables (si no puede derivar estas ecuaciones, úselas como válidas para el resto del ejercicio).

**Respuesta:** Usando $\beta \frac{(1+r)}{1-\tau} = 1$, entonces $c_t^T = c_{t+1}^T$ para todo $t$. Además, usando $c_t^N = y_t^N$ y reemplazando $\Phi_t$ y la restricción del gobierno, la restricción presupuestaria de la economía en su conjunto puede escribirse como

$$c_t^T + d_t = \frac{d_{t+1}}{1+r} + y_t^T.$$

Iterando hacia adelante, obtenemos

$$\sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j c_t^T = \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j y_t^T.$$

Luego, usando $c_t^T = c_{t+1}^T$ para todo $t$ nos queda

$$c_t^T \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j = \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j y_t^T \Rightarrow c_t^T \frac{1+r}{r} = \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j y_t^T \Rightarrow c_t^T = \frac{r}{1+r} \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j y_t^T.$$

También, combinando $p_t^N = \frac{c_t^T}{c_t^N}$ con $c_t^N = y_t^N = h_t^{\alpha}$ tenemos

$$p_t^N = \frac{c_t^T}{h_t^{\alpha}}.$$

Finalmente, la última ecuación es la ya derivada condición de optimalidad de las firmas.

4. Considere un equilibrio inicial donde $y_t^T = \bar{y}^T$ y $\tau_t = \bar{\tau}$ para todo $t \geq 0$. Caracterice la solución de pleno empleo, tanto algebraica como gráficamente.

**Respuesta:** En este caso $c_t^T$ es

$$\bar{c}^T = \frac{r}{1+r} \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j \bar{y}^T = \bar{y}^T.$$

Además, con pleno empleo, de $p_t^N = \frac{c_t^T}{h_t^{\alpha}}$ tenemos que $\bar{p}^N = \bar{y}^T$. Finalmente, los salarios consistentes con este equilibrio son

$$p_t^N = \frac{W_t/\mathcal{E}}{\alpha h_t^{\alpha-1}} \Rightarrow \bar{W} = \mathcal{E} \alpha \bar{y}^T$$

La representación gráfica del equilibrio de pleno empleo es

[GRÁFICO mostrando intersección de curvas en equilibrio de pleno empleo]

5. Asuma que, partiendo del equilibrio anterior, en $t = 0$ ocurre una caída inesperada y transitoria (sólo por ese período) del ingreso de transables, i.e. $y_0^T < \bar{y}^T$, manteniendo el supuesto $\tau_t = \bar{\tau}$ para todo $t$. Compute los valores de equilibrio de las variables relevantes en $t = 0$ ante esta situación alternativa, asumiendo que el tipo de cambio es fijo. Muestre también el efecto gráficamente y explique intuitivamente. ¿Qué ocurre con la deuda en este caso?

**Respuesta:** En este caso $c_0^T$ es

$$c_0^T = \frac{r}{1+r} \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j y_j^T = \frac{r}{1+r} \left[ y_0^T + \sum_{j=1}^{\infty} \left(\frac{1}{1+r}\right)^j \bar{y}^T \right] = \frac{r}{1+r} \left[ y_0^T + \bar{y}^T \left(\frac{1}{1+r}\right) \sum_{j=0}^{\infty} \left(\frac{1}{1+r}\right)^j \right] =$$

$$= \frac{r}{1+r} \left[ y_0^T + \bar{y}^T \left(\frac{1}{1+r}\right) \frac{1+r}{r} \right] = \frac{r}{1+r} \left[ y_0^T + \bar{y}^T \right] < \bar{y}^T \text{ si } y_0^T < \bar{y}^T.$$

Notar también que $c_0^T > y_0^T$. Por otro lado, combinando $p_0^N = \frac{c_0^T}{h_0^{\alpha}}$ tenemos con $p_0^N = \frac{W_0/\mathcal{E}}{\alpha h_0^{\alpha-1}}$ usando el mismo salario, tenemos

$$\frac{c_0^T}{h_0^{\alpha}} = \frac{\bar{y}^T}{h_0^{\alpha-1}} \Rightarrow h_0 = \frac{c_0^T}{\bar{y}^T}$$

que es menor a 1 ya que $c_0^T < \bar{y}^T$. Luego $p_0^N = \frac{c_0^T}{h_0^{\alpha}} = \frac{c_0^T}{(c_0^T/\bar{y}^T)^{\alpha}} = \bar{y}^T \left(\frac{c_0^T}{\bar{y}^T}\right)^{1-\alpha} < \bar{p}^N$.

Finalmente $d_1 = (1+r)[c_0^T - y_0^T] > 0$

Intuitivamente, ante la caída transitoria del ingreso de transables los hogares ajustan hacia abajo en todos los períodos para suavizar su consumo de esto bienes, tomando deuda en el período inicial para lograr tal suavización. Esto genera una contracción en la demanda de no-transables, reduciendo el desempleo observado en equilibrio (como en el punto D en la figura)

[SEGUNDO GRÁFICO mostrando el nuevo equilibrio con desempleo]

6. ¿Cómo utilizaría el impuesto $\tau_0$ para mejorar la utilidad del período en el que se produce el shock negativo de bienes transables (asumiendo que para $t \geq 1$ el impuesto vuelve a $\tau_t = \bar{\tau}$)? Explique sólo intuitivamente.

**Respuesta:** Implementando un $\tau_0 < \bar{\tau}$ se genera un incentivo intertemporal a consumir más en el período $t = 0$ que en los períodos siguientes. En otras palabras, al abaratar el costo de la deuda del período donde el shock es negativo, da incentivo al consumo de transables debe ser grande a pesar del shock negativo. Este cambio amortigua también la caída en la demanda de los no-transables, reduciendo el desempleo observado en equilibrio (como en el punto D en la figura)

[TERCER GRÁFICO mostrando el efecto del cambio en el impuesto]

Esto mejora la utilidad en el período $t = 0$, pues el consumo de ambos bienes disminuye menos que sin este política. Crucialmente, dependiendo del valor de los parámetros, se podría volver a una situación como en el punto A; pero no es obvio que esto sea deseable (ver próximo inciso).

7. Desde un punto de vista de bienestar (i.e. de la utilidad esperada a lo largo de la vida del agente representativo), para enfrentar a un shock como el de los incisos anteriores, ¿es preferible tener rigidez en el tipo de cambio flexible, o una de controles de los productos de la posibilidad de usar controles de capitales con un impuesto como $\tau_t$? Explique intuitivamente.

**Respuesta:** El punto anterior indica que la caída en $\tau_0$ mejora el bienestar del período $t = 0$, sin embargo, a partir del período $t = 1$ el consumo de transables será menor que sin política. Esto, pues parte del ingreso permanente debe utilizarse para pagar la deuda extra que se tomó en el período 0, repercutiendo también en el consumo de no-transables. De este modo, a pesar de mejorar las cosas en términos de los ingresos en el corto plazo mejor en términos de la utilidad esperada.

Por otro lado, en clase estudiamos que bajo tipo de cambio flexible puede replicarse el equilibrio que se obtendría con flexibilidad salarial, que corresponde a la mejor situación a la que puede aspirar el agente representativo. Así, sigue siendo preferible desde esta perspectiva tener un tipo de cambio flexible.

8. En clase enfatizamos que, si la economía está expuesta a ciclos de *booms* y *busts* en las variables externas, bajo tipo de cambio fijo la modalidad vulnerable ante externalidad negativa. Explique brevemente esta externalidad, en particular cómo los *booms* generan condiciones que ponen a la economía en una situación vulnerable ante eventuales *busts*. A la luz de esta externalidad, y si no se desea abandonar el tipo de cambio fijo, ¿cómo cree que se podría utilizar el control de capitales $\tau_t$ durante períodos de *booms* para mitigar esta potenciales vulnerabilidades? Explique intuitivamente.

**Respuesta:** En períodos de expansión económica, una demanda elevada por no-transables tiende a aumentar los salarios nominales (y también los reales en dólares, dado el TC fijo). Aunque este aumento ocurre en un contexto de pleno empleo y expansión de la actividad, coloca a la economía en una situación vulnerable pues, en la caída contractiva del ciclo, la rigidez de salarios a la baja hace que los salarios nominales y en dólares se mantengan en el empleo (generado por la rigidez de salarios nominales) genere empleo. Si el tipo de cambio fuese flexible, durante el boom ocurriría lo mismo, pero en la contracción se podría implementar una devaluación que mitigue este efecto.

Así, con tipo de cambio fijo y rigideces salariales a la baja, el problema radica en una demanda muy alta durante el boom; pues el nivel de actividad máximo está dado por el pleno empleo y tener una demanda mayor solo empuja al alza hacia precios pero no genera un mayor nivel de consumo agregado. En ese sentido, sería deseable implementar una política que limite la demanda de bienes $NT$ de modo que la mesa no sobrepase el nivel de pleno empleo. Con los controles de capitales esto puede lograrse aumentando $\tau_t$ en los períodos de expansión; pues el aumento de $\tau_t$ crea efectivo de endurecimiento las agentes, restringiendo hacia abajo sus decisiones de consumo. Luego, en línea con los incisos anteriores, los controles podrían aliviarse durante las contracciones, de modo de amortiguaar los efectos contractivos. Notar que esto, si bien mejora la situación en términos de empleo y consumo no-transable, hace que el sendero de consumo transable no sea el que maximiza la parte del bienestar asociado a $c_t^T$, pues esto ocurriría con un $c_t^T$ constante a partir del período inicial. Así que sigue distorsionara. Así que hay un trade-off: mejora la parte relacionada con $c_t^N$ y empeora la de $c_t^T$.

De este modo, el uso óptimo sería involucrar usar el impuesto, pero tal vez no se podría maximizar el empleo y sí $c_t^N$, sino en un punto intermedio.

Por este motivo, esta situación no es mejor que tener un tipo de cambio flexible pero, si el país no puede optar por esa alternativa por algún motivo, un uso procíclico/anti-cíclico de controles de capitales como el indicado es deseable.

# Examen Final - Primer Trimestre - 2021

## 1. Fondo Soberano Noruego, 23 puntos
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


## 2. Generaciones Superpuestas con Foreign Aid, 18 puntos
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
## 3.Multiplicador del Gasto y Tipo de Cambio, 44 puntos

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

(b) ¿Cuándo un sistema dinámico es "source"?
  I. Si la cantidad de autovalores positivos excede la cantidad de variables "jumpy"
  II. Si la cantidad de autovalores negativos excede la cantidad de variables "jumpy"
  III. Si la cantidad de autovalores positivos es la misma que la cantidad de variables "jumpy"
  IV. Si la cantidad de autovalores negativos es la misma que la cantidad de variables estado

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

(j) Si la regla de Friedman caracteriza la política monetaria óptima:
  I. La tasa de inflación debe ser siempre cero.
  II. La tasa de emisión monetaria debe ser siempre negativa.
  III. La tasa de interés debe ser siempre cero.
  IV. La tasa de depreciación del tipo de cambio nominal debe ser siempre cero.


# Examen Final - Primer Trimestre - 2020

## I Verdadero/Falso [12 puntos, 2 cada uno]

### 1. En una economía con "learning by doing" alcanza con que haya rendimientos crecientes a escala para generar crecimiento endógeno

Based on the sources, in an economy with "learning by doing", **increasing returns to scale (IRS) are a crucial feature for enabling endogenous growth**, but it's not just any level of IRS; it needs to be of a sufficient strength or form to counteract diminishing returns to capital accumulation.

Here's a breakdown:

1. **Endogenous growth requires escaping diminishing returns**: A key challenge in achieving sustained long-run growth within economic models is overcoming the diminishing returns to capital accumulation, which are a feature of standard neoclassical production functions. Endogenous growth models aim to generate growth from within the model itself, often by assuming different properties for the production function or by endogenizing technological change.
2. **IRS is key to escaping diminishing returns**: Long-term growth is possible when accumulation is not subject to diminishing returns, and this typically entails a world where there are increasing returns to scale.
3. **Learning by doing as a source of IRS**: "Learning by doing," as suggested by Romer (1987), is one mechanism through which knowledge is accumulated as a by-product of production itself. Knowledge is argued to be a key source of these increasing returns to scale because, unlike physical capital, doubling knowledge does not require doubling the inputs used to create it, nor does its use by one firm prevent another from using it (it has public good characteristics). This accumulation of knowledge creates an externality.
4. **Specific condition for endogenous growth in the learning-by-doing model**: In a model where the production function includes both private capital ($k$) and the economy-wide stock of knowledge ($\bar{k}$), represented as $y = Ak^\alpha \bar{k}^\eta$, endogenous growth occurs if the sum of the exponents on the reproducible factors (capital and knowledge) is greater than or equal to 1, i.e., **if $\alpha + \eta \geq 1$**. This condition is described as requiring "constant returns in the reproducible factors, and, hence, sufficiently strong IRS". It is explicitly stated that "It is not enough to have IRS; we need that $\eta \geq 1 - \alpha$".
5. **IRS and externalities**: The learning-by-doing process means that production generates an externality; individual firms may face convex technologies, but at the economy level, there are increasing returns. However, because private agents do not capture the full social benefit of the knowledge they generate, the decentralised equilibrium growth rate may be lower than the socially optimal rate.

Therefore, in the context of a "learning by doing" economy as described in the sources, having increasing returns to scale is essential to overcome diminishing returns and enable endogenous growth. However, **simply having _some_ IRS is not sufficient; the IRS must be "sufficiently strong" such that the condition $\alpha + \eta \geq 1$ is met**, indicating constant or increasing returns to the reproducible factors of the economy (private capital and the public stock of knowledge).

### 2. Las diferencias de ingreso que se observan en el mundo pueden explicarse en un modelo de Solow solo si se producen por cambios en la productividad entre países

Based on the sources, the Solow model can help us understand income differentials across countries. In the basic Solow model, the steady-state level of output per capita ($y^*$) is determined by the level of technology ($A$), the saving rate ($s$), the population growth rate ($n$), and the depreciation rate ($\delta$):

$$y^* = A^{\frac{1}{1-\alpha}}\left(\frac{s}{n + \delta}\right)^{\frac{\alpha}{1-\alpha}}$$

This equation shows that differences in **all** these parameters ($A$, $s$, $n$, and $\delta$) contribute to differences in per capita income levels in the long run.

However, the sources explicitly question whether the basic Solow model, focusing _only_ on differences in factor accumulation parameters ($s$, $n$, $\delta$), can account for the **large magnitude** of income differences observed in the world today (e.g., a factor of more than 100 times between the richest and poorest countries).

The sources show that if you assume the level of technology ($A$) is the same across countries (e.g., $A=1$) and try to explain the large income differences solely through variations in savings, population growth, and depreciation, the model predicts much smaller differences than observed. This is due to the presence of diminishing returns to capital accumulation in the model, which dampens the effect of differences in $s$, $n$, and $\delta$ on long-run income levels.

Conversely, if you assume similar rates for $s$, $n$, and $\delta$ across countries and try to explain the income differences _only_ through differences in the level of technology ($A$), the model requires substantial differences in $A$ to match the observed income ratios. For example, with a common assumption of $\alpha = 2/3$, a country with a third of the TFP (productivity) of another would have an income level 1/27th the size. Studies using calibration exercises within the Solow framework show that large differences in productivity are indeed needed to approximate the existing cross-country income differences. These calculated differences in productivity (Relative TFP) appear "quite plausible" compared to the implausible differences required for savings/population parameters.

While the augmented Solow model adds human capital ($H$) accumulation as another factor influencing long-run income levels, with the steady state depending on $A$, $s_k$, $s_h$, $n$, $g$, and $\delta$, the core issue of diminishing returns to reproducible factors remains if the sum of exponents on physical and human capital is less than one ($\alpha + \beta < 1$).

Therefore, the sources indicate that while other factors (savings, population growth, depreciation) do affect income levels in the Solow model, **the model requires substantial cross-country differences in productivity to approximate existing cross-country differences in income**. The consensus in the literature, according to the sources, is that **productivity differences are crucial for understanding cross-country differences in economic performance**.

So, in the Solow model, differences in income are not _only_ explained by productivity differences, as variations in saving rates, population growth, and depreciation also play a role. However, the ability of the model to explain the _magnitude_ of the very large observed differences strongly leans on substantial differences in productivity levels.


### 3. Una mejor tecnología de monitoreo del esfuerzo de trabajadores va a implicar una menor tasa de desempleo en equilibrio

Based on the sources, particularly the description of the Shapiro-Stiglitz model, a **better technology for monitoring worker effort is expected to imply a lower rate of unemployment in equilibrium**.

Here's the reasoning based on the provided material:

1. **Unemployment in the Efficiency Wage Model:** The Shapiro-Stiglitz model explains the existence of equilibrium unemployment through the concept of **efficiency wages**. In this framework, firms cannot perfectly monitor the effort of their workers. This creates a moral hazard problem, where workers might choose to "shirk" (exert zero effort) if their wage is too low.
2. **Incentive to Exert Effort:** To incentivize workers to exert effort ($e = \bar{e}$ rather than $e=0$), firms pay a wage higher than the market-clearing wage. The penalty for shirking is being caught (with probability $q$) and losing the job (with exogenous probability $b$).
3. **The No-Shirking Condition (NSC):** For workers to choose not to shirk, the expected value of being employed and working must be greater than or equal to the expected value of being employed and shirking. This leads to the No-Shirking Condition (NSC), which determines the minimum wage required to prevent shirking.
4. **Monitoring and the Required Wage:** The quality of the monitoring technology is represented by the probability $q$ that a shirking worker is caught. The NSC shows that the efficiency wage required to deter shirking is **decreasing in the quality of the monitoring technology, $q$**. A higher $q$ means workers are more likely to be caught if they shirk, so a smaller wage premium is needed to make them fear job loss enough to exert effort. The wage premium required is also decreasing in the unemployment rate, as higher unemployment makes job loss more costly for the worker.
5. **Equilibrium and Unemployment:** Firms set wages and employment levels. In equilibrium, firms must pay a wage that satisfies the NSC. Because this wage is set above the market-clearing level, the quantity of labor demanded by firms at this wage is less than the total labor supply, resulting in unemployment.
6. **Impact of Better Monitoring:** If the monitoring technology improves (i.e., $q$ increases), the wage required to satisfy the NSC **falls** for any given level of unemployment. Since firms' demand for labor is typically higher at lower wages, a decrease in the required wage implies that firms will hire more workers, leading to a **lower equilibrium unemployment rate**.

In summary, within the framework of the Shapiro-Stiglitz efficiency wage model, **improved monitoring reduces the wage necessary to prevent workers from shirking, allowing firms to hire more labor and thus leading to a lower unemployment rate in equilibrium**.

### 4. El modelo de fondo soberano de Noruega (que todo dólar que entre lo transforma en un flujo permanente) podría ser racionalizado por un modelo neoclásico de crecimiento en economía abierta con costos de ajuste a la inversión.


### 5. Una depreciación esperada del tipo de cambio real baja la tasa de interés basada en el consumo.

### 6. La "política aritmética desagradable" (unpleasant monetarist arithmetic) dice que si un banco central compra reservas esterilizadas en una operación de mercado abierto la tasa de inflación de equilibrio sube.


## II El modelo de Sidrauski [28 puntos]

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

## III Resolviendo un modelo básico de search [10 puntos]

Asuma un modelo básico de búsqueda laboral donde un individuo recibe todo los períodos una oferta laboral con salario $w$ que puede aceptar o no.

1. Escriba las ecuaciones que definen este problema en tiempo discreto.

2. Escriba las ecuaciones que definen este problema en tiempo continuo.

3. Resuelva para una ecuación para el salario de reserva.

4. Asuma que con probabilidad .5 el salario que recibe es $w^*$ y con probabilidad .5 es cero. Resuelva para el salario de reserva.

5. ¿Existe alguna configuración de parámetros donde acepte la oferta de cero y deje de buscar?



## IV Las peripecias de Pesce [8 puntos]

El modelo de dinero con shopping time termina en un conjunto de dos ecuaciones que describen el equilibrio monetario del lado bueno de la curva de laffer. Estas ecuaciones son

$$g - \tau + B\frac{R-1}{R} = f(R_m)(1 - R_m) \quad (1)$$

y

$$\frac{M_0}{P_0} = f(R_m) - (g * B_0 - \tau_0) + \frac{B}{R} \quad (2)$$

1. Asuma que se aumenta el déficit. Explique las implicancias para la inflación. ¿Esta relación es única?

2. Asuma que el gobierno logra bajar exógenamente la tasa que paga sobre sus bonos. ¿Que implicancia tiene para la inflación?

3. Si B es 6 puntos del PBI y la tasa nominal, se reduce en 20 puntos porcentuales. ¿Que margen da eso para aumentar el déficit sin inflación?

4. Asuma ahora que en período cero Pesce emite lo necesario para cancelar el stock de bonos B. ¿Qué impacto tendría sobre la inflación en el corto y largo plazo?

## V Canal de oferta de la tasa política monetaria [42 puntos]

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

## III Utilización del Capital en el Modelo RBC SOE [40 puntos]

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




