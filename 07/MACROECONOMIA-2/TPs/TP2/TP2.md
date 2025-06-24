
# 1 Revisión de Conceptos

## a. Ecuación de Euler

Es importante para que un modelo pueda describir bien la realidad que incorpore las preferencias respecto al consumo o el ahorro de las personas (familias, hogares, etc) que componen la economía. En particular, quisieramos un modelo que nos indique cómo deciden las personas entre consumir una proporción de su presupuesto y ahorrar el resto para consumir en el futuro. La ecuación de Euler nos permite describir exactamente cómo las personas solucionan ese trade-off entre consumir hoy y consumir mañana.

En su forma más simple (sin depreciación), el cambio porcentual en el consumo según la ecuación de Euler tiene esta forma:
$$\frac{\dot{c}}{c}= \frac{1}{\sigma} [f'(k) - \rho]$$
donde $\frac{1}{\sigma}=-\left[\frac{c \cdot u''(c)}{u'(c)}\right]^{-1}$ es la elasticidad de sustitución intertemporal del consumo. Es una medida de  la disposición a variar el consumo en el tiempo cuando cambia la tasa de interés.

tenemos que $f'(k)$ es simplemente la tasa de retorno del capital. Por otro lado, $\rho$ es la tasa de descuento intertemporal de la utilidad. Entonces el consumo en el próximo periodo va a aumentar si aumenta el retorno al capital y va a decrecer si aumenta $\rho$. Esto es porque si es mayor la tasa de retorno, aumenta el incentivo a ahorrar y consumir mucho en los periodos siguientes. Si tasa de descuento de la utilidad $\rho$ es muy grande, entonces el consumo en el siguiente periodo no vale mucho comparado al consumo hoy

## b. Tasa de descuento intertemporal

El parámetro $\rho$ de descuento intertemporal es una medida de cuánto valoramos el consumo presente en comparación con el consumo futuro. Nos indica cuánto estamos dispuestos a sacrificar para tener algo ahora en lugar de esperar y tenerlo más adelante. Sabemos que el valor de consumir mañana es menor al valor de consumir hoy y para que la utilidad de ambos sean iguales, el consumo hoy debe ser mayor en un factor de $\rho$.
Ramsey comenta primero que, filosóficamente, no es éticamente correcto descontar utilidades o medidas de bienestar, pero procede a incluir esta tasa para la generalidad del modelo. Él compara esta tasa $\rho$ con la tasa de interés del dinero. En lo que respecta al dinero es simple explicar las tasa y el descuento $r$: tener 1$ hoy equivale a $(1+r)\$$ en un año. La diferencia con el descuento de la utilidad es que va a ir variando en el tiempo de acuerdo a las distintas proporciones que se quisieran destinar al consumo o a la inversion. Recordamos que en este modelo no hay herederos, la gente vive infinitamente, por lo que el interés de la gente debe ser proveer para el tiempo futuro (558)
\footnote{Ramsey, F. P. (1928). "A Mathematical Theory of Saving." The Economic Journal, 38(152), 543–559.}.

## c. Elasticidad de Sustitución Intertemporal
El parámetro $\theta$ (theta) representa la elasticidad de sustitución intertemporal, es decir, cuánto estamos dispuestos a cambiar nuestro consumo futuro en respuesta a cambios en la tasa de interés. Un $\theta$ más alto indica que somos más flexibles en nuestras decisiones de consumo a lo largo del tiempo, mientras que un $\theta$ más bajo indica una menor flexibilidad. Si la elasticidad de sustitución es baja, el hogar está menos dispuesto a ajustar el sendero de consumo en respuesta a un cambio en la tasa de interés.


## d. Condición de transversalidad

La condición de transversalidad es fundamental en la maximización del modelo de Ramsey. Esta condición se expresa matemáticamente como:
$$\lim_{{t \to \infty}} \lambda_{t}k_{t} = \lim_{{t \to \infty}} \left[ u'(c)e^{-\rho t} \right] k_{t} =0$$
Esta condición aplica restricciones sobre el ahorro y la acumulación de riquezas. Nos dice que hacia el final de los tiempos la utilidad de tener capital es 0. Podemos entenderla mejor analizando que pasa si
$$
\lim_{{t \to \infty}} \left[ u'(c)e^{-\rho t} \right] k_{t} >0
$$
Esto implica que la gente quiere ahorrar demasiado. La utilidad en $t=0$ se puede aumentar simplemente reduciendo $k_{t}$ al  final de los tiempos, ahorrando de menos en ese momento y consumiendo todo. Dicho de otra forma, la utilidad de capital (su presupuesto) crecería a una tasa mayor que la tasa de descuento, por lo que no estaría eligiendo el sendero óptimo: estarían mejor consumiendo todo y teniendo menos capital en el largo plazo.
Despues en el caso de que 
$$
\lim_{{t \to \infty}} \left[ u'(c)e^{-\rho t} \right] k_{t} <0
$$
Esto no satisface las condiciones de No-Ponzi. Sucede lo inverso que antes, si el valor actual de los activos del futuro es negativo, es conveniente estar siempre endeudado. La condición de no-ponzi nos dice que las deudas deben crecer a una tasa menor que la tasa de interes, cual no sucedería en este caso.

# 2 Modelo de Crecimiento de Ramsey
## a) Problema del consumidor
Partimos de que tenemos un modelo con $n=0$, $g=0$  con un consumidor con preferencias:
$$U(t)=\int_{0}^{\infty} \frac{c_t^{1-\theta}}{1-\theta} e^{-\rho t}\,dt$$y con una restricción de presupuesto: 
$$\dot{k} = w_t + (1 - \tau )r_tk_t - c_t + T$$
La solución al problema de optimización intertemporal de los agentes se puede caracterizar con el hamiltoniano:
$$H= \frac{c_t^{1-\theta}}{1-\theta} e^{-\rho t}+\lambda_t[w_t + (1 - \tau )r_t(k_t) - c_t + T]$$
Obtenemos las condiciones de primer orden (CPO) del Hamiltoniano respecto a las variables de control, $c$, de estado, $k$ y la variable de co-estado $\lambda$. Obtenemos la primer condición derivando con respecto a $c$.
$$\frac{\partial H}{\partial c} = c_t^{-\theta}e^{\rho t} - \lambda_t  = 0$$despejando $\lambda$ nos queda:
$$\lambda_t  = c_t^{-\theta}e^{-\rho t}$$
La segunda condición la obtenemos derivando con respecto al capital. Esta siguiente condición de optimalidad surge de la teoría de control óptimo. Según esta, debemos optimizar el valor $V=k_{t}\lambda_{t}$, es decir, el valor del capital en cada momento del tiempo si tomamos a $\lambda$ como el precio sombra. Llegamos a esta identidad:
$$\dot{\lambda_t}= -\frac{\partial H}{\partial k} = -\lambda_t(1 - \tau )r_t$$
Podemos re-expresar esa ecuación dividiendo por $\lambda$ de esta manera:
$$\frac{\dot{\lambda_t}}{\lambda_t} = -r_t(1 - \tau)$$
Por último, obtenemos la tercer condición, derivando con respecto a la variable de co-estado. Esto es simplemente la restricción presupuestaria.
$$\frac{\partial H}{\partial \lambda}= \dot{k} = w_t + (1 - \tau )r_t(k_t) - c_t + T = 0$$

Esas son las condiciones de optimalidad. Se pueden interpretar viendo a $\lambda_{t}$ como el precio sombra de una unidad marginal de capital (el presupuesto de los agentes) para cada $t$. La primera condición indicaría que el valor en términos de utilidad de una unidad adicional de presupuesto (o de relajar en una unidad la restricción). En este caso, obtuvimos exactamente $u'(c)$ para el precio sombra en la condición de optimalidad. En sendero óptimo, la utilidad que surge de relajar la restricción de presupuesto en una unidad debe ser la misma utilidad que surge de aumentar el consumo en todo momento. 

Una interpretación similar se puede hacer en el caso de la segunda condición de optimalidad. La suma del retorno sobre el capital que obtienen los hogares, neto del impuesto, $r_t(1 - \tau)$y el cambio porcentual en el precio sombra, $\frac{\dot{\lambda_t}}{\lambda_t}$,tiene que ser 0. Esto es porque ambas fuerzas se mueven en sentido contrario. Si aumenta el retorno sobre el capital, para que la suma sea 0, deben decrecer el cambio en la utilidad por reducir la restricción de presupuesto (es decir, consumir, que es lo que interpretamos en el párrafo anterior). Básicamente si aumenta el retorno al capital la utilidad de consumir mañana es menor relativa a consumir hoy, por lo que $\frac{\dot{\lambda_t}}{\lambda_t}$ debe ser menor.

Otra condición que debe cumplirse es la condición de transversalidad: nos garantiza la las decisiones de consumo e inversión a largo plazo sean sostenibles. Simplemente asegura que los agentes no ahorren de más y se queden con capital al final del tiempo. En la ecuación tenemos al capital $k_{t}$ al final de los tiempos multiplicado por la utilidad marginal (es decir, el precio sombra), asi que la utilidad de sus recursos al final de los tiempos tiene que ser exactamente 0 para que no hayan incentivos a ahorrar de más o de menos.
$$\lim_{t \rightarrow+\infty} k_t c_{t}^{-\theta} e^{-p t}=0$$
Continuamos derivando la primer condición que obtuvimos, $\lambda_t  = c_t^{-\theta}e^{-\rho t}$, con respecto al tiempo, obtenemos 
$$\frac{\partial \lambda}{\partial t} = \dot{\lambda}=-\theta c_t^{-\theta-1} \dot{c} e^{-\rho t} - c_t^{-\theta}\rho e^{-\rho t}
$$
Dividiendo esto por $\lambda_t  = c_t^{-\theta}e^{-\rho t}$ llegamos a:
$$
\frac{\dot{\lambda}}{\lambda}=\frac{-\theta c_t^{-\theta-1} \dot{c} e^{-\rho t} - c_t^{-\theta}\rho e^{-\rho t}}{c_t^{-\theta}e^{-\rho t}} 
$$$$\frac{\dot{\lambda}}{\lambda}=-\theta \frac{\dot{c}}{c}-\rho$$
Ahora igualamos esa expresión con la que obtuvimos al derivar respecto a la variable de control, $\frac{\dot{\lambda_t}}{\lambda_t} = -r_t(1 - \tau)$, y despejamos $\frac{\dot{c}}{c}$. De esta manera obtenemos la ecuación de Euler: 
$$\frac{\dot{\lambda}}{\lambda}=-\theta \frac{\dot{c}}{c}-\rho=-r_t(1 - \tau)$$
$$
-\theta \frac{\dot{c}}{c}=-r_t(1 - \tau)+\rho
$$
$$
\frac{\dot{c}}{c}=\frac{1}{-\theta}\left[-r_t(1 - \tau)+\rho\right]
$$
$$\frac{\dot{c}}{c}=\frac{1}{\theta}\left[(1-\tau) r_{t}-\rho\right]$$
Esa es la condición que determina la dinámica del consumo.
Interpretación de la ecuación de Euler:
- El consumo depende negativamente del coeficiente de aversión al riesgo ($\theta$), ya que a mayor es $\theta$, menores van a ser los "saltos" en la variable de control con respecto al tiempo: hay una propensión a suavizar.
-  También depende negativamente de "$\tau$". Ante un aumento del impuesto sobre el ingreso del capital, disminuirá el consumo de los individuos.
- En cuanto a "$r_{t}$" (tasa de retorno del capital), si esta aumenta, los individuos de la sociedad optarán por ahorrar más hoy, por ende, consumirán menos.
- Por último, la tasa de impaciencia ($\rho$). Si aumenta, las personas en el largo plazo consumirán menos.

## b) Problema de la firma representativa:

Las firmas pagan salarios $w$ a sus empleados y pagan $R$ como alquiler por el capital. Podemos definir a $R$ de la siguiente forma: $R=r+\delta$ (retorno del capital + su depreciación)
$$\max \pi=F\left(K_t, L_t\right)-W_t L_t-R_t K_t$$
Antes, obtenemos la forma intensiva (es decir, por $L$ ) de forma que el problema de maximización dependa solo del capital:
$$\max \pi=f\left(k_t\right)-w_t-R_t k_t$$
Derivamos con respecto a $k$ e igualamos a 0 :
$$\frac{\partial \pi}{\partial k}=f^{\prime}\left(k_t\right)-R_T=0$$
Suplantamos $R=r+\delta$ y despejamos $r$:
$$f^{\prime}\left(k_t\right)-r-\delta=0 $$
$$\boxed{ r=f^{\prime}\left(k_t\right)-\delta}$$
Como la firma se encuentra en una economía competitiva, debe cumplirse que: $\pi=0$
$$f(k)-w_t-R_t k_r $$
Reemplazamos $R_t$ e igualamos a 0: 
$$f(k)-w_t-(r+\delta) k_t=0$$
Cancelamos términos y despejamos $w_t$:
$$\boxed{ w=f(k)-f'\left(k_{t}\right) k_t}$$
La interpretación de estas condiciones

## c)

Obtenemos $\dot{c}$ y $\dot{k}$, a partir de las condiciones de optimalidad obtenidas en el punto $a)$. Usamos la ecuación de euler.

Reemplazamos por $r=f^{\prime}\left(k_T\right)-\delta$ , para obtener $\dot{c}$:
$$\frac{\dot{c}}{c}=\frac{1}{\theta}\left[(1-\tau)\left(f^{\prime}\left(k_t\right)-\delta\right)-\rho\right]$$
Luego, volvemos a la restricción presupuestaria, que describe la dinámica de la variable de estado:
$$\dot{k} = w_t + (1 - \tau )r_t(k_t) - c_t + T = 0$$
Como el impuesto al ingreso del capital es del tipo "lump sum", significa que habrá devoluciones en forma de transferencias:
$$T=\tau\left(r+k_t\right)$$
Reemplazamos $T$ y cancelamos términos:
$$\dot{k}=w_t+(1-\tau ) r_tk_t-c t+\tau\left(r+k_t\right)$$
Nos queda:
$$\dot{k}=w_t+r_t k_t-c_t$$
Ahora reemplazamos por el salario y la tasa de retorno del capital obtenidas en el inciso b. Luego de cancelar términos obtenemos: 
$$\dot{k}=f(k)-\delta k_t-c_t$$
Ahora igualamos $\dot{k}=0$ para encontrar $k^*$ del estado estacionario. Despejamos $c_t$:
$$c^*=f(k)-\delta k^*$$
Esa función describe el estado estacionario par a $\dot{k}=0$, en el gráfico es la función parabólica. 
Por último, $\dot{c}=0$ y despejo $f^{\prime}(k)$ para lograr obtener:
$$f^{\prime}(k^*)=\frac{\rho}{1-\tau}+\delta$$
Esta condición que surge de $\dot{c}=0$ no depende de los valores de estado y de control, sino que depende únicamente del $k$ en estado estacionario. Esto quiere decir que hay un único valor de $k$ para el que $\dot{c}=0$, el cual llamamos $k^*$. En el gráfico, es la linea recta en $k^*$.

El punto $(k^*,c^*)$ está indicado en el gráfico. Es el punto donde se igualan ambas curvas de estado estacionario.  La dinámica de las variables fuera del punto también se muestra en el gráfico.  Por ejemplo, por encima de la curva de $\dot{k}=0$ y a la derecha del sendero de ensilladura, las funciones decrecen en $c$ y decrecen en $k$. 

Gráfico: 
```tikz
\begin{document}
\begin{tikzpicture}[scale=1.5, domain=0:6]
\draw[->] (0,0) -- (6,0) node[right] {$k$};
\draw[->] (0,0) -- (0,6) node[above] {$c$}; 
\draw[thick, smooth, variable=\x] plot (\x,{- ((0.65*\x-2 ))^2+4}) node[right] {$\dot{k} = 0$};
\draw[thick] (1.5,0) -- (1.5,6) node[right] {$\dot{c} = 0$};
\fill[black] (1.5, 2.949375) circle (1.5pt) node[right] {};
\node[below] at (1.5, 0) {$k^*$};
\draw[dotted] (0,2.949375) -- (1.5, 2.949375);
\node[left] at (0,2.949375) {$c^*$};

% 1er cuadrante
\draw[->, thick] (4,5) -- (3,5);
\draw[->, thick] (4,5) -- (4,4);

% 2do cuadrante
\draw[->, thick] (1,5) -- (0.5,5);
\draw[->, thick] (1,5) -- (1,5.6);

% 3er cuadrante
\draw[->, thick] (0.8,0.8) -- (1.4,0.8);
\draw[->, thick] (0.8,0.8) -- (0.8,1.4);

% 4to cuadrante
\draw[->, thick] (3,2) -- (4,2);
\draw[->, thick] (3,2) -- (3,1);



\end{tikzpicture}
\end{document}
```
## d) 

Analizamos ahora el efecto de un aumento permanente anticipado de $\tau$. El shock que produce el anuncio en $t_{0}$. 
El gráfico 2 que vemos muestra el diagrama de fase enterior y superpuesto vemos la dinámica un impuesto mayor. Vemos que el impuesto mayor sobre el capital va a disminuir el capital de equilibrio que hace que $\dot{c}=0$, por lo que la curva se desplaza a la izquierda. En el gráfico se nombra como  $\dot{c}'=0$. 
En el gráfico 3 lo que vemos cual va a ser la dinámica de lo que sucede. El punto A es donde van a consumir en el momento $t_{0}$. Ocurre un salto discreto en el consumo porque al momento del anuncio los agentes se sienten "más ricos" intertemporalmente. Es decir, aumenta el valor descontado del ingreso futuro neto del impuesto.
La gente modifica su consumo en $t_{0}$ para luego estar en el sendero de ensilladura dadas las condiciones que van a regir luego de $t_{1}$ con una curva $\dot{c}'=0$. En $t_{1}$ no hay ningún salto porque no hay ningún shock, el cambio de impuestos ya fue anticipado, en cambio en $t_{1}$ la economia esta en el nuevo sendero de ensilladura que vemos en el punto B del grafico 3. 
En el paso de A a B vemos que el capital decerce, porque están consumiendo más, osea que ahorran menos de lo necesario para que $k$ sea consante. mientras tanto, el consumo va a estar aumentando hasta llegar a B, ya que vemos en la ecuacion de euler que el retorno al capital va a ser mayor que la tasa de descuento intertemporal $\rho$. Una vez en el punto B la economia esta en el trayecto al nuevo estado estacionario $(c^{*\prime}, k^{*\prime})$.

```tikz
\begin{document}
\begin{tikzpicture}[scale=1.5, domain=0:6]
\draw[->] (0,0) -- (6,0) node[right] {$k$};
\draw[->] (0,0) -- (0,6) node[above] {$c$}; 
\draw[thick, smooth, variable=\x] plot (\x,{- ((0.65*\x-2 ))^2+4}) node[right] {$\dot{k} = 0$};

\draw[thick] (1.5,0) -- (1.5,6) node[right] {$\dot{c}=0$};
\fill[black] (1.5, 2.949375) circle (1.5pt) node[right] {};
\node[below] at (1.5, 0) {$k^*$};
\draw[dotted] (0,2.949375) -- (1.5, 2.949375);
\node[left] at (0,2.949375) {$c^*$};

\draw[thick] (1,0) -- (1,6) node[left] {$\dot{c} ' = 0$};
\fill[black] (1, 2.1775) circle (1.5pt) node[right] {};
\draw[dotted] (0, 2.1775) -- (1, 2.1775);
\node[left] at (0, 2.1775) {$c^{*\prime}$};
\node[below] at (1, 0) {$k^{*\prime}$};

% 1er cuadrante
\draw[->, thick] (4,5) -- (3,5);
\draw[->, thick] (4,5) -- (4,4);

% 2do cuadrante
\draw[->, thick] (0.9,5) -- (0.5,5);
\draw[->, thick] (0.9,5) -- (0.9,5.6);

% 3er cuadrante
\draw[->, thick] (0.3,0.3) -- (0.6,0.3);
\draw[->, thick] (0.3,0.3) -- (0.3,0.6);

% 4to cuadrante
\draw[->, thick] (3,2) -- (4,2);
\draw[->, thick] (3,2) -- (3,1);



\end{tikzpicture}
\end{document}
```
## e) Aumento transitorio no anticipado
En este caso se introduce un impuesto en el momento $t_{0}$ que dura hasta el momento $t_{1}$. Ahora el shock ademas del anunció es la introducción del impuesto. Los agentes no tienen tiempo de acomodar sus decisiones antes de que tome efecto la medida como en el punto anterior. También a diferencia del punto anterior, la economía va a volver al estado en el que estaba en $t_{-1}$ luego de $t_{1}$. Entonces entre $t_{0}$ y $t_{1}$ rige la dinámica con $\dot{c}'=0$ pero después la economía vuelve a estar definida por $\dot{c}'=0$.
Es importante que los agentes saben que el impuesto es transitorio. Sin esa información el sendero de la economía luego de $t_{1}$ sería diferente. El hecho de que se espera que la medida deje de tener efecto luego de $t_{1}$ implica un menor valor hoy de los ingresos futuros si se los descuenta. Hay un aumento en el consumo hasta el punto A en el grafico 4. Este aumento es menor que en el caso anterior (quizas eso no se aprecia totalmente en el gráfico). 
Entre el momento $t_{0}$ y $t_{1}$ la trayectoria debe determinar que partiendo de A se llegue al punto B.
Luego de $t_{0}$, el capital va a decrecer, como antes, porque hay mas consumo del necesario para que $\dot{k}=0$, mientras que $c$ ahora va a decrecer, a diferencia del punto anterior, porque la tasa de retorno al capital es menor que la tasa de descuento $\rho$. 
En $t_{1}$ la economía va a estar en B 

## f)
**Suponga que el gobierno quiere reemplazar el impuesto sobre el ingreso al capital y quiere imponer uno sobre el ingreso laboral de las familias. Indique como quedaría la nueva restricción presupuestaria.**

La restricción presupuestaria con un impuesto al ingreso laboral sería
$$
\dot{k}_{t}=r_{t}k_{t}+(1-\tau)w_{t} -c_{t}+T
$$
