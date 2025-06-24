La situación es esta:
$$
\begin{matrix}
\text{esquina} & 1 & 2 & 3 & 4 & 5 \\
\text{compradores} & 50 & 60 & 10 & 10 & 80
\end{matrix}
$$
Las estrategias del vendedor son las esquinas donde ponerse a vender. $S_{i}=\{ 1,2,3,4,5 \}$. Hay en total 210 compradores.
Para hacer la matriz hay que ir viendo cuanto gana uno dado el lugar donde se pone el otro. 
Si los dos se ponen en la esquina (1,1), entonces a todos a los consumidores les quedan a la misma distancia. Como nos dice que se reparten cuando les queda a la misma distancia, entonces los 210 compradores se dividen a la mitad entre los dos. como: 105 a cada uno de los vendedores. Como cada consumidor paga 2\$, lo que ganan ambos jugadores es $105 \times 2\$=210$. En todos los perfiles en los que ambos eligen la misma esquina va a pasar lo mismo: ganan 210 los dos.

En el perfil (2,1), (en la matriz de abajo esta con un recuadro) es la situación que el vendedor 1 elige la esquina 2 y el vendedor 2 la esquina 1. La situación es esta:
$$
\begin{matrix}
\text{esquina} & 1 & 2 & 3 & 4 & 5 \\
\text{compradores} & 50 & 60 & 10 & 10 & 80 \\
  & \uparrow  & \uparrow\\
 & J_{2} & J_{1}
\end{matrix}
$$
Ahí, al jugador 2 le van a comprar solo los 50 compradores de su esquina, ( entonces gana $50 \times2\$=100$ ). Al jugador 1 le compran los de su propia esquina y todos los de las otras esquinas (en total 160). Ahi el jugador 1 gana $160 \times2\$=320$
El perfil (1,2) va a ser lo mismo pero al reves porque es simétrico.

El perfil (3,1) es esta situacion:
$$
\begin{matrix}
\text{esquina} & 1 & 2 & 3 & 4 & 5 \\
\text{compradores} & 50 & 60 & 10 & 10 & 80 \\
  & \uparrow  & &  \uparrow\\
 & J_{2} &  & J_{1}
\end{matrix}
$$
Los pagos son: El jugador 2 tiene los de su esquina y la mitad de los de la esquina 2 (porque ambos le quedan a la misma distancia) $80 \times 2\$=160$. El jugador 1 tiene: su esquina, la mitad de la esquina 2 y todos los demás: gana $130 \times 2\$=260$

Con ese proceso vas calculando los pagos de todos y si le agarras la mano ya es mas mecanico. A mi me queda asi (creo que no le pifié pero por las dudas chequear):

$$
\begin{matrix}
J_{1}|J_{2}  & 1 & 2 & 3 & 4 & 5  \\
1  & (210,210)  & ( 100,320)  &  (160, 260)  &  (220, 200)  & (230, 190) \\
2  & \boxed{ ( 320,100) } & (210,210)  &  (220, 200)  & (230, 190)  &  (240, 180)\\
3  & (260, 160) & (200, 220) & (210,210) &  (240, 180)  &  (250, 170)\\
4  & (200, 220)  & (190, 230) & (180, 240) & (210,210) &  (260, 160)\\
5 & (190, 230) & (180, 240) & (170, 250) & (160, 260) & (210,210)
\end{matrix}
$$

Lo que suele pasar en los de locación es que los bordes están dominados por lo de al lado. Por eso conviene empezar por esos: ver que la estrategia de elegir 2 le da siempre mejores pagos (para cualquier cosa que eliga el otro jugador). Entonces te alcanza con hacer los primeros dos columnas o filas para ver eso. Ahi en la matriz completa, se ve que la estrategia de elegir la esquina 2 siempre le da mayores pagos que elegir la esquina 1, para todas las estrategias del otro. Eso nos dice que esta estrictamente dominada y la podemos eliminar. (Como es simétrico, para el jugador 2 llegamos a la misma conclusión). Además: si te fijás, el otro borde tambien esta dominado por el de al lado, para ambos jugadores, con la misma logica. Eso nos dice que las podemos eliminar si ambos son racionales. Eliminando solo esas, nos queda el juego:

$$
\begin{matrix}
J_{1}|J_{2}   & 2 & 3 & 4  \\
2   & (210,210)  &  (220, 200)  & (230, 190)  \\
3   & (200, 220) & (210,210) &  (240, 180)  \\
4    & (190, 230) & (180, 240) & (210,210) \\

\end{matrix}
$$
Ahora en este juego mas chico podemos hacer lo mismo: ver si los bordes estan dominados: El borde que es la esquina 2 no esta dominado (si el otro jugador elige 3 prefiere jugar la esquina 2). En cambio el borde que es la esquina 4 sí está dominado por la esquina 3, para ambos. La eliminamos y nos quedamos con:
$$
\begin{matrix}
J_{1}|J_{2}   & 2 & 3   \\
2   & (210,210)  &  (220, 200)   \\
3   & (200, 220) & (210,210)  \\


\end{matrix}
$$
Nos queda un juego muy simple y ahora deberia ser facil ver que la esquina 2 domina a la 3 y nos queda solo la esquina 2:

Concluimos que los equilibrios de Nash son:
$NE: \{  (2,2) \}$
y que las estrategias racionalizables son:
$R_{1} = \{ 2 \}$ y $R_{2} = \{ 2 \}$

Para el inciso b) es lo mismo pero con esta matriz:

$$
\begin{matrix}
J_{1}|J_{2}  & 1 & 2 & 3 & 4 & 5  \\
1  & (0,0)  & ( 100,320)  &  (160, 260)  &  (220, 200)  & (230, 190) \\
2  & \boxed{ ( 320,100) } &(0,0)  &  (220, 200)  & (230, 190)  &  (240, 180)\\
3  & (260, 160) & (200, 220) & (0,0) &  (240, 180)  &  (250, 170)\\
4  & (200, 220)  & (190, 230) & (180, 240) & (0,0) &  (260, 160)\\
5 & (190, 230) & (180, 240) & (170, 250) & (160, 260) & (0,0)
\end{matrix}
$$
Van a quedar cosas que no se pueden eliminar si seguís el mismo proceso. Deberias poder llegar a que las esquinas 2 y 3 no las podés eliminar


Espero que se haya entendido, cualquier cosa avisame!