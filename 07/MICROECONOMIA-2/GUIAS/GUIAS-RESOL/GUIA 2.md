## 1) WATSON CAP 6
### 1.
a) 
![[../../../0-misc/Pasted image 20240312225212.png|200]]
J1: A está dominada
J2: R está dominada

b) 
![[../../../0-misc/Pasted image 20240312225224.png|200]]
J1: Ninguna es estrictamente dominada
J2: R está dominada (por L). En cuanto a L y C, ninguna domina a la otra

c)
![[../../../0-misc/Pasted image 20240312225751.png|200]]
J1: -
J2: Z es dominada por X

d)
![[../../../0-misc/Pasted image 20240312225808.png|200]]
J1: -
J2: -

### 2.
**For the game in Exercise 1 of Chapter 4, determine the following sets of best responses.** 
![[../../../0-misc/Pasted image 20240310130541.png|200]]
(a) $BR_{1} (\theta_{2} )$ for $\theta_{2} = \left( \frac{1}{3}, \frac{1}{3}, \frac{1}{3} \right)$ 
$u_{U}$ = 10 * 1/3 + 0 + 3 * 1/3 =4.33
$u_{M}$ = 2 * 1/3 + 10 * 1/3  + 6 * 1/3 = 6
$u_{D}$ = 3 * 1/3 + 4 * 1/3 + 6 * 1/3 =4.33
$BR_{1} (\theta_{2} ) = \{ M \}$

(b) $BR_{2} (\theta_{1} )$ for $\theta_{1}= \left( 0, \frac{1}{3}, \frac{2}{3} \right)$
$u_{L}$= 0 * 0+ 10 * 1/3 + 2/3 * 3 = 5.33
$u_{C}$= 0 * 10 + 1/3 * 2* + 2/3 * 6 = 2.66
$u_{R}$= 0 * 3 + 4  * 1/3+ 6 * 2/3  = 5.33
$BR_{2} (\theta_{1} )=\{ L, R \}$

(c) $BR_{1} (\theta_{2} )$ for $\theta_{2} = \left( \frac{5}{9}, \frac{4}{9}, 0 \right)$
$u_{U}$ = 5/9 * 10 + 0 * 4/9 + 3 * 0 = 5.55
$u_{M}$ = 5/9 * 2 + 10 * 4/9 + 6 * 0 = 5.55
$u_{D}$ =  5/9 * 3 + 4 * 4/9 + 6 * 0 = 3.44
$BR_{1} (\theta_{2} )=\{ U, M \}$

(d) $BR_{2} (\theta_{1} )$ for $\theta_{1} = \left( \frac{1}{3}, \frac{1}{6}, \frac{1}{2} \right)$ 
$u_{L}$ = 1/3 * 0+ 1/6 * 10 +1/2 * 3 =3.166
$u_{C}=$ 1/3 * 10 +1/6 * 2 + 1/2 * 6 = 6.66
$u_{R}$ = 1/3 * 3 +1/6 * 4 + 1/2 * 6 = 4.66
$BR_{2} (\theta_{1} )=\{ C \}$

### 3.
**Consider a version of the Cournot duopoly game (described in earlier exercises), where firms 1 and 2 simultaneously and independently select quantities to produce in a market. The quantity selected by firm i is denoted $q_{i}$ and must be greater than or equal to zero, for $i = 1, 2$. The market price is given by $p = 100 − 2q_{1} − 2q_{2}$ . Suppose that each firm produces at a cost of 20 per unit. Further, assume that each firm’s payoff is defined as its profit. Is it ever a best response for player 1 to choose $q_{1}$ = 25? Suppose that player 1 has the belief that player 2 is equally likely to select each of the quantities 6, 11, and 13. What is player 1’s best response?**

Va a ser best response si la utilidad de esa estrategia es mayor que la de cualquier otra de las suyas es más alta

$u_{1}(q_{1}, q_{2})=100q_{1}-2q_{1}²-2q_{2}q_{1}-20$ 
$u_{1}(25, q_{2})=100·25-2·25²-2q_{2}25-20$ 
$u_{1}(25, q_{2})>u_{1}(q'_{1}, \theta)$      si $q_{1}'> 0 \ \cap q_{1}'\neq 25$

Entonces la pregunta es si 25 maximiza la función  $u_{1}(q_{1}, q_{2})$, que es cuadrática
$$\frac{\partial u_{1}(q_{1}, q_{2})}{\partial q_{1}}=80-4q_{1}-2q_{2}=0$$
La estrategia del jugador 1 que maximiza es:
$$
q_{1}= 20-\frac{q_{2}}{2}
$$
25=20-q/2
25-20=-q/2
-25+20=q/2
-5/2=q
Y 25 es entonces el máximo sólo si también $q_{2}=90$. 
Es la mejor respuesta si cree que la estrategia del jugador 2 es elegir cantidad 25
±±
Con la creencia de que 
$p(q_{2}=6)=\frac{1}{3}$
$p(q_{2}=11)=\frac{1}{3}$
$p(q_{2}=13)=\frac{1}{3}$
y $p=0$ para todos los demás

la utilidad es:
$\frac{1}{3}u_{1}(q_{1}, 6)+\frac{1}{3}u_{1}(q_{1}, 11)+\frac{1}{3}u_{1}(q_{1}, 13)$ 
$=\frac{1}{3}[100q_{1}-2q_{1}²-2(6)q_{1}-20 ]$
$+\frac{1}{3}[100q_{1}-2q_{1}²-2(11)q_{1}-20 ]$
$+\frac{1}{3}[100q_{1}-2q_{1}²-2(13)q_{1}-20 ]$
lo cual es función sólo de $q_{1}$.

La mejor respuesta es el $q_{1}$ donde la función es máxima.
$=\frac{100}{3}q_{1}-\frac{2}{3}q_{1}²-\frac{12}{3}q_{1}-\frac{20}{3}$
$+\frac{100}{3}q_{1}-\frac{2}{3}q_{1}²-\frac{22}{3}q_{1}-\frac{20}{3}$
$+\frac{100}{3}q_{1}-\frac{2}{3}q_{1}²-\frac{2(13)}{3}q_{1}-\frac{20}{3}$
juntando las q : -12/3  -22/3 -(2* 13)/3=-20
$=100q_{1}-2q_{1}^2-20q_{1}-20$
$=80q_{1}-2q_{1}^2-20$

Ahora simplemente igualas la derivada a 0
$80-2q_{1}-20=0$
$-2q_{1}=20-80$
$2q_{1}=-20+80$
$q_{1}=-10+40=30$

### 4.
For the game of Figure 6.2, determine the following best-response sets.
![[../../../0-misc/Pasted image 20240313145715.png|200]]
a) $BR_{1}(\theta_{2})$ for $\theta_{2}=\left( \frac{1}{2}, \frac{1}{3}, \frac{1}{2} \right)$
U = 1 + 2 = 3
M = 3/2 + 1/2 = 2
D = 1/2 + 1 + 1 = 2.5
$BR_{1}(\theta_{2}) = \{ U \}$

b) $BR_{2}(\theta_{1})$ for $\theta_{1}=\left( \frac{1}{6}, \frac{1}{3}, \frac{1}{2} \right)$
L = 1 + 1 + 1/2 =2.5
C = 4/6 +5/2 =3.16
R = 4/6 + 5/2 + 3/2 =4.66
$BR_{2}(\theta_{1}) = \{ R \}$

c) $BR_{1}(\theta_{2})$ for $\theta_{2}=\left( \frac{1}{4}, \frac{1}{8}, \frac{5}{8} \right)$
U = 2/4 + 4* 5/8=3
M = 3/4 + 5/8 =1.375
D = 1/4 + 3/8 + 2* 5/8=1.875
$BR_{1}(\theta_{2})=\{ U \}$

d) $BR_{1}(\theta_{2})$ for $\theta_{2}=\left( \frac{1}{3}, \frac{1}{3}, \frac{1}{3} \right)$
U 2+4=6
M 3 + 1 =4
D 1 + 3 + 2= 6
$BR_{1}(\theta_{2})=\{ U, D \}$


e) $BR_{2}(\theta_{1})$ para $\theta_{1}=\left( \frac{1}{2}, \frac{1}{2}, 0 \right)$
L 3 + 3/2  =4.5
C 2 
R 4/2 + 5/2 =4.5
$BR_{2}(\theta_{1})=\{ L, R \}$
### 5. 
**Represent in the normal form the rock–paper–scissors game (see Exercise 4 of Chapter 2 to refresh your memory) and determine the following best response sets.**

| 1/2 | R    | P    | S    |
| --- | ---- | ---- | ---- |
| R   | 0, 0 | 0, 1 | 1, 0 |
| P   | 1, 0 | 0, 0 | 0, 1 |
| S   | 0, 1 | 1, 0 | 0, 0 |

a) $BR_{1}(\theta_{2})$ for $\theta_{2}=(1,0,0)$
$BR_{1}(\theta_{2}) = P$

b) $BR_{1}(\theta_{2})$ for $\theta_{2}=\left( \frac{1}{6}, \frac{1}{3}, \frac{1}{2} \right)$
$BR_{1}(\theta_{2}) = R$

c) $BR_{1}(\theta_{2})$ for $\theta_{2} = (\frac{1}{2}, \frac{1}{4}, \frac{1}{4})$
$BR_{1}(\theta_{2}) = P$

D) $BR_{1}(\theta_{2})$ for $\theta_{2}=\left( \frac{1}{3}, \frac{1}{3}, \frac{1}{3}\right)$
$BR_{1}(\theta_{2}) =\{ R, P, S \}$

### 6. 
**In the game pictured here, is it ever rational for player 1 to select strategy C? Why?**
![[../../../0-misc/Pasted image 20240314150432.png|300]]
No. Nunca es mejor respuesta porque 1<3

### 7.
**In the normal-form game pictured below, is player 1’s strategy M dominated? If so, describe a strategy that dominates it. If not, describe a belief to which M is a best response**
![[../../../0-misc/Pasted image 20240314160849.png|200]]

Está dominado si hay otra estrategia que sea estrictamente mejor
3 < p9+(1-p) -> 2/8=0.25 < p
4< p+(6-6p) -> 2/5=0.4 > p
No existe caso para el que M es mejor respuesta.
está dominada por (1/3, 1/3, 0) por ejemplo

### 8.
Las estrategias no dominadas son las $q_{1}$ que maximizan la ganancia.
$\frac{\partial u_{1}(q_{1}, q_{2})}{\partial q_{1}}=80-4q_{1}-2q_{2}=0$
$BR_{1}(q_{2})=q_{1}= 20- \frac{q_{2}}{2}$
sabiendo que $q_{2}>0$
$\frac{q_{2}}{2}>0$
$-\frac{q_{2}}{2}<0$
$+20-\frac{q_{2}}{2}<+20$

Entonces la mejor respuesta es siempre menor a 20
$UD=[0,20]$
### 9. ??
**Two medieval city-states, Simancas and Toro, are located near each other. Each city-state is controlled by a totalitarian prince, so each can be represented as a single player. Call the prince of Simancas player 1, and let the prince of Toro be called player 2. The land surrounding each city-state can be divided among two uses: forested land for deer hunting, and cleared land for growing wheat. Each city-state has five units of land. At the outset, all of the land is forested. Each city-state $i$ (where $i = 1, 2$) must make two decisions: how much land to clear for growing wheat, $g_{i} ∈ [0, 5]$, and how many hounds to raise for hunting deer, $h_{i} ∈ [0, \infty)$. All decisions are made simultaneously. Payoffs depend on the total quantity of forested land in both city-states (deer roam freely across borders) and the number of hounds raised in both city-states. The deer harvest for city-state $i$ is increasing in its own number of hounds but decreasing in the other city-state’s number of hounds. Specifically, the deer harvest in city-state $i$ is $\max\{0, 2h_{i} − h_{j} \}(10 − gi − gj )$, where $j$ denotes the other city-state. Here, the “maximum” operator is needed to ensure that the harvest is never negative. The wheat-growing results for each city-state, on the other hand, depend only on its own quantity of cleared land. Specifically, the wheat harvest in city-state $i$ is $6g_{i}$. Raising hounds and clearing land are both costly. Suppose the cost to city-state $i$ is $g^2_{i} + 2h_{i}^{2}$ . Summing up, the payoff for city-state 1 is**
$u_{1}(g_{1}, h_{1}, g_{2}, h_{2}) = \max\{0,2h_{1}-h_{2}\}(10-g_{1}-g_{2})+6g_{1}-g_{1}^2-2h_{1}^2$  
$u_{2}(g_{1}, h_{1}, g_{2}, h_{2}) = \max\{0,2h_{2}-h_{1}\}(10-g_{2}-g_{1})+6g_{2}-g_{2}^2-2h_{2}^2$

a) Show that the strategy $(g_{i} , h_{i}) = (0, 0)$ is dominated for each city-state $i$.
$u_{1}(0, 0, g_{2}, h_{2}) = \max\{0,2·0-h_{2}\}(10-0-g_{2})+6·0-0²-2·0^² = 0$  
$u_{2}(g_{1}, h_{1}, 0, 0) = \max\{0,2·0-h_{1}\}(10-0-g_{1})+6·0-0²-2·0^2 = 0$  




$u=max\{ 0 ,(2h_{i}-h_{j} ) \}(9-g_{i}-g_{j})+6g_{i}-g_{i}^2-2h_{i}^2$ > 0

**caso $h_{j} < 2h_{i}$**,       $g_{j}, g_{i} \in [0,5]$
$u=6g_{i}-g_{i}^2-2h_{i}^2$
6g-g^2-2h^2


**caso $h_{j} > 2h_{i}$**,       $g_{j}, g_{i} \in [0,5]$
$(2h_{i}-h_{j} )(9-g_{i}-g_{j})+6g_{i}-g_{i}^2-2h_{i}^2$
(2h-x)(9-g-y)+6g-g^2-2h^2

pruebo : $g_{i}, h_{i}$  = 1




Existen estrategias $g_{i}, h_{i}$ para las que el payoff es mayor a 0.



b)
Show that any strategy with $h_{i}>5$ is dominated for each city-state $i$.

### 10.
**In this simplified “ultimatum-offer” bargaining game, the players negoti- ate over how to divide two dollars. Player 1 chooses whether to offer all of the money (action H), half of the money (M), or none of the money (L) to player 2. Player 2 observes the offer and then decides whether to accept it. If the offer is rejected, then the players both get zero. For this game, can you find any strategies that are weakly dominated but not dominated?**
![[Pasted image 20240315160446.png|300]]

| 1/2 | AH, AM, AL | AH, AM, RL | AH, RM, AL | AH, RM, RL | RH, AM, AL | RH, AM, RL | RH, RM, AL | RH, RM, RL |     |
| --- | ---------- | ---------- | ---------- | ---------- | ---------- | ---------- | ---------- | ---------- | --- |
| H   | 0,2        | 0,2        | 0,2        | 0,2        | 0,0        | 0,0        | 0,0        | 0,0        |     |
| M   | 1,1        | 1,1        | 0,0        | 0,0        | 1,1        | 1,1        | 0,0        | 0,0        |     |
| L   | 2,0        | 0,0        | 2,0        | 0,0        | 2,0        | 0,0        | 2,0        | 0,0        |     |
|     |            |            |            |            |            |            |            |            |     |
M debilmente domina a H
L y M no se dominan de ninguna forma
Ninguna domina estrictamente a las demás
 AH, AM, AL y AH, AM, RL dominan débilmente a AH, RM, AL y AH, RM, RL
RH, AM, AL y RH, AM, RL dominan débilmente RH, RM, AL y RH, RM, RL
AH, AM, AL y AH, AM, RL dominan débilmente a todas las demás.
 
## 2) -----------
Un peatón y un conductor pueden tener cuidado o no tenerlo cuando andan por las calles. Si alguno de los dos no pone cuidado, ocurre un accidente. Si los dos son cuidadosos el accidente ocurre con probabilidad 0,1. El accidente provoca una pérdida de 100 para el peatón. El costo de prestar atención es de 10. Para cada uno de los casos que sigue, dibuje la matriz del juego y dé una predicción para el resultado de la interacción y la probabilidad de accidente. ¿Cuál caso genera incentivos adecuados? 

a. Ley de la Selva: no hay ningún tipo de compensación de un jugador a otro en caso de accidente. 


| peaton/conductor | Cuidado    | No Cuidado   |     |
| ---------------- | ---------- | ------------ | --- |
| Cuidado          | (-20,-10)  | (-110, 0)    |     |
| No Cuidado       | (-100,-10) | **(-100,0)** |     |
No cuidado domina a Cuidado 
b. Los conductores son responsables: en caso de accidente el conductor debe compensar al peatón con 100. 

| peaton/conductor | Cuidado   | No Cuidado   |     |
| ---------------- | --------- | ------------ | --- |
| Cuidado          | (-10,-20) | (-10, -100)  |     |
| No Cuidado       | (0,-110)  | (**0,-100)** |     |

Peaton No cuidado domina cuidado
en ese juego reducido no cuidado domina a cuidado para le conductor 

c. Responsabilidad compartida: en caso de accidente el conductor debe compensar al peatón con 100, sólo si el conductor no tuvo cuidado y el peatón fue cuidadoso.

| peaton/conductor | Cuidado       | No Cuidado  |     |
| ---------------- | ------------- | ----------- | --- |
| Cuidado          | **(-20,-10)** | (-10, -100) |     |
| No Cuidado       | (-100,-10)    | (-100, 0)   |     |

ahora domina Cuidado para peaton
Después en ese juego reducido le conviene tener cuidado al conductor


## 3) WATSON CAP 7
### 1.
**Determine the set of rationalizable strategies for each of the following games.**
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
$R=\{ (U,X) \}$

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

e)
![[Pasted image 20240316201720.png|200]]
$R=\{ A, B \} \times \{ X, Y \}$

f)
![[Pasted image 20240316201838.png|200]]
Ninguna está dominada
$R=\{ A, B \} \times \{ X, Y \}$

g)
![[Pasted image 20240316202339.png|200]]
D domina a U
$R_{1}=\{ D \} \times \{  X, Y \}$
X domina a Y
$R=\{ (D, Y) \}$


### 2.
**Suppose that you manage a firm and are engaged in a dispute with one of your employees. The process of dispute resolution is modeled by the following game, where your employee chooses either to “settle” or to “be tough in negotiation,” and you choose either to “hire an attorney” or to “give in.”**
![[Pasted image 20240316202555.png|200]]
**In the cells of the matrix, your payoff is listed second; x is a number that both you and the employee know. Under what conditions can you rationalize selection of “give in”? Explain what you must believe for this to be the case.**
Para que sea racional give in tiene que ser mejor respuesta para el manger. Solo si be tough está dominada (y si es racional, nunca la jugaría) entonces para el jugador 2 es racional. Manager tiene que tener una conjetura de que no va a elegir be tough, primero x<0 para que be tough no domine a settle y tiene que asignarle probabilidad mayor a 1/2 a que va a jugar settle.

### 3.
**Find the set of rationalizable strategies for the following game. Note that each player has more than one dominated strategy. Discuss why, in the iterative process of deleting dominated strategies, the order in which dominated strategies are deleted does not matter.**
![[Pasted image 20240321132146.png|200]]
J2: 
d esta dominada por c
b esta dominada por una mixta entre a y c
p<1
p<1
p>0
p<1/6

0.1* 4+0.9 * 10=9.4>9
0.1* 10 + 0.9* 6=6.4 >6
0.1* 7 + 0.9 * 8 =7.9 >7
0.1 * 4 + 0.9* 5 = 4.9 >4


J1: 
y, z esta dominadas por mixtas de w, x
p>-1/2, p>1/2
p<1/4, p<3/4
p<1
p>-1/2, p>0

1/5 * 5 + 4/5 * 3 =3.4 > 2
1/5 * 4 + 4/5 * 8 =7.2 > 7 
1/5 * 4 + 4/5 * 5 =4.8 > 4
1/5 * 12 + 4/5 * 10 =10.4 > 9

0.7 * 5 + 0.3* 3 = 4.4 >4
0.7 * 4 + 0.3 * 8 =5.2>5
0.7 * 4 +0.3 * 5 =4.3>4
0.7 * 12 + 0.3 * 10 =11.4>10

$R_{1}=\{ a, c \} \times \{ w, x \}$

a dominada por c
$R_{2}=\{ c \} \times \{ w, x \}$
x domina a w
$R_{3}=\{ (c, x) \}$

### 4.
**Imagine that there are three major network-affiliate television stations in Turlock, California: RBC, CBC, and MBC. All three stations have the option of airing the evening network news program live at 6:00 p.m. or in a delayed broadcast at 7:00 p.m. Each station’s objective is to maximize its viewing audience in order to maximize its advertising revenue. The following normal-form representation describes the share of Turlock’s total population that is “captured” by each station as a function of the times at which the news programs are aired. The stations make their choices simultaneously. The payoffs are listed according to the order RBC, CBC, MBC. Find the set of rationalizable strategies in this game.**
![[Pasted image 20240321132215.png|300]]
MBC : 6 domina a 7
R1: $\{ 6, 7 \} \times \{ 6, 7 \} \times \{  6 \}$
RBC : 6 domina a 7
R2: $\{ 6 \} \times \{ 6, 7 \} \times \{  6 \}$
CBC : 7 domina a 6
R: $\{ 6 \} \times \{ 7 \} \times \{  6 \}$
### 5.
**Suppose that in some two-player game, $s_{1}$ is a rationalizable strategy for player 1. If $s_{2}$ is a best response to $s_{1}$ , is $s_{2}$ a rationalizable strategy for player 2? Explain.**

si. es racionalizable porque es una mejor respuesta a la estrategia s1 del otro jugador que también es racionalizable.
### 6.
**Suppose that in some two-player game, s1 is a rationalizable strategy for player 1. If, in addition, you know that s1 is a best response to s2 , can you conclude that s2 is a rationalizable strategy for player 2? Explain.**

Depende de si s2 es mejor respuesta a s1.
Ejemplo:

|      | s1 a   | s2 b |
| ---- | ------ | ---- |
| s1 a | 13, 20 | 3, 5 |
| s1 b | 7, 16  | 7, 2 |

|      | s2 a | s2 b   |
| ---- | ---- | ------ |
| s1 a | 3, 5 | 13, 20 |
| s1 b | 7, 2 | 7, 16  |
### 7.?
**Consider a guessing game with ten players, numbered 1 through 10. Simultaneously and independently, the players select integers between 0 and 10. Thus player i ’s strategy space is $S_{i} = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}$, for $i = 1, 2, \dots, 10$. The payoffs are determined as follows: First, the average of the players’ selections is calculated and denoted a. That is,**
**$$
a=\frac{s_{1}+s_{2}+\dots+s_{10}}{10}
$$**
**where $s_{i}$ denotes player i ’s selection, for $i = 1, 2, ..., 10$. Then, player i ’s payoff is given by $u_{i} = (a − i − 1) s_{i}$ . What is the set of rationalizable strategies for each player in this game?**

u' = (1/5 s_i + sum(s_j)/10 )- i - 1= 0
(1/5 s_i + sum(s_j)/10 )-i-1 =
s_i = ( ( 1 + i - sum(s_j) ) /10 )/5



### 8. 
**Consider the following game played between 100 people. Each person i chooses a number $s_{i}$ between 20 and 60 (inclusive). Let $a_{-i}$ be defined as the average selection of the players other than player i ; that is, $a_{-i}=\frac{\sum_{i \neq j}s_{j}}{99}$. Person i ’s payoff is $u_{i} (s) = 100 − \left( s_{i} − \frac{3}{2}a_{-i}  \right)^2$. For instance, if the average of the $−i$ players’ choices is 40 and player i chose 56, then player i would receive a payoff of $100 − \left( s_{i} − \frac{3}{2} · 40 \right)² = 100 − 4^2 = 84$ 

**(a) Find an expression for player i ’s best response to her belief about the other players’ strategies as a function of the expected value of $a_{-i}$, which we can denote $\bar{a}_{-i}$ . What is the best response to $\bar{a}_{-i} = 40$?** 
max u 
$-2\left(s_{i}-\frac{3}{2} \bar{ a} _{-i}\right)=0$ 
s=3/2 a
s = 3/2 * 40=60

**(b) Use your answer to part (a) to determine the set of undominated strategies for each player. Note that dominated strategies are those that are not best responses (across all beliefs).** 
$UD=s \in \frac{3}{2}\bar{a}$
$a \in [ 20 , 60]$
$\bar{a}=40$
$UD =R_{1} =s \in [30 , 60]$ (todas las conjeturas sobre las estrategias de los demás)

**(c) Find the set of rationalizable strategies. Show what strategies are removed in each round of the deletion procedure.** 
  $s \in [20, 30)$  nadie las va a elegir porque están dominadas
en ese caso el mínimo que puede tomar $a$ es 30* 3/2=45, nadie elige menos que eso
las mejores respuestas entonces van a estar entre 
$R_{2}=[45,60]$
De nuevo cambia el limite, 
45* 3/2=67.5
les conviene elegir 60

**(d) If there were just two players rather than 100, but the definition of payoffs remained the same, would your answers to parts (a) and (b) change?** 
No cambia nada

**(e) Suppose that instead of picking numbers between 20 and 60, the players can select numbers between y and 60, where y is a fixed parameter between 0 and 20. Calculate the set of rationalizable strategies for any fixed y. Note how the result depends on whether y > 0 or y = 0.**
$y \in [0,20]$ 
$UD=s \in \frac{3}{2}\bar{a}$
$a \in [ y , 60]$
$\bar{a}=25$ ?
$UD =R_{1} =s \in \left[ \frac{3}{2} y , 60 \right]$ (todas las conjeturas sobre las estrategias de los demás)
3/2y > y
ahora a va a tomar valores entre $a \in [\frac{3}{2} y, 60]$
y asi va a cortando mas arriba

CASO si y = 0
3/2* 0  = 0
$a$ se queda entre 0 y 60

### 9. 
**Consider a two-player simultaneous move game with $S_{1} = S_{2} = [0, 1]$. Suppose that, for $i = 1, 2$, player i ’s best response can be represented as a function of $\bar{s}_{j}$ , the expected value of $s_{j}$ according to player i ’s belief (where $j = − i$). Specifically, player 1’s best response function is given by $BR_{1} (s_{2} ) = s_{2}$ , and player 2’s best response function is given by**
$$
BR_{2}(\bar{s}_{1}) = min\left\{  \frac{1}{4} + \bar{s}_{1}, \ 1 \right\}
$$
**To be clear about this functional form, if $\frac{1}{4} + \bar{s}_{1} < 1$, then player 2’s best response is $\frac{1}{4} + \bar{s}_{1}$. Otherwise, player 2’s best response is 1.

**(a) Graph the best response functions for each player.** 
![[Pasted image 20240322000508.png|400]]

**(b) Find B1 and B2 . Calculate the rationalizable strategy set and explain which strategies are removed in each round of the iterated dominance procedure.**
1 pass
BR1 son todas las mejores respuestas para cualquier estrategia del jugador 2 (eje y). Pero si el jugador 2 es racional y entonces no va a jugar cualquier estrategia en el eje y, va a jugar las que formen su mejor respuesta. el jugador 1 sabe que el jugador 2 es racional, entonces a sun vez solo elige sus mejores respuestas tal que surjan de estrategias racionales del jugador 2
![[Pasted image 20240322001053.png|400]]
BR2 juega solo estartegias entre la linea punteada naranja
J1 sabe eso entonces solo juega sus mejores respuestas para valores de y que el jugador 2 racionalmente vaya a jugar

2 pass:
Ahora todo eso también lo sabe el jugador 2 sobre le jugador 1, entonces el jugador 2 no va a elegir respuestas para cualquier valor que elija el jugador 1, sino solo las que surjan de esa conjetura que tiene a su vez sobre ella. 
![[Pasted image 20240322001703.png|400]]
![[Pasted image 20240322001736.png|400]]
![[Pasted image 20240322001807.png|400]]
![[Pasted image 20240322001824.png|400]]
$B_{1}=B_{2}=[0.75,1]$
