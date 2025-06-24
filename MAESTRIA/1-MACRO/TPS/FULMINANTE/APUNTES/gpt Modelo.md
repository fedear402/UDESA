Los fondos de Chile y Alaska son fondos permanentes. Nuestro modelo más simple trabaja con la perspectiva de que el fondo se va a constituir con los ingresos que vayan entrando por la minería y **no** espera futuros descubrimientos que contribuyan a este. Tendremos usos que realiza el gobierno $g_{t}$ y los ingresos $\tau _{t}$ por regalías.

Céspedes & Velasco plantean un modelo similar al típico modelo de Ramsey con suavización de consumo, pero para la autoridad fiscal. Esta es la estructura que sigue el fondo de inversión del cobre chileno. En lugar del consumo $c_{t}$, la variable de decisión es el gasto $g_{t}$, enfrentándose a ingresos volátiles y recaudando impuestos. El objetivo en C & V en tiempo discreto (reescribimos el problema para facilitar los cálculos computacionales) es

$$
\max_{\{g_t\}} \sum_{t=0}^{\infty} \frac{\sigma}{1-\sigma}\,g_t^{\sigma-1} \frac{1}{(1+\rho)^{t}},
$$

con $0<\sigma<1$; la utilidad marginal es decreciente en $g_t$ y $\rho$ es la tasa de preferencia intertemporal. C & V plantean la restricción (también en tiempo discreto)

$$
b_{t+1} = (1+r)\,b_t + \tau_t - g_t + \varepsilon_t,
$$

donde el cambio en los activos del fondo chileno es el retorno real más el superávit o déficit fiscal. $\tau_t$ son los ingresos—en Chile variados; para nosotros serán las regalías sanjuaninas—y $\varepsilon_t$ es el shock de precios del cobre, que en continuo sigue $\varepsilon_t = \varepsilon_0 e^{-\delta t}$ con $\delta \in [0,\infty)$, o bien en discreto

$$
\varepsilon_{t+1} = \delta\,\varepsilon_t, \qquad 0\le\delta\le1.
$$

En el óptimo el gasto es constante (si $r=\rho$) y la condición queda

$$
g = r\left[ b_0 + \frac{\tau}{r} + \frac{\varepsilon_0}{1+r-\delta} \right].
$$

El último término es la suma $\sum_{t=1}^{\infty} \frac{\varepsilon_0\delta^{t}}{(1+r)^{t+1}}$. Si $\delta=1$ (shock permanente) se descuenta como perpetuidad; si $\delta<1$ (transitorio), como anualidad.  
Sabiendo eso, deciden cómo acumular activos:

$$
b_{t+1} - b_t = \frac{1-\delta}{1+r-\delta}\,\varepsilon_t.
$$

Con shocks negativos permanentes ($\delta=1$) la posición de activos no cambia; si el shock es transitorio, un shock positivo se ahorra y uno negativo reduce $g_t$. El supuesto clave es que el gobierno **conoce** $\delta$. En la práctica, un comité de expertos estima qué fracción del ingreso extra es permanente.

---

### Implementación en San Juan con regla de suavización

Si San Juan adoptara hoy la estrategia C & V, la suavización implicaría endeudarse para financiar $g_t$ hasta que lleguen regalías (momento $T$):

$$
b_i = -g_i \quad \forall\, i<T.
$$

En $T$:

$$
b_T = (1+r)b_{T-1} + \tau_T - g_T + \varepsilon_T,
$$

lo que seguirá siendo negativo mientras las regalías no cubran la deuda.

---

## 1. Por qué Noruega y Alaska **no** suavizan

Noruega y Alaska **no** proyectan $\tau_t$ para fijar el gasto. En su lugar:

* Contribuyen al fondo sólo regalías efectivamente cobradas.  
* Fijan el gasto como una fracción de los **activos existentes**:  
  * Noruega: $g_t = r^\ast b_t$ con $r^\ast\!\approx3\%$.  
  * Alaska: $g_t = 0.05 \times \text{promedio quinquenal}(b_t)$.

No suavizan el proceso de ingreso, sino que gastan sólo el rendimiento esperado del stock. A continuación mostramos cómo ese patrón puede surgir endógenamente de un problema de **ahorro precautorio**.

---

# 2. Modelo de gasto precautorio estilo Caballero

Quisieramos explicar con un modelo cómo una situación como la noruega puede ser óptima intertemporalmente. Es decir, que el sendero del gasto no sea suave sino creciente. El primer paso natural es decir que el gobierno maximiza respecto de la esperanza de su utilidad por gastar hasta el presente (no conoce $\delta$). Proponemos una función CARA en lugar de la CRRA:
$$
\max_{\{g_t\}} E_0\left[  \sum_{t=0}^{\infty} -\frac{1}{\theta}e^{-\theta g_{t}}\frac{1}{(1+\rho)^{t}} \right]
$$
Esto es como lo que hace Caballero (1990), pero para el gasto del estado. Él pasa del modelo deterministico de Ramsey que prescribe suavización del consumo a uno con incertidumbre sobre futuros ingresos, lo cual puede describir mejor el caso de un consumo creciente. Esto diría que al prever consumos inciertos ahorra más que en un modelo con suavizacion. 
El caso de Noruega sería el caso extremo de eso: un consumidor para el que cada sueldo es una sorpresa y espera ganar 0. Usa solo los retornos reales para siempre estar seguro. Maximiza sujeto a

$$
b_{t+1} = (1+r)\,b_t + \tau_t - g_t, \qquad \lim_{T\to\infty} E_0[(1+r)^{-T}b_T]=0,
$$

y con $r=\rho$ para simplificar. Tomamos las regalías como **aleatorias**:

$$
\tau_{t+1} = \tau_t + \nu_{t+1}, \qquad E[\nu_{t+1}]=0.
$$

Al igual que Caballero, la condición óptima estilo Hall es $e^{-\theta g_t} = E_t\!\left[e^{-\theta g_{t+1}}\right]$
Al igual que Caballero, asumimos $g_{t+1} = g_t + \Gamma + \nu_{t+1}$
Sustituyendo (2) en (1):
$$
e^{-\theta g_t} = e^{-\theta g_t}\,E_t\!\bigl[e^{-\theta(\Gamma+\nu_{t+1})}\bigr]
\;\Longrightarrow\;
\theta\,\Gamma = \log E_t\!\left[e^{-\theta\nu_{t+1}}\right]
$$
Si $\nu_{t+1}\sim\mathcal N(0,\sigma_\nu^{2})$ entonces $\Gamma = \frac{\theta\,\sigma_\nu^{2}}{2}$. 

--

En terminos practicos, el ingreso es $\tau _{t} = 0.03 \times (1-0.3)\times Q_{t}P_{t}$ con $Q_{t}$ la cantidad extraida para comercializar en $t$ y $P_{t}$ es el precio en $t$. Los shocks al ingreso se dan por shocks en el precio del dobre.