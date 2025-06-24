Los fondos de Chile y Alaska son fondos permanentes. Nuestro modelo más simple trabaja con la perspectiva de que el fondo se va a constitutir con los ingresos que vayan entrando por la minería y no espera futuros descubrimientos que contribuyan a este. Tendremos usos que realiza el gobierno $g$, ya sea repartir entre sanjuaninos o financiar al gobierno, y los ingresos $\tau _{t}$ por regalías.

Cespedes & Velasco plantean un modelo similar al típico modelo de Ramsey con suavización de consumo, pero para la autoridad fiscal. Esta es la estructura que sigue el fondo de inversión del cobre chileno. En lugar del consumo $c_{t}$, la variable de decisión es el gasto $g_{t}$, enfrentándose a ingresos volátiles y recaudando impuestos. El objetivo en CV en tiempo discreto (vamos a reescribir el problema en tiempo discreto para facilitar los calculos computacionales) es:
$$
\max_{\{g_t\}} \sum_{t=0}^{\infty} \frac{\sigma}{1-\sigma}\,g_t^{\sigma-1} \frac{1}{(1+\rho)^{t}}
$$
Con $0<\sigma<1$, la utildad marginal es dececiente en $g_t$ (es una función CRRA) y $\rho$ es la tasa de preferencia intertemporal. C&V plantean esta restriccion (reescrita en tiempo discreto):
$$
b_{t+1}=(1+r) b_t + \tau_t  - g_t + \varepsilon_t
$$
Ahí el cambio en los activos del fondo chileno son el retorno real y el déficit. $\tau$ son los ingresos, en el caso de Chile son variados, pero para nosotros es el ingreso por regalías en el caso de San Juan. Luego, hay un shock de precios del cobre $\varepsilon$ que puede aumentar el activo del fondo y en tiempo continuo sigue un proceso $\varepsilon_t = \varepsilon_0 e^{-\delta t}$ con $\delta \in[0, \infty)$ . Sería como asumir un proceso discreto de este estilo:

$$
\varepsilon _{t+1}=\delta \varepsilon _{t} \qquad  \delta \in [0,1]
$$
En el óptimo el gasto es cosnstante (si $r=\rho$ ) y la condición optima queda:
$$
g= r\left[   b_{0} + \frac{\tau}{r} + \frac{\varepsilon_{0}}{1+r-\delta} \right]
$$
El equivalente discreto de la regla que propone CV. Eso es asumiendo que $\tau$ es constantes y el último término es la suma de los shocks siguiendo el proceso conocido $\sum_{t=1}^{\infty}  \frac{\varepsilon_{0}\delta ^{t}}{(1+r)^{t+1}}$. Si $\delta$ es 1, el shock es permanente y simplemente descuenta la perpetuidad de tener ese valor de shock para siempre. Si es transitorio no se descuenta como perpetuidad sino como anualidad. Descuenta solamente lo que le afectó.

Sabiendo eso desciden como acumular activos en el fondo chileno:
$$
b_{t+1}-b_{t} = \frac{1-\delta}{1+r-\delta} \varepsilon _{t}
$$
Eso implica que con shocks negativos permanentes ($\delta$ = 1) no cambia nada en la posición de activos. Si es transitorio, un shock positivo se ahorra (aumenta la posición de activos) y si es negativo el modelo implica una baja del gasto. Pero eso es lo que pasa cuando el gobierno quiere suavizar su consumo viendo el proceso aleatorio que influye en sus activos netos. El supuesto clave es que el gobierno conoce $\delta$. En la práctica, tienen un comité de expertos que decide qué es $\delta$, es decir, cuánto del ingreso extra de un periodo es permanente o transitorio.

Para el caso de San Juan, si quisieran implementar esta estrategia desde hoy, la suavización implica endeudarse para los usos ($g$, ya sea repartir entre sanjuaninos o financiar al gobierno) hasta que se puedan cobrar regalías (llamemosle el momento $T$). $b_{i}=-g_{i} \quad \forall i < T$. Por ende, $b_{T}=(1+r)b_{T-1} +\tau_{T}  - g_{T} + \varepsilon_{T}$ va a ser negativo mientras los ingresos no cubran la deuda asumida

Si lo quisieran implementar desde el primer periodo en que se extrae, digamos que en el momento $T$ se puede empezar a cobrar regalías. 
$$
0=b_{T}=\tau_{T}  - g_{T} + \varepsilon_{T}
$$
$$
b_{T+1}=(1+r) b_{T} + \tau_{T+1}  - g_{T+1} + \varepsilon_{T+1}
$$
$$
\dots
$$
No todos los fondos actuan así. Alaska y Noruega, por ejemplo, no considera, para sus usos, que pueda haber ingresos futuros, solo le importan los activos que tiene. Es decir, no esta suavizando. Su regla no es $g= r\left[   b_{0} + \frac{\tau}{r} + \frac{\varepsilon_{0}}{1+r-\delta} \right]$ descontando ingresos futuros sino que fijan $g_{t}=b_{t}r$, los retornos reales de la inversion pasada. Noruega estima $r$ en 3\%  y Alaska calcula 5\% del valor de mercado promedio de los activos en el fondo. No calculan ingresos estructurales $\tau$ que van a obtener todo el tiempo, solo contribuyen al fondo las regalías cobradas. 

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
Si $\nu_{t+1}\sim\mathcal N(0,\sigma_\nu^{2})$ entonces $\Gamma = \frac{\theta\,\sigma_\nu^{2}}{2}$. Con esto, si el sendero de gasto tiene esa pendiente y explica que el consumo no sea suave. Caballero es más general. Él elaciona $v_{t+1}$ con shocks en el ingreso $\nu_{t+1}$:
$$v_{t+1} = \Psi\nu_{t+1}$$
El paper expresa $\Psi$ el valor de anualidad de shocks unitarios al ingreso, de manera bastante general. A nosotros nos interesa el caso $\Psi = 1$ porque dice que es un random walk y ese proceso siguen los precios de commodities que determinan el ingreso de San Juan.
La restricción era $b_{t+1} = (1+r)\,b_t + \tau_t - g_t$
Similar a Caballero, nos queda
$$g_t = y_t^p - \left[\frac{r}{1-r}\right]\Gamma$$
Con el ingreso permanente $y_t^p$ definido como:
$$y_t^p = r\left(b_t + \sum_{i=0}^{\infty}\frac{E_t[\tau_{t+i}]}{(1+r)^{i+1}}\right)$$
Esa función de respuesta de gasto nos da un componente de inhreso permanente como utiliza Chile y un componente de ahorro permnante que reduce el gasto ante la incertidumbre. La acumulación de activos en este esquema es:
$$b_{t+1} - b_t = \tau_t - y_t^p + \left[\frac{r}{1-r}\right]\Gamma$$
No solo va a acumular dinero en el fondo cuando hayan desvios del ingrso permanente estructural, como interpreta Chile, sino que hay un componente precautorio.


---

$$
```
g_t = \tau_t^{*} + r \cdot b_t
```
$$