$(A,B)$ is a bi-matrix game
$A$ es una matriz $m\times n$ de pagos del jugador 1
Juego de elección simultanea. Jugador 1 elige una fila $i$ y el jugador 2 elige una columna $j$. 
Pago del jugador 1 es $a_{ij}$. Para el jugador 2 es $b_{ij}$
Estrategia mixta $x$ del jugador 1 es un vector $m\times1$
$$
x=
\left( 
\begin{matrix}
x_{1} \\
x_{2} \\
\vdots \\
x_{m}
\end{matrix}
\right) 
$$
donde cada $x_{i}$ es la probabilidad de jugar la fila $i$. 
Estrategia mixta $y$ del jugador 2 es un vector $n\times1$
$$
y=
\left( 
\begin{matrix}
y_{1} \\
y_{2} \\
\vdots \\
y_{n}
\end{matrix}
\right) 
$$
donde cada $x_{i}$ es la probabilidad de jugar la fila $i$. 

El soporte de una estrategia mixta $x$ es el conjunto de estrategias puras que tienen probabilidad positiva.

$M$ es el conjunto de estrategias del jugador 1; $N$ es el conjunto de estrategias del jugador 1
Pago esperado de 1 $x^TAy$.

## BEST RESPONSE:
$x$ and $y$ are mixed strategies of player 1 and 2 respectively. $x$ is a best response  to $y$ if and only if for all $i \in M$ 
$$
x_{i}>0 \implies(Ay)_{i}=u=\max\{ (Ay)_{k}|k\in M \}
$$

Si un equilibrio de Nash es en mixtas, ambos tienen que estar jugando una mixta porque jugar pura tiene una pura correspondiente del otro jugador que es mejor respuesta. Cada jugador tiene que mezclar más de una de sus puras para que sea Nash en mixtas. 

## EJEMPLO

$$
A=
\left[
\begin{matrix}
3 & 3 \\
2 & 5 \\
0 & 6
\end{matrix}
\right] 
$$
$$
B=
\left[ 
\begin{matrix}
3 & 2 \\
2 & 6 \\
3 & 1
\end{matrix}
\right] 
$$
$A$, pagos del jugador 1; $B$ pagos del jugador 2
estrategias del jugador 1 $M=\{ 1,2,3 \}$
estrategias del jugador 2 $N=\{ 4,5 \}$

Para que haya un equilibrio en mixtas, ambos tienen que jugar mixtas.
J2 mezcla entre 4 y 5, siempre. Juega una mixta de la forma $y=(y_{1},y_{2})$
J2 tiene 4 posibilidades: mezclar entre las 3 o mezclar entre dos de los miembros de $M$. 

Posibilidades :

### J1 mezcla entre 1, 2
entonces elige $x^T=(x_{1},x_{2},0)$
y sabemos que el jugador 2 debe elegir una mixta $y=(y_{4},y_{5})$.
Para hallar $x$ hay que responder:
Cuál $x$ podemos elegir para que el jugador 2 juegue una mixta y no una pura. Con qué $x$ el jugador 2 está mejor respondiendo si juega una mixta en lugar de jugar de una pura? Cuando ninguna pura le da mayor pago que otra pura, puede jugar una mixta y estar mejor-respondiendo.

$(xB)_{1}$ es el pago que recibe el jugador 2 cuando juega la estrategia 1. o sea:$x^TBy$ cuando $y=(1,0)^T$

Entonces obtenemos el $x$ que $(x^TB)_{1}=(x^TB)_{2}$
$x_{1}3+x_{2}2=x_{1}2+x_{2}6$
sabemos que $x_{2}=1-x_{1}$ porque $x_{3}=0$
$x_{1}3+(1-x_{1})2=x_{1}2+(1-x_{1})6$
$3x+2-2x=2x+6-6x$
$3x-2x+6x-2x=+6-2$
$5x=4$
$x_{1}=\frac{4}{5}$
$x_{2}=\frac{1}{5}$

Por otro lado, cuando $x=(\frac{4}{5}, \frac{1}{5}, 0)$, estamos diciendo que al jugador 1 le conviene jugar una mixta. Cuando alguna pura en el soporte le da mayor utilidad que la otra, juega esa pura que le da mayor utilidad, entonces elige la mixta $x$ solo si $(1,0,0)Ay=(0,1,0)Ay$
$$
\begin{cases}
3y_{4}+3y_{5} = 2y_{4}+5y_{5}\\
y_{4}=1-y_{5}
\end{cases}
$$
$3(1-y_{5})+3y_{5} = 2(1-y_{5})+5y_{5}$
$3-3y_{5}+3y_{5} = 2-2y_{5}+5y_{5}$
$3 = 2+3y_{5}$
$\frac{1}{3}=y_{5}$
$\frac{2}{3}=y_{4}$


Los pagos en el perfil $\left( \left( \frac{4}{5}, \frac{1}{5} , 0 \right), \left(  \frac{2}{3}, \frac{1}{3}  \right) \right)$

son para el jugador 1 son 3. Mientras que los pagos de las puras, $Ay$, son$(3,3,2)^T$. Entonces está mejor respondiendo. Además, sabemos que en ese perfil, donde el jugador dos juega con esa mixta $y$, ninguna otra mixta entre 1 y 2 le da mejores pagos, porque sabemos  que es el $y$ que lo hace indiferente entre sus puras. El equilibrio no puede ser en otra mixta $x$ porque en otra mixta, dada esa $y$ el jugador, el jugador 1 prefiere alguna pura y no esa otra mixta 

Para el jugador 2. las puras le dan el pago $x^TB=(2.8, 2.8)$ y el perfil le da 2.8, por definición. Osea que es su mejor respuesta. Por como lo definimos, en ese perfil dado que el jugador 1 juega ese $x$ está indiferente entre sus puras. No puede haber otra mixta mejor porque en cualquier otra mixta dado $x$ una pura le da mayor utilidad que otra mixta.

$msNE=\left( \left( \frac{4}{5}, \frac{1}{5} , 0 \right), \left(  \frac{2}{3}, \frac{1}{3}  \right) \right)$

### J1 mezcla entre 2, 3
ahora tenemos $y^T=(y_{4},y_{5})$
y $x^T=(0,x_{1},x_{2})$
para encontrar $x$ hay que encontrar para cuáles $y$ el jugador 2 está indiferente entre las dos puras que podría jugar.
$x=\left( 0, \frac{1}{3}, \frac{2}{3} \right)$
es la estrategia mixta del jugador 1 para la cual el pago esperado de jugar la estrategia pura $y^T=(1,0)$, $x^TB(1,0)^T$, es igual al pago esperado de jugar la estrategia pura $y^T=(0,1)$ , $x^TB(0,1)^T$

Luego para encontrar los $y^T=(y_{4},y_{5})$, hay que ir al revés. Cuales valores $y^T$ hacen que el pago esperado del jugador 1 al jugar la pura 2 $(0,1,0)Ay$
le de el mismo pago que jugar la estrategia pura 3:  $(0,0,1)Ay$. Para cuales valores de y el jugador 1 no prefiere jugar una pura, porque necesitamos que juegue la mixta $x$. 

$$
\begin{cases}
2y_{4}+5y_{5}=6y_{5} \\
y_{5}+y_{4}=1
\end{cases}
$$
$2y_{4}+5(1-y_{4})=6(1-y_{4})$
$2y_{4}+5-5y_{4}=6-6y_{4}$
$y_{4}=\frac{1}{3}$
$y_{5}=\frac{2}{3}$

en el perfil $\left( \left( 0, \frac{1}{3}, \frac{2}{3} \right), \left( \frac{1}{3}, \frac{2}{3} \right) \right)$. Deberían estar mejor respondiendo: 
$x^TAy=4$
$x^TBy=\frac{8}{3}$

$Ay=(3,4,4)^T$
$x^TB=(\frac{8}{3}, \frac{8}{3})$

$msNE=\left( \left( 0, \frac{1}{3}, \frac{2}{3} \right), \left( \frac{1}{3}, \frac{2}{3} \right) \right)$

### J1 mezcla entre 1, 3
ahora si elige $x=(x_{1}, 0, x_{3})$
para encontrar $x$, y que se cumpla que ambos juegan mixtas, necesitamos que sea una mixta $x$ tal que el jugador 2 esté indiferente entre sus puras, porque si fuera así jugaríamos puras. ya que todas las puras tiene mejor respuesta en puras


### J1 mezcla entre 1, 2, 3
