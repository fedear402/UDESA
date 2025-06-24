
#### Subastas Holandesas (Caso Google)
Usted es el dueño de una empresa y quiere empezar a cotizar en la bolsa de valores mediante una oferta pública inicial. Un mecanismo que utilizan ciertas empresas es la subasta holandesa para juntar las ofertas de los inversores. Usted decide plantearlo como un juego para decidir si es conveniente:

En este juego, los jugadores son los inversores ((Se podria plantear como pregunta: quiénes son los jugadores: para que no digan que la empresa es un jugador)) que van a decidir invertir o no, cuánto comprar y por cuánto dinero hacerlo. Entonces, las estrategias del inversor son: $q_{i}$, la cantidad de acciones que quiere comprar el inversor $i$. Además, debe decir por cuánto dinero compraría esas $q_{i}$ acciones. Entonces, la estrategia del inversor $1$ es $(q_{1},o_{1})$; la cantidad que quiere comprar y el precio al que quiere hacerlo.

Ahora bien, usted, empresario, establece un número de acciones $Q$ que quiere vender. El proceso es el siguiente: usted ordena todas las estrategias del precio $o_{i}$ mayor hasta el menor. Mirando en ese orden, va contando la cantidad que acumula y una vez que llega a $Q$, ese es el precio al cual vende las $Q$ acciones ((en realidad es que cada uno de los que quedan encima del corte pagan la del mas bajo -- pero es mas dificil)).

Por ejemplo, si queres vender 100 acciones y observas esta lista de ofertas y cantidades ordenada del mayor precio al menor:
$$
\begin{matrix}
i & q_{i}  &  o_{i} \\
1  & 10 & 10 \\
2  & 50  & 9 \\
3  & 10 & 8\\
4  & 30  & 7 \\
5  & 20 & 6 \\
5  & 20 & 6 \\ \\
5  & 20 & 6 \\
\end{matrix}
$$
**![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfogtNRspQFNHQ95FwrglpkU_fozOMkj5I_UChHkT2N5KJPMg8rhTNRx__b_gNYhgZQ6ZIBtp7v1wDOXQz0V8HvrdwrION32JCo9B5fG55u7yEHohZhIhknTqID0L8eY6bWWSThmQ?key=iiB-4Jk5I5V_wrgl3SQYgXON)**
En esa lista, la oferta más alta son 10 dolares (y cantidad 10). Se ve que con los primeros 4 ya junta 100 acciones. En la cuarta persona corta y le vende a todos los de arriba:
$$
\begin{matrix}
i & q_{i}  &  o_{i} \\
1  & 10 & 10 & \text{le vende 50 a 10 dolares} \\
2  & 50  & 9 & \text{le vende 30 a 9 dolares} \\
3  & 10 & 8 & \text{le vende 10 a 8 dolares}\\
4  & 30  & 7  & \text{le vende 10 a 7 dolares} \\
- & - & - & \leftarrow \text{ corte } Q=100 \\ 
5  & 20 & 6 & \text{No le vende} \\
\vdots & \vdots & \vdots
\end{matrix}
$$

Preguntas posibles:

1. **Plantee los pagos de los jugadores. ¿Se parece a algun juego que vimos en clase?** 

2. **Piense qué variables va a tener en cuenta los inversores para elegir una mejor respuesta. Como va a ser esa mejor respuesta**


3. **Determine cuáles pueden ser los equilibrios de Nash**


4. **Ahora imagine que los inversores un presupuesto $P_{i}$ por encima del cual no pueden hacer ofertas. Piense como se modifica el juego. Realice el mismo analisis que antes.**


---

**Ahora usted puede elegir el $Q$ estrategicamente para maximizar el ingreso, pero existe un costo creciente de emisión.**