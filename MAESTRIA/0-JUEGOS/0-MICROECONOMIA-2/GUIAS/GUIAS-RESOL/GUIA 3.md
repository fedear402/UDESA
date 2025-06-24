## 1. Watson Cap. 8
### 1. 
**Consider a location game like the one discussed in this chapter. Suppose that instead of the nine regions located in a straight line, the nine regions form a box with three rows and three columns. Two vendors simultaneously and independently select on which of the nine regions to locate. Suppose that there are two consumers in each region; each consumer will walk to the nearest vendor and purchase a soda, generating a $1.00 profit for the vendor. Consumers cannot walk diagonally. For example, to get from the top-left region to the middle region, a consumer has to walk through either the top-center region or the middle-left region. (This means that the middle region is the same distance from top-left as top-right is from top-left.) Assume that if some consumers are the same distance from the two vendors, then these consumers are split equally between the vendors. Determine the set of rationalizable strategies for the vendors.**

| 1   | 2   | 3   |
| --- | --- | --- |
| 4   | 5   | 6   |
| 7   | 8   | 9   |
u_1(1,1) = 9
u_1(1,2)= 2 * 3=6
u_2(1,2) = 2 * 6=12

posicionandose en 5 tienen la mayor cantidad de cuadros a distancia 1, cualquier otro tiene menor utilidad , sin importar lo que haga otro, 5 domina a todas las demas estrategias.

### 2.
**Consider a location game with nine regions like the one discussed in this chapter. But instead of having the customers distributed uniformly across the nine regions, suppose that region 1 has a different number of customers than the other regions. Specifically, suppose that regions 2 though 9 each has ten customers, whereas region 1 has x customers. For what values of x does the strategy of locating in region 2 dominate locating in region 1?**

La region 2 domina si es la que mayor utilidad brinda contra cualquier mixta o pura. 
U_i( 2 ,L_j) > U_i ( 1, L_j)
U_i( 2 ,L_j) > x * p

| i / j | 1                                   | 2                                     |
| ----- | ----------------------------------- | ------------------------------------- |
| 1     | (x/2+ 8 * 10 / 2, x/2+ 8 ** 10 / 2) | (x, 8 * 10)                           |
| 2     | (8 * 10, x)                         | (8 * 10 / 2+ x/2, 10/2+7 ** 10 + x/2) |

8 * 10 > x/2+ 8 * 10 / 2
8 * 10 - 8 * 10 / 2 = 40 > x/2
80 > x

8 * 10 / 2+ x/2 > x
$8 * 10 / 2 = 40> x -  x/2 = x/2$
80>x


### 3. 
**Consider our nine-region location game to be a model of competition between two political candidates. Fifty voters are located in each of the nine regions of the political spectrum; each voter will vote for the closest candidate. Voters in regions equidistant from the two candidates will split evenly between them.**

**(a) Assume that each candidate wants to maximize the number of votes he or she receives. Are the candidates’ preferences the same as those modeled in the basic location game? Discuss how this setting differs from the setting in which candidates want to maximize the probability of winning (with the rule that the candidate with the most votes wins the election and, in case of a tie, each candidate is awarded the office with probability 1/2).** 

Mismas preferencias que el juego de location: 1 voto = 1 peso
Si la utilidad es la probabilidad de ganar para cualquier estrategia pura del otro todas las demás estrategias son racionalizables y mejor respuesta, (si es de maximizar solo habría una mejor respuesta para cada estrategia del otro)

**(b) Suppose, contrary to the basic location model, that voters are not uniformly distributed across the nine regions. Instead, whereas regions 1, 2, 3, 4, 5, 8, and 9 each contains fifty voters, regions 6 and 7 each contains x voters. Analyze the candidate location game for the case in which x = 75. In a rationalizable outcome, can one of the candidates win with probability 1?**

| 1   | 2   | 3   | 4   | 5   | 6    | 7    | 8   | 9   |     |
| --- | --- | --- | --- | --- | ---- | ---- | --- | --- | --- |
| 50  | 50  | 50  | 50  | 50  | x=75 | x=75 | 50  | 50  |     |

$S=\{ 1,2,3,4,5,6,7,8,9 \} \times \{ 1,2,3,4,5,6,7,8,9 \}$
Elegir cualquiera de las dos esquinas esta dominado 
Elegir 2 da mas utilidad que 1 siempre:
 
| y   | u_1(1,y)                                     | u_1(2,y)                     |
| --- | -------------------------------------------- | ---------------------------- |
| 1   | ((50 * 7) + (75 \* 2))/2=250                 | (50 * 6)+(75 \*2)=450        |
| 2   | 50                                           | ((50 * 7) + (75 \* 2))/2=250 |
| 3   | 50+25=75                                     | 50+50                        |
| 4   | 50+50=100<br>--<br>50 \* 5+75+75=400<br><br> | 50+50+25=125                 |
| 5   | ...                                          | ...                          |

Los pagos cuando u_1(2,1) y u_1(2,2) son mayores que los de u_1(1,1) y u_1(1,2) sin importar el valor de x. Ningún pago para u_1(1,y) o  u_1(2,y) depende de x después del 3

| y   | u_1(9,y)                     | u_1(8,y)                     |
| --- | ---------------------------- | ---------------------------- |
| 1   | 50+50+75+75+25=275           | 50+50+75+75+50=300           |
| 2   | 50+50+75+75=250              | 50+50+75+75+25=275           |
| 3   | 50+50+75+75/2=212.5          | 50+50+75+75=250              |
| 4   | 50+50+75=175                 | 50+50+75+75/2=212.5          |
| 5   | 50+50+75/2=137.5             | 50+50+75=175                 |
| 6   | 50+50=100                    | 50+50+75/2=137.5             |
| 7   | 50+25=75                     | 50+50=100                    |
| 8   | 50                           | ((50 * 7) + (75 \* 2))/2=250 |
| 9   | ((50 * 7) + (75 \* 2))/2=250 | (50 * 6)+(75 \*2)=450        |

Mientras $x \neq 0$ jugar 8 domina a jugar 9. En este caso domina.

$R_{2}=\{ 2,3,4,5,6,7,8 \}$

Si se sigue reduciendo llegas a que 

$R=\{ 5,6 \} \times \{ 5,6 \}$ ya no hay mas dominadas:

(50+75)/2=62.5

| x/y | 5                                                            | 6                                                            |     |
| --- | ------------------------------------------------------------ | ------------------------------------------------------------ | --- |
| 5   | (<br>(50 \* 7+75 \* 2)/2=250<br>,(50 * 7+75 \* 2)/2=250<br>) | (<br>50\*50=250,<br>75 \* 2+50 * 2=250<br>)                  |     |
| 6   | (<br>75 \* 2+50 * 2=250<br>50\*50=250,<br>)                  | (<br>(50 \* 7+75 \* 2)/2=250<br>,(50 * 7+75 \* 2)/2=250<br>) |     |
|     |                                                              |                                                              |     |


todas son racionalizables
(c) What happens if x > 75 or x < 75?70+50=120

| x/y | 5                          | 6                      |
| --- | -------------------------- | ---------------------- |
| 5   | (<br>**245**, **245**<br>) | (<br>**250**, 240<br>) |
| 6   | (<br>240, **250**,<br>)    | (<br>245 ,245<br>)     |
La mejor respuesta de ambos es 5 si x < 75
si x>75 a la mejor respuesta es 6

### 4.
**Consider the partnership game analyzed in this chapter, but assume that $c < 0$. Graph the players’ best-response functions for this case, and explain how they differ from those in the original model. If you can, find the rationalizable strategies for the players. Use the graph to find them. Repeat the analysis under the assumption that $c > \frac{1}{4}$.**

PARTNERSHIP GAME
total profit : $p=4(x+y+cxy)$
$c\in\left[ 0, \frac{1}{4} \right]$
cost : $x^2$
individual net profit : $\frac{p}{2}-x^2=\frac{4(x+y+cxy)}{2}-x^2=2(x+y+cxy)-x^2$
pay jugador 1 : $2(x+y+cxy)-x^2$
pay jugador 2 : $2(y+x+cyx)-y^2$
$S_{1}=x \in[0,4]$
$S_{2}=y \in[0,4]$
con $c<0$ es lo mismo que plantear:
$x=BR_{1}(y) = 1 - yc$
$y=BR_{2}(x) = 1 - xc$
y que $c$ sea positivo
```tikz 
\begin{document} 
\begin{tikzpicture}[domain=0:5, scale=2];
\draw[thick, ->] (0,0) -- (4.2,0) node[right] {$x$}; 
\draw[thick, ->] (0,0) -- (0,4.2) node[above] {$y$}; 
\draw[thick, color=black] (0,1) -- (2,0) node[above=0.5cm] {$BR_{2}(x)$}; 
\draw[thick, color=black] (0,2) -- (1,0) node[above=3cm, left] {$BR_{1}(y)$};

\node[left] at (0,1) {$1$};
\node[left] at (0,2) {$1/c$};
\node[below] at (1,0) {$1$};
\node[below] at (2,0) {$1/c$};

\node[below] at (4,0) {$4$};
\node[left] at (0,4) {$4$};
\draw[dotted] (4,0) -- (4,4) node[right] {}; 
\draw[dotted] (0,4) -- (4,4) node[above] {}; 

\fill (2/3,2/3) circle (1pt);
\end{tikzpicture} 
\end{document} 
```
BR_1(y)
x=0 , y=1/c
x=1 , y=0 

BR_2(x)
y=0 , x=1/c
y=1 , x=0 

1/c va a ser mayor  a 1 si $c\in[-1,0]$. Caso contrario:
```tikz 
\begin{document} 
\begin{tikzpicture}[domain=0:5, scale=2];
\draw[thick, ->] (0,0) -- (4.2,0) node[right] {$x$}; 
\draw[thick, ->] (0,0) -- (0,4.2) node[above] {$y$}; 

\draw[thick, color=black] (0,1/2) -- (1,0) node[above=0.2cm] {$BR_{1}(x)$}; 
\draw[thick, color=black] (0,1) -- (1/2,0) node[above=2cm] {$BR_{2}(y)$};

\node[left] at (0,1/2) {$1/c$};
\node[left] at (0,1) {$1$};
\node[below] at (1/2,0) {$1/c$};
\node[below] at (1,0) {$1$};

\node[below] at (4,0) {$4$};
\node[left] at (0,4) {$4$};
\draw[dotted] (4,0) -- (4,4); 
\draw[dotted] (0,4) -- (4,4); 

\end{tikzpicture} 
\end{document} 
```

Caso $c \in [-1, 0]$
el jugador 1 sabe que el domino de mejores estrategias del 2 esta entre 0 y 1, entonces va a elegir estrategias entre $[0, BR_1(1)]$
$BR_1(1)=1-c$
```tikz 
\begin{document} 
\begin{tikzpicture}[domain=0:5, scale=2];
\draw[thick, ->] (0,0) -- (4.2,0) node[right] {$x$}; 
\draw[thick, ->] (0,0) -- (0,4.2) node[above] {$y$}; 

\draw[thick, color=black] (0,1) -- (2,0) node[above=0.5cm] {$BR_{2}(x)$}; 
\draw[dashed] (0,2) -- (0.5,1) node[above=3cm, left] {};
\draw[thick, color=black] (0.5,1) -- (1,0) node[above=3cm, left] {$BR_{1}(y)$};

\node[left] at (0,1) {$1$};
\node[left] at (0,2) {$1/c$};
\node[below] at (1,0) {$1$};
\node[below] at (2,0) {$1/c$};
\node[below] at (1/2,0) {$1-c$};

\node[below] at (4,0) {$4$};
\node[left] at (0,4) {$4$};
\draw[dotted] (4,0) -- (4,4) node[right] {}; 
\draw[dotted] (0,4) -- (4,4) node[above] {}; 
\draw[thick, dotted] (0,1) -- (4,1) node[above] {};
\draw[thick, dotted] (0.5,0) -- (0.5,1) node[above] {};

\fill (2/3,2/3) circle (1pt);
\end{tikzpicture} 
\end{document} 
```

y asi hasta llegar a $R : BR_1(y) = BR_2(x)$
x=1-yc -> y=(1-x)/c
y=1-xc
(1-x)/c=1-xc
1/c - 1 = x/c  - xc 
1/c - 1 = x(1/c - c)
$$\frac{1/c - 1 }{(1/c - c)}=x$$
notar que 1/c - c = (1-c^2)/c
entonces:
$$x*=\frac{1-c}{1-c^2}$$
con c = 1/2 (grafico)
x=(1-1/2)/(1-1/4)=2/3
y=2/3

despues y* = 1-x* c obviamente es igual a x*
$$
y*=1- \frac{1-c}{1-c^2}c=\frac{1-c}{1-c^2}
$$
```tikz 
\begin{document} 
\begin{tikzpicture}[domain=0:5, scale=2];
\draw[thick, ->] (0,0) -- (4.2,0) node[right] {$x$}; 
\draw[thick, ->] (0,0) -- (0,4.2) node[above] {$y$}; 

\draw[thick, color=black] (0,1) -- (2,0) node[above=0.5cm] {$BR_{2}(x)$}; 
\draw[thick, color=black] (0,2) -- (0.5,1) node[above=3cm, left] {};
\draw[thick, color=black] (0.5,1) -- (1,0) node[above=3cm, left] {$BR_{1}(y)$};

\node[left] at (0,1) {$1$};
\node[left] at (0,2) {$1/c$};
\node[below] at (1,0) {$1$};
\node[below] at (2,0) {$1/c$};
\node[below] at (2/3,0) {$\frac{1-c}{1-c^2}$};
\node[left] at (0,2/3) {$\frac{1-c}{1-c^2}$};

\node[below] at (4,0) {$4$};
\node[left] at (0,4) {$4$};
\draw[dotted] (4,0) -- (4,4) node[right] {}; 
\draw[dotted] (0,4) -- (4,4) node[above] {}; 
\draw[dotted] (0,2/3) -- (2/3,2/3) node[right] {}; 
\draw[dotted] (2/3,0) -- (2/3,2/3) node[above] {}; 


\fill (2/3,2/3) circle (1pt);
\end{tikzpicture} 
\end{document} 
```
Entonces $\frac{1-c}{1-c^2}$ es la única estrategia racionalizable para ambos jugadores

Después en el caso de que $c > 1/4$

%% 
x=1+cy
x=0, y=1/-c
x=1, y=0
x=4, y=3/c 
y=4, x=1+c * 4

y=1+cx
y=0, x=1/-c
y=1, x=0
y=4, x=3/c 
x=4, y=1+c * 4 
%%
Sabemos que la estrategia racionalizable es 1/(1-c), porque el jugador 1 sabe que el jugador dos elige respuestas entre 1 y 1+4c, entonces de sus mejores respuestas para cualquier estrategia del otro elige solo las que resultan entre pensar que elige 1 y 1+4c y asi hasta llegar a 1/1-c


```tikz 
\usepackage{xcolor}
\begin{document}
\begin{tikzpicture}[domain=0:5, scale=2];
\draw[thick, ->] (0,0) -- (4.2,0) node[right] {$x$}; 
\draw[thick, ->] (0,0) -- (0,4.2) node[above] {$y$}; 

\draw[thick, color=black] (1,0) -- (3,4) node[above] {$x=BR_{1}(y)$}; 
\draw[thick, color=black] (0,1) -- (4,3) node[right] {$y=BR_{2}(x)$};


\node[left] at (0,1) {$1$};
\node[below] at (1,0) {$1$};
\draw[dashed, color=yellow] (0,3) -- (4,3);
\draw[dashed, color=yellow] (0,1) -- (4,1);
\node[left] at (0,3) {$1+4c$};

\draw[dashed, color=cyan] (3/2,0) -- (3/2,4);
\draw[dashed, color=cyan] (5/2,0) -- (5/2,4);
\node[below=0.3cm, right] at (3/2,0) {\textcolor{cyan}{$1+(1)c$}};
\node[below=0.3cm, right] at (5/2,0) {\textcolor{cyan}{$1+(1+4c)c$}};


\node[below] at (4,0) {$4$};
\node[left] at (0,4) {$4$};
\draw[dotted] (4,0) -- (4,4) node[right] {}; 
\draw[dotted] (0,4) -- (4,4) node[above] {}; 



\fill (2,2) circle (1pt);
\end{tikzpicture} 
\end{document} 
```


### 5.
**Consider a duopoly game in which two firms simultaneously and independently select prices. Assume that the prices are required to be greater than or equal to zero. Denote firm 1’s price as $p_{1}$ and firm 2’s price as $p_{2}$ . The firms’ products are differentiated. After the prices are set, consumers demand $10 − p_{1} + p_{2}$ units of the good that firm 1 produces. Consumers demand $10 − p_{2} + p_{1}$ units of the good that firm 2 produces. Assume that each firm must supply the number of units demanded. Also assume that each firm produces at zero cost. The payoff for each firm is equal to the firm’s profit.** 

**(a) Write the payoff functions of the firms (as a function of their strategies $p_{1}$ and $p_{2}$).** 
$u_{1}=p_{1}(10 − p_{1} + p_{2})$
$u_{2}=p_{2}(10 − p_{2} + p_{1})$

(b) Compute firm 2’s best-response function (as a function of p1).
$\max p_{1}(10 − p_{1} + p_{2})$
$10-2p_{1}+p_{2}=0$
$-2p_{1}=-p_{2}-10$
$BR_{1}(p_{2})=p_{1}=\frac{1}{2}p_{2}+5$
por simetria,
$BR_{2}(p_{2})=p_{2}=\frac{1}{2}p_{1}+5$

(c) Can you determine the rationalizable strategies in this game by inspecting the graph of the best-response functions? What are the rationalizable strategies?
```tikz 
\begin{document} 
\begin{tikzpicture}[domain=0:30, scale=0.2];
\draw[thick, ->] (0,0) -- (40.2,0) node[right] {$p_1$}; 
\draw[thick, ->] (0,0) -- (0,40.2) node[above] {$p_2$}; 

\draw[thick, ->] (5,0) -- (25,40) node[above] {$BR_1$}; 
\draw[thick, ->] (0,5) -- (40,25) node[above] {$BR_2$}; 

\node[below] at (5,0) {$5$};
\node[left] at (0,5) {$5$};
\node[left] at (0,10) {$10$};
\node[below] at (10,0) {$10$};

\draw[dashed] (0,5) -- (40.2, 5);
\draw[dashed] (7.5,0) -- (7.5, 40.2);
\draw[dashed] (0,35/4) -- (40.2,35/4 );

\fill (10,10) circle (10pt);

\draw[dotted, color=red] (0,10) -- (40.2, 10);
\draw[dotted, color=red] (10,0) -- (10, 40.2);

\end{tikzpicture} 
\end{document} 
```


Todas las respuestas arriba de (10,10), en rojo, son mejores respuestas


### 6.
**Consider a location game with five regions on the beach in which a vendor can locate. The regions are arranged on a straight line, as in the original game discussed in the text. Instead of there being two vendors, as with the original game, suppose there are three vendors who simultaneously and independently select on which of the five regions to locate. There are thirty consumers in each of the five regions; each consumer will walk to the nearest vendor and purchase a soda, generating a $1.00 profit for the vendor. Assume that if some consumers are the same distance from the two or three nearest vendors, then these consumers are split equally between these vendors.** 

**(a) Can you rationalize the strategy of locating in region 1?**
No

**(b) If your answer to part (a) is “yes,” describe a belief that makes locating at region 1 a best response. If your answer is “no,” find a strategy that strictly dominates playing strategy 1.**

$U(1,x,y)=$

| x \ y | 1    | 2            | 3            | 4            | 5    |
| ----- | ---- | ------------ | ------------ | ------------ | ---- |
| **1** | $50$ | $15$         | $25$         | $30$         | $40$ |
| **2** | $15$ | $30$         | $\boxed{30}$ | $\boxed{30}$ | $30$ |
| **3** | $25$ | $\boxed{30}$ | $40$         | $45$         | $45$ |
| **4** | $30$ | $\boxed{30}$ | $45$         | $60$         | $60$ |
| **5** | $40$ | $30$         | $45$         | $60$         | $70$ |
$U(2,x,y)=$

| x \ y       | 1    | 2            | 3            | 4    | 5    |
| ----------- | ---- | ------------ | ------------ | ---- | ---- |
| **1**       | $20$ | $60$         | $30$         | $45$ | $60$ |
|  **2**      | $60$ | $50$         | $\boxed{30}$ | $40$ | $45$ |
|  **3**      | $30$ | $\boxed{30}$ | $60$         | $60$ | $60$ |
|  **4**      | $45$ | $40$         | $60$         | $70$ | $75$ |
|  **5**      | $60$ | $45$         | $60$         | $75$ | $90$ |

$U(3,x,y)=$

| x \ y | 1     | 2            | 3    | 4            | 5     |
| ----- | ----- | ------------ | ---- | ------------ | ----- |
| 1     | $100$ | $90$         | $55$ | $45$         | $60$  |
| 2     | $90$  | $90$         | $45$ | $\boxed{30}$ | $45$  |
| 3     | $55$  | $45$         | $50$ | $45$         | $55$  |
| 4     | $45$  | $\boxed{30}$ | $45$ | $90$         | $90$  |
| 5     | $60$  | $45$         | $55$ | $90$         | $100$ |

Los pagos con cuadrados en $u(2,x,y)$ y en $u(3,x,y)$ lo dejan indiferente con los mismos $(x,y)$ cuadrados en $u(1,x,y)$, por lo que no es dominación estricta. Pero claramente jugar una mixta entre 2 y 3 le da estrictamente mayores pagos porque por ejemplo en $u(2, 2,3) = 30$,  $u(3, 2,3) = 45$ asi que no hay mixta que no de mayor a 30 (el pago si juega pura 1). pasa lo mismo al revés. Después para TODOS los demás valores de $x,y$ ambos $U(2,x,y)$ y $U(2,x,y)$ son mayores que los de $U(1,x,y)$ entonces la mixta obviamente va a ser mayor
Estrategia mixta que le asigna 1/2 de probabilidad a jugar 2 y 1/2 a jugar 3
$\sigma=\left( 0, \frac{1}{2}, \frac{1}{2}, 0 ,0 \right)$
$U(\sigma,x,y)$

| x \ y | 1      | 2              | 3              | 4            | 5      |
| ----- | ------ | -------------- | -------------- | ------------ | ------ |
| 1     | $110$  | $75$           | $42.5$         | $45$         | $60$   |
| 2     | $75$   | $70$           | $\boxed{37.5}$ | $\boxed{35}$ | $45$   |
| 3     | $42.5$ | $\boxed{37.5}$ | $55$           | $52.5$       | $57.5$ |
| 4     | $45$   | $\boxed{35}$   | $52.5$         | $80$         | $82.5$ |
| 5     | $60$   | $45$           | $57.5$         | $82.5$       | $95$   |

### 7.
**Consider a game in which, simultaneously, player 1 selects a number $x \in [2, 8]$ and player 2 selects a number $y \in [2, 8]$. The payoffs are given by:** 
**$u_{1} (x, y) = 2xy − x^{2}$** 
**$u_{2} (x, y) = 4xy − y^{2}$.** 
**Calculate the rationalizable strategy profiles for this game.**

best responses
2y-2x = 0
2y=2x
x=BR_1(y)=y

4x-2y=0
4x=2y
y=BR_2(x)=2x

--

las mejores respuestas del jugador 2 son las generadas por la función y=2x
entonces el jugador 1 solamente va a jugar sus estrategias que estan en el rango de las que racionalmente jugaria el jugador 2
j2 entonces elige estrategias en el rango [4, 8]
entonces el j1 elige estrategias en ese rango tambien, pero si j2 sabe que j1 elige solo entre [4,8] entonces reduce de nuevo su intervalo y termina jugando 8, mismo que j1. Para j2 es racional solamente jugar 8 y para j1 tambien


### 8. 
**Finish the analysis of the “social unrest” model by showing that for any $\alpha > 2$, the only rationalizable strategy profile is for all players to protest. Here is a helpful general step: Suppose that is it common knowledge that all players above y will protest, so $x\geq 1-y$. Find a cutoff player number $f(y)$ with the property that given $x\geq 1-y$, every player above $f(y)$ strictly prefers to protest.**
Social unrest:
infinitos jugadores $i\in[0,1]$, con dos estrategias H, P
dedicación a la causa de cada jugador es $i$
si $x$ es la proporción de jugadores que eligen P
$u_{i}(H,x)=4x-2$
$u_{i}(P,x)=2(4x-2)+\alpha i$

La ganancia de no participar depende de cuantos participan. Si la suficiente gente participa, los rebeldes ganan y el gobierno concede. En esa forma funcional, si mas de la mitad participa, las ganancias de no participar son positivas, le llegan como externalidad.
La ganancia de participar es la misma que la de no participar pero amplificada , entonces si tiene éxito el beneficio es la externalidad y además un extra por participar, si pierden la pérdida es el doble como castigo por participar. 
Los participantes también tiene un adicional $\alpha i$ por participar que representa el compromiso a la causa. Solo por protestar, tengan éxito o no, tienen beneficio. Mas beneficio si estas mas dedicado ($i$ es mas grande).
Condición para que alguien tenga incentivo a protestar:
$2(4x-2)+\alpha i>4x-2$
$4x-2>-\alpha i$
$\frac{2-4x}{\alpha}<i$

$$
BR_{i}=
\begin{cases}
\{ P \} \ \ \ \ i > \frac{2-4x}{\alpha} \\ 
\{ P, H \} \ \ \ \ i < \frac{2-4x}{\alpha}
\end{cases}
$$
mientras x sea mas grande, el valor de $\frac{2-4x}{\alpha}$ es mas chico, entonces mas gente tiene incentivo a protestar a medida que una mayor fracción decida protestar.
Para el jugador 1, el más dedicado, va a protestar cuando nadie mas proteste si
$-4+\alpha>-2$
$\alpha>2$

si hay un número $y\in \left[ 0,1 \right]$ que representa la cantidad de gente que no protesta, tal que todos los $i$ por encima de $y$ protestan, entonces
$1-y\leq x$
$\alpha>2$

si $i \geq \frac{2}{\alpha}$ $BR_{i}=\{ P \}$
si $i \le \frac{2}{\alpha}$ $BR_{i}=\{ P, H \}$

proporción que protesta dada la que no protesta $f(y)=1-x$
esta cantidad: $f\left( \frac{2}{\alpha} \right)=\frac{\alpha-2}{\alpha}$ va a protestar

entonces $x>f\left( \frac{2}{\alpha} \right)$ 
$i> \frac{2-4f\left( \frac{2}{\alpha} \right)}{\alpha}$
si i mayor a ese numero, protestan, cantidad que protesta es
$f(\frac{2-4f\left( \frac{2}{\alpha} \right)}{\alpha})$
$\frac{2}{\alpha}>\frac{2-4f\left( \frac{2}{\alpha} \right)}{\alpha}$
se puede seguir para siempre
$$
\frac{2-4f\left( \frac{2-4f\left( \frac{2}{\alpha} \right)}{\alpha} \right)}{\alpha}
$$
entonces siempre va a ser una proporcion mas chica porque
$$
\frac{2-\alpha}{\alpha}>0
$$
### 9.
**Consider an industry in which two firms compete by simultaneously and independently selecting prices for their goods. Firm 1’s product and firm 2’s product are imperfect substitutes, so that an increase in one firm’s price will lead to an increase in the quantity demanded of the other firm’s product. In particular, each firm i faces the following demand curve:**
**$q_{i}=\max \{ 0 ,24-2p_{i} + p_{j} \}$**
**where $q_{i}$ is the quantity that firm i sells, $p_{i}$ is firm i’s price, and $p_{j}$ is the other firm’s price. (The “maximum” operator is needed to ensure that quantity demanded is never negative.)** 

**Suppose that the maximum possible price is 20 and the minimum price is zero, so the strategy space for each firm i is $S_{i} = [0, 20]$. Both firms produce with no costs.**

**(a) What is firm i ’s profit as a function of the strategy profile $(p1, p2)$? Let each firm’s payoff be defined as its profit.**

si $q_{i}=24-p_{i} + p_{j}>0$
$$
BR_{i}=\max_{p_{i}} 24p_{i}-2p_{i}^2+p_{j}p_{i}
$$
$$
24-4p_{i}+p_{j}=0
$$
$$
BR_{i}(p_{j})=p_{i}=6+\frac{p_{j}}{4}
$$


**(b) Show that for each firm i , prices less than 6 and prices greater than 11 are dominated strategies, whereas prices from 6 to 11 are not dominated, so $B_{i} = [6, 11]$.** 

Cada jugador esta mejor-respondiendo si elige un numero entre $6+\frac{0}{4}=6$ y $6+\frac{20}{4}=11$ y sabe que el otro también. Entonces van a elegir entre 

```tikz 
\begin{document} 
\begin{tikzpicture}[domain=0:22, scale=0.5];
\draw[thick, ->] (0,0) -- (22,0) node[right] {$x$}; 
\draw[thick, ->] (0,0) -- (0,22) node[above] {$y$}; 

\draw[thick] (6,0) -- (11,20) node[above] {$BR_{1}$}; 
\draw[dotted] (0,20) -- (20,20); 
\draw[dotted] (20,0) -- (20,20); 
\node[left] at (0,20) {$20$};
\node[below] at (20,0) {$20$};
\draw[thick] (0,6) -- (20,11) node[above] {$BR_{2}$}; 
\node[below] at (6,0) {$6$};
\node[left] at (0,6) {$6$};

\draw[dashed] (11,0) -- (11,20); 
\node[below] at (11,0) {$11$};
\draw[dashed] (0,11) -- (20,11); 
\node[left] at (0,11) {$11$};
\fill[thick] (8,8) circle (5pt) node[above left] {$(8,8)$};
\end{tikzpicture} 
\end{document} 
```

**(c) Consider a reduced game in which firms select prices between x and y, where x < y. What strategies are undominated in such a game? Use your answer to compute the set of rationalizable strategies in the original game.**
en la primer iteración ambos eligen entre $R_{1}=\left[  6+ \frac{x}{4} ,  6+ \frac{y}{4}\right]$
Notamos que haciendo dominancia iterada tenemos un sistema dinámico lineal
$$
R(k+1)=[ax(k)+b, \ \ \ \ \ ay(k)+b]
$$
con $a=\frac{1}{4}$ y $b=6$
cuya solución es simplemente
$$
R_{k}=\left[ \frac{1}{4}^k x+6 \cdot \left( \frac{\frac{1}{4}^k-1}{\frac{1}{4}-1} \right)  , \ \ \ \ \  \frac{1}{4}^k y+6 \cdot \left( \frac{\frac{1}{4}^k-1}{\frac{1}{4}-1} \right)  \right]
$$
$$
\lim_{ k \to \infty } R_{k}=\left[6 \cdot \left( \frac{-1}{\frac{1}{4}-1} \right)  , \ \ \ \ \ 6 \cdot \left( \frac{-1}{\frac{1}{4}-1} \right)  \right]
$$
$$
\lim_{ k \to \infty } R_{k}=\left[ 8 , \ \ \ \ \ 8  \right]

$$
$$
R=8
$$
y obviamente si $x>8$, entonces $R=x$
## 2. Mas Collel 
**Considere el juego en forma normal representado en la siguiente matriz de pagos:**
![[Pasted image 20240409132829.png|200]]
**Muestre (por vía del ejemplo) que en la eliminación sucesiva de estrategias débilmente dominadas las predicciones dependen del orden en el cual son eliminadas las estrategias.**

xUxM
	L,D ; R,D
xUxLxM
	D,R
xMxRxU
	D,L
xMxL
	L,D ; R,D

## 3. Watson Cap. 9

### 1.
![[Pasted image 20240424044013.png|300]]

a. $NE=\{(w,b),(y,c)\}$
b. y,c eficiente
c. No es congruente

### 2.
CAP 6
a) 
![[Pasted image 20240312225212.png|200]]
$NE=\{ (B,L) \}$

b) 
![[Pasted image 20240312225224.png|200]]
J1: Ninguna es estrictamente dominada
J2: R está dominada (por L). En cuanto a L y C, ninguna domina a la otra
$NE=\{ (U,L) , (M,C)\}$

c)
![[Pasted image 20240312225751.png|200]]
J1: -
J2: Z es dominada por X
$NE=\{ (U,X) \}$

d)
![[Pasted image 20240312225808.png|200]]
J1: -
J2: -
$NE=\{ (U,L),(D,R) \}$
### 3.
CAP 7
a)
![[Pasted image 20240316183835.png|200]]

Ninguna está dominada, cualquier estrategia es mejor respuesta
$R = \{ U, M, D \} \times \{ X,Y \}$

b)
![[Pasted image 20240316191625.png|200]]
J2: Ninguna de las estrategia está dominada
J1: Una mixta entra U domina a D
Racionalmente, J1 nunca jugaría D y J2 nunca creería que J1 jugaría D. Se puede eliminar

$R_{1}=\{ U, M \} \times \{ X, Y, Z \}$

En este juego reducido Z domina a Y entonces nunca jugaría eso J2

$R=\{ U, M \} \times \{ X, Z \}$

No se puede reducir más

$NE=\{ (M,X), (U,Z) \}$

c)
![[Pasted image 20240316194249.png|200]]
J2: Ninguna está dominada
J1: Una mixta entre U y M domina a D
X: 
p6 > 2
p>2/6=0.33

Y:
5p + 4 - 4p > 3
p>-1

Z:
6-6p>2
-6p>-4
p<4/6=0.66

$p \in \left[ \frac{1}{3}, \frac{2}{3} \right]$ domina a D

$R_{1}=\{ U,M \} \times \{ X, Y, Z \}$
En el juego reducido X domina a Z
$R_{2}=\{ U,M \} \times \{ X, Y \}$
Ahora U domina a M 
$R_{3}=\{ U \} \times \{ X, Y \}$
X domina a Y
$R=\{ (U,X) \}=NE$

d)
![[Pasted image 20240316200933.png|200]]
J2: ninguna esta dominada
J1: M domina a D
$R_{1}=\{ U,M \} \times \{ X, Y, Z \}$
Ahora una mixta entre X e Y dominan a Z
U: 
6p + 1 - p > 2
5p>1
p>1/5=0.2

M
6-6p>1
-6p<-5
p<5/6=0.83

$p \in [\frac{1}{5}, \frac{5}{6}]$ dominan a Z

$R=\{ U,M \} \times \{ X, Y \}$
En este juego reducido ya ninguna domina a otra 
$NE=\{ (U,X), (M,Y) \}$
e)
![[Pasted image 20240316201720.png|200]]
$R=\{ A, B \} \times \{ X, Y \}$
$NE=\{ (A,X), (B,Y) \}$

f)
![[Pasted image 20240316201838.png|200]]
Ninguna está dominada
$R=\{ A, B \} \times \{ X, Y \}$
$NE=\{ (A,X), (B,Y) \}$
g)
![[Pasted image 20240316202339.png|200]]
D domina a U
$R_{1}=\{ D \} \times \{  X, Y \}$
X domina a Y
$R=\{ (D, Y) \}$
$NE=\{ (D,Y) \}$


### 4.
**Compute the Nash equilibria of the following location game. There are two people who simultaneously select numbers between zero and one. Suppose player 1 chooses s1 and player 2 chooses s2 . If si < sj , then player i gets a payoff of $(s_{i} + s_{j} )>2$ and player j obtains $1 − (s_{i} + s_j )>2$, for i = 1, 2. If s1 = s2 , then both players get a payoff of 1/2.**
$NE=\frac{1}{2}$
Mediana: fuera de ahi ninguno esta eligiendo la mejor respuesta

### 5.
**Find the Nash equilibrium of the following normal-form game: $S_{1} = [0, 1]$, $S_{2} = [0, 1]$, $u_{1} (s_{1} , s_{2} ) = 3s_{1} − 2s_{1}s_{2} − 2s_{1}^2$, and $u_{2} (s_{1} , s_{2}) = s_{2} + 2s_{1}s_{2} − 2s_{2}^2$ . (The solution is interior, so you can use calculus.)**

$BR_{1} \to 3-2s_{2}-4s_{1}=0$
$\frac{3}{4}-\frac{1}{2}s_{2}$
$BR_{2} \to 1+2s_{1}-4s_{2}=0$
$\frac{1}{4}+\frac{1}{2}s_{1}$

$$
\begin{cases}
s_{1}^*=\frac{3}{4}-\frac{1}{2}s_{2}^* \\
s_{2}^*=\frac{1}{4}+\frac{1}{2}s_{1}^*
\end{cases}
$$
$s_{2}=\frac{1}{2}$
$s_{1}=\frac{1}{2}$

### 6.
**Consider a game in which, simultaneously, player 1 selects any real number x and player 2 selects any real number y. The payoffs are given by:** 
**u1 (x, y) = 2x − x^2 + 2xy** 
**u2 (x, y) = 10y − 2xy − y^2.**

**(a) Calculate and graph each player’s best-response function as a function of the opposing player’s pure strategy.**


```tikz 
\begin{document} 
\begin{tikzpicture}[domain=0:7, scale=1];
\draw[thick, ->] (0,0) -- (7,0) node[right] {$x$}; 
\draw[thick, ->] (0,0) -- (0,7) node[above] {$y$}; 
\draw[thick, color=black] plot (\x,{\x-1}) node[right] {$BR_{1}$}; 
\draw[thick, color=black] plot (\x,{5-\x}) node[right] {$BR_{2}$};
\end{tikzpicture} 
\end{document} 
```

x(y) = y + 1
	2-2x+2y = 0
	2x=2+2y
	2x-2=2y
	x=y+1
	x-1=y
y(x)= 5 -x

10-2x-2y = 0
y = 5-x
5-y = x
**(b) Find and report the Nash equilibria of the game.**
$$
NE=
\begin{cases}
x = y + 1  \\
y = 5-x
\end{cases}
$$

y = 5 - (y + 1)
y = 5 -y - 1
y = 4 -y 
y + y= 4 
2y = 4
y=1/2
x=1/2

**(c) Determine the rationalizable strategy profiles for this game.**
Son todas racionalizables. a=1


### 7.
**Consider the normal-form game pictured here:**
![[Pasted image 20240424084321.png|300]]
All of the payoff numbers are specified, with the exception of that denoted by x. Find a number for x such that the following three statements are all true: $(B, X)$ is a Nash equilibrium,$(A, Z)$ is an efficient strategy profile, and, for the belief $\theta_{1} = (\frac{1}{2} , \frac{1}{2}$), Y is a best response for player 2; that is, $Y\in Br_{2}(\theta_{2})$

$(B, X)$ is a Nash equilibrium : OK
$(A, Z)$ is an efficient strategy profile :
	$x>4$
for the belief $\theta_{1} = (\frac{1}{2} , \frac{1}{2}$), Y is a best response for player 2; that is, $Y\in Br_{2}(\theta_{2})$
	$x<4$

### 8.
**Consider the nine-region location game presented in Chapter 8, where two vendors simultaneously choose locations and then customers walk to the nearest vendor to purchase a single unit. That is, the strategy space for each player i is Si = {1, 2, 3, 4, 5, 6, 7, 8, 9}. Assume that there are ten customers in each region. Suppose that, unlike in the standard model, each customer is only willing to walk up to two regions away. For example, customers in region 1 are willing to walk to regions 2 or 3 to purchase a unit, but they will not travel to any higher-numbered regions. Thus, each player’s payoff is the number of customers up to two regions away who are closer to this player’s location than to the other player’s location, with the customers who are indifferent dividing evenly.** 

**(a) Describe the strategies that are eliminated in the first two rounds of the rationalizability procedure.** 

|     | 1   | 2   | 3   |
| --- | --- | --- | --- |
|     | 15  | 30  | 35  |
|     | 10  | 20  | 30  |
|     | 15  | 20  | 25  |
|     | 20  | 25  | 30  |
|     | 25  | 30  | 35  |
|     | 30  | 35  | 40  |
|     | 30  | 40  | 45  |
|     | 30  | 40  | 50  |
|     | 30  | 40  | 50  |

$R_{1}=\{ 2,3,4,5,6,7,8 \}$
$R_{2}=\{ 3,4,5,6,7 \}$

**(b) This game has exactly two Nash equilibria. Find them.**
$NE=\{ (3,7), (7,3) \}$

### 9.
**Consider a two-player game with the following strategy spaces: S1 = [0, 5] and S2 = [0, 5]. Suppose the players’ best-response functions, s1 = BR1 (s2 ) and s2 = BR2 (s1), are as pictured here.**
![[Pasted image 20240424102920.png|300]]
**a.Does this game have any Nash equilibria? If so, what are they?**
Donde ambos eligen sus mejores respuestas
(2,1); (2.5, 2); (3,3)

**b.What is the set of rationalizable strategy profiles for this game?**
$[2,3] \times [1,3]$


### 10.
**Is the following statement true or false? If it is true, explain why. If it is false, provide a game that illustrates that it is false. “If a Nash equilibrium is not strict, then it is not efficient.”**

|     | C   | D   |
| --- | --- | --- |
| A   | 0 0 | 5 5 |
| B   | 0 0 | 5 0 |
(A,D) es eficiente y no es estricto

### 11.
This exercise asks you to consider what happens when players choose their actions by a simple rule of thumb instead of by reasoning. Suppose that two players play a specific finite simultaneous-move game many times. The first time the game is played, each player selects a pure strategy at random. If player i has $m_{i}$ strategies, then she plays each strategy si with probability $1/m_{i}$ . At all subsequent times at which the game is played, however, each player i plays a best response to the pure strategy actually chosen by the other player the previous time the game was played. If player i has k strategies that are best responses, then she randomizes among them, playing each strategy with probability $\frac{1}{k}$

**(a) Suppose that the game being played is a prisoners’ dilemma. Explain what will happen over time.** 
Siempre confiesan, no importa lo que elige el otro siempre es su mejor repsuesta

**(b) Next suppose that the game being played is the battle of the sexes. In the long run, as the game is played over and over, does play always settle down to a Nash equilibrium? Explain.** 

Si eligen lo mismo quedan siempre en ese mismo equilibrio
si eligen distinto en cada iteración quedan fuera de la diagonal

**(c) What if, by chance, the players happen to play a strict Nash equilibrium the first time they play the game? What will be played in the future? Explain how the assumption of a strict Nash equilibrium, rather than a nonstrict Nash equilibrium, makes a difference here.** 

si los dos caen en un equiliriuo, entonces en la siguiente van a elegir el mismo equilibrio
porque si
x(y) es la mejor respuesta del j1, y y(x) las del 2, 
x(y*)=x*, y(x*)=y*
si eligen eso en la primer iteración, (x*, y*)
en la segunda eligen j1 la mejor respuesta a  y* que si es nash , es x*, y viceversa
si no es estricto por ejemplo para el j1 entonces no es la unica que puede suceder , randomiza entre las k mejores respuestas de las cuales una era x* del nash

**(d) Suppose that, for the game being played, a particular strategy si is not rationalizable. Is it possible that this strategy would be played in the long run? Explain carefully.**
Eventualmente deja de jugarla porque por definicion nunca es mejor respuesta a cualquier cosa que juege el otro

### 12.
**Consider a two-player game and suppose that s* and t* are Nash equilibri- um strategy profiles in the game. Must it be the case that {s*1 , t*1 } × {s*2 , t*2 } is a weakly congruous strategy set? Explain why or why not.**
Si. Porque cada perfil incluye una mejor respuesta entonces siempre alguna conjetura  le pone probabilidad positiva y son racionalizables.

### 13.

**Consider the following n-player game. Simultaneously and independently, the players each select either X, Y, or Z. The payoffs are defined as follows. Each player who selects X obtains a payoff equal to $\gamma$, where g is the number of players who select Z. Each player who selects Y obtains a payoff of 2$\alpha$, where a is the number of players who select X. Each player who selects Z obtains a payoff of 3$\beta$, where b is the number of players who select Y. Note that $\alpha+\beta+\gamma = n$. 

**(a) Suppose n = 2. Represent this game in the normal form by drawing the appropriate matrix.** 

|     | X                     | Y                      | Z                    |     |
| --- | --------------------- | ---------------------- | -------------------- | --- |
| X   | ($\gamma$, $\gamma$)  | ($\gamma$, $2\alpha$)  | ($\gamma$,$3\beta$)  |     |
| Y   | ($2\alpha$, $\gamma$) | ($2\alpha, 2 \alpha$)  | ($2 \alpha, 3\beta$) |     |
| Z   | ($3\beta$, $\gamma$)  | ($3\beta$, $2 \alpha$) | ($3\beta,3\beta$)    |     |
$\beta:Y$
$\alpha:X$
$\gamma:Z$

|     | X          | Y          | Z          |
| --- | ---------- | ---------- | ---------- |
| X   | (0, 0)     | (0, **2**) | (**1**,0)  |
| Y   | (**2**, 0) | (0, 0)     | (0, **3**) |
| Z   | (0, **1**) | (**3**, 0) | (0,0)      |


**(b) In the case of n = 2, does this game have a Nash equilibrium? If so, describe it.**

no

**(c) Suppose n = 11. Does this game have a Nash equilibrium? If so, describe an equilibrium and explain how many Nash equilibria there are.**

$\alpha+\beta+\gamma = 11$
todos eligen la misma proporción relativa en términos de utilidad
$2\alpha=3\beta=\gamma$




### 14.
 **Heather and David (players 1 and 2) are partners in a handmade postcard business. They each put costly effort into the business, which then determines their profits. However, unless they each exert at least 1 unit of effort, there are no revenues at all. In particular, each player i chooses an effort level $e_{i}\geq 0$. Player i ’s payoff is** $$
\begin{cases}
-e_{i} \ \ \ e_{j}<1 \\
e_{i}(e_{j}-1)^2+e_{i}-\frac{1}{2}e_{i}^2  \ \ \ \ e_{j}\geq 1
\end{cases}
$$**where j denotes the other player.** 
**(a) Prove that (0,0) is a Nash equilibrium.** 
Si el otro elige 0, aumentar tu esfuerzo a algo mas que 0 siempre da un pago peor. En ese perfil ninguno puede elegir otra estrategia y estar mejor dado lo que elige el otro.

**(b) Graph the players’ best responses as a function of each other’s strategies.**
$$
BR_{i}(e_{j})=
\begin{cases}
0 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if \ \ \ \ e_{j} < 1 \\
(e_{j}-1)^2 +1 \ \ \ if \ \ \ \ e_{j} \geq 1
\end{cases}
$$
![[Pasted image 20240424233048.png|400]]
(c) Find all of the other Nash equilibria.
(1,1) , (2,2)

### 15.
**Suppose you know the following for a particular three-player game: The space of strategy profiles S is finite. Also, for every s ∈ S, it is the case that $u_{2} (s) = 3u_{1} (s), \ \ u_{3} (s) = [u_{1} (s)]^2$, and $u_{1} (s) ∈ [0, 1]$.** 

**(a) Must this game have a Nash equilibrium? Explain your answer.** 
Por el teorema de nash, todo juego finito tiene quilibirio
u son continuas  y cuasiconcavas

**(b) Must this game have an efficient Nash equilibrium? Explain your answer.** 
sin mas restricciones el equilibrio va a ser eficiente. para todos los numeros entre 0 e 1 el 1 elige 1 porque maximiza, es su mejor respuesta, y los demas obitienen 1, entonces es eficiente

**(c) Suppose that in addition to the information given above, you know that s* is a Nash equilibrium of the game. Must s* be an efficient strategy profile? Explain your answer; if you answer “no,” then provide a counterexample****
si, por definicion estan mejor-respondiendo en ese punto, , commo todos dependen de la utilidad de 1 cuasiconcava, entonces es eficiente, si se mueven dejan de elegir la mejor respuesta. 