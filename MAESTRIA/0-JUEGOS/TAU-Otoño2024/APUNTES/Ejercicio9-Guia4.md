# A)
$$
\overbrace{\begin{matrix}
 & P  & N \\
P  & 2,2 & 0,\underline{5}  \\
N & \underline{5} ,0 & \underline{3} ,\underline{3} 
\end{matrix}}^{\text{Ciudad 1}}
\qquad 

\overbrace{\begin{matrix}
 & P  & N \\
P  & \underline{6} ,\underline{6}  & 1,0  \\
N & 0 ,1 & \underline{2} ,\underline{2} 
\end{matrix}}^{\text{Ciudad 2}}
$$
# B)
Para elegir ($P$,$P$)  en la ciudad 1, se tienen que castigar en el segundo periodo con una estrategia trigger, usando ($P$,$P$)  como premio  y ($N$,$N$) como castigo (en la segunda ciudad).  Por ejemplo, si el J1 no coordina en ($P$,$P$) en la primera ciudad, gana 5 (porque se desvia a $N$) y despues en la otra ciudad el jugador 2 coordina en el equilibrio ($N$,$N$) pero despues gana 2, entonecs gana 7. Si coordina en  ($P$,$P$) en la primera ciduad gana 2 y despues 6 porque lo premian con el equilibrio bueno y gana 8. Es lo mismo para ambos porque es simetrico.

# C)
El beneficio de cooperar es $2+\delta6$ y de desviarse es $5+\delta2$. Para cooperar debe ser $\delta \geq \frac{3}{4}$

# D)
Si. Por ejemplo, para el 1, en ($N$,$P$) gana 5 y el 2 gana 0. Despues hay dos equilibrios posibles, entonces se puede castigar con uno y premiar con otro. 
El 2 se quiere desviar en la ciudad 1 a $N$. Si al desviarse pasan al equilibrio malo en la ciudad 2, el jugador 2 gana 5 en total. Si no se desvia, gana 0 en la primer ciudad y 6 en la segunda. Entonces coordinan en ($N$,$P$) en la primer ciudad.

# E)
Si cooperan dan uno positivo ambos en la primer ciudad y en la segunda (como premio) y asi infinitamente.
$$
2+6\delta+2\delta ^{2} + 6 \delta ^{3} + \dots
$$
Porque en la primer ciudad gana 2, en la sgunda gana 6 cuando cooperan
Si se desvía, en el primer periodo gana 5. despues lo castigan y van al equilibrio en el que ganan 2 ambos. Y cuando vualven a la primer ciudad, juegan el equilibrio de Nash, no hay cooperación
$$
5+2\delta+3\delta ^{2}+2\delta ^{3}+\dots
$$
Entonces, el descuento cumple que 
$$
2+6\delta+2\delta ^{2} + 6 \delta ^{3} + \dots \geq 5+2\delta+3\delta ^{2}+2\delta ^{3} +\dots
$$
$$
6 \frac{\delta}{1-\delta ^{2}} + 2 \frac{1}{1-\delta ^{2}}  \geq 5 + 2 \frac{\delta}{1-\delta ^{2}} + 3 \frac{\delta ^{2}}{1-\delta ^{2}}
$$
$$
6\delta + 2  \geq 5(1-\delta ^{2}) + 2 \delta + 3 \delta ^{2}
$$
$$
4\delta \geq 3 - 2 \delta ^{2}
$$
$$
2\delta ^{2} + 4 \delta - 3 \geq 0
$$
Ahi hay que usar la resolvente: te da $-1+ \sqrt{ \frac{5}{2} }$

# F)
 *Tit for tat* (toma y daca)
(Estrategias del Jugador 1)
**Cooperar** = elegir siempre $P$

$$
\overbrace{\underbrace{ \begin{matrix}
 & P  & N \\
P  & \boxed{ 2,2} & 0,\underline{5}  \\
N & \underline{5} ,0 & \underline{3} ,\underline{3} 
\end{matrix} }_{ t=1 }}^{\text{Ciudad 1}}
\qquad 

\overbrace{\underbrace{ \begin{matrix}
 & P  & N \\
P  & \boxed{ \underline{6} ,\underline{6} } & 1,0  \\
N & 0 ,1 & \underline{2} ,\underline{2} 
\end{matrix} }_{ t=2 }}^{\text{Ciudad 2}}

\qquad 

\overbrace{\underbrace{ \begin{matrix}
 & P  & N \\
P  & \boxed{ 2,2} & 0,\underline{5}  \\
N & \underline{5} ,0 & \underline{3} ,\underline{3} 
\end{matrix} }_{ t=3 }}^{\text{Ciudad 1}}
\qquad 

\overbrace{\underbrace{ \begin{matrix}
 & P  & N \\
P  & \boxed{ \underline{6} ,\underline{6} } & 1,0  \\
N & 0 ,1 & \underline{2} ,\underline{2} 
\end{matrix} }_{ t=4 }}^{\text{Ciudad 2}}
\qquad 

\dots
$$

$$
U^{\text{coop}}=2+6\delta+2\delta ^{2}+2\delta ^{3}+\dots
$$


**Desvío** = El jugador 1 elige $N$ en el primer periodo y despues volver a cooperar en $t=2$ (elegir $P$ de vuelta). En $t=2$  el jugador 2 vio que en el periodo anterior hubo desvio y castiga eligiendo $N$. En el tercer periodo, el Jugador 2 vuelve a cooperar en $P$ pero el jugador 1 ve que el juador 2 eligio $N$ en el periodo anterior entonces él se desvía a $N$ y asi...

$$



\overbrace{\underbrace{ \begin{matrix}
 & P  & N \\
P  & 2,2& 0,\underline{5}  \\
N & \boxed{\underline{5} ,0} & \underline{3} ,\underline{3} 
\end{matrix} }_{ t=1 }}^{\text{Ciudad 1}}
\qquad 

\overbrace{\underbrace{ \begin{matrix}
 & P  & N \\
P  & \underline{6} ,\underline{6} & \boxed{1,0}  \\
N & 0 ,1 &\underline{2} ,\underline{2} 
\end{matrix} }_{ t=2 }}^{\text{Ciudad 2}}

\qquad 

\overbrace{\underbrace{ \begin{matrix}
 & P  & N \\
P  & 2,2& 0,\underline{5}  \\
N &\boxed{\underline{5} ,0} & \underline{3} ,\underline{3} 
\end{matrix} }_{ t=3 }}^{\text{Ciudad 1}}
\qquad 

\overbrace{\underbrace{ \begin{matrix}
 & P  & N \\
P  & \underline{6} ,\underline{6} & \boxed{1,0}  \\
N & 0 ,1 & \underline{2} ,\underline{2}
\end{matrix} }_{ t=4 }}^{\text{Ciudad 2}}
\qquad 

\dots
$$


$$
U^{\text{desvío}}  = 5 + 1 \delta + 5\delta ^{2} + \delta ^{3} + \dots
$$
Entonces la condicion para equilibrio de Nash:
$$
U^{\text{coop}} \geq U^{\text{desvío}}
$$
$$
2+6\delta+2\delta ^{2}+2\delta ^{3}+\dots \geq 5 + 1 \delta + 5\delta ^{2} + \delta ^{3} + \dots
$$
$$
2 \frac{1}{1-\delta ^{2}}  + 6 \frac{\delta}{1-\delta ^{2}} \geq 5 \frac{1}{1-\delta ^{2}} + \frac{\delta}{1-\delta ^{2}}
$$
$$
6\delta + 2 \geq 5 + \delta
$$
$$
5\delta \geq 3
$$
$$
\delta \geq \frac{3}{5}
$$
