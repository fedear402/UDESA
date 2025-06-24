Todos los problemas de sesgo son de variables omitidas, (Heckman) Correcciones de sesgo siempre implican costos en terminos de varianza.
# Datos en paneles
Solucionar sesgo sin agregar variables pero agregar varianza.

$$
y_{it} = x_{it}'\beta+ \underbrace{(\mu_{i}+\delta_{t}+\epsilon_{it})}_{\mu_{it} \text{ : Error}} 
$$
Sin pérdida de generalidad, por el teorema de FWL: $\delta _{t}=0$ es lo mismo. Queda el modelo:
$$
y_{it} = x_{it}'\beta+\mu_{i}+\epsilon_{it}
$$
Efectos fijos: más un método que un modelo. Estimador de efectos fijos. En otras disciplinas tiene setido hablar de modelo, pero acá no. Estima $\beta, \mu _{i}$ como parametros: $K+N$ estimados: ahora tenes más. Observaciones: $NT$, más grande y permite estimar $K+N$.
$$
y_{it} = \mu _{i}+\beta_{1}+ \beta_{2} x_{2,it} + \dots + \beta_{K}x_{K}+ \epsilon_{it}
$$
Ahora con paneles se pueden estimar los $\mu _{i}$. Con el modelo en corte transversal, solo tenes $N$ observaciones y no podrías estimar $N+1$ parámetros. Regresar $y$ en $x$, y $N$ variables binarias adicionales.
Para representarlo como matrices:
$$
Y=X\beta+D\mu+u
$$
$$ 
1_{N}=\begin{bmatrix}
1 \\
1 \\
. \\
1
\end{bmatrix}
\qquad
D=
\begin{bmatrix}
1_{N} & 0 & \dots & 0 \\
0 & 1_{N} & 0 & \vdots \\
\vdots  & \vdots  & \ddots & \vdots \\
0 & 0 & \dots & 1_{N}
\end{bmatrix}_{NT \times N}
$$
La estructura de los datos va a quedar:
$$
\begin{matrix} \\
i &  t & Y_{it}  &  D_{i=1}&  D_{i=2}  & \dots  & D_{i=N} \\
1 & 1 & a & 1 & 0  & \dots  & 0 \\
1 & 2 & b & 1 & 0 & \dots & 0\\
1 & 3 & c & 1 & 0 & \dots & 0\\
2 & 1 & d & 0 & 1 & \dots & 0\\
2 & 1 & e & 0 & 1 & \dots & 0\\
2 & 1 & f & 0 & 1 & \dots& 0
\end{matrix}
$$
Least Squares Dummy Variables: agrega dummies por cada intercepto $\mu _{i}$ que estas estimando. Problema de Parámetros _ : si aumenta la cantiadd de observaciones aumentan los parámetros:
$$
Y=X\beta+D\mu+u= \dot{X}\delta+u = [X \quad D] \begin{bmatrix}
\beta' \\
\mu'
\end{bmatrix}+u
$$
Estimador es:
$$
\hat{\delta}_{EF} = \begin{pmatrix}
\hat{\beta}_{EF} \\
\hat{\mu}_{EF}
\end{pmatrix}
=(\dot{X}'\dot{X})^{-1} \dot{X}'Y
$$
## Within
Por FWL:
$$
\hat{\beta}= (X^{*'}X^*)^{-1} X^{*'} Y^{*}
$$
Regresar $X$ en las binarias y tomar residuos, regresar $y$ en las binarias y tomar residuos:
$$
\text{Transformación Within:} \qquad X_{it}^*= X_{it}- \bar{X}_{i}
$$
Controlar por efectos fijos es lo mismo que reexpresar las variables como diferencias respecto de sus medias individuales. Estimador de EF es insesgado, no importa si $X$ está correlacionada con $D$. Al controlar por $X_{1}, X_{2}$, si la correlación no es perfecta, ya no te importa la correlación entre ambos porque no lo estás omitiendo. Entonces es como controlas por $D$ la correlación entre ambos no afecta. Esto elimina **cualquier** variable no observada que varía entre individuos, porque netea todos los efectos individuales.
El estimador solo tiene sentido incluirlo si las variables omitidas no varian en el tiempo. Sino, solo te genera problemas.


# Teoría Asintótica
Muestras grandes para aproximar. Dejar de hablar de insesgadez o ineficiencia. Propiedades de funciones continuas que no tienen los problemas de la esperanza por ejemplo. Pero tienen requerimiento sobre información. Valen cuando la muestra tiende a infinito.
Converge a prob constante no aleatoria si :
$$
\lim_{ n \to \infty } P\left( |z_{n}-a|>\epsilon \right) = 0
$$
Eso es un límite de una suceción de números reales. 
Sucesión $\{ z_{n} \}$ de variables aleatorias con CDF $F_{n}$ convegen a un número con CDF $F$:
$$
\lim_{ n \to \infty } F_{n}(z)= F(z)
$$
