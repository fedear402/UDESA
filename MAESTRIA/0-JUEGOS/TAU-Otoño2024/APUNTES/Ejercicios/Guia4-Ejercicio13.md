$$
\begin{matrix}
 & 5\% & 8\%  & 10\% \\
6\% &0,0  & 2,\underline{1}  & 6,-1 \\
8\%  & \underline{1} ,2 & \underline{3} ,\underline{3}  & \underline{7} ,-1\\
10\% & -2,\underline{7}  & 1,6 & 5,5
\end{matrix}
$$
La cooperacion es en (10%,10%) donde ambos ganan 5, la clave es que se quieren desviar a lugares distintos y eso le da pagos diferentes al otro (el juego no es simétrico. Lo importante es : toma y daca es copiar lo que hizo el otro jugador en el periodo anterior, eso es asi siempre.

TOMA Y DACA es asi (si vemos el caso que J1 se desvia):
- Jugador 1 se desvia en t=1 y elige 8% que es su mejor respuesta y vuelve a la estrategia de cooperación (10% en este caso); el Jugador 2 estaba cooperando en 10%
- Jugador 1 **vuelve** a la estrategia de cooperación, 10% (estaría copiando lo que hizo el 2 antes) pero el jugador 2 elige 8% (porque **copia** lo que hizo el otro).

La secuencia es asi (con cuadrado los pagos del perfil que se juega):
$$
\underbrace{ 
\begin{matrix}
 & 5\% & 8\%  & 10\% \\
6\% &0,0  & 2,\underline{1}  & 6,-1 \\
8\%  & \underline{1} ,2 & \underline{3} ,\underline{3}  & \boxed{\underline{7} ,-1}\\
10\% & -2,\underline{7}  & 1,6 & 5,5
\end{matrix}
}_{ t=1 }
\qquad 

\underbrace{ 
\begin{matrix}
 & 5\% & 8\%  & 10\% \\
6\% &0,0  & 2,\underline{1}  & 6,-1 \\
8\%  & \underline{1} ,2 & \underline{3} ,\underline{3}  & \underline{7} ,-1\\
10\% & -2,\underline{7}  & \boxed{1,6} & 5,5
\end{matrix}
}_{ t=2 }

\qquad 

\underbrace{ 
\begin{matrix}
 & 5\% & 8\%  & 10\% \\
6\% &0,0  & 2,\underline{1}  & 6,-1 \\
8\%  & \underline{1} ,2 & \underline{3} ,\underline{3}  &  \boxed{\underline{7} ,-1}\\
10\% & -2,\underline{7}  & 1,6 & 5,5
\end{matrix}
}_{ t=3 }
\qquad 
\underbrace{ 
\begin{matrix}
 & 5\% & 8\%  & 10\% \\
6\% &0,0  & 2,\underline{1}  & 6,-1 \\
8\%  & \underline{1} ,2 & \underline{3} ,\underline{3}  & \underline{7} ,-1\\
10\% & -2,\underline{7}  & \boxed{1,6} & 5,5
\end{matrix}
}_{ t=4 }
\qquad 

\dots
$$
Entones te queda, **para el jugador 1**:
COOPERACIÓN: Juegan siempre 10% y ganar 5, el pago es $5 \frac{1}{1-\delta_{1}}$
DESVIO: $7 + \delta_{1} + 7 \delta_{1} ^{2} + \delta_{1} ^{3} + \dots$ ( se ve en las matrices, gana 7, despues 1, despues 7 ya si )
$$
5 \frac{1}{1-\delta_{1}} \geq  7 \frac{1}{1-\delta_{1} ^{2}} + \frac{\delta_{1}}{1-\delta_{1} ^{2}}
$$
Y de ahi sale, despejas $\delta_{1}$:
$$
\delta_{1}(1+\delta_{1}) \geq 7 + \delta_{1}
$$
$$
\delta_{1} \geq \frac{1}{2}
$$
Lo que hay que tener en cuenta (que a veces causan confusion): 
- El juego no es simétrico, entonces ahi tenes que darte cuenta que probablemente sean factores de descuento distintos y los incentivos sean distintos.
- Cuando vemos los desvios, hay que ver que pasa cuando se desvía alguno de los jugadores y chequeamos que pasa con los pagos de **ese** jugador. 

Ahora veamos si se desvia el Jugador 2. La logica es la misma, el 2 se quiere desviar a 5%, entonces en el siguiente periodo, cuando vuelve a cooperar el 2, el 1 lo copia y juega 10%. Y así. La secuencia seria algo asi:
$$
\underbrace{ 
\begin{matrix}
 & 5\% & 8\%  & 10\% \\
6\% &0,0  & 2,\underline{1}  & 6,-1 \\
8\%  & \underline{1} ,2 & \underline{3} ,\underline{3}  & \underline{7} ,-1\\
10\% & \boxed{-2,\underline{7}}  & 1,6 & 5,5
\end{matrix}
}_{ t=1 }
\qquad 

\underbrace{ 
\begin{matrix}
 & 5\% & 8\%  & 10\% \\
6\% &0,0  & 2,\underline{1}  &\boxed{ 6,-1} \\
8\%  & \underline{1} ,2 & \underline{3} ,\underline{3}  & \underline{7} ,-1\\
10\% & -2,\underline{7}  & 1,6 & 5,5
\end{matrix}
}_{ t=2 }

\qquad 

\underbrace{ 
\begin{matrix}
 & 5\% & 8\%  & 10\% \\
6\% &0,0  & 2,\underline{1}  & 6,-1 \\
8\%  & \underline{1} ,2 & \underline{3} ,\underline{3}  & \underline{7} ,-1\\
10\% & \boxed{-2,\underline{7}}  & 1,6 & 5,5
\end{matrix}
}_{ t=3 }
\qquad 
\underbrace{ 
\begin{matrix}
 & 5\% & 8\%  & 10\% \\
6\% &0,0  & 2,\underline{1}  &\boxed{ 6,-1} \\
8\%  & \underline{1} ,2 & \underline{3} ,\underline{3}  & \underline{7} ,-1\\
10\% & -2,\underline{7}  & 1,6 & 5,5
\end{matrix}
}_{ t=4 }
\qquad 

\dots
$$
Y para los desvios es exactamente lo mismo, vemos los pagos (ahora del **2**!) que alterna entre ganar 7 y ganar -1

$$
5 \frac{1}{1-\delta_{2}} \geq  7 \frac{1}{1-\delta_{2} ^{2}} + (-1) \frac{\delta_{1}}{1-\delta_{2} ^{2}} 
$$
$$
5(1+\delta_{2} )\geq 7-\delta_{2}
$$
$$
5+5\delta_{2} \geq 7 - \delta_{2}
$$
$$
6 \delta_{2} \geq 7-5
$$
$$
\delta_{2} \geq \frac{5}{6}
$$
