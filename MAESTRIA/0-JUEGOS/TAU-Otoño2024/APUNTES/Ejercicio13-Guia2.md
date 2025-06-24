Jugadores : $ER$, $SJ$
$S=\{ A=\text{empate}, C=\text{competir} \}$
$P(\text{Ganar})=\frac{1}{2}$
#### CASO a)
$U(\text{Perder})=0<U(\text{Ganar Empatando}) = U(\text{Ganar Solo} )$

(es simétrico, los pagos del otro jugador son los mismos pero traspuestos)
$$
\text{PAGOS DEL JUGADOR ER:}
$$
$$
\begin{matrix}
ER,SJ & A & C  \\
A  & U(\text{Ganar Empatando})  & U(\text{Perder})=0  \\
C & U(\text{Ganar Solo} ) & \frac{1}{2}U(\text{Ganar Solo} )
\end{matrix}
$$
Si el jugador ER elige competir y el otro elige empatar, gana el jugador ER con seguridad. Si elige competir y el otro también elige competir, gana con probabilidad $\frac{1}{2}$.
$$
\begin{matrix}
ER,SJ & A & C  \\
A  & \underline{Empate}, \underline{Empate}  & Perder, \underline{Ganar Solo}  \\
C & \underline{GanarSolo}, Perder & \underline{\frac{1}{2}GanarSolo},\underline{\frac{1}{2}GanarSolo}
\end{matrix}
$$
Hay dos equilibrios $EN=\{ (A,A), (C,C) \}$
Con numeros:
$U(\text{Perder})<U(\text{Ganar Empatando}) = U(\text{Ganar Solo} )$
$0\qquad\qquad<\qquad\qquad1\qquad\qquad\quad=\qquad\qquad1$
$$
\begin{matrix}
ER,SJ & A & C  \\
A  & \underline{1}, \underline{1}  & 0, \underline{1}  \\
C & \underline{1}, 0 & \underline{\frac{1}{2}\times 1},\underline{\frac{1}{2}\times 1}
\end{matrix}
$$
Hay dominancia debil

Mixtas (intuitivamente, el 1 ya esta indiferente entre sus puras entonces no hay equilibrio en mixtas, porque siempre prefiere una pura):
Si el 2 juega $\sigma_{2}=(q,1-q)$
Para que sea indiferente entre sus puras tiene darse:
$q=q+(1-q) \frac{1}{2} \implies q=1$
Como se va a cumplir para ambos, los equilibrios son  $EN=\{ (A,A), (C,C) \}$. Solo pueden estar jugando puras en equilibrio.

#### CASO b)
Con numeros:
$U(\text{Perder})<U(\text{Ganar Empatando}) < U(\text{Ganar Solo} )$
$0\qquad\qquad<\qquad\qquad1\qquad\qquad\quad<\qquad\qquad2$
$$
\begin{matrix}
ER,SJ & A & C  \\
A  & 1, 1  & 0, \underline{2}  \\
C & \underline{2}, 0 & \underline{\frac{1}{2}\times 2},\underline{\frac{1}{2}\times 2}
\end{matrix}
$$
$EN=\{ (C,C) \}$
Hay dominancia estricta
#### CASO c)
Con numeros:
$U(\text{Perder})<U(\text{Ganar Empatando}) < U(\text{Ganar Solo} )$
$0\qquad\qquad<\qquad\qquad1\qquad\qquad\quad<\qquad\qquad2$
$$
\begin{matrix}
ER,SJ & A & C  \\
A  & \underline{1}, \underline{1}  & \underline{1} , \underline{1}  \\
C & \underline{1}, \underline{1}  & \underline{\frac{1}{2}\times 2},\underline{\frac{1}{2}\times 2}
\end{matrix}
$$
$EN=\{ (C,C), (A,C), (C,A), (A,A) \}$
No hay dominancia (ninguna estrategia le da mejores pagos que otra)

