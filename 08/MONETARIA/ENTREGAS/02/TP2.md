# 1.a

Primero planteamos que 
$$
\dot{d_{t}} = \frac{ \partial d_{t} }{ \partial t } = \frac{ \partial (b_{t} + h_{t}) }{ \partial t } =\frac{ \partial \left( \frac{B_{t}}{P_{t}} + \frac{H_{t}}{P_{t}}  \right) }{ \partial t } 
$$
$$
\frac{ \partial \left( \frac{B_{t}}{P_{t}} \right) }{ \partial t } + \frac{ \partial \left(\frac{H_{t}}{P_{t}}  \right) }{ \partial t } = \frac{\dot{B_{t}} P_{t}-B_{t}\dot{P_{t}} }{P_{t}^2}+\frac{\dot{H_{t}} P_{t}-H_{t}\dot{P_{t}} }{P_{t}^2}
$$
$$
=\frac{\dot{B_{t}}}{P_{t}} \frac{P_{t}}{P_{t}}-\frac{B_{t}}{P_{t}} \frac{\dot{P_{t}}}{P_{t}}+\frac{\dot{H_{t}}}{P_{t}} \frac{P_{t}}{P_{t}}-\frac{H_{t}}{P_{t}} \frac{\dot{P_{t}}}{P_{t}}
$$
$$
=\frac{\dot{B_{t}}}{P_{t}} - b_{t} \pi _{t }+\frac{\dot{H_{t}}}{P_{t}} - h_{t} \pi_{t} 
$$ 
Ahora, dividimos la restricción presupuestaria por $P_{t}$.
$$
g_{t}-\tau_{t}+i_{t}b_{t}=\frac{\dot{B_{t}}}{P_{t}}+\frac{\dot{H_{t}}}{P_{t}}
$$
Podemos reemplazar $s^F_{t}=\tau_{t}-g_{t}$ y restar $b_{t} \pi+ h_{t} \pi$ en ambos lados.
$$
-s_{t}^F+i_{t}b_{t}-b_{t} \pi_{t}- h_{t} \pi_{t}=\frac{\dot{B_{t}}}{P_{t}}+\frac{\dot{H_{t}}}{P_{t}}-b_{t} \pi_{t}- h_{t} \pi_{t}
$$
Del lado derecho tenemos al expresión que obtuvimos al inicio para $\dot{d_{t}}$. Sumamos $i_{t}h_{t}$ de ambos lados y obtenemos:
$$
-s_{t}^F+i_{t}b_{t}-b_{t} \pi_{t}- h_{t} \pi_{t}+i_{t}h_{t}=\dot{d_{t}}+i_{t}h_{t}
$$
Agrupamos los términos de pasivos totales:
$$
-s_{t}^F-\pi_{t}(b_{t}+h_{t})+i_{t}(b_{t}+h_{t})=\dot{d_{t}}+i_{t}h_{t}
$$
$$
-s_{t}^F-\pi_{t} d_{t}+i_{t}d_{t}=\dot{d_{t}}+i_{t}h_{t}
$$
Y usando la ecuación de Fisher ($r=i_{t}-\pi_{t}$) , llegamos a la expresión final:
$$
-\dot{d_{t}}+(i_{t}-\pi_{t}) d_{t}=s_{t}^F+i_{t}h_{t}
$$
$$
-\dot{d_{t}}+rd_{t}=s_{t}^F+i_{t}h_{t}
$$
# 1.b

$$
\int_{0}^\infty(-\dot{d_{t}}+rd_{t}) e^{-rt} \ dt=\int_{0}^\infty (s_{t}^F+i_{t}h_{t}) e^{-rt}  \ dt
$$
Imponemos la condición de transversalidad que implica que el valor presente descontado continuamente de los pasivos $d_{t}$ del gobierno es 0:
$$
\lim_{ t \to \infty } e^{-rt}d_{t}=0
$$
Notamos que:
$$
\frac{ \partial (d_{t}e^{-rt}) }{ \partial t } = \dot{d_{t}} e^{-rt}+d_{t}e^{-rt}(-r)
$$
Por lo que la ecuación queda
$$
-\int_{0}^\infty \frac{ \partial (d_{t}e^{-rt}) }{ \partial t } \ dt=\int_{0}^\infty (s_{t}^F+i_{t}h_{t}) e^{-rt}  \ dt
$$
$$
-\left[ \lim_{ t \to \infty } d_{t} e^{-rt} -d_{0}e^{-r0}\right] =\int_{0}^\infty (s_{t}^F+i_{t}h_{t}) e^{-rt}  \ dt
$$
Nos queda la condición de transversalidad, por lo que ese término es 0, y llegamos a la restricción de presupuesto intertemporal:
$$
d_{0}=\int_{0}^\infty (s_{t}^F+i_{t}h_{t}) e^{-rt}  \ dt
$$
# 1.c

Reemplazamos los valores de estado estacionario en al restricción presupuestaria
$$
d_{0}=\int_{0}^\infty (\bar{s_{t}}^F+ih) e^{-rt}  \ dt
$$
$$
d_{0}=(\bar{s_{t}}^F+ih) \int_{0}^\infty e^{-rt}  \ dt
$$
$$
d_{0}=(\bar{s_{t}}^F+ih)  \left[ \frac{e^{-r\infty}}{-r} - \frac{e^{-r0}}{-r} \right] 
$$
$$
d_{0}=(\bar{s_{t}}^F+ih)  \left[ \frac{1}{r} \right] 
$$
$$
rd_{0}=\bar{s}^F+i h
$$
$$
r(b_{0}+h_{0})-\bar{s}^F=i h
$$
# 1.d

Usando la expresión de estado estacionario del presupuesto, reemplazamos la función de $h$ en estado estacionario y usamos la igualdad de Fisher: $i=r+\pi$
$$
r(b_{0}+h_{0})-\bar{s}^F=(r+\pi) \left[ \frac{1}{\alpha} y (r+\pi)^{-\sigma} \right] 
$$
$$
\alpha\left( \frac{r(b_{0}+h_{0})}{y} - \frac{\bar{s}^F}{y}  \right) =(r+\pi) \left[ (r+\pi)^{-\sigma} \right] 
$$
$$
\alpha\left( \frac{r(b_{0}+h_{0})}{y} - \frac{\bar{s}^F}{y}  \right) =(r+\pi)^{1-\sigma}
$$
$$
\alpha\left( \frac{r(b_{0}+h_{0})}{y} - \frac{\bar{s}^F}{y}  \right) ^{\frac{1}{1-\sigma}} -r=\pi
$$


# 2.a




# 3.a

El problema del gobierno en el segundo periodo es elegir $\theta$ y $\mathrm{T}$ para maximizar $c$. 
$$
\max_{\mathrm{T}, \theta} y +Rk+(1-\theta)R_{b}b-\left( \mathrm{T}-\frac{\epsilon \theta^2}{2} \right)-z(\mathrm{T})-\mathcal{R}(\theta) 
$$
Sujeto a la restricción:
$$
s.a. \mathrm{T}=g+R_{b}(1-\theta)b+\frac{\epsilon \theta^2}{2}
$$
Reemplazamos la resitricción en la función objetivo y tenemos:
$$
\max_{\mathrm{T}, \theta} y +Rk+(1-\theta)R_{b}b-\left( \left\{ g+R_{b}(1-\theta)b+\frac{\epsilon \theta^2}{2} \right\} -\frac{\epsilon \theta^2}{2} \right)-z(\left\{ g+R_{b}(1-\theta)b+\frac{\epsilon \theta^2}{2} \right\} )-\mathcal{R}(\theta) 
$$
$$
\max_{\mathrm{T}, \theta} y+Rk-g-z(\left\{ g+R_{b}(1-\theta)b+\frac{\epsilon \theta^2}{2} \right\} )-\mathcal{R}(\theta) 
$$Dado que el término $y+Rk-g$ es constante, podemos prescindir de él en la función y además podemos expresarla como una minimización si cambiamos el signo.
$$
\min_{\mathrm{T}, \theta} z(\left\{ g+R_{b}(1-\theta)b+\frac{\epsilon \theta^2}{2} \right\} )+\mathcal{R}(\theta) 
$$
Si derivamos e igualamos a 0, llegamos a la condición de primer orden:
$$
-z'\left( g+R_{b}(1-\theta)b+\frac{\epsilon \theta^2}{2} \right) (R_{b}b-\epsilon \theta)+\mathcal{R}'(\theta)=0
$$
Tenemos expresiones para el costo de peso muerto del impuesto y de la inflación, así que podemos reemplazarlas y despejar un valor óptimo de $\theta^*$. El costo marginal del impuesto $z'(\mathrm{T})$ es constante, $\gamma$. El de la proporción de deuda repudiada es esa misma proporción $\theta$. Llegamos a:
$$
\gamma(\epsilon \theta^*-R_{b}b)+\theta^*=0
$$
$$
\gamma \epsilon \theta^*+\theta^*=\gamma R_{b}b
$$
$$
\theta^*=\frac{\gamma R_{b}b}{1+\gamma\epsilon}
$$
El gobierno enfrenta un trade-off entre obtener ingresos cobrando impuestos o repudiando deuda mediante inflación. En este modelo hay un feedback entre inflación e impuestos en tanto aumentar la porción repudiada $\theta$ de deuda reduce también los impuestos potencialmente obtenidos. Esa reducción sucede en la proporción $\epsilon$.

Si $\epsilon = 0$ entonces la proporción de deuda desestimada es $\gamma R_{b}b$, que la deuda a repagar y los intereses nominales en la proporción que un impuesto genera costos de eficiencia $\gamma$. Si $\epsilon > 0$ entonces se reduce el $\theta^*$ óptimo porque ya no solo reduce el peso de la deuda sino que también impacta la recaudación impositiva. Mientras mayor impacto tiene $\theta$ en los impuestos no recaudados (mayor es $\epsilon$) menor va a ser el valor óptimo $\theta^*$ que elija el gobierno.



```tikz

\begin{document}

\begin{tikzpicture}[domain=0:2]
    \draw[gray, very thin] (-0.5, -0.5) grid (5.2,5.2);
    
    % Draw axes
    \draw[thick, ->] (-0.2,0) -- (5,0) node[right] {$\theta$}; 
    \draw[thick, ->] (0,-1.2) -- (0,5) node[above] {$T$}; 
    
    % Plot the function T(theta)
    \draw[thick, color=black] plot (\x,{1 + 1.045*(1 - \x)*1 + 0.5*3*\x^2}) node[right] {$T=g+Rb+\frac{\epsilon \theta^2}{2}$}; 
    \draw[thick, red] (1.75,-1.2) -- (1.75,6) node[left] {$z'(\mathrm{T})=\frac{\theta}{R_b b - \epsilon \theta}$};
	\node at (1.75,0) [below] {$\theta^*$};
\end{tikzpicture}

\end{document}

```


# 1.b
El equilibrio sin compromiso lo hayamos mirando hacia atrás en el primer periodo cuando los agentes exigen una tasa nominal y se cumple la relación de Fisher $R=R_{b}(1-\theta)$. Reemplazamos en el óptimo que decide el gobierno.
$$
\theta=\frac{\gamma b}{1+\gamma\epsilon} \frac{R}{1-\theta}
$$
$$
\theta(1-\theta)=\frac{\gamma R b}{1+\gamma\epsilon}
$$
$$
\theta-\theta^2=\frac{\gamma R b}{1+\gamma\epsilon}
$$
# 1.c
Tenemos que analizar para qué valores de $\theta$ se cumple la ecucación cuadrática:
$$
\theta-\theta^2-\frac{\gamma R b}{1+\gamma\epsilon}=0
$$
Las soluciones van a estar dadas por
$$ \theta = \frac{1 \pm \sqrt{1 - \dfrac{4 \gamma R b}{1 + \gamma \epsilon}}}{2} $$
Hay dos soluciones si:
$$
1 - \dfrac{4 \gamma R b}{1 + \gamma \epsilon}>0
$$
Que se simplifica a
$$
\frac{1}{4}>\frac{\gamma R b}{1+\gamma\epsilon}
$$
Entonces no hay equilibrio si $\frac{1}{4}<\frac{\gamma R b}{1+\gamma\epsilon}$ y hay un único equilibrio si $\frac{1}{4}=\frac{\gamma R b}{1+\gamma\epsilon}$.

Cuando no hay equilibrio, $\frac{\gamma R b}{1+\gamma\epsilon}$ es demasiado grande (mayor a $1/4$), no hay valores de $\theta$ que satisfagan la ecuación. Esto ocurre si el stock de deuda $b$ real es muy alto o el retorno de los activos reales $k$ ($R$) es muy alto. En este caso, la tasa nominal exigida por los agentes es tan alta que no puede estabilizarse el balance del gobierno.

Cuando hay múltiples equilibrios, $\frac{\gamma R b}{1+\gamma\epsilon}$ es menor a 1/4 y la situación es más volátil. En este caso juegan un papel importante las expectativas, ya que puede coordinarse en el valor de $\theta$ mas extremo. Un equilibrio puede ser de \textbf{baja inflación} (poco impacto sobre la recaudación, pero con una mayor carga de la deuda) y el otro de \textbf{alta inflación} (reduce más la deuda, pero también erosiona la recaudación). Este escenario refleja un fenómeno de \textbf{expectativas autocumplidas}: las decisiones del gobierno y las expectativas de los agentes pueden converger a diferentes niveles de inflación, ambos compatibles con el equilibrio. Tener múltiples equilibrios puede ser problemático, ya que el gobierno podría caer en un equilibrio de alta inflación si no gestiona adecuadamente la política fiscal. Si las expectativas de inflación se coordinan en este equilibrio, es difícil salir de él, lo que puede llevar a una espiral inflacionaria.
