# Política Monetaria
## Federico Sturzenegger & Javier Garcia Cicco
### TF: Jeremias Manzano, Raul Sosa, Julian Vazquez
#### (Mayo 2025)

---

## La Restricción Presupuestaria

$$\frac{\dot{M}_t}{P_t} + \dot{b}_t = rb_t + y_t - \tau_t - c_t$$

donde $\tau_t$ son impuestos o transferencias pagadas hacia o por el gobierno y, como siempre, $y_t$ es el ingreso y $c_t$ el consumo. Definir la cantidad real de dinero como:

$$m_t = \frac{M_t}{P_t}$$

Tenemos:

$$\frac{\dot{M}_t}{P_t} = \dot{m}_t + \pi_t m_t$$

---

## Introduciendo dinero

Usando la ecuación (3) en (1) tenemos que:

$$\dot{m}_t + \dot{b}_t = rb_t + y_t - \tau_t - c_t - \pi_t m_t$$

Una transformación útil involucra sumar y restar el término $rm_t$ al lado derecho de (4):

$$\dot{m}_t + \dot{b}_t = r(m_t + b_t) + y_t - \tau_t - c_t - (r + \pi_t) m_t$$

Ahora definir:
$$a_t = m_t + b_t$$

como el total de activos financieros mantenidos por el agente, y:
$$i_t = r + \pi_t$$

para obtener:
$$\dot{a}_t = ra_t + y_t - \tau_t - c_t - i_t m_t$$

---

## El modelo de Sidrauski

Asumir ahora que la función de utilidad del agente representativo es:

$$\int_0^{\infty} [u(c_t) + v(m_t)]e^{-\rho t} dt$$

sujeta a:
$$\dot{a} = ra_t + y - \tau_t - c_t - i_t m_t$$

más la condición estándar de solvencia:
$$\lim_{T \to \infty} \left[a_T e^{-rT}\right] \geq 0$$

---

## Resolviendo el modelo

El Hamiltoniano es:

$$H = [u(c_t) + v(m_t)] + \lambda_t (ra_t + y_t - \tau_t - c_t - i_t m_t)$$

Las condiciones de primer orden son:
$$u'(c_t) = \lambda_t$$
$$v'(m_t) = \lambda_t i_t$$
$$\dot{\lambda}_t = \lambda_t (\rho - r) = 0$$

donde asumimos $r = \rho$. Combinando (12) y (13) tenemos:

$$v'(m_t) = i_t u'(c)$$

que es nuestra ecuación de demanda de dinero.

---

## Encontrando la tasa de inflación

¿Cuál sería la tasa de inflación en este modelo? Notar que:

$$\frac{\dot{m}}{m} = \sigma - \pi$$

También asumimos:
$$\tau = -\sigma m$$

Reemplazando (16) y (17) en (8) da que $c = y$. La ecuación (14) se convierte en:

$$v'(m) = \rho + \pi$$

que sustituyendo en (16) da:

$$\dot{m} = (\rho + \sigma)m - v'(m)m$$

---

## Modelo de Sidrauski

### Figura: El Modelo de Sidrausky

Diagrama de fases mostrando $\dot{m}$ vs $m$ con estado estacionario en $m^*$.

---

## Modelo de Sidrauski

**La teoría cuantitativa del dinero:**

- La tasa de inflación es la tasa de crecimiento del dinero. La inflación es un fenómeno monetario.

- Si se espera que el dinero crezca, el nivel de precios salta hoy.

- El dinero es neutral

---

## Un aumento anticipado en el crecimiento del dinero

### Figura: Un aumento anticipado en el crecimiento del dinero

Diagrama de fases mostrando desplazamiento en la curva $\dot{m} = 0$ y ajuste dinámico del punto A al B con inflación $\pi$.

---

## La tasa óptima de inflación

De (19) y (15):

$$v'(m) = u'(c)(r + \sigma)$$

El banco central puede elegir $\sigma$ para maximizar la utilidad de las tenencias de dinero. Esto implica elegir:

$$\sigma^{best} = -r < 0$$

de modo que:
$$v'(m^{best}) = 0$$

Esta es la famosa "regla de Friedman" para la política monetaria óptima.

---

## Equilibrios múltiples en el modelo de Sidrauski

### Figura: Equilibrios múltiples en el Modelo de Sidrauski

Diagrama de fases mostrando múltiples senderos de equilibrio, con sendero estable en $m^*$ y equilibrios inestables en los puntos A y B.

---

## Sustitución de monedas

- Ley de Gresham: *la moneda mala desplaza a la buena*

- Si hay menos demanda de dinero: ¿Mayor inflación?

- $v'(m)m=0$ más probable: los senderos de hiperinflación son más probables.

- La dinámica del dinero se describe por un análogo a (19):
$$\dot{m}_1 = (\rho + \sigma_1) - v'(m_1, m_2)m_1$$

- Si $m_2$ reduce la utilidad marginal del primero, entonces la tasa de inflación en el sendero de equilibrio es menor: se necesita menos inflación para eliminar la moneda.

- La experiencia de Argentina

---

## Superneutralidad

Considerar ahora la función de utilidad:

$$\max V_s = \int_0^{\infty} u(c_t, m_t) \exp^{-\rho t} dt$$

Definiendo nuevamente $a = k + m$, la restricción de recursos se puede escribir como:

$$\dot{a} = ra + w + \tau - c - im$$

El Hamiltoniano es:

$$H = u(c_t, m_t) + \lambda [ra_t + w + \tau_t - c_t - i_t m_t]$$

---

## Superneutralidad (continuación)

Las CPO son, como siempre:
$$u_c(c_t, m_t) = \lambda$$
$$u_m(c_t, m_t) = \lambda i_t$$
$$\dot{\lambda} = (\rho - r)\lambda$$

---

## Superneutralidad (continuación)

- Nuevamente $u_m = u_c i$

- En estado estacionario $r = \rho = f'(k^*)$

- $\tau = \sigma m$

- Podemos mostrar $c = f(k^*)$.

- ¡Pero este es el nivel de ingreso que habríamos tenido en el modelo sin dinero!

---

## La relación entre política fiscal y monetaria

Comenzamos con la restricción presupuestaria del gobierno:

$$\dot{m}_t = rd_0 + g - \tau - \pi_t m_t$$

que en estado estacionario se convierte en:

$$rd_0 + g - \tau = \pi m$$

Asumiendo una función típica de demanda de dinero $m_t = ye^{-\gamma i_t}$ podemos reescribir esto como:

$$rd_0 + g - \tau = \pi ye^{-\gamma(r+\pi)}$$

---

## La relación entre política fiscal y monetaria (continuación)

Notar que:
$$\frac{\partial (\pi e^{-\gamma(r+\pi)})}{\partial \pi} = e^{-\gamma(r+\pi)}(1 - \gamma\pi)$$

de modo que el ingreso es creciente en $\pi$ para $\pi < \gamma^{-1}$, y decreciente para $\pi > \gamma^{-1}$. Se sigue que $\pi = \gamma^{-1}$ es la tasa de inflación que maximiza el ingreso. El trabajo empírico sin embargo ha encontrado, afortunadamente, que los gobiernos típicamente se colocan en el lado correcto de la curva de Laffer.

---

## El impuesto inflacionario y la dinámica de la inflación

¿Cuáles son las dinámicas de esta inflación motivada fiscalmente? Usando la función de demanda de dinero, podemos escribir:

$$\pi = \gamma^{-1}(\log y - \log m) - r$$

Esto en (30) implica:

$$\dot{m}_t = rd_0 + g - \tau - \gamma^{-1}(\log y - \log m_t) m_t + rm_t$$

Notar que:
$$\frac{\partial \dot{m}_t}{\partial m_t}\bigg|_{SS} = -\gamma^{-1}(\log y - \log m) + \gamma^{-1} + r$$

y porque:
$$\pi = \gamma^{-1}(\log y - \log m) - r$$

se simplifica a:
$$\frac{\partial \dot{m}_t}{\partial m_t}\bigg|_{SS} = \gamma^{-1} - \pi$$

---

## El impuesto inflacionario y la dinámica de la inflación (continuación)

Por lo tanto, $\frac{\partial \dot{m}_t}{\partial m_t}\big|_{SS} > 0$ para la inflación de estado estacionario por debajo de $\gamma^{-1}$, y $\frac{\partial \dot{m}_t}{\partial m_t}\big|_{SS} < 0$ para la tasa de inflación de estado estacionario por encima de $\gamma^{-1}$.

Esto significa que el equilibrio de alta inflación es estable. Como $m$ es una variable que salta, esto significa que además del equilibrio bien definido en inflación baja, hay infinitos equilibrios en los que la inflación converge a los equilibrios de alta inflación.

---

## Aritmética monetaria desagradable

Recordar la evolución de activos (8):

$$\dot{b}_t + \dot{m}_t = -\pi m + y + \rho b - c$$

La evolución del dinero real sigue:

$$\dot{m} = (\sigma - \pi)m$$

como antes. Reemplazando (40) en (39) obtenemos:

$$\dot{b}_t = -\sigma m + y - c + \rho b$$

donde el término $y - c$ puede interpretarse como el déficit fiscal. Llamar a esta expresión $D$. Reemplazando (13) en (40) obtenemos:

$$\dot{m} = (\sigma + \rho - v'(m))m$$

---

## Aritmética monetarista desagradable

### Figura: La Dinámica de m y b

Diagrama de fases mostrando $m$ vs $b$ con curvas $\dot{b} = 0$ y $\dot{m} = 0$ y flechas direccionales indicando dinámicas.

---

## Aritmética monetarista desagradable (continuación)

Para analizar esto primero computamos todas las combinaciones de estado estacionario de $m$ y $b$ para diferentes valores de $\sigma$. Haciendo $\dot{b}$ y $\dot{m}$ iguales a cero en (41) y (42) y sustituyendo $\sigma$ en (41) usando (42) obtenemos:

$$b = \frac{mv'(m)}{\rho} - m - \frac{D}{\rho}$$

Este es el lugar geométrico de EE en la Figura 5. Sabemos que eventualmente la economía vuelve a un estado estacionario a lo largo de esta línea. Para finalizar el análisis, necesitamos darnos cuenta de que la ecuación para la acumulación de activos se puede escribir como:

$$\dot{a} = \rho a - v'(m)m + D$$

notar, sin embargo, que si $\dot{a} = 0$ esta ecuación coincide con (43). Esto significa que por encima del lugar geométrico de estados estacionarios los senderos dinámicos tienen una pendiente que es menor que uno (de modo que la suma de $m$ y $b$ crece a medida que te mueves) y más empinada que uno por debajo (de modo que el valor total de activos cae).

---

## Aritmética Monetarista Desagradable

### Figura: Aritmética Monetarista Desagradable

Diagrama de fases mostrando $m$ vs $b$ con curvas $\dot{b} = 0$, $\dot{b}' = 0$, $\dot{m} = 0$, $\dot{m}' = 0$, y senderos de punto de silla marcados como $s$.

---

## Reglas vs discreción

Pensar en el BC minimizando:

$$L = \frac{1}{2}\left[\alpha\pi_t^2 + (y_t - y^*)^2\right]$$

La economía está completamente caracterizada por la curva de Phillips expectacional:

$$y_t - y = \theta (\pi_t - \pi_t^e) + z_t, \quad \theta > 0$$

La función de pérdida social es:

$$L = \left(\frac{1}{2}\right) \left(\alpha\pi_t^2 + (y_t - \gamma y)^2\right), \quad \alpha > 0, \gamma > 1$$

Notar que la tasa de producto "felicidad" es $\gamma y$, está por encima de la tasa natural de $y$. Esto será una fuente de problemas.

---

## Tiempo

El tiempo de las acciones es el siguiente. La economía tiene una tasa de producto natural $y$ que es conocida por todos los jugadores. El público se mueve primero, estableciendo sus expectativas de inflación. El shock $z_t$ se realiza entonces. El hacedor de política se mueve después, estableciendo $\pi$ para minimizar (47) sujeto a (46), la realización del shock (conocida por el hacedor de política) y las expectativas de inflación del público. Notar que este tiempo implica que el hacedor de política tiene una ventaja informacional sobre el público.

---

## Discreción

El hacedor de política establece $\pi_t$ óptimamente, tomando $\pi_t^e$ como dada. Sustituyendo (46) en (47) tenemos:

$$L = \left(\frac{1}{2}\right) \alpha\pi_t^2 + \left(\frac{1}{2}\right) [\theta (\pi_t - \pi_t^e) + z_t - y (\gamma - 1)]^2$$

Minimizando con respecto a $\pi_t$ da:

$$\alpha\pi_t + \theta [\theta (\pi_t - \pi_t^e) + z_t - y (\gamma - 1)] = 0$$

Reordenando llegamos a:

$$\theta\pi_t = (1 - \lambda) [\theta\pi_t^e - z_t + y (\gamma - 1)]$$

donde $\lambda \equiv \frac{\alpha}{\alpha+\theta^2} < 1$.

Imponiendo $\pi_t^e = E\pi_t$:

$$\theta\pi_t^e = \left(\frac{1 - \lambda}{\lambda}\right) (\gamma - 1) y$$

---

## La tasa de inflación

Usando (51) en (50) da:

$$\theta\pi_t = \left(\frac{1 - \lambda}{\lambda}\right) (\gamma - 1) y - (1 - \lambda) z_t$$

o, más simplemente:

$$\pi_t = \left(\frac{1 - \lambda}{\theta\lambda}\right) (\gamma - 1) y - \frac{(1 - \lambda)}{\theta} z_t$$

de modo que la inflación real depende del shock así como del término fijo de "sesgo inflacionario".

---

## La volatilidad del producto

Recordar que usando (51) en (50) da:

$$\theta\pi_t = \left(\frac{1 - \lambda}{\lambda}\right) (\gamma - 1) y - (1 - \lambda) z_t$$

de modo que la inflación real depende del shock así como del término fijo de "sesgo inflacionario". Restando (51) de (54) da:

$$\theta (\pi_t - \pi_t^e) = - (1 - \lambda) z_t$$

o:
$$y_t = y + \lambda z_t$$

---

## Utilidad bajo discreción

Usando (54) y (56) en (47) da:

$$L = \left(\frac{1}{2}\right) \left(\frac{1 - \lambda}{\lambda}\right) [(\gamma - 1) y - \lambda z_t]^2 + \left(\frac{1}{2}\right) (y (1 - \gamma) + \lambda z_t)^2$$

y tomando expectativas tenemos:

$$L = \left(\frac{1}{2}\right) \left(\frac{1}{\lambda}\right) \left[(\gamma - 1)^2 y^2 + \lambda^2 Ez_t^2\right]$$

o:
$$EL^{disc} = \left(\frac{1}{2}\right) \left[\frac{(\gamma - 1)^2 y^2}{\lambda} + \lambda\sigma^2\right]$$

---

## Una regla rígida de inflación

Ahora el hacedor de política establece $\pi_t = 0$. La curva de Phillips dicta que:

$$y_t = y - \theta\pi_t^e + z_t$$

Si, además, la regla es creíble, de modo que $\pi_t^e = 0$, tenemos:

$$y_t = y + z_t$$

El producto absorbe el impacto completo del shock. La pérdida correspondiente es:

$$L^{rule} = \left(\frac{1}{2}\right) [-y (\gamma - 1) + z_t]^2$$

La expectativa incondicional de (62) es:

$$EL^{rule} = \left(\frac{1}{2}\right) \left[y^2 (\gamma - 1)^2 + \sigma^2\right]$$

---

## ¿Qué régimen es mejor?

$EL^{rule} < EL^{disc}$ si y solo si $(\gamma - 1) y > \sigma\sqrt{\lambda}$. El lado izquierdo es un proxy para el sesgo inflacionario bajo discreción; el lado derecho es un proxy para el costo de variabilidad bajo una regla rígida. La regla rígida es mejor cuando el primero es mayor, y viceversa. En resumen prefieres una regla fija si tu sesgo inflacionario es grande y los shocks de oferta pequeños.

---

## El argumento para metas de inflación

Suponer ahora:

$$L^p = \left(\frac{1}{2}\right) \alpha (\pi_t + \pi)^2 + \left(\frac{1}{2}\right) (y_t - \gamma y)^2$$

donde $-\pi$ es la tasa de inflación de "felicidad".

Sustituyendo (46) en (64) se obtiene:

$$L^p = \left(\frac{1}{2}\right) \alpha (\pi_t + \pi)^2 + \left(\frac{1}{2}\right) [\theta (\pi_t - \pi_t^e) + z_t - (\gamma - 1) y]^2$$

---

## El argumento para metas de inflación (continuación)

Minimizando con respecto a $\pi_t$ da:

$$\alpha (\pi_t + \pi) + \theta [\theta (\pi_t - \pi_t^e) + z_t - (\gamma - 1) y] = 0$$

Reordenando llegamos a:

$$\theta\pi_t = (1 - \lambda) [\theta\pi_t^e - z_t + y (\gamma - 1)] - \lambda\theta\pi$$

Tomando expectativas tenemos:

$$\theta\pi_t^e = \left(\frac{1 - \lambda}{\lambda}\right) (\gamma - 1) y - \theta\pi$$

de modo que el sesgo inflacionario es positivo o negativo dependiendo del establecimiento de $\pi$.

---

## El argumento para metas de inflación (continuación)

Suponer que la meta se establece de modo que el sesgo inflacionario es cero. Tener $\theta\pi_t^e = 0$ implica:

$$\lambda\theta\pi = (1 - \lambda) (\gamma - 1) y$$

Usando esto en (67) da:

$$\theta\pi_t = - (1 - \lambda) z_t$$

Usando esto y $\pi_t^e = 0$ en (46) da:

$$y_t - y = \lambda z_t$$

de modo que las desviaciones del producto de su nivel de largo plazo son las mismas que bajo discreción.

---

## El caso de metas de inflación

Finalmente, usando (70) y (71) en la función de pérdida del público (47) da:

$$L = \left(\frac{1}{2}\right) \lambda (1 - \lambda) z_t^2 + \left(\frac{1}{2}\right) [\lambda z_t - (\gamma - 1) y]^2$$

Tomando expectativas y reordenando:

$$EL^{target} = \left(\frac{1}{2}\right) \left[\lambda\sigma^2 + (\gamma - 1)^2 y^2\right]$$

Es fácil verificar que $EL^{target}$ es menor que $EL^{disc}$ o $EL^{rule}$. Es decir, las metas de inflación son mejores para el bienestar que la política completamente discrecional y una regla rígida. La intuición debería ser simple: las metas disfrutan de los beneficios de flexibilidad de la discreción y los beneficios de credibilidad de una regla (el sesgo inflacionario es cero).




# SDSDFSDFSD


 # Política Fiscal
## Federico Sturzenegger & Javier Garcia Cicco
### AF: Jeremías Manzano, Raúl Sosa, Franco Vázquez
#### (Abril 2025)

---

## Una Revisión de NK

### Figura: Efectos de bienestar de la Competencia Imperfecta
- Gráfico Precio vs Cantidad mostrando:
- Curvas de Demanda $D$ y $D'$
- Curvas de Ingreso Marginal $MR$ y $MR'$
- Curva de Costo Marginal $MC$
- Puntos A, C, B

---

## La curva NKIS

Comenzamos desde la ecuación de Euler:
$$\frac{\dot{C}_t}{C_t} = \sigma (r_t - \rho)$$

En una economía cerrada sin inversión, todo el producto $Y_t$ es consumido.
Por lo tanto:
$$C_t = Y_t$$

y:
$$\frac{\dot{Y}_t}{Y_t} = \sigma (i_t - \pi_t - \rho)$$

donde $i_t$ es la tasa de interés nominal se toma como exógena y constante (por ahora). $r_t \equiv i_t - \pi_t$

---

## La curva NKIS (continuación)

Si definimos la brecha del producto como:
$$X_t \equiv \frac{Y_t}{\bar{Y}_t}$$

donde $\bar{Y}_t$ es el nivel "natural" o de largo plazo del producto, entonces la brecha del producto evoluciona según:
$$\frac{\dot{X}_t}{X_t} = \frac{\dot{Y}_t}{Y_t} - g$$

donde $g$ es la tasa de crecimiento porcentual del nivel "natural" del producto. Dejando que las letras minúsculas denoten logaritmos:
$$\dot{x}_t = \sigma (i_t - \pi_t - r^n)$$

donde $r^n \equiv \rho + \sigma^{-1}g$ es la tasa de interés "natural", que depende tanto de las preferencias como del crecimiento de la productividad.

---

## Conclusión I

Muchos de ustedes conocen la curva IS tradicional:
- Dice que el producto es una función negativa de la tasa de interés (debido a su efecto sobre el consumo y la inversión)

La NKIS establece que la tasa de cambio del consumo/producto está positivamente relacionada con la tasa de interés:
- Una mayor tasa de interés afecta el consumo (reduciéndolo) a través de la optimización intertemporal.

---

## Modelos de fijación de precios

Los modelos keynesianos tendrán algún tipo de rigidez de precios:

**Modelos dependientes del estado** tienen sentido: cambias cuando el precio se desvía lo suficiente de un punto óptimo:
- Costos de menú
- Reglas S-s
- Redondeo de precios

**Reglas dependientes del tiempo**: cambias después de una cantidad dada de tiempo.
- El modelo más famoso es el modelo de fijación de precios de Calvo

---

## Fijación de Precios de Calvo

La probabilidad de recibir una señal $s$ períodos a partir de ahora se asume independiente de la última vez que la empresa recibió la señal, y está dada por:
$$\alpha e^{-\alpha s}, \quad \alpha > 0$$

Nótese que una fracción $\alpha$ de empresas recibirá la señal de cambio de precio por unidad de tiempo. (lo anterior con $s = 0$).

---

## Fijación de Precios de Calvo (continuación)

Ahora imaginemos que estamos en el tiempo $t$ (estamos tratando de calcular el nivel de precios en $t$) Por lo tanto:
$$\alpha e^{-\alpha(t-s)}$$

es la fracción de empresas que fijaron sus precios en el tiempo $s$ y aún no han recibido una señal de cambio de precio en el tiempo $t > s$.

Después, sea $v_t$ el (logaritmo del) precio fijado por una empresa individual, $p_t$ el nivel de precios (pegajoso):
$$p_t = \alpha \int_{-\infty}^t v_s e^{-\alpha(t-s)} ds$$

¡Esto es como un promedio ponderado de todos los precios existentes! ¡Y es pegajoso!

---

## El nivel de precios

¿Cómo se fija $v_t$? Vieron los detalles de la fijación de precios de Calvo con Javier así que aquí solo postularé esto. El precio óptimo $v_t$ se fija como:
$$v_t = p_t + \alpha \int_t^{\infty} [(v_s - p_s) + \eta x_s] e^{-(α+ρ)(s-t)} ds$$

¿Qué significa esto? El precio depende del promedio descontado, ponderado por probabilidad de todos los precios relativos futuros y todas las brechas del producto.

---

## Regla de Leibniz

Toma una función:
$$g(x) = \int_{a(x)}^{b(x)} f(x,s) ds$$

la derivada de $g$ con respecto a $x$ es:
$$\frac{dg}{dx} = f(x,b(x)) \frac{db}{dx} - f(x,a(x)) \frac{da}{dx} + \int_{a(x)}^{b(x)} \frac{\partial f(x,s)}{\partial x} ds$$

---

## Derivando la NKPC

Usando Leibniz en:
$$p_t = \alpha \int_{-\infty}^t v_s e^{-\alpha(t-s)} ds$$

obtenemos:
$$\dot{p}_t = \pi_t = \alpha (v_t - p_t)$$

---

## Derivando la NKPC (continuación)

Dejo como ejercicio mostrar que:
$$\dot{v}_t - \dot{p}_t = -\alpha\eta x_t + \rho (v_t - p_t)$$

Lo cual usando $\pi_t = \alpha (v_t - p_t)$ o $(v_t - p_t) = \frac{\pi_t}{\alpha}$

Tenemos:
$$\dot{v}_t - \dot{p}_t = -\alpha\eta x_t + \frac{\rho}{\alpha} \pi_t$$

Y notando que de la ecuación de precios $(\dot{v}_t - \dot{p}_t) = \frac{\dot{\pi}_t}{\alpha}$

Finalmente, combinando las últimas dos expresiones llegamos a:
$$\dot{\pi}_t = \rho\pi_t - \kappa x_t$$

donde $\kappa = \alpha^2 \eta$

---

## La NKPC

En la curva de Phillips tradicional, la tasa de inflación era una función creciente de la brecha del producto.

¡En la NKPC de Calvo-Yun el cambio en la tasa de inflación es una función decreciente de la brecha del producto!

Nótese, también que mientras el nivel de precios es una variable pegajosa, la inflación no lo es.

Esto es intuitivo, la inflación debería poder saltar en respuesta a cambios esperados en variables relevantes.

---

## El modelo

Recordemos las dos ecuaciones:

**La NKIS:**
$$\dot{x}_t = \sigma (i_t - \pi_t - r^n)$$

**La NKPC:**
$$\dot{\pi}_t = \rho\pi_t - \kappa x_t$$

Este es un modelo dinámico en dos variables $x$ y $\pi$. ¡Ambas son variables saltarinas! ¡Es keynesiano porque el producto está determinado por la demanda!

---

## El Estado Estable

El estado estable es:
$$\bar{\pi} = i - r^n \quad \text{(de } \dot{y}_t = 0\text{)}$$
$$\rho \bar{\pi} = \kappa \bar{x} \quad \text{(de } \dot{\pi}_t = 0\text{)}$$

donde las barras superiores denotan el estado estable.

En este modelo no hay conflicto entre mantener la inflación baja y estabilizar el producto.

Si $i = r^n$, entonces $\pi_t = x_t = 0$ lo que llamamos la "coincidencia divina".

---

## Dinámicas

En forma matricial el sistema dinámico es:
$$\begin{bmatrix} \dot{\pi}_t \\ \dot{x}_t \end{bmatrix} = \Omega \begin{bmatrix} \pi_t \\ x_t \end{bmatrix} + \begin{bmatrix} 0 \\ \sigma (i - r^n) \end{bmatrix}$$

donde:
$$\Omega = \begin{bmatrix} \rho & -\kappa \\ -\sigma & 0 \end{bmatrix}$$

Es directo ver que $\det(\Omega) = -\sigma\kappa < 0$, y $\text{Tr}(\Omega) = \rho > 0$.

---

## Una representación gráfica

### Figura: Indeterminación en el Modelo NK
- Gráfico mostrando $\pi$ vs $x$ con curvas $\dot{\pi} = 0$ y $\dot{x} = 0$
- Estado estable en $(\bar{x}, \bar{\pi} = 0)$

---

## Conclusión III

El modelo con una regla de tasa de interés exógena es estable en sendero de silla.

Pero debido a que ambas variables son saltarinas esto significa que el sistema es indeterminado.

¡Cualquier inflación es posible!

---

## El Principio de Taylor

Asume una regla de Taylor:
$$i_t = i^n + \phi_\pi \pi_t + \phi_x x_t$$

Usando esto:
$$\dot{x}_t = \sigma [(i^n - r^n) + (\phi_\pi - 1) \pi_t + \phi_x x_t]$$

El sistema dinámico puede escribirse como:
$$\begin{bmatrix} \dot{\pi}_t \\ \dot{x}_t \end{bmatrix} = \Omega \begin{bmatrix} \pi_t \\ x_t \end{bmatrix} + \begin{bmatrix} 0 \\ \sigma (i^n - r^n) \end{bmatrix}$$

donde:
$$\Omega = \begin{bmatrix} \rho & -\kappa \\ \sigma (\phi_\pi - 1) & \sigma\phi_x \end{bmatrix}$$

Si $\phi_\pi > 1$ $\det(\Omega) > 0$. ($\text{Tr}(\Omega) > 0$). Si $\phi_\pi > 1$ ambos valores propios de $\Omega$ son positivos.

---

## Una interpretación gráfica de la regla de Taylor

- Gráfico mostrando $\pi$ vs $x$ con curvas $\dot{\pi} = 0$ y $\dot{x} = 0$
- Estado estable en $(\bar{x}, \bar{\pi} = 0)$

---

## Conclusión IV

Si $\phi > 1$ entonces el sistema se vuelve una fuente.

Y el equilibrio es único.

Los Bancos Centrales necesitan ser defensores firmes de la estabilidad para que los precios estén determinados.

---

## Un aumento temporal en la tasa de interés

### Figura: Una Reducción en la Tasa Natural
- Gráfico mostrando dinámicas con puntos A, B, C
- Muestra cambio de $\dot{x} = 0$ a $\dot{x}' = 0$
- Movimiento de $(\bar{x}, \bar{\pi})$ a $(\bar{x}', \bar{\pi}')$

---

## El modelo NK

Proporciona principalmente las mismas intuiciones que el modelo IS-LM tradicional.

Aquí un aumento en la tasa de interés lleva a una recesión y reduce la inflación.

---

## Política fiscal

Podemos incluir la política fiscal en nuestro modelo NK.

Veamos cómo.

---

## Política fiscal (continuación)

$$Y_t = C_t + G_t$$

sea $\bar{Y}$ el nivel de estado estable del producto, y similarmente para $C$ y $G$.

Resta $\bar{Y} = \bar{C} + \bar{G}$ de ambos lados de la ecuación:
$$\frac{Y_t - \bar{Y}}{\bar{Y}} = \frac{C_t - \bar{C}}{\bar{Y}} + \frac{G_t - \bar{G}}{\bar{Y}}$$

Ahora divide el primer término del lado derecho por $\bar{C}$, y el segundo término por $\bar{G}$ para obtener:
$$\hat{y}_t = (1 - \gamma)\hat{c}_t + \gamma\hat{g}_t$$

donde $\gamma = \frac{\bar{G}}{\bar{Y}}$ es la participación de estado estable del gasto del gobierno, y el "sombrero" sobre una variable $z$ representa desviaciones logarítmicas del estado estable.

---

## Política Fiscal (continuación)

Nuestra ecuación de Euler es:
$$\hat{c}_t = E_t \hat{c}_{t+1} - \sigma r_t$$

nota que:
$$\hat{c}_t = \frac{1}{1 - \gamma} \hat{y}_t - \frac{\gamma}{1 - \gamma} \hat{g}_t$$

Conecta esto en la ecuación de Euler. Multiplica ambos lados por $(1 - \gamma)$ para obtener:
$$\hat{y}_t = E_t \hat{y}_{t+1} - \gamma (E_t \hat{g}_{t+1} - \hat{g}_t) - \sigma(1 - \gamma)r_t$$

---

## Política Fiscal: Equivalencia Ricardiana

Imagina un aumento permanente en el gobierno financiado con impuestos. Si el producto es constante el consumo cae 1 a 1 con los impuestos.

Si el producto no es constante (NK) tiene que ser que los individuos saben que el producto aumentará.

Imagina un aumento permanente en el gobierno financiado con deuda en el primer período (imagina dos períodos) y producto constante:
- Ingreso: 1000, 1000
- Gasto del gobierno: 100, 100 (asume tasa de interés 10%)
- Impuestos: 0, 210
- Consumo: 900, 900 (suavización)

¡Igual que los impuestos!

Así que para que $C$ no deshaga $G$, el cambio tiene que ser transitorio o la equivalencia ricardiana no debería cumplirse.

---

## Evidencia

- El multiplicador de corto plazo es negativo en países en desarrollo
- El multiplicador es cero o negativo cuando el nivel de deuda es alto
- El multiplicador es cero bajo tipos de cambio flexibles, pero positivo bajo tipos de cambio fijos, y es mayor en economías cerradas que en economías abiertas
- Alesina y Giavazzi sobre consolidaciones fiscales
- Si los multiplicadores son pequeños la política macro mejor se deja a los Bancos Centrales

---

## Pensando en política fiscal de largo plazo

Comencemos con la restricción presupuestaria:
$$\dot{d}_t = (g_t - \tau_t) + rd_t$$

El gobierno también está restringido por la condición estándar de solvencia (no juego de Ponzi):
$$\lim_{T \to \infty} \left[d_T e^{-rT}\right] \leq 0$$

Nota: ojo con el déficit ajustado por inflación!

---

## La restricción presupuestaria intertemporal

Podemos resolver la restricción presupuestaria aplicando nuestro método familiar de multiplicarla por el factor integrante $e^{-rt}$, e integrando entre 0 y $T$:

$$\dot{d}_t e^{-rt} - rd_t e^{-rt} = (g_t - \tau_t) e^{-rt}$$

$$\Rightarrow d_T e^{-rT} = d_0 + \int_0^T (g_t - \tau_t) e^{-rt} dt$$

Si aplicamos a esta última ecuación la condición de solvencia para obtener:
$$\lim_{T \to \infty} \left[d_T e^{-rT}\right] = d_0 + \int_0^{\infty} (g_t - \tau_t) e^{-rt} dt \leq 0$$

y reordenando, esto se convierte en:
$$\int_0^{\infty} g_t e^{-rt} dt \leq -d_0 + \int_0^{\infty} \tau_t e^{-rt} dt$$

---

## La restricción presupuestaria intertemporal (continuación)

Una forma alternativa de escribir esta restricción es:
$$\int_0^{\infty} (\tau_t - g_t) e^{-rt} dt \geq d_0$$

---

## Equivalencia Ricardiana

El valor presente del ingreso laboral después de impuestos:
$$\int_0^{\infty} c_t e^{-rt} dt = b_0 + d_0 + \int_0^{\infty} (y_t - \tau_t) e^{-rt} dt$$

Nótese que la riqueza inicial ahora aparentemente tiene dos componentes: tenencias de bonos internacionales $b_0$ y tenencias de deuda pública doméstica $d_0$.

La restricción presupuestaria implica que el valor presente de los impuestos, $\int_{t=0}^{\infty} \tau_t e^{-rt} dt$, iguala la deuda inicial $d_0$ más el valor presente de las compras del gobierno, $\int_{t=0}^{\infty} g_t e^{-rt} dt$. Sustituyendo este hecho nos da:
$$\int_0^{\infty} c_t e^{-rt} dt = b_0 + \int_0^{\infty} y_t e^{-rt} dt - \int_0^{\infty} g_t e^{-rt} dt$$

---

## Suavización de impuestos

El gobierno quiere minimizar las distorsiones fiscales:
$$L = \int_0^{\infty} y_t \ell\left(\frac{\tau_t}{y_t}\right) e^{-rt} dt$$

donde $\ell(0) = 0$, $\ell'(.) > 0$ y $\ell''(.) > 0$.

---

## Resolviendo la suavización de impuestos

El Hamiltoniano para el problema es:
$$H = y_t \ell\left(\frac{\tau_t}{y_t}\right) + \lambda_t (g_t - \tau_t + rd_t)$$

donde la deuda $d_t$ es la variable de estado y $\lambda_t$ el co-estado. Las CPO son:
$$\ell'\left(\frac{\tau_t}{y_t}\right) = \lambda_t$$
$$\dot{\lambda}_t = \lambda_t (r - r) = 0$$
$$\lim_{T \to \infty} \left[\lambda_T d_T e^{-rT}\right] = 0$$

---

## Suavización de impuestos (continuación)

La combinación de las CPO implica que los ingresos fiscales como participación del producto deberían ser constantes a lo largo de una senda de previsión perfecta:
$$\ell'\left(\frac{\tau_t}{y_t}\right) = \lambda \text{ para todo } t \geq 0$$

Llamamos a esto suavización de impuestos.

---

## Política fiscal contracíclica

Si la función de pérdida para la pérdida de peso muerto de los impuestos depende únicamente de la tasa impositiva (es decir, eliminando el factor $y_t$ que multiplica $\ell(\cdot)$ arriba), es fácil ver que la CPO es:
$$\ell'\left(\frac{\tau_t}{y_t}\right) \frac{1}{y_t} = \lambda$$

lo que significa que la tasa impositiva debería ser mayor en auges y menor en recesiones.

---

## Suavización del gasto del gobierno

Imagina el caso de un país donde el gobierno maximiza:
$$\int_0^{\infty} \left[\frac{\sigma}{\sigma-1}\right] g_t^{\frac{\sigma-1}{\sigma}} e^{-\rho t} dt$$

sujeto a la restricción presupuestaria:
$$\dot{b} = rb_t + \tau_t + \epsilon_t - g_t$$

---

## Shocks de ingreso

El shock al ingreso $\epsilon_t$ sigue:
$$\epsilon_t = \epsilon_0 e^{-\delta t}$$

si $\delta \to \infty$ entonces tenemos un shock puramente transitorio, pero si $\delta \to 0$ el shock sería permanente. Si $\rho = r$, $\dot{g} = 0$: Esto significa que:
$$g = r\left[b_0 + \frac{\tau}{r} + \frac{\epsilon_0}{r + \delta}\right]$$

Nótese que los últimos dos términos dan el valor presente descontado de los impuestos y del shock de ingreso. De esta expresión es fácil ver que:
$$\dot{b} = \frac{\delta}{r + \delta} \epsilon_t$$

---

## Imposición Óptima del Capital en el NGM

- Dos agentes: capitalista y trabajadores
- Los trabajadores no pueden hacer nada con el capital
- Los trabajadores viven al día
- ¡El planificador central solo se preocupa por los trabajadores!

---



---

## La economía política de la política fiscal

- Prociclicidad de la política fiscal
- Ilusión fiscal
- Ciclos políticos económicos
- Distribución intergeneracional
- Los individuos con restricciones crediticias votarán por más gasto
- Jóvenes vs viejos
- Estabilización retrasada (Alesina-Drazen)
- Alesina Grilli
- Laban Sturzenegger
- Deuda como dispositivo de compromiso
- Tragedia de los comunes
- Mancur Olson y búsqueda de rentas