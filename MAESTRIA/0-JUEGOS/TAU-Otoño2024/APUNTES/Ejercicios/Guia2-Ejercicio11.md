Ejercicio 11:
$$
\begin{matrix}
 & L^{q}  & N^{1-q} \\
L^{p} & -5,-5 & 25,0 \\
N^{1-p} & 0,15 & 10,10
\end{matrix}
$$
Cuando buscamos un equilibrio en mixtas, buscamos que ambos estén indiferentes entre sus puras viendo que el otro juega una mixta. Las mixtas que se jeugan en equilibrio llamemoslas con un asterisco $\sigma^*$. Esas mixtas para ser un equilibrio de nash en mixtas deben cumplir simultaneamente que:
- El jugador 2 juega la mixta $\sigma_{2}^*=(q^*,1-q^*)$ y viendo esto el jugador 1, está indiferente entre sus puras.
- El jugador 1 juega la mixta $\sigma_{1}^*=(p^*,1-p^*)$ y viendo esto el jugador 2, está indiferente entre sus puras.
**Queremos que los dos jueguen una mixta en equilibrio**
En la primer situación: si el jugador 1 juega su estrategia pura $L$, espera ganar $q^*(-5)+(1-q^*)25$ (dada esa mixta del otro jugador $\sigma_{2}^*$). Si juega su pura $N$, espera ganar $0q^*+10(1-q^*)$ (dada esa mixta del otro jugador $\sigma_{2}^*$). ¿Por qué necesitamos que esté indiferente entre el pago de esas dos puras? Si al jugador 1 alguno de los dos pagos le da mas grande, entonces juega esa pura que le da mejor pago, pero necesitamos que **los dos jueguen una mixta en equilibrio**, si alguna de las dos puras, dada la mixta del otro, le da más alto, no juega una mixta. Para que juege una mixta, tiene que estar indiferente entre sus puras, porque si dan iguales, todas las mixtas entre esas dos puras del jugador 1 le dan el mismo pago.
Entonces despejamos la estrategia del jugador 2 que deja al 1 indiferente y la estrategia del 1 que deja al 2 indiferente, ese va a ser nuestro equilibrio:

Igualamos los pagos esperados del jugador 1, dada una mixta del 2 $\sigma_{2}=(q,1-q)$:
$$
\underbrace{ q(-5)+(1-q)25  }_{ \text{Pago esperado de L} }= \underbrace{ q0 +(1-q) 10  }_{ \text{Pago esperado de N} } 
$$
$$
-5q-25q+10q=10-25
$$
$$
-20q=-15
$$
$$
q=\frac{3}{4}
$$
Si igualamos los pagos esperados del jugador 2, dada una mixta del 1 $\sigma_{1}=(p,1-p)$, llegamos a $p=\frac{1}{2}$ (chequear!)

Ahora podemos plantear una función de mejor respuesta:

La funcion de mejor respuesta nos dice en qué situación juega una estrategia u otra dado lo que hace el otro. Para el jugador 1, como ya dijimos, hay tres posibilidades: $I)$ está indiferente entre sus puras, $II)$ jugar la estrategia $L$ le da mejores pagos o $III)$ jugar la estrategia $N$ le da mejores pagos. Ya sabemos cómo depende eso de la estrategia del otro: si $q=\frac{3}{4}$, estamos en el caso $I)$ de indiferencia:

CASO $I$: el jugador 1 elige cualquier estrategia mixta, entonces, cualquier estrategia $p \in[0,1]$ (cualquier valor de $p$ entre 0 y 1) porque siempre tiene el mismo pago en todas esas.

CASO $II$: el jugador 1 elige la estrategia $L$, si esa estrategia le da mejores pagos que la otra pura:
$$
\text{Si pasa esto, juega L:} \qquad \underbrace{ q(-5)+(1-q)25  }_{ \text{Pago esperado de L} }> \underbrace{ q0 +(1-q) 10  }_{ \text{Pago esperado de N} } 
$$
$$
\text{Si despejamos q, llegamos a:} \qquad q< \frac{3}{4}
$$
(Hay que tener en cuenta cuándo damos vuelta la desigualdad porque pasamos negativos) Eso nos dice, si $q< 3/4$, el pago esperado de $L$ es mayor que el de $N$: Si se da esa condición sobre $q$, elige jugar $L$: esto es equivalente a ponerle probabilidad $p=1$. Su estrategia se puede escribir tambien $\sigma_{1}=(1,0)$: 

CASO $III$: En este caso elige jugar $N$. Con la misma logica que el caso anterior, pero dada vuelta la desigualdad: elige jugar $N$ si $q>3/4$. Jugar $N$ equivale a ponerle probabilidad 0 a jugar $L$, es decir, $p=0$.  $\sigma_{1}=(0,1)$.

Ahora que sabemos esos tres casos podemos escribir la funcion de mejor respuesta

$$
MR_{1}=
\begin{cases}
p=1 &  q< \frac{3}{4}  & \text{CASO } II)\\
p \in [0,1] &  q= \frac{3}{4} &  \text{CASO } I)\\
p=0 & q> \frac{3}{4}&  \text{CASO } III)\\
\end{cases}
$$

Para graficar esto con $p$ en el eje horizontal y $q$ en el eje vertical:
- Marcamos $q=\frac{3}{4}$ en el eje vertical: en ese valor sabemos que está indiferente, todos los $p$ posibles son mejor respuesta: nos queda una linea recta horizontal que sale de ese valor de $q$ 
- Arriba de $q=\frac{3}{4}$ ($q>\frac{3}{4}$) sabemos que $p=0$, entonces es una linea recta vertical en los valores que $p=0$   (te queda encima el eje vertical) 
- Abajo de  $q=\frac{3}{4}$ ($q<\frac{3}{4}$), $p=1$, entonces es una recta vertical en el otro lado del grafico que sale del punto $p=1$ para arriba.

Para el jugador 2 va a ser exactamente el mismo proceso, pero viendo cuál $q$ elije dados los distintos $p$ del otro jugador. 

---
En general no tenes que hacer toda las mismas cuentas pero con la desigualdad, se puede ver a ojo teniendo en cuenta cuándo se da vuelta la desigualdad.