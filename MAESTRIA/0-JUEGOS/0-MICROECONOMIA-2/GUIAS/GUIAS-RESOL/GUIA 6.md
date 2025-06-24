## WATSON CAP 14
2 4 6
### 1. 
**Do normal-form games exhibit perfect or imperfect information? Explain.**
Depende. La misma forma normal puede representar un juego con o sin información imperfecta

### 2. 
**Given an extensive-form game, prove that each pure-strategy profile induces a unique path through the tree.**
Cada perfil describe completamente una secuencia de nodos y lineas únicos. El mismo perfil no puede describir dos caminos si todas las lineas son acciones distintas. 

### 3. 
**Consider the following two-player game: First, player 1 selects a number x, which must be greater than or equal to zero. Player 2 observes x. Then, simultaneously and independently, player 1 selects a number $y_{1}$ and player 2 selects a number $y_{2}$ , at which point the game ends. Player 1’s payoff is $u_{1} = y_{1} y_{2} + x y_{1} − y_{1}^2 − \left( \frac{x^3}{3} \right)$, and player 2’s payoff is $u2 = − ( y_{1} − y_{2} )^2$. Represent this game in the extensive form**
$x\geq 0$

```tikz
\begin{document}
\begin{tikzpicture}
    % Define styles for nodes
    \tikzstyle{hollow node}=[circle, draw, inner sep=1.5];
    \tikzstyle{solid node}=[circle, draw, inner sep=1.5, fill=black];
    
    % Create the initial node
    \node (0)[solid node] {}
        [grow=east] 
        child {} 
        child { edge from parent node[above]{$x$} }; 
    
    % Draw a bended line between the two child nodes
    
	
	\node (1)[solid node, xshift=50pt] {}
        [grow=east]
        child {} 
        child { edge from parent node[above]{$y_1$} }; 
		
	\draw[bend right=10] (0-1) to (1); 
	\draw[bend left=10] (0-2) to (1);

	\node (2)[solid node, xshift=100pt] {}
        [grow=east]
        child {} 
        child { edge from parent node[above]{$y_2$} }; 

	\draw[bend right=10] (1-1) to (2); 
	\draw[bend left=10] (1-2) to (2);


	\node (3)[solid node, xshift=150pt] {};
	\draw[bend right=10] (2-1) to (3); 
	\draw[bend left=10] (2-2) to (3);
	
	
	
	\node[left] at (0) {1}; % text label
	\node[left] at (1) {1}; % text label
	\node[left] at (2) {2}; % text label
	\node[above right=0.1cm] at (3) {$y_1 + xy_{1} - y_{1}^{2} - x^{3}/3$}; 
	\node[below right=0.1cm] at (3) {$- ( y_{1} - y_{2} )^2$}; 
	
	
\end{tikzpicture}
\end{document}

```

### 4.
**Draw the extensive form of the following game, a version of the Cournot duopoly game (analyzed in Chapter 10). Two firms compete in a homogeneous good market, where the firms produce exactly the same good. The firms simultaneously and independently select quantities to produce. The quantity selected by firm i is denoted $q_{i}$ and must be greater than or equal to zero, for i = 1, 2. The market price is given by $p = 12 − q_{1} − q_{2}$ . For simplicity, assume that the cost to firm i of producing any quantity is zero. Further, assume that each firm’s payoff is defined as its profit. That is, firm i’s payoff is $(12 − q_{i} − q_{j} ) q_{i}$ , where j denotes firm i’s opponent in the game.**

```tikz
\begin{document}
\begin{tikzpicture}
    % Define styles for nodes
    \tikzstyle{hollow node}=[circle, draw, inner sep=1.5];
    \tikzstyle{solid node}=[circle, draw, inner sep=1.5, fill=black];
    
    % Create the initial node
    \node (0)[solid node] {}
        [grow=east] 
        child {} 
        child { edge from parent node[above]{$q_1$} }; 
    
	
	\node (1)[solid node, xshift=50pt] {}
        [grow=east]
        child {} 
        child { edge from parent node[above]{$q_2$} }; 
		
	\draw[bend right=10] (0-1) to (1); 
	\draw[bend left=10] (0-2) to (1);

	\node (2)[solid node, xshift=100pt] {}; 

	\draw[bend right=10] (1-1) to (2); 
	\draw[bend left=10] (1-2) to (2);

	\node (3)[xshift=2pt] {}
        [grow=east]
        child {edge from parent[white]{}} 
        child {edge from parent[white]{}}; 	
	\draw[bend right, dashed] (3-1) to (3-2);

	
	
	
	\node[left] at (0) {1}; % text label
	\node[left] at (1) {2}; % text label
	\node[above right=0.1cm] at (2) {$(12 - q_{1} - q_{2} ) q_{1}$}; 
	\node[below right=0.1cm] at (2) {$(12 - q_{1} - q_{2} ) q_{2}$}; 
	
	
\end{tikzpicture}
\end{document}

```


### 6.
**Consider a variant of the game described in Exercise 4. Suppose that the firms move sequentially rather than simultaneously. First, firm 1 selects its quantity $q_{1}$ , and this is observed by firm 2. Then, firm 2 selects its quantity $q_{2}$ , and the payoffs are determined as in Exercise 4, so that firm i’s payoff is $(12 − q_{i} − q_{j} ) q_{i}$ . As noted in Exercise 6 of Chapter 3, this type of game is called the Stackelberg duopoly model. This exercise asks you to find some of the Nash equilibria of the game. Further analysis appears in Chapter 15. Note that firm 1’s strategy in this game is a single number $q_{1}$ . Also note that firm 2’s strategy can be expressed as a function that maps firm 1’s quantity $q_{1}$ into firm 2’s quantity $q_{2}$ . That is, considering $q_{1} , q_{2} ∈ [0, 12]$, we can write firm 2’s strategy as a function $s_{2} : [0, 12] \to [0, 12]$. After firm 1 selects a specific quantity $q_{1}$, firm 2 would select $q_{2} = s_{2} ( q_{1} )$.** 

**(a) Draw the extensive form of this game.** 

```tikz
\begin{document}
\begin{tikzpicture}
    % Define styles for nodes
    \tikzstyle{hollow node}=[circle, draw, inner sep=1.5];
    \tikzstyle{solid node}=[circle, draw, inner sep=1.5, fill=black];
    
    % Create the initial node
    \node (0)[solid node] {}
        [grow=east] 
        child {} 
        child { edge from parent node[above]{$q_1$} }; 
    
    % Draw a bended line between the two child nodes
    
	
	\node (1)[solid node, xshift=50pt] {}
        [grow=east]
        child {} 
        child { edge from parent node[above]{$q_2$} }; 
		
	\draw[bend right=10] (0-1) to (1); 
	\draw[bend left=10] (0-2) to (1);

	\node (2)[solid node, xshift=100pt] {}; 

	\draw[bend right=10] (1-1) to (2); 
	\draw[bend left=10] (1-2) to (2);
	\node[left] at (0) {1}; % text label
	\node[left] at (1) {2}; % text label
	\node[above] at (0-2) {12}; % text label
	\node[above] at (1-2) {12}; % text label
	\node[below] at (0-1) {0}; % text label
	\node[below] at (1-1) {0}; % text label
	\node[above right=0.1cm] at (2) {$(12 - q_{1} - q_{2} ) q_{1}$}; 
	\node[below right=0.1cm] at (2) {$(12 - q_{1} - q_{2} ) q_{2}$}; 
	
	
\end{tikzpicture}
\end{document}

```

**(b) Consider the strategy profile $(q_{1} , s_{2} )$, where $q_{1} = 2$ and $s_{2}$ is defined as follows:**
$$
s_{2}(q_{1})=
\begin{cases}
5 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ q_{1}=2 \\
12-q_{1} \ \ \ \ \ q_{1}\neq 2
\end{cases}
$$
**That is, firm 2 selects $q_{2} = 5$ in the event that firm 1 chooses $q_{1} = 2$; otherwise, firm 2 picks the quantity that drives the price to zero. Verify that these strategies form a Nash equilibrium of the game. Do this by describing the payoffs players would get from deviating.** 
$\max_{q_{1}} \pi$
$\frac{d}{dq_{i}} 12q_{i}-q_{i}^2 - q_{j} q_{i} = 0$
$12 - 2q_{i} - q_{j}=0$
$12 - q_{j} = 2q_{i}$
$q_{i}=6-\frac{1}{2} q_{j}$

Para el jugador 2, cuando el otro elige q1=2 su mayor pago es eligiendo 5, entonces esta eligiendo su mejor respuesta, cualquier otra cosa le da menos pago.
El jugador 1 no quiere cambiarse si el otro elige de esa manera porque cualquier otra estrategia le da 0 dado que el 2 juega $s_{2}$.

**(c) Show that for any $x ∈ [0, 12]$, there is a Nash equilibrium of the game in which $q_{1} = x$ and $s_{2}(x) = \frac{12 − x}{2}$. Describe the equilibrium strategy profile (fully describe $s_{2}$) and explain why it is an equilibrium.** 
Es la maximización de beneficios

**(d) Are there any Nash equilibria $(q_{1} , s_{2} )$ for which $s_{2} ( q_{1} ) \neq \frac{12 - q_{1}}{2}$? Explain why or why not.**
No, porque no está eligiendo mejor respuesta.

## WATSON CAP 15
2 7 8 9

### 2.
**Compute the Nash equilibria and subgame perfect equilibria for the following games. Do so by writing the normal-form matrices for each game and its subgames. Which Nash equilibria are not subgame perfect?**
a)
![[Pasted image 20240510111313.png|400]]
Subjuego 1

| 1/2 | AC            | AD            | BC            | BD            |
| --- | ------------- | ------------- | ------------- | ------------- |
| WX  | (3,0)         | (3,0)         | (4,**6**)     | (**4**,**6**) |
| ZX  | (6,**4**)     | (3,2)         | (**6**,**4**) | (3,2)         |
| WY  | (**8**,**5**) | (**8**,**5**) | (2,1)         | (2,1)         |
| ZY  | (6,**4**)     | (3,2)         | (**6**,**4**) | (3,2)         |
$NE=\{  (WY,AC), (WY,AD), (ZX,BC), (WX,BD), (ZY, BC) \}$

Subjuego 2

| C             | D         |
| ------------- | --------- |
| (**6**,**4**) | (**3**,2) |

$NE= \{ C \}$

Subjuego 3

| 1/2 | A             | B             |
| --- | ------------- | ------------- |
| X   | (3,0)         | (**4**,**6**) |
| Y   | (**8**,**5**) | (2,1)         |

$NE =  \{ (X,B), (Y,A) \}$

--

$SPNE=  \{ (ZX,BC), (WY,AC) \}$

b)


### 7. 
**Consider a game in which player 1 first selects between I and O. If player 1 selects O, then the game ends with the payoff vector (x, 1) (x for player 1), where x is some positive number. If player 1 selects I, then this selection is revealed to player 2 and then the players play the battle-of-the-sexes game in which they simultaneously and independently choose between A and B. If they coordinate on A, then the payoff vector is (3, 1). If they coordinate on B, then the payoff vector is (1, 3). If they fail to coordinate, then the payoff vector is (0, 0).**
(a) Represent this game in the extensive and normal forms. 

```tikz
\begin{document}
\begin{tikzpicture}
\usetikzlibrary{calc}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=10mm]
	\tikzstyle{level 2}=[sibling distance=10mm]
	\tikzstyle{level 3}=[sibling distance=7.5mm]
\node(0)[solid node, label=above:{$1$}]{}
	[grow=east]
	child{node[solid node]{} 
	
		child{node [solid node]{}
			child{node [solid node]{}}
			child{node [solid node]{}}
		}
		child{node [solid node]{}
			child{node [solid node]{}}
			child{node [solid node]{}}
		}
	edge from parent[below] node[]{$I$}
	}
	child{node [solid node]{} edge from parent node[above]{$O$}};
	

\node[right] at (0-2) {$(x,1)$};
%\draw[dashed] (0-1-1) -- (0-1-2);
\end{tikzpicture}
\end{document}
```



(b) Find the pure-strategy Nash equilibria of this game. 

(c) Calculate the mixed-strategy Nash equilibria and note how they depend on x. 

(d) Represent the proper subgame in the normal form and find its equilibria. ç

(e) What are the pure-strategy subgame perfect equilibria of the game? Can you find any Nash equilibria that are not subgame perfect? 

(f) What are the mixed-strategy subgame perfect equilibria of the game?