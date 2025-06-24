# 2.1) 1)

El consumo agregado de sector $s$ es  $$
  C_s=\Bigl[\tfrac{1}{n_s}\sum_{i\in I_s}C_{s,i}^{\,1-\frac{1}{\omega}}\Bigr]^{\!\frac{1}{1-\frac{1}{\omega}}},
  \qquad\omega>1 .
  $$
El índice de precios que minimiza el gasto para $C_s=1$ como hicimos en el punto anterior. Es la solución de  

  $$
  P_s=\min_{\{C_{s,i}\}}\;\sum_{i\in I_s}P_{s,i}C_{s,i}
  \quad\text{s.a.}\quad
  \tfrac{1}{n_s}\sum_{i\in I_s}C_{s,i}^{\,1-\frac{1}{\omega}}=1 .
  $$

  Es una CES, el indice del agregador va $s$ er el mismo mismo que en el punto 1.7. Planteando el Lagrangiano:

$$\mathcal{L} = \sum_{i \in I_s} P_{s,i} C_{s,i} + \lambda \left(1 - \left[\frac{1}{n_s} \sum_{i \in I_s} C_{s,i}^{1-\frac{1}{\omega}}\right]^{\frac{\omega}{\omega-1}}\right)$$

Las condiciones de primer orden son:

$$\frac{\partial \mathcal{L}}{\partial C_{s,i}} = P_{s,i} - \lambda \frac{\partial}{\partial C_{s,i}} \left[\frac{1}{n_s} \sum_{j \in I_s} C_{s,j}^{1-\frac{1}{\omega}}\right]^{\frac{\omega}{\omega-1}} = 0$$

Evaluando la derivada en la restricción:

$$\frac{\partial}{\partial C_{s,i}} \left[\frac{1}{n_s} \sum_{j \in I_s} C_{s,j}^{1-\frac{1}{\omega}}\right]^{\frac{\omega}{\omega-1}} = \frac{\omega}{\omega-1} \left[\frac{1}{n_s} \sum_{j \in I_s} C_{s,j}^{1-\frac{1}{\omega}}\right]^{\frac{\omega}{\omega-1}-1} \cdot \frac{1}{n_s} \cdot \left(1-\frac{1}{\omega}\right) C_{s,i}^{-\frac{1}{\omega}}$$

Simplificando:

$$= \frac{\omega}{\omega-1} \cdot \frac{\omega-1}{\omega} \left[\frac{1}{n_s} \sum_{j \in I_s} C_{s,j}^{1-\frac{1}{\omega}}\right]^{\frac{1}{\omega-1}} \cdot \frac{1}{n_s} \cdot C_{s,i}^{-\frac{1}{\omega}}$$

$$= \left[\frac{1}{n_s} \sum_{j \in I_s} C_{s,j}^{1-\frac{1}{\omega}}\right]^{\frac{1}{\omega-1}} \cdot \frac{1}{n_s} \cdot C_{s,i}^{-\frac{1}{\omega}}$$


$$\left[\frac{1}{n_s} \sum_{j \in I_s} C_{s,j}^{1-\frac{1}{\omega}}\right]^{\frac{\omega}{\omega-1}} = 1$$


$$\left[\frac{1}{n_s} \sum_{j \in I_s} C_{s,j}^{1-\frac{1}{\omega}}\right]^{\frac{1}{\omega-1}} = 1$$

Por lo tanto, la condición de primer orden se simplifica a:

$$P_{s,i} = \lambda \cdot \frac{1}{n_s} \cdot C_{s,i}^{-\frac{1}{\omega}}$$

Despejando $C_{s,i}$:

$$C_{s,i} = \left(\frac{\lambda}{n_s P_{s,i}}\right)^{\omega}$$

En la restricción:

$$\left[\frac{1}{n_s} \sum_{i \in I_s} \left(\frac{\lambda}{n_s P_{s,i}}\right)^{\omega \cdot \left(1-\frac{1}{\omega}\right)}\right]^{\frac{\omega}{\omega-1}} = 1$$

$$\left[\frac{1}{n_s} \sum_{i \in I_s} \left(\frac{\lambda}{n_s P_{s,i}}\right)^{\omega-1}\right]^{\frac{\omega}{\omega-1}} = 1$$

$$\left[\frac{1}{n_s} \cdot \left(\frac{\lambda}{n_s}\right)^{\omega-1} \sum_{i \in I_s} P_{s,i}^{1-\omega}\right]^{\frac{\omega}{\omega-1}} = 1$$

Despejo $\lambda$:

$$\left(\frac{\lambda}{n_s}\right)^{\omega-1} = \frac{n_s}{\sum_{i \in I_s} P_{s,i}^{1-\omega}}$$

$$\lambda = n_s \left[\frac{n_s}{\sum_{i \in I_s} P_{s,i}^{1-\omega}}\right]^{\frac{1}{\omega-1}}$$
Minimiza el gasto con ese valor que sacamos::

$$P_s = \sum_{i \in I_s} P_{s,i} C_{s,i} = \sum_{i \in I_s} P_{s,i} \left(\frac{\lambda}{n_s P_{s,i}}\right)^{\omega}$$

$$= \frac{\lambda^{\omega}}{n_s^{\omega}} \sum_{i \in I_s} P_{s,i}^{1-\omega}$$

Evaluando el valor de $\lambda$ y simplificando:

$$\boxed{P_s = \left[\frac{1}{n_s} \sum_{i \in I_s} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}}}$$


Siguiendo el mismo procedimiento para el agregador:

$$C = \left[\int_0^1 C_s^{1-\frac{1}{\sigma}} ds\right]^{\frac{\sigma}{\sigma-1}}$$

El problema de minimización es:

$$P = \min_{\{C_s\}} \int_0^1 P_s C_s ds \text{ sujeto a } \left[\int_0^1 C_s^{1-\frac{1}{\sigma}} ds\right]^{\frac{\sigma}{\sigma-1}} = 1$$

Aplicando el mismo análisis llegamos a:

$$\boxed{P = \left[\int_0^1 P_s^{1-\sigma} ds\right]^{\frac{1}{1-\sigma}}}$$
# 2.1) 2)
Homogeneidad de grado 1 en precios:
Para el índice por sector $P_s$:

$$P_s(\lambda P_{s,1}, \ldots, \lambda P_{s,n_s}) = \left[\frac{1}{n_s} \sum_{i \in I_s} (\lambda P_{s,i})^{1-\omega}\right]^{\frac{1}{1-\omega}}$$

$$= \left[\frac{1}{n_s} \sum_{i \in I_s} \lambda^{1-\omega} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}}$$

$$= \left[\lambda^{1-\omega} \cdot \frac{1}{n_s} \sum_{i \in I_s} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}}$$

$$= \lambda^{\frac{1-\omega}{1-\omega}} \left[\frac{1}{n_s} \sum_{i \in I_s} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}}$$

$$= \lambda \cdot P_s$$

Para el índice agregado:

$$P(\lambda P_1, \lambda P_2, \ldots) = \left[\int_0^1 (\lambda P_s)^{1-\sigma} ds\right]^{\frac{1}{1-\sigma}}$$

$$= \left[\lambda^{1-\sigma} \int_0^1 P_s^{1-\sigma} ds\right]^{\frac{1}{1-\sigma}}$$

$$= \lambda^{\frac{1-\sigma}{1-\sigma}} \left[\int_0^1 P_s^{1-\sigma} ds\right]^{\frac{1}{1-\sigma}}$$

$$= \lambda P$$

se cumple homogeneidad. Ahora monotonicidad. 

Para $P_s$, calculamos:

$$\frac{\partial P_s}{\partial P_{s,j}} = \frac{\partial}{\partial P_{s,j}} \left[\frac{1}{n_s} \sum_{i \in I_s} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}}$$

$$= \frac{1}{1-\omega} \left[\frac{1}{n_s} \sum_{i \in I_s} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}-1} \cdot \frac{1}{n_s} \cdot (1-\omega) P_{s,j}^{-\omega}$$

$$= \left[\frac{1}{n_s} \sum_{i \in I_s} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}-1} \cdot \frac{1}{n_s} \cdot P_{s,j}^{-\omega}$$

$$= \left[\frac{1}{n_s} \sum_{i \in I_s} P_{s,i}^{1-\omega}\right]^{\frac{\omega}{1-\omega}} \cdot \frac{1}{n_s} \cdot P_{s,j}^{-\omega}$$

$$= P_s^{\omega} \cdot \frac{1}{n_s} \cdot P_{s,j}^{-\omega}$$

$$= \frac{1}{n_s} \left(\frac{P_s}{P_{s,j}}\right)^{\omega} \geq 0$$

Debilemente crecientes. Si normalizamos y todos los precios son 1:

$$P_s = \left[\frac{1}{n_s} \sum_{i=1}^{n_s} 1^{1-\omega}\right]^{\frac{1}{1-\omega}} = \left[\frac{1}{n_s} \cdot n_s \cdot 1\right]^{\frac{1}{1-\omega}} = 1^{\frac{1}{1-\omega}} = 1$$

$$P = \left[\int_0^1 1^{1-\sigma} ds\right]^{\frac{1}{1-\sigma}} = \left[1 \cdot 1\right]^{\frac{1}{1-\sigma}} = 1$$
Eso se cumple. También simetría porque el índice $P_s$ depende solo de la suma $\sum_{i \in I_s} P_{s,i}^{1-\omega}$, que es independiente de las posibles permutaciones.
Analizamos los casos:
Sustitutos perfectos ($\omega \to \infty$). Para analizar el límite, reescribimos:

$$P_s = \left[\frac{1}{n_s} \sum_{i} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}}$$

$$= \exp\left(\frac{1}{1-\omega} \ln\left[\frac{1}{n_s} \sum_{i} P_{s,i}^{1-\omega}\right]\right)$$

Cuando $\omega \to \infty$, tenemos que $1-\omega \to -\infty$. Sea $P_{\min} = \min_{i \in I_s} P_{s,i}$:

$$\frac{1}{n_s} \sum_{i} P_{s,i}^{1-\omega} = \frac{1}{n_s} \sum_{i} \left(\frac{P_{s,i}}{P_{\min}}\right)^{1-\omega} P_{\min}^{1-\omega}$$
Nos queda:

$$\lim_{\omega \to \infty} P_s = P_{\min} = \min_{i \in I_s} P_{s,i}$$
Cobb-Douglas ($\omega = 1$)
Para $\omega \to 1$, usamos L'Hôpital. Definimos:

$$f(\omega) = \left[\frac{1}{n_s} \sum_{i} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}}$$

Tomando logaritmos:

$$\ln f(\omega) = \frac{1}{1-\omega} \ln\left[\frac{1}{n_s} \sum_{i} P_{s,i}^{1-\omega}\right]$$

Aplicando L'Hôpital cuando $\omega \to 1$:

$$\lim_{\omega \to 1} \ln f(\omega) = \lim_{\omega \to 1} \frac{\frac{\partial}{\partial \omega} \ln\left[\frac{1}{n_s} \sum_{i} P_{s,i}^{1-\omega}\right]}{\frac{\partial}{\partial \omega}(1-\omega)}$$

El numerador es:

$$\frac{\sum_{i} P_{s,i}^{1-\omega} \ln P_{s,i}}{\sum_{i} P_{s,i}^{1-\omega}}$$

Cuando $\omega = 1$:

$$= \frac{\sum_{i} \ln P_{s,i}}{n_s} = \frac{1}{n_s} \sum_{i} \ln P_{s,i}$$


$$\lim_{\omega \to 1} P_s = \exp\left(\frac{1}{n_s} \sum_{i} \ln P_{s,i}\right) = \prod_{i} P_{s,i}^{\frac{1}{n_s}}$$

Complementos perfectos ($\omega \to 0$)

Cuando $\omega \to 0$:

$$\lim_{\omega \to 0} P_s = \lim_{\omega \to 0} \left[\frac{1}{n_s} \sum_{i} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}}$$

Aplicando L'Hôpital:

$$P_s = \max_{i \in I_s} P_{s,i}$$

$$P = \max_{s \in [0,1]} P_s$$


# 2.1) 3)



El hogar maximiza:

$$U = \left[\int_0^1 C_s^{1-\frac{1}{\sigma}} ds\right]^{\frac{\sigma}{\sigma-1}}$$

sujeto a:

$$\int_0^1 P_s C_s ds = W$$

El Lagrangiano es:

$$\mathcal{L} = \left[\int_0^1 C_s^{1-\frac{1}{\sigma}} ds\right]^{\frac{\sigma}{\sigma-1}} - \lambda \left(\int_0^1 P_s C_s ds - W\right)$$

La condición de primer orden para $C_s$:

$$\frac{\partial \mathcal{L}}{\partial C_s} = \frac{\sigma}{\sigma-1} \left[\int_0^1 C_t^{1-\frac{1}{\sigma}} dt\right]^{\frac{\sigma}{\sigma-1}-1} \cdot \left(1-\frac{1}{\sigma}\right) C_s^{-\frac{1}{\sigma}} - \lambda P_s = 0$$

Simplificando:

$$\frac{\sigma}{\sigma-1} \cdot \frac{\sigma-1}{\sigma} \left[\int_0^1 C_t^{1-\frac{1}{\sigma}} dt\right]^{\frac{1}{\sigma-1}} \cdot C_s^{-\frac{1}{\sigma}} = \lambda P_s$$

$$\left[\int_0^1 C_t^{1-\frac{1}{\sigma}} dt\right]^{\frac{1}{\sigma-1}} \cdot C_s^{-\frac{1}{\sigma}} = \lambda P_s$$

Definiendo $C = \left[\int_0^1 C_t^{1-\frac{1}{\sigma}} dt\right]^{\frac{\sigma}{\sigma-1}}$:

$$C^{\frac{1}{\sigma}} \cdot C_s^{-\frac{1}{\sigma}} = \lambda P_s$$

$$C_s = \left(\frac{C}{\lambda P_s}\right)^{\sigma}$$

Para encontrar $\lambda$, sustituimos en la restricción presupuestaria:

$$\int_0^1 P_s \left(\frac{C}{\lambda P_s}\right)^{\sigma} ds = W$$

$$\frac{C^{\sigma}}{\lambda^{\sigma}} \int_0^1 P_s^{1-\sigma} ds = W$$

Definiendo $P = \left[\int_0^1 P_s^{1-\sigma} ds\right]^{\frac{1}{1-\sigma}}$:

$$\frac{C^{\sigma}}{\lambda^{\sigma}} P^{1-\sigma} = W$$

$$C^{\sigma} = \lambda^{\sigma} \frac{W}{P^{1-\sigma}}$$

Dado que en equilibrio $PC = W$, tenemos $\lambda = \frac{C}{P}$.

Por lo tanto:

$$
\boxed{C_s = \left(\frac{P}{P_s}\right)^{\sigma} C = \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P}}
$$

El gasto en el sector $s$ es:

$$E_s = P_s C_s = P_s \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P} = P^{\sigma-1} P_s^{1-\sigma} W$$

Ahora para la decisión intrasector, dado el gasto $E_s$, el consumidor maximiza:

$$\max_{C_{s,i}} C_s = \left[\frac{1}{n_s} \sum_{i \in I_s} C_{s,i}^{1-\frac{1}{\omega}}\right]^{\frac{\omega}{\omega-1}}$$

sujeto a:

$$\sum_{i \in I_s} P_{s,i} C_{s,i} = E_s$$

El Lagrangiano es:

$$\mathcal{L} = \left[\frac{1}{n_s} \sum_{i \in I_s} C_{s,i}^{1-\frac{1}{\omega}}\right]^{\frac{\omega}{\omega-1}} - \mu \left(\sum_{i \in I_s} P_{s,i} C_{s,i} - E_s\right)$$

La condición de primer orden para $C_{s,i}$:

$$\frac{\partial \mathcal{L}}{\partial C_{s,i}} = \frac{\omega}{\omega-1} \left[\frac{1}{n_s} \sum_{j \in I_s} C_{s,j}^{1-\frac{1}{\omega}}\right]^{\frac{\omega}{\omega-1}-1} \cdot \frac{1}{n_s} \cdot \left(1-\frac{1}{\omega}\right) C_{s,i}^{-\frac{1}{\omega}} - \mu P_{s,i} = 0$$

Simplificando:

$$\left[\frac{1}{n_s} \sum_{j \in I_s} C_{s,j}^{1-\frac{1}{\omega}}\right]^{\frac{1}{\omega-1}} \cdot \frac{1}{n_s} \cdot C_{s,i}^{-\frac{1}{\omega}} = \mu P_{s,i}$$

$$C_s^{\frac{1}{\omega}} \cdot \frac{1}{n_s} \cdot C_{s,i}^{-\frac{1}{\omega}} = \mu P_{s,i}$$

$$C_{s,i} = \left(\frac{C_s}{\mu n_s P_{s,i}}\right)^{\omega}$$

Para encontrar $\mu$, sustituimos en la restricción:

$$\sum_{i \in I_s} P_{s,i} \left(\frac{C_s}{\mu n_s P_{s,i}}\right)^{\omega} = E_s$$

$$\frac{C_s^{\omega}}{(\mu n_s)^{\omega}} \sum_{i \in I_s} P_{s,i}^{1-\omega} = E_s$$

Usando la definición de $P_s$:

$$\frac{C_s^{\omega}}{(\mu n_s)^{\omega}} \cdot n_s P_s^{1-\omega} = E_s$$

$$\frac{C_s^{\omega}}{\mu^{\omega} n_s^{\omega-1}} P_s^{1-\omega} = P_s C_s$$

$$\frac{C_s^{\omega-1}}{\mu^{\omega} n_s^{\omega-1}} P_s^{1-\omega} = P_s$$

$$\mu^{\omega} = \frac{C_s^{\omega-1}}{n_s^{\omega-1}} P_s^{-\omega}$$

$$\mu = \frac{C_s}{n_s} \left(\frac{1}{P_s}\right)$$

Por lo tanto:

$$
\boxed{C_{s,i} = \left(\frac{C_s}{\frac{C_s}{n_s} \frac{1}{P_s} \cdot n_s \cdot P_{s,i}}\right)^{\omega} = \left(\frac{P_s}{P_{s,i}}\right)^{\omega} \frac{C_s}{n_s}}
$$
Combinando ambas:

$$C_{s,i} = \left(\frac{P_s}{P_{s,i}}\right)^{\omega} \frac{C_s}{n_s}$$

$$= \left(\frac{P_s}{P_{s,i}}\right)^{\omega} \frac{1}{n_s} \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P}$$

$$\boxed{C_{s,i} = \frac{1}{n_s} \left(\frac{P_s}{P_{s,i}}\right)^{\omega} \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P}}$$
Otra forma de escribirlo:

$$\boxed{C_{s,i} = \frac{W}{n_s P} \cdot P^{\sigma} \cdot P_s^{\omega-\sigma} \cdot P_{s,i}^{-\omega}}$$

# 2.1) 4)

Del punto anterior, encontramos que la demanda del sector $s$ es:

$$C_s = \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P}$$

Esta expresión se obtiene directamente de la primera etapa del problema de optimización del consumidor. El gasto total en el sector $s$ es:

$$E_s = P_s C_s = P_s \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P} = \frac{P^{\sigma-1}}{P_s^{\sigma-1}} W$$

Sumando sobre todos los sectores:

$$\int_0^1 E_s ds = \int_0^1 \frac{P^{\sigma-1}}{P_s^{\sigma-1}} W ds = W P^{\sigma-1} \int_0^1 P_s^{1-\sigma} ds$$

Usando la definición del índice de precios agregado $P = \left[\int_0^1 P_s^{1-\sigma} ds\right]^{\frac{1}{1-\sigma}}$:

$$\int_0^1 P_s^{1-\sigma} ds = P^{1-\sigma}$$

Por lo tanto:

$$\int_0^1 E_s ds = W P^{\sigma-1} \cdot P^{1-\sigma} = W$$

Nos queda que el gasto total es igual a la riqueza
El consumo agregado es:

$$C = \left[\int_0^1 C_s^{1-\frac{1}{\sigma}} ds\right]^{\frac{\sigma}{\sigma-1}}$$

Sustituyendo la expresión de $C_s$:

$$C = \left[\int_0^1 \left(\left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P}\right)^{1-\frac{1}{\sigma}} ds\right]^{\frac{\sigma}{\sigma-1}}$$

$$= \left[\int_0^1 \left(\frac{P}{P_s}\right)^{\sigma(1-\frac{1}{\sigma})} \left(\frac{W}{P}\right)^{1-\frac{1}{\sigma}} ds\right]^{\frac{\sigma}{\sigma-1}}$$

$$= \left[\int_0^1 \left(\frac{P}{P_s}\right)^{\sigma-1} \left(\frac{W}{P}\right)^{\frac{\sigma-1}{\sigma}} ds\right]^{\frac{\sigma}{\sigma-1}}$$

$$= \left[\left(\frac{W}{P}\right)^{\frac{\sigma-1}{\sigma}} P^{\sigma-1} \int_0^1 P_s^{1-\sigma} ds\right]^{\frac{\sigma}{\sigma-1}}$$

Usando nuevamente que $\int_0^1 P_s^{1-\sigma} ds = P^{1-\sigma}$:

$$C = \left[\left(\frac{W}{P}\right)^{\frac{\sigma-1}{\sigma}} P^{\sigma-1} \cdot P^{1-\sigma}\right]^{\frac{\sigma}{\sigma-1}}$$

$$= \left[\left(\frac{W}{P}\right)^{\frac{\sigma-1}{\sigma}}\right]^{\frac{\sigma}{\sigma-1}}$$

$$\boxed{C = \frac{W}{P}}$$
Es decir, su riqueza real.


# 2.1) 5)

La función de utilidad indirecta se obtiene sustituyendo las demandas óptimas en la función de utilidad directa:

$$V(P, W) = U(C^*) = C^* = \frac{W}{P}$$

Por lo tanto:

$$\boxed{V(P, W) = \frac{W}{P}}$$

Con la definicion de los agregados $P = \left[\int_0^1 P_s^{1-\sigma} ds\right]^{\frac{1}{1-\sigma}}$ y $P_s = \left[\frac{1}{n_s} \sum_{i \in I_s} P_{s,i}^{1-\omega}\right]^{\frac{1}{1-\omega}}$. 
Homogeneidad:
Para cualquier $\lambda > 0$:

$$V(\lambda P, \lambda W) = \frac{\lambda W}{\lambda P} = \frac{W}{P} = V(P, W)$$
No creciente en precios

$$\frac{\partial V}{\partial P} = -\frac{W}{P^2} < 0$$

Para un precio individual $P_{s,i}$:

$$\frac{\partial V}{\partial P_{s,i}} = \frac{\partial V}{\partial P} \cdot \frac{\partial P}{\partial P_s} \cdot \frac{\partial P_s}{\partial P_{s,i}}$$

Donde:
- $\frac{\partial V}{\partial P} = -\frac{W}{P^2} < 0$
- $\frac{\partial P}{\partial P_s} = \frac{1}{1-\sigma} P^{\sigma} P_s^{-\sigma} > 0$
- $\frac{\partial P_s}{\partial P_{s,i}} = \frac{1}{n_s} \left(\frac{P_s}{P_{s,i}}\right)^{\omega} > 0$

Por lo tanto: $\frac{\partial V}{\partial P_{s,i}} < 0$

Creciente en $W$:
$$
\frac{\partial V}{\partial W} = \frac{1}{P} > 0
$$
Es cuasiconvexa en precios:  para cualquier nivel de utilidad $\bar{u}$, el conjunto $\{P : V(P, W) \leq \bar{u}\}$ es convexo. Dado que $V(P, W) = \frac{W}{P}$, tenemos:

$$V(P, W) \leq \bar{u} \Leftrightarrow \frac{W}{P} \leq \bar{u} \Leftrightarrow P \geq \frac{W}{\bar{u}}$$

El conjunto $\{P : P \geq \frac{W}{\bar{u}}\}$ es convexo porque $P$ es una función cóncava de los precios individuales (es una media armónica generalizada).

Por dualidad, la función de gasto es:

$$E(P, u) = \min_{C} \left\{\int_0^1 P_s C_s ds : U(C) \geq u\right\}$$

Dado que $U(C) = C$ y en el óptimo $U = u$, tenemos $C = u$. De la relación $C = \frac{W}{P}$, sacamos $W = PC$. Nos queda:
$$\boxed{E(P, u) = P \cdot u}$$
Usando el Lema de Shephard para las hicksianas:

$$x^{h}_{s,i}(P, u) = \frac{\partial E(P, u)}{\partial P_{s,i}} = u \cdot \frac{\partial P}{\partial P_{s,i}}$$

Usando el cálculo anterior:

$$x^{h}_{s,i}(P, u) = u \cdot \frac{1}{n_s} P^{\sigma} P_s^{\omega-\sigma} P_{s,i}^{-\omega}$$

$$\boxed{x^{h}_{s,i}(P, u) = \frac{u}{n_s} \left(\frac{P_s}{P_{s,i}}\right)^{\omega} \left(\frac{P}{P_s}\right)^{\sigma}}$$
# 2.2) 1)
1. Determine las condiciones para que los rendimientos a escala sean decrecientes o constantes. Utilícelo de ahora en más. ¿Por qué es esto relevante?

La función de producción de la firma $i$ en el sector $s$ es:

$$Y_{s,i} = Z_{s,i}^\gamma$$
Multiplicamos los insumos por un factor $\lambda > 0$:

$$Y_{s,i}(\lambda Z_{s,i}) = (\lambda Z_{s,i})^\gamma = \lambda^\gamma Z_{s,i}^\gamma = \lambda^\gamma Y_{s,i}$$
Entonces si $\gamma \leq1$ son decrecientes o constantes, porque aumentar una unidad aumenta el producto en menor o igual medida. Con $\gamma \leq 1$, el conjunto de producción es convexo y las CPO son suficientes. Ademas puede haber equilibrio  con $n_s > 1$ firmas. 

# 2.2) 2)

2. Plantee el problema de minimización de costos de una firma $i$ en el sector $s$. Derive la función de costos y justifique su interpretación. ¿Cómo son los costos medios?

La firma $i$ en el sector $s$ minimiza el costo de producir una cantidad $Y_{s,i}$:

$$\min_{Z_{s,i}} w Z_{s,i}$$

sujeto a:

$$Y_{s,i} = Z_{s,i}^\gamma$$

$w$ es el precio del insumo. De la restricción de producción, despejamos:

$$Z_{s,i} = Y_{s,i}^{\frac{1}{\gamma}}$$

Sustituyendo en la función objetivo:

$$C_{s,i}(Y_{s,i}) = w Y_{s,i}^{\frac{1}{\gamma}}$$


$$\boxed{C_{s,i}(Y_{s,i}) = w Y_{s,i}^{\frac{1}{\gamma}}}$$
# 2.2) 3)
La firma $i$ en el sector $s$ maximiza beneficios tomando como dados los precios de sus competidores:

$$\max_{P_{s,i}} \pi_{s,i} = P_{s,i} Y_{s,i} - C_{s,i}(Y_{s,i})$$

donde en equilibrio $Y_{s,i} = C_{s,i}$ (producción = demanda).
La demanda que enfrenta la firma es:

$$Y_{s,i} = C_{s,i} = \frac{1}{n_s} \left(\frac{P_s}{P_{s,i}}\right)^{\omega} \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P}$$

La función de costos es:

$$C_{s,i}(Y_{s,i}) = w Y_{s,i}^{\frac{1}{\gamma}}$$

Por lo tanto, el problema se convierte en:

$$\max_{P_{s,i}} \pi_{s,i} = P_{s,i} \cdot \frac{1}{n_s} \left(\frac{P_s}{P_{s,i}}\right)^{\omega} \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P} - w \left[\frac{1}{n_s} \left(\frac{P_s}{P_{s,i}}\right)^{\omega} \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P}\right]^{\frac{1}{\gamma}}$$
Definamos $A = \frac{1}{n_s} \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P} P_s^{\omega}$ (constante desde la perspectiva de la firma $i$).

Entonces:

$$\pi_{s,i} = P_{s,i} \cdot A \cdot P_{s,i}^{-\omega} - w \left[A \cdot P_{s,i}^{-\omega}\right]^{\frac{1}{\gamma}}$$

$$= A P_{s,i}^{1-\omega} - w A^{\frac{1}{\gamma}} P_{s,i}^{-\frac{\omega}{\gamma}}$$

Derivando con respecto a $P_{s,i}$:

$$\frac{\partial \pi_{s,i}}{\partial P_{s,i}} = A(1-\omega)P_{s,i}^{-\omega} - w A^{\frac{1}{\gamma}} \left(-\frac{\omega}{\gamma}\right) P_{s,i}^{-\frac{\omega}{\gamma}-1} = 0$$

Simplificando:

$$(1-\omega)A P_{s,i}^{-\omega} + \frac{\omega}{\gamma} w A^{\frac{1}{\gamma}} P_{s,i}^{-\frac{\omega}{\gamma}-1} = 0$$

Multiplicando por $P_{s,i}^{\omega}$:

$$(1-\omega)A + \frac{\omega}{\gamma} w A^{\frac{1}{\gamma}} P_{s,i}^{\frac{\omega(\gamma-1)}{\gamma}-1} = 0$$

La condición de primer orden se puede escribir como:

$$P_{s,i} = \frac{\varepsilon_{s,i}}{\varepsilon_{s,i}-1} MC_{s,i}$$
Con $\varepsilon_{s,i} = \omega$ es la elasticidad de demanda que enfrenta la firma. $MC_{s,i} = \frac{w}{\gamma} Y_{s,i}^{\frac{1-\gamma}{\gamma}}$ es el costo marginal.
En equilibrio simétrico, todas las firmas en el sector fijan el mismo precio: $P_{s,i} = P_s^*$ para todo $i$. Esto implica que $P_s = P_s^*$ y $Y_{s,i} = \frac{1}{n_s} C_s$. La condición de primer orden se simplifica a:
$$P_s^* = \frac{\omega}{\omega-1} \cdot \frac{w}{\gamma} \left(\frac{C_s}{n_s}\right)^{\frac{1-\gamma}{\gamma}}$$
Usando que $C_s = \left(\frac{P}{P_s^*}\right)^{\sigma} \frac{W}{P}$:

$$P_s^* = \frac{\omega}{\omega-1} \cdot \frac{w}{\gamma} \left[\frac{1}{n_s} \left(\frac{P}{P_s^*}\right)^{\sigma} \frac{W}{P}\right]^{\frac{1-\gamma}{\gamma}}$$

# 2.2) 4)

El precio de equilibrio satisface:

$$P_s^* = \frac{\omega}{\omega-1} \cdot \frac{w}{\gamma} \left[\frac{1}{n_s} \left(\frac{P}{P_s^*}\right)^{\sigma} \frac{W}{P}\right]^{\frac{1-\gamma}{\gamma}}$$

En equilibrio simétrico entre sectores (todos los sectores son idénticos):

$$P_s^* = P^* = \frac{\omega}{\omega-1} \cdot \frac{w}{\gamma} \left[\frac{W}{n_s P^*}\right]^{\frac{1-\gamma}{\gamma}}$$

Resolviendo para $P^*$:

$$(P^*)^{1+\frac{1-\gamma}{\gamma}} = \frac{\omega}{\omega-1} \cdot \frac{w}{\gamma} \left[\frac{W}{n_s}\right]^{\frac{1-\gamma}{\gamma}}$$

$$P^* = \left[\frac{\omega}{\omega-1} \cdot \frac{w}{\gamma}\right]^{\frac{\gamma}{1+(1-\gamma)}} \left[\frac{W}{n_s}\right]^{\frac{1-\gamma}{1+(1-\gamma)}}$$

Simplificando:

$$\boxed{P^* = \left[\frac{\omega}{\omega-1} \cdot \frac{w}{\gamma}\right]^{\gamma} \left[\frac{W}{n_s}\right]^{1-\gamma}}$$
$$
\text{Markup} = \frac{P_s^*}{MC_s} = \frac{\omega}{\omega-1}
$$

# 2.2) 5)
El markup que quieren cobrar no depende del numero de firmas, es $\frac{\omega}{\omega-1}$. El precio sí se modifica porque era $P^* = \left[\frac{\omega}{\omega-1} \cdot \frac{w}{\gamma}\right]^{\gamma} \left[\frac{W}{n_s}\right]^{1-\gamma}$. Derivo respecto de logaritmos para ver las elasticidades:

$$
\frac{\partial \ln P^*}{\partial \ln n_s} = -(1-\gamma)
$$
El efecto del numero de firmas depende de los rendimientos, si son constantes o crecientes o decrecientes. Si teniamos $\gamma \leq1$. COn $n_s \to \infty$, el precio se va a 0 o no se ve afectado si los rendimientos son constantes. Si es un monopolio, el markup es el mismo pero el precio puede ser cualquier cosa y dependiendo de la sustitucion entre productos. El markup es el mismo en ambos modelos.

# 2.3) 1)

La demanda que enfrenta la firma $i$ en el sector $s$ es:

$$C_{s,i} = \frac{1}{n_s} \left(\frac{P_s}{P_{s,i}}\right)^{\omega} \left(\frac{P}{P_s}\right)^{\sigma} \frac{W}{P}$$

La elasticidad de demanda total debe considerar los efectos indirectos a través de $P_s$ y $P$:

$$\varepsilon_{s,i} = -\frac{\partial \ln C_{s,i}}{\partial \ln P_{s,i}} = -\left[\frac{\partial \ln C_{s,i}}{\partial \ln P_{s,i}} + \frac{\partial \ln C_{s,i}}{\partial \ln P_s} \cdot \frac{\partial \ln P_s}{\partial \ln P_{s,i}} + \frac{\partial \ln C_{s,i}}{\partial \ln P} \cdot \frac{\partial \ln P}{\partial \ln P_{s,i}}\right]$$
Entonces, calculamos las derivadas en la formula:
$$
\frac{\partial \ln C_{s,i}}{\partial \ln P_{s,i}} = -\omega
$$
$$
\frac{\partial \ln C_{s,i}}{\partial \ln P_s} = \omega - \sigma
$$
Usando $P_s = \left[\frac{1}{n_s} \sum_{j \in I_s} P_{s,j}^{1-\omega}\right]^{\frac{1}{1-\omega}}$ 
$$
\frac{\partial \ln P_s}{\partial \ln P_{s,i}} = \frac{P_{s,i}^{1-\omega}}{\sum_{j \in I_s} P_{s,j}^{1-\omega}} 
$$
Se puede ver que es la participacion de la firma $i$ en el sector $s$:
$$
s_{s,1} = \frac{P_{s,i}^{1-\omega}}{\sum_{j \in I_s} P_{s,j}^{1-\omega}} 
$$Ahora calculamos los terminos que faltan
$$
\frac{\partial \ln C_{s,i}}{\partial \ln P} = \sigma - 1
$$
$$
\frac{\partial \ln P}{\partial \ln P_{s,i}} = \frac{\partial \ln P}{\partial \ln P_s} \cdot \frac{\partial \ln P_s}{\partial \ln P_{s,i}} = s_s \cdot s_{s,i}
$$
con
$$
s_s = \frac{P_s^{1-\sigma}}{\int_0^1 P_t^{1-\sigma} dt} 
$$
es la participación del sector $s$ en la economía. Ahora si reemplazamos en la formula con los valores de las derivadas:

$$\varepsilon_{s,i} = \omega - (\omega - \sigma) s_{s,i} - (\sigma - 1) s_s s_{s,i}$$

$$= \omega - s_{s,i}[\omega - \sigma + (\sigma - 1)s_s]$$

$$= \omega - s_{s,i}[\omega - \sigma(1 - s_s) - s_s]$$

$$\boxed{\varepsilon_{s,i} = \omega(1 - s_{s,i}) + \sigma s_{s,i}(1 - s_s) + s_{s,i} s_s}$$
# 2.3) 2)
La condición de primer orden para maximización de beneficios es:

$$\frac{\partial \pi_{s,i}}{\partial P_{s,i}} = \frac{\partial (P_{s,i} C_{s,i})}{\partial P_{s,i}} - \frac{\partial C_{s,i}}{\partial P_{s,i}} MC_{s,i} = 0$$

$$C_{s,i} + P_{s,i} \frac{\partial C_{s,i}}{\partial P_{s,i}} = \frac{\partial C_{s,i}}{\partial P_{s,i}} MC_{s,i}$$

$$C_{s,i} \left[1 + \frac{P_{s,i}}{C_{s,i}} \frac{\partial C_{s,i}}{\partial P_{s,i}}\right] = \frac{\partial C_{s,i}}{\partial P_{s,i}} MC_{s,i}$$

$$P_{s,i} \left[1 - \frac{1}{\varepsilon_{s,i}}\right] = MC_{s,i}$$

$$\boxed{P_{s,i} = \frac{\varepsilon_{s,i}}{\varepsilon_{s,i} - 1} MC_{s,i}}$$

con $\varepsilon_{s,i} = \omega(1 - s_{s,i}) + \sigma s_{s,i}(1 - s_s) + s_{s,i} s_s$. Ahora depende de los shares de mercado (a traves de las elasticidades). Si tenes menos share del mercado tenes menos margen para fijar precios. 

# 2.3) 3)

Ahora hay $n'_{s}$ firmas. Se reducen las participaciones a $s'_{s,i} = \frac{1}{n'_{s}} > s_{s,i}$. Ahora la elasticidad a la que se enfrentan es:

$$\varepsilon' = \omega\left(1 - \frac{1}{n_s'}\right) + \sigma \frac{1}{n_s'}(1 - s_s) + \frac{1}{n_s'} s_s$$

Dado que $\frac{1}{n_s'} > \frac{1}{n_s}$ y $\omega > \sigma > 1$:

$$\varepsilon' < \varepsilon$$
Es bastante obvio que el markup va a ser mayor si hay menos firmas dadas las caracteristicas que venimos asumiendo de las firmas:
$$
\text{Markup}' = \frac{\varepsilon'}{\varepsilon' - 1} > \frac{\varepsilon}{\varepsilon - 1} = \text{Markup}
$$
y en consecuencia, el precio sube:
$$
P_{s,i}' = \text{Markup}' \times MC' > P_{s,i}
$$
Luego, la demanda era:
$$
C_{s,i}' = \frac{C_s}{n_s'} > \frac{C_s}{n_s} = C_{s,i}
$$
Cada firma de las que se queda vende más.

$$C_s' = \left(\frac{P}{P_s'}\right)^{\sigma} \frac{W}{P}$$

Como $P_s' > P_s$:
$$C_s' < C_s$$

El sector pierde demanda frente a otros sectores. En cuanto a la competencia entre sectores podemos ver el share del sector en la economia total que habiamos definido como $s_{s}$: 
$$
s_s' = \frac{(P_s')^{1-\sigma}}{\int_0^1 P_t^{1-\sigma} dt} < s_s
$$
Ahora es menor porque sustituyen por otros sectores cuando este es menos competititvo.