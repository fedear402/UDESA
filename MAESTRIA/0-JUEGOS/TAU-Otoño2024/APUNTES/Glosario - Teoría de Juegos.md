En este documento dejamos escritos algunos conceptos que estuvieron viendo, para que les sirva como referencia.
# Juegos
En la materia vamos a analizar **juegos**. ¿Qué es un juego? Decimos que estamos en presencia de un juego si existe **interacción estratégica** entre dos o más personas (**jugadores**). Para ilustrar ese concepto podés pensar que estás jugando "piedra, papel o tijera" contra otra persona: vos no sabes si vas a ganar o perder cuando decidís usar piedra papel o tijera, si ganás o no depende de lo que vaya a decidir la otra persona. Que tu resultado (si ganás o no) dependa de lo que hace el otro es un ejemplo de **interacción estratégica**. Para tomar tu decisión vas a considerar qué pasaría si el otro elige piedra, si elige papel o si elige tijera. 

Estos son los componentes de un juego que debemos poder identificar:
- **Jugadores**: necesitamos como mínimo dos personas interactuando estratégicamente para que haya un juego. No hay máximo: pueden haber juegos con infinitos jugadores.
- **Reglas**: Todos los juegos tienen reglas y un supuesto importante es que todos los jugadores conocen las reglas del juego que juegan (están todos en la misma página).
	- Orden: Esto responde ¿quién juega primero, quién juega después? ¿Juegan al mismo tiempo? Si juegan al mismo tiempo en un solo momento, tenemos juegos **simultáneos**. Por otro lado, si juega primero uno y después el otro, y las decisiones tomadas antes afectan las posteriores, es un juego **secuencial**. Estos últimos los vamos a analizar más adelante.
	- Timing: Esto se refiere a cuánto tiempo puede pasar entre decisiones y cuánto puede durar un juego. Si pasa mucho tiempo entre decisiones, los jugadores pueden querer descontar el futuro. Además puede haber juegos que duran para siempre y los vamos a ver más adelante.
	- Elecciones: cada jugador tiene un cierto grupo de posibles **acciones** que puede tomar, estas son sus **estrategias**.
	- Información: Esto se refiere a qué sabe cada jugador en cada momento del juego. El ajedrez es un juego de información perfecta, porque en todo momento sabés que decisiones tomó el oponente y **sabés qué decisiones puede tomar de ese momento en adelante**, sus estrategias. Otros juegos consisten de información imperfecta, como el póker, ya que no sabés qué cartas tiene el otro y por ende qué opciones de acción tiene y qué trayectoria puede tomar el juego a partir de un momento dado.
- **Resultados**: Con esto nos referimos a las posibles finales del juego (si es un juego finito) y las condiciones que tiene cada jugador al terminarse.
- **Pagos**: En cada resultado, los jugadores tienen pagos, o **utilidades**, que determinan qué estrategias va a preferir un jugador cuando sea su turno de elegir. Estas utilidades son números reales que podemos comparar. Decimos que los jugadores eligen la estrategia que le garantiza un mejor pago, el número más alto.

# Algunas definiciones
Ahora vamos a usar un ejemplo de la guía (G1.2a, el dilema del prisionero). Cuando el **orden** del juego es **simultáneo**, podemos representar el juego en **forma normal**. Un ejemplo de forma normal es esta matriz $2\times2$:
$$
\begin{matrix}
 & A & B \\
X & 2,2 & 0,3 \\
Y & 3,0 & 1,1 
\end{matrix}
$$
La forma normal va a ser una matriz de cualquier tamaño para 2 jugadores, $n \times m$, si el jugador 1 tiene $n$ estrategias que puede elegir y el 2 tiene $m$ estrategias.
### Espacio de estrategias
¿Cómo se lee esto? En el nombre de las filas tenemos las estrategias del jugador 1 (una es $X$ y la otra es $Y$), y en las columnas las del jugador 2 ($A$ y $B$). Para describir todas las estrategias de un jugador, hablamos de su **espacio de estrategias**. La notación del espacio de estrategias es la siguiente: para el jugador 1, le llamamos $S_{1}=\{ X, Y \}$; para el jugador 2, $S_{2}=\{ A, B \}$. 
### Perfil de estrategias
En la matriz tenemos todas las interacciones estratégicas de los jugadores, todas las combinaciones de estrategias de ambos. Cada una de estas combinaciones es un **perfil de estrategias**. Por ejemplo el perfil $(X,A)$, es la situación en la que el jugador 1 elige X y el 2 elige $A$. Es importante el orden en esta notación: primero anotamos la estrategia del primer jugador y luego la del segundo. Ejemplo de un perfil de estrategias: $(\underbrace{X}_{\text{jugador 1}},\underbrace{A}_{\text{jugador 2}})$. Este juego tiene 4 perfiles de estrategias.
### Utilidades
Por último, en cada celda de la matriz tenemos las **utilidades** de ambos jugadores. En la primer celda, la que corresponde al perfil $(X,A)$. Tenemos los pagos de cada jugador en esa situación: $(\underbrace{2}_{\text{Utilidad J1}},\underbrace{2}_{\text{Utilidad J2}})$. La forma en la que escribimos esto es: 
$$
U_{1}(X,A) = 2
$$
$$
U_{2}(X,A) = 2
$$
Esta notación nos indica la utilidad $U$ del jugador en el subíndice para el perfil de estrategias en paréntesis.  Veamos el perfil a la derecha de ese,  $(\underbrace{X}_{\text{jugador 1}},\underbrace{B}_{\text{jugador 2}})$, tiene los pagos asociados  $(\underbrace{0}_{\text{Utilidad J1}},\underbrace{3}_{\text{Utilidad J2}})$. Entonces la notación sería:

$$
U_{1}(X,B) = 0
$$
$$
U_{2}(X,B) = 3
$$
### Cómo analizar el juego
Pasamos a analizar el comportamiento de los jugadores. A los jugadores les importan sus propios pagos, no los del otro, entonces miran su elemento correspondiente en la matriz de pagos. Cada jugador hace este análisis: fijando una estrategia del otro jugador, ¿qué me conviene?. Por ejemplo, acá marcamos en azul las estrategias y los pagos del jugador 2:
$$
\begin{matrix}
 & \color{#0063a8}{A} & \color{#0063a8}{B} \\
X & 2,\color{#0063a8}{2} & 0,\color{#0063a8}{3} \\
Y & 3,\color{#0063a8}{0} & 1,\color{#0063a8}{1}
\end{matrix}
$$
En realidad esta es la perspectiva del jugador 2, porque los pagos del jugador 1 no le importan:
$$
\begin{matrix}
 & \color{#0063a8}{A} & \color{#0063a8}{B} \\
X & \color{#0063a8}{2} & \color{#0063a8}{3} \\
Y & \color{#0063a8}{0} & \color{#0063a8}{1}
\end{matrix}
$$
El jugador 2 dice: si mi oponente elige X, me conviene elegir B, porque mi pago es 3 en ese caso y 2 si elijo A. Si mi oponente elige Y, prefiero elegir B, porque mi pago es 1 si elijo B y 0 si elijo A. Ahora subrayamos el pago de la estrategia que le conviene al 2 en cada situación posible (estrategias del 1):
$$
\begin{matrix}
 & \color{#0063a8}{A} & \color{#0063a8}{B} \\
X & 2,\color{#0063a8}{2} & 0,\color{#0063a8}{\underline{ 3 }} \\
Y & 3,\color{#0063a8}{0} & 1,\color{#0063a8}{\underline{ 1 }}
\end{matrix}
$$
El jugador 1 realiza el mismo razonamiento: si mi oponente elige A, me conviene elegir Y, porque mi pago es 3 en ese caso y 2 si elijo X. Si mi oponente elige B, prefiero elegirY, porque mi pago es 1 si elijo B y 0 si elijo X. Subrayamos el pago en esa decisión:
$$
\begin{matrix}
 & \color{#0063a8}{A} & \color{#0063a8}{B} \\
X & 2,\color{#0063a8}{2} & 0,\color{#0063a8}{\underline{ 3 }} \\
Y & \underline{ 3 },\color{#0063a8}{0} & \underline{ 1 },\color{#0063a8}{\underline{ 1 }}
\end{matrix}
$$
# Dominancia estricta
En el análisis que hicimos del dilema del prisionero podemos ver que el jugador 1 siempre prefiere la estrategia $Y$, no importa la decisión que tome el jugador 2. Si el 2 elige $A$, el 1 elige $Y$; si el 2 elige $B$, el 1 también elige $Y$. Para **todas** las estrategias del oponente, hay una de mis estrategias que siempre me conviene: es una estrategia dominante. 
Visto de otra forma: para todas las estrategias del oponente, nunca le conviene elegir $X$, por lo que $X$ está dominada. Más formalmente:
Para el jugador 1, cuando el otro juega $A$, la utilidad de jugar $Y$ es mayor que la de jugar $X$.
$$
U_{1}(Y,A)>U_{1}(X,A) 
$$
Para el jugador 1, cuando el otro juega $B$, la utilidad de jugar $Y$ es mayor que la de jugar $X$.
$$
U_{1}(Y,B)>U_{1}(X,B) 
$$
Ya con eso consideramos todas las estrategias del jugador 2. Entonces, si podemos mostrar que estas desigualdades se cumplen para **todas** las estrategias del oponente, entones confirmamos la dominancia de la estrategia. 
Pueden realizar el mismo análisis para el jugador 2: Siempre prefiere jugar $B$ antes que $A$. Esto nos lleva a una propiedad del perfil $(Y,B)$, en el que ambos están jugando su estrategias dominante: lo llamamos un **equilibrio en estrategias dominantes**. Esta situación es estable: bajo ningún término quieren cambiar de estrategia; nunca les conviene.
# Dominancia débil
Consideremos otro juego, muy parecido al anterior:
$$
\begin{matrix}
 & A & B \\
X & 3,2 & 0,3 \\
Y & 3,0 & 1,1 
\end{matrix}
$$
Lo único que cambiamos es que en el perfil $(X,A)$ los pagos son $(3,2)$ en lugar de $(2,2)$. ¿Qué decisión toma el jugador 1 cuando el jugador 2 elige A? Si elige $X$ su utilidad es $3$ y si elige $Y$ su utilidad también es $3$; en esta situación decimos que está **indiferente** entre sus dos estrategias. Se da esta situación:
La utilidad el 1, cuando el otro juega $A$, es la misma si elige $Y$ o si elige $X$. 
$$
U_{1}(Y,A)=U_{1}(X,A) 
$$
En la matriz, podemos subrayar ambos pagos, porque le dan lo mismo, los dos podrían ser elegidos
$$
\begin{matrix}
 & \color{#0063a8}{A} & \color{#0063a8}{B} \\
X & \underline{ 3 },\color{#0063a8}{2} & 0,\color{#0063a8}{\underline{ 3 }} \\
Y & \underline{ 3 },\color{#0063a8}{0} & \underline{ 1 },\color{#0063a8}{\underline{ 1 }}
\end{matrix}
$$
Pero ahora, ¿sigue siendo $Y$ una estrategia dominante? Veamos:
Para el jugador 1, cuando el otro juega $A$, la utilidad de jugar $Y$ es igual que la de jugar $X$.
$$
U_{1}(Y,A)=U_{1}(X,A) 
$$
Para el jugador 1, cuando el otro juega $B$, la utilidad de jugar $Y$ es mayor que la de jugar $X$.
$$
U_{1}(Y,B)>U_{1}(X,B) 
$$
Jugando $Y$ está **por lo menos tan bien o mejor** que jugando $X$ (¡¡pero nunca peor!!). En esta situación decimos que $Y$ domina débilmente a $X$.
# Eliminación Iterada de Estrategias Dominadas
Asumimos que los jugadores son racionales (elige lo que le da un mejor pago), eso implica que saben que sus oponentes son racionales. Un jugador racional nunca juega una estrategia dominada, porque le da menores pagos siempre, y el otro jugador lo sabe. Decimos que esa estrategia **no es racionalizable**. Bajo este supuesto de racionalidad nunca se juega. 
En el dilema del prisionero de antes, $X$ está dominada para el jugador 1, entonces la eliminamos:
El juego era
$$
\begin{matrix}
 & A & B \\
X & 3,2 & 0,3 \\
Y & 3,0 & 1,1 
\end{matrix}
$$
Y queda:
$$
\begin{matrix}
 & A & B \\
Y & 3,0 & 1,1 
\end{matrix}
$$
Sabíamos que $B$ domina a $A$: entonces eliminamos la estrategia que los jugadores racionales nunca consideran:
$$
\begin{matrix}
   & B \\
Y  & 1,1 
\end{matrix}
$$
En este punto no queda nada por eliminar: el perfil $(Y,B)$ es el **conjunto de estrategias racionalizables** del juego:
$$
R=\{  (Y,B) \}
$$
# Equilibrio de Nash
Ya conocemos el concepto de **equilibrio en estrategias dominantes**. Lo que caracterizaba a esos perfiles es que ambos están eligiendo una estrategia dominante, siempre ganan más eligiendo esa estrategia que si cambian a otra. El concepto de **equilibrio de Nash** es similar: es un perfil en el que ambos están eligiendo su **mejor respuesta** a la estrategia del otro jugador; en ese perfil, ninguno quisiera cambiar de estrategia porque, fijando la estrategia del otro, están obteniendo los mejores pagos que pueden obtener.
Un **equilibrio en estrategias dominantes** siempre es un **equilibrio de Nash**, pero para que sea equilibrio de Nash no deben ser estrategias dominantes. Veamos este juego (G1.2b):
$$
\begin{matrix}
 & A & B \\
X & 2,1 & 0,0 \\
Y & 0,0 & 1,2 
\end{matrix}
$$
Si analizamos el comportamiento, llegamos a ver que:
$$
\begin{matrix}
 & A & B \\
X & \underline{ 2 },\underline{ 1 } & 0,0 \\
Y & 0,0 & \underline{ 1 },\underline{ 2 } 
\end{matrix}
$$
Notamos que no hay estrategias dominadas ni dominantes para ninguno de los dos. Para el primer jugador:
$$
U_{1}(Y,A)<U_{1}(X,A) 
$$
$$
U_{1}(Y,B)>U_{1}(X,B) 
$$
Para una estrategia del oponente elige una cosa, pero para otra estrategia del oponente elige una cosa distinta: ninguna domina; ninguna es siempre mejor. Pero tenemos un equilibrio de Nash, por ejemplo, en el perfil $(X,A)$: El jugador 1 está eligiendo la estrategia que le da mejor pago (si se cambia, está peor) y el jugador 2 tampoco quiere cambiar, está eligiendo lo que le da mayor pago. La misma situación ocurre en el perfil $(Y,B)$. Decimos que los equilibrios de Nash son estos perfiles:
$$
NE=\{ (X,A), (Y,B) \}
$$
Y si fuera indiferente, ¿sigue siendo un equilibrio de Nash?. Por ejemplo:
$$
\begin{matrix}
 & A & B \\
X & \underline{ 2 },\underline{ 1 } & 0,0 \\
Y & \underline{ 2 },0 & \underline{ 1 },\underline{ 2 } 
\end{matrix}
$$
En este caso $(X,A)$ sigue siendo uno de los dos equilibrios de Nash y el conjunto sigue siendo $NE=\{ (X,A), (Y,B) \}$. Aunque sea indiferente entre dos estrategias, lo importante es que sigue siendo una mejor respuesta. Es una **mejor respuesta** a lo que hace el otro si no existe otra estrategia en la que estaría mejor (estando fija la estrategia del otro!).  $\boxed{\text{Un perfil es un equilibrio de Nash si ambos están eligiendo su mejor respuesta.}}$
