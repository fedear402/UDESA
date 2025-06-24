## 1. WATSON CAP 11
2 7 8 11 12 13 14 15
### 1.
**Consider the following normal-form game.**
![[Pasted image 20240425004544.png|200]]

**(a) Determine the set of rationalizable strategies for this game.** 
W esta dominada por mixta entre Z y Q
$R=\{ Q,Z \}\times \{ X,Y \}$

**(b) The game has only one Nash equilibrium, and it is a mixed-strategy Nash equilibrium. Compute this equilibrium**
u1(X, q) = q1 + (1-q)3 = q2+(1-q)0 = u1(Y, q)
q+3-3q=2q
3=2q+3q-q
3=4q
3/4=q

u2(Q,p) = 7p+(1-p)3=4p+(1-p)6
7p+3-3p=4p+6-6p
7p+6p-4p-3p=6-3
7p+6p-4p-3p=3
6p=3
p=1/2

### 2.
**Suppose you know the following about a particular two-player game: $S_{1}=\{ A,B,C \}, S_{2}=\{ X,Y,Z \}, u_{1}(A,X)=6, u_{1}(A,Y)=0$ and $u_{1}(A,Z)=0$. In addition, suppose you know that the game has a mixed-strategy Nash equilibrium in which (a) the players select each of their strategies with positive probability, (b) player 1’s expected payoff in equilibrium is 4, and (c) player 2’s expected payoff in equilibrium is 6. Do you have enough information to calculate the probability that player 2 selects X in equilibrium? If so, what is this probability?**

sigma 1 = (p, q, 1-p-q)
sigma 2 = (m, n , 1-m-n)

u1(A, sigma2) = u1(B, sigma2) = u1(C, sigma2)
6m + 0n + 0(1-m-n) = u1(B, sigma2) = u1(C, sigma2)

4 = U1 (sigma1, sigma2)
4 = p * u1(A, sigma2) + q * u1(B, sigma2) + (1-p-q) * u1(C, sigma2)
4 = p * 6m + q * 6m + (1-p-q) * 6m
4 = m * 6
m = 2/3

### 3.
**Consider another version of the lobbying game introduced in this chapter. Suppose the payoffs are the same as presented earlier, except in the case in which firm X lobbies and firm Y does not lobby. In this case, suppose the government’s decision yields x to firm X and zero to firm Y. Assume that x > 25. The normal form of this game is pictured here.**
![[Pasted image 20240425021214.png|200]]
**(a) Designate the (pure-strategy) Nash equilibria of this game (if it has any).** 
(L,N), (N,L)

**(b) Compute the mixed-strategy Nash equilibrium of the game.** 
u1(L, q) = -5 q + (1-q) (x-15) =  0 q + 10 (1-q)
-5q+(x-15) - (x-25) q = 10-10q
-5q - (x-15) q +10q= 10-(x-15)
(20-x)q = 25-x
q = (25-x)/(20-x)

u2(L,p) = -5p+(1-p)15 = 0p+10(1-p)
-5p+15-15p=10-10p
-5p-15p+10p=10-15
-10p=-5
p=1/2

**(c) Given the mixed-strategy equilibrium computed in part (b), what is the probability that the government makes a decision that favors firm X? (It is the probability that (L, N) occurs.)** 

(1-(25-x)/(20-x)) * 1/2
-5/(20-x) * 1/2

**(d) As x rises, does the probability that the government makes a decision favoring firm X rise or fall? Is this good from an economic standpoint?**

es cada vez menor

### 4.
Compute the mixed-strategy equilibria of the following games.
![[Pasted image 20240425021330.png|300]]
a) q=3/4, p=1/5

b)
q=1/2, p = 3/5
### 5.
**This exercise explores how, in a mixed-strategy equilibrium, players must put positive probability only on best responses. Consider the game in the following figure.**
![[Pasted image 20240425021320.png|200]]
**Compute the pure-strategy and mixed-strategy Nash equilibria for this game, and note how they depend on x. In particular, what is the difference between x > 1 and x < 1?**



### 6.
**Determine all of the Nash equilibria (pure-strategy and mixed-strategy equilibria) of the following games.**
![[Pasted image 20240425023027.png|200]]
msNE = 1/2
![[Pasted image 20240425023052.png|200]]
NE=DD

![[Pasted image 20240425023104.png|200]]
m2NE = 1/2
![[Pasted image 20240425023118.png|200]]
NE = BB, AA
q=1/2
p=1/5

![[Pasted image 20240425023126.png|200]]
NE= AA, BB
p=2/3
q=3/5

![[Pasted image 20240425023137.png|200]]

### 7.

| 1 \ 2 | X     | Y     |
| ----- | ----- | ----- |
| A     | (8,8) | (0,0) |
| B     | (2,2) | (6,6) |
| C     | (5,5) | (5,5) |
n mixtas , las mixtas que hacen el pago del rival indiferente entre las que juega con positiva (las racionalizables)


U2(X, (p, r, 1-p-r))=p8+r2+(1-p-r)5
U2(Y, (p, r, 1-p-r))=p0+r6+(1-p-r)5
p8+r2+5-5p-5r = r6+5-5p-5r
r2+5-5r+5r-r6 = 5-5p-p8+5p
-4r+5= -8p+5

q, 1-q
U1(A, q) = U(B, q) = U(C, q)

q=1/4
q=1/2

son dos valores entonces no puede haber un equilibrio en el que el 3 ponga probabilidad positiva en los tres,

no hay eq en la que 1 randomiza entre sus dos y el otro entre sus 3


hay tres posibilidadaes

A~B
No puede ser equilibrio
$\sigma_{2}=(q,1-q)$
BR1($\sigma_{2}$)=$\{ C  \}$

B~C
1 indiferente, puede ser
$\sigma_{1}=(0,p,1-p)$
$U_{2}(\sigma_{1},X)=U_{2}(\sigma_{1},Y)$


C~A
1 indiferente, puede ser




| 1 \ 2 | I   | O   |
| ----- | --- | --- |
| IU    |     |     |
| ID    |     |     |
| OU    |     |     |
| OD    |     |     |
ID dominada por mixta
IU no puede ser equilibrio porque si fuera equilibrio el j2 si o si juega O, pero si el J2 juega O, no es mejor respuesta jugar IU