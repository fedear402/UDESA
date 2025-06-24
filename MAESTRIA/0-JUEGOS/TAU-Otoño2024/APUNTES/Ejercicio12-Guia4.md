# A)
$$
\begin{matrix}
 & D & E & F \\
A  & \underline{3} ,\underline{1}  & 0,0 & \underline{5} ,0\\
B  & 2,1 & \underline{1} ,\underline{2}  & 3,1\\
C & 1,2 & 0,1 & 4,\underline{4} 
\end{matrix}
$$
Se ve fácil que los equilibrios de Nash en purs son $(A,D)$ y $(B,E)$.

# B)

```tikz
\usepackage{tikz}
\usetikzlibrary{calc}

\begin{document}

\begin{tikzpicture}[
    scale=0.8,
    every node/.style={inner sep=1pt},
    hollow/.style={circle,draw,inner sep=1.5pt},
    solid/.style={circle,draw,fill=black,inner sep=1.5pt}
]

% Root node
\node[solid] (root) at (0,0) {};
\node[above] at (root) {1};

% First stage - Player 1's choices
\node[hollow] (A) at (-6,-2) {};
\node[hollow] (B) at (0,-2) {};
\node[hollow] (C) at (6,-2) {};

% Branches from root to first stage
\draw (root) -- node[left] {A} (A);
\draw (root) -- node[left] {B} (B);
\draw (root) -- node[right] {C} (C);

% Information set for Player 2 (first stage)
\draw[dashed, rounded corners] (-6.5,-2.5) rectangle (6.5,-1.5);
\node at (7.5,-2) {2};

% Second stage - Player 2's choices (9 nodes)
% From A
\node[solid] (AD) at (-8,-4) {};
\node[solid] (AE) at (-6,-4) {};
\node[solid] (AF) at (-4,-4) {};

% From B
\node[solid] (BD) at (-2,-4) {};
\node[solid] (BE) at (0,-4) {};
\node[solid] (BF) at (2,-4) {};

% From C
\node[solid] (CD) at (4,-4) {};
\node[solid] (CE) at (6,-4) {};
\node[solid] (CF) at (8,-4) {};

% Branches from first stage to second stage
\draw (A) -- node[left] {D} (AD);
\draw (A) -- node[left] {E} (AE);
\draw (A) -- node[right] {F} (AF);

\draw (B) -- node[left] {D} (BD);
\draw (B) -- node[left] {E} (BE);
\draw (B) -- node[right] {F} (BF);

\draw (C) -- node[left] {D} (CD);
\draw (C) -- node[left] {E} (CE);
\draw (C) -- node[right] {F} (CF);

% Labels for intermediate payoffs
\node[above] at (AD) {\tiny 1};
\node[above] at (AE) {\tiny 1};
\node[above] at (AF) {\tiny 1};
\node[above] at (BD) {\tiny 1};
\node[above] at (BE) {\tiny 1};
\node[above] at (BF) {\tiny 1};
\node[above] at (CD) {\tiny 1};
\node[above] at (CE) {\tiny 1};
\node[above] at (CF) {\tiny 1};

% Third stage - Player 1's choices again (from each of 9 nodes)
% I'll show a detailed subtree for AD and simplified notation for others

% From AD node - full subtree
\node[hollow] (AD-A) at (-9.5,-6) {};
\node[hollow] (AD-B) at (-8,-6) {};
\node[hollow] (AD-C) at (-6.5,-6) {};

\draw (AD) -- node[left] {\tiny A} (AD-A);
\draw (AD) -- node[left] {\tiny B} (AD-B);
\draw (AD) -- node[right] {\tiny C} (AD-C);

% Information set for this subgame
\draw[dashed, rounded corners] (-9.7,-6.3) rectangle (-6.3,-5.7);
\node at (-5.8,-6) {\tiny 2};

% Terminal nodes from AD subgame
\node (AD-AD) at (-10,-7.5) {};
\node (AD-AE) at (-9.5,-7.5) {};
\node (AD-AF) at (-9,-7.5) {};
\node (AD-BD) at (-8.5,-7.5) {};
\node (AD-BE) at (-8,-7.5) {};
\node (AD-BF) at (-7.5,-7.5) {};
\node (AD-CD) at (-7,-7.5) {};
\node (AD-CE) at (-6.5,-7.5) {};
\node (AD-CF) at (-6,-7.5) {};

% Branches
\draw (AD-A) -- node[left] {\tiny D} (AD-AD);
\draw (AD-A) -- node[left] {\tiny E} (AD-AE);
\draw (AD-A) -- node[right] {\tiny F} (AD-AF);
\draw (AD-B) -- node[left] {\tiny D} (AD-BD);
\draw (AD-B) -- node[left] {\tiny E} (AD-BE);
\draw (AD-B) -- node[right] {\tiny F} (AD-BF);
\draw (AD-C) -- node[left] {\tiny D} (AD-CD);
\draw (AD-C) -- node[left] {\tiny E} (AD-CE);
\draw (AD-C) -- node[right] {\tiny F} (AD-CF);

% Payoffs for AD subtree (using the given matrix values)
\node[below] at (AD-AD) {\tiny (3,1)};
\node[below] at (AD-AE) {\tiny (0,0)};
\node[below] at (AD-AF) {\tiny (5,0)};
\node[below] at (AD-BD) {\tiny (2,1)};
\node[below] at (AD-BE) {\tiny (1,2)};
\node[below] at (AD-BF) {\tiny (3,1)};
\node[below] at (AD-CD) {\tiny (1,2)};
\node[below] at (AD-CE) {\tiny (0,1)};
\node[below] at (AD-CF) {\tiny (4,4)};

% For other nodes, use ellipsis to indicate similar subgames
\node at (-6,-6.5) {$\vdots$};
\node at (-4,-6.5) {$\vdots$};
\node at (-2,-6.5) {$\vdots$};
\node at (0,-6.5) {$\vdots$};
\node at (2,-6.5) {$\vdots$};
\node at (4,-6.5) {$\vdots$};
\node at (6,-6.5) {$\vdots$};
\node at (8,-6.5) {$\vdots$};

% Note about structure
\node[text width=8cm] at (0,-9) {
    \footnotesize cada uno de estos nodos termina en un subjuego, nos quedan 9 subjuegos + todo el juego
};

\end{tikzpicture}

\end{document}
```
Para escribir las estrategias, tenemos que decir qué hace el jugador en cada uno de sus nodos de decisión. Entonces, el jugador 1, tiene el primer nodo de decisión en la primera vez que se jeuga el juego, y despues tiene otros 9 para cada uno de los subjuegos del segundo periodo.
Entonces, una estrategia del jugador 1 puede ser : $ABABABABAB$. Ahí estariamos diciendo que en el primer periodo (el primer nodo) elige A; despues, en el primer subjuego elige $B$ (seria la matriz que está dibujada, si vamos de izquierda a derecha; la que sale del camino en el que el J1 elige A y el J2 elige D); despues elige A en el sefundo subjuego, el que esta al lado del dinujado (seria el que sale del nodo cuando el J1 elige A y el J2 elige E) y así con todos...

Ahora, para el jugador 2, es la misma logica: una estrategia puede ser, $DEDEDEDEDE$, y ahi estaria jugando  $D$ en el primer conjunto de información, $E$ en el primer subjuego y asi... En la forma extensiva se ve esa estrategia. Esta acarando que hace en cada conjunto de información.

```tikz

\usepackage{tikz}
\usetikzlibrary{calc}

\begin{document}

\begin{tikzpicture}[
    scale=0.85,
    every node/.style={inner sep=1pt},
    hollow/.style={circle,draw,inner sep=1.5pt},
    solid/.style={circle,draw,fill=black,inner sep=1.5pt},
    tiny/.style={font=\tiny}
]

% Root node
\node[solid] (root) at (0,0) {};
\node[above] at (root) {1};

% First stage - Player 1's choices
\node[hollow] (A) at (-12,-2) {};
\node[hollow] (B) at (0,-2) {};
\node[hollow] (C) at (12,-2) {};

% Branches from root to first stage
\draw[line width=2pt] (root) -- node[left] {A} (A);
\draw (root) -- node[left] {B} (B);
\draw (root) -- node[right] {C} (C);

% Information set for Player 2 (first stage)
\draw[dashed, rounded corners] (-12.5,-2.5) rectangle (12.5,-1.5);
\node at (13.5,-2) {2};

% Second stage - Player 2's choices (9 nodes) - MORE SPACING
% From A
\node[solid] (AD) at (-16,-4) {};
\node[solid] (AE) at (-12,-4) {};
\node[solid] (AF) at (-8,-4) {};

% From B
\node[solid] (BD) at (-3,-4) {};
\node[solid] (BE) at (0,-4) {};
\node[solid] (BF) at (3,-4) {};

% From C
\node[solid] (CD) at (8,-4) {};
\node[solid] (CE) at (12,-4) {};
\node[solid] (CF) at (16,-4) {};

% Branches from first stage to second stage
\draw[line width=2pt] (A) -- node[left] {D} (AD);
\draw (A) -- node[left] {E} (AE);
\draw (A) -- node[right] {F} (AF);

\draw[line width=2pt] (B) -- node[left] {D} (BD);
\draw (B) -- node[left] {E} (BE);
\draw (B) -- node[right] {F} (BF);

\draw[line width=2pt] (C) -- node[left] {D} (CD);
\draw (C) -- node[left] {E} (CE);
\draw (C) -- node[right] {F} (CF);

% Labels for intermediate nodes
\node[above,tiny] at (AD) {1};
\node[above,tiny] at (AE) {1};
\node[above,tiny] at (AF) {1};
\node[above,tiny] at (BD) {1};
\node[above,tiny] at (BE) {1};
\node[above,tiny] at (BF) {1};
\node[above,tiny] at (CD) {1};
\node[above,tiny] at (CE) {1};
\node[above,tiny] at (CF) {1};

% Now create all 9 subgames with more spacing
% Subgame from AD - Player 1 plays B here
\node[hollow] (AD-A) at (-17,-5.5) {};
\node[hollow] (AD-B) at (-16,-5.5) {};
\node[hollow] (AD-C) at (-15,-5.5) {};
\draw (AD) -- node[left,tiny] {A} (AD-A);
\draw[line width=2pt] (AD) -- node[left,tiny] {B} (AD-B);
\draw (AD) -- node[right,tiny] {C} (AD-C);
\draw[dashed, rounded corners] (-17.2,-5.7) rectangle (-14.8,-5.3);
\node[tiny] at (-14.5,-5.5) {2};

% Terminal nodes from AD with wider spacing
\node[tiny] (AD-AD) at (-17.5,-6.5) {(3,1)};
\node[tiny] (AD-AE) at (-17.1,-6.5) {(0,0)};
\node[tiny] (AD-AF) at (-16.7,-6.5) {(5,0)};
\node[tiny] (AD-BD) at (-16.3,-6.5) {(2,1)};
\node[tiny] (AD-BE) at (-15.9,-6.5) {(1,2)};
\node[tiny] (AD-BF) at (-15.5,-6.5) {(3,1)};
\node[tiny] (AD-CD) at (-15.1,-6.5) {(1,2)};
\node[tiny] (AD-CE) at (-14.7,-6.5) {(0,1)};
\node[tiny] (AD-CF) at (-14.3,-6.5) {(4,4)};
\draw (AD-A) -- node[left,tiny] {D} (AD-AD);
\draw (AD-A) -- node[left,tiny] {E} (AD-AE);
\draw (AD-A) -- node[right,tiny] {F} (AD-AF);
\draw (AD-B) -- node[left,tiny] {D} (AD-BD);
\draw[line width=2pt] (AD-B) -- node[left,tiny] {E} (AD-BE);
\draw (AD-B) -- node[right,tiny] {F} (AD-BF);
\draw (AD-C) -- node[left,tiny] {D} (AD-CD);
\draw (AD-C) -- node[left,tiny] {E} (AD-CE);
\draw (AD-C) -- node[right,tiny] {F} (AD-CF);

% Subgame from AE - Player 1 plays A here
\node[hollow] (AE-A) at (-13,-5.5) {};
\node[hollow] (AE-B) at (-12,-5.5) {};
\node[hollow] (AE-C) at (-11,-5.5) {};
\draw[line width=2pt] (AE) -- node[left,tiny] {A} (AE-A);
\draw (AE) -- node[left,tiny] {B} (AE-B);
\draw (AE) -- node[right,tiny] {C} (AE-C);
\draw[dashed, rounded corners] (-13.2,-5.7) rectangle (-10.8,-5.3);
\node[tiny] at (-10.5,-5.5) {2};

% Terminal nodes from AE
\node[tiny] (AE-AD) at (-13.5,-6.5) {(3,1)};
\node[tiny] (AE-AE) at (-13.1,-6.5) {(0,0)};
\node[tiny] (AE-AF) at (-12.7,-6.5) {(5,0)};
\node[tiny] (AE-BD) at (-12.3,-6.5) {(2,1)};
\node[tiny] (AE-BE) at (-11.9,-6.5) {(1,2)};
\node[tiny] (AE-BF) at (-11.5,-6.5) {(3,1)};
\node[tiny] (AE-CD) at (-11.1,-6.5) {(1,2)};
\node[tiny] (AE-CE) at (-10.7,-6.5) {(0,1)};
\node[tiny] (AE-CF) at (-10.3,-6.5) {(4,4)};
\draw[line width=2pt] (AE-A) -- (AE-AD);
\draw (AE-A) -- (AE-AE);
\draw (AE-A) -- (AE-AF);
\draw (AE-B) -- (AE-BD);
\draw (AE-B) -- (AE-BE);
\draw (AE-B) -- (AE-BF);
\draw (AE-C) -- (AE-CD);
\draw (AE-C) -- (AE-CE);
\draw (AE-C) -- (AE-CF);

% Subgame from AF - Player 1 plays B here
\node[hollow] (AF-A) at (-9,-5.5) {};
\node[hollow] (AF-B) at (-8,-5.5) {};
\node[hollow] (AF-C) at (-7,-5.5) {};
\draw (AF) -- node[left,tiny] {A} (AF-A);
\draw[line width=2pt] (AF) -- node[left,tiny] {B} (AF-B);
\draw (AF) -- node[right,tiny] {C} (AF-C);
\draw[dashed, rounded corners] (-9.2,-5.7) rectangle (-6.8,-5.3);
\node[tiny] at (-6.5,-5.5) {2};

% Terminal nodes from AF
\node[tiny] (AF-AD) at (-9.5,-6.5) {(3,1)};
\node[tiny] (AF-AE) at (-9.1,-6.5) {(0,0)};
\node[tiny] (AF-AF) at (-8.7,-6.5) {(5,0)};
\node[tiny] (AF-BD) at (-8.3,-6.5) {(2,1)};
\node[tiny] (AF-BE) at (-7.9,-6.5) {(1,2)};
\node[tiny] (AF-BF) at (-7.5,-6.5) {(3,1)};
\node[tiny] (AF-CD) at (-7.1,-6.5) {(1,2)};
\node[tiny] (AF-CE) at (-6.7,-6.5) {(0,1)};
\node[tiny] (AF-CF) at (-6.3,-6.5) {(4,4)};
\draw (AF-A) -- (AF-AD);
\draw (AF-A) -- (AF-AE);
\draw (AF-A) -- (AF-AF);
\draw (AF-B) -- (AF-BD);
\draw[line width=2pt] (AF-B) -- (AF-BE);
\draw (AF-B) -- (AF-BF);
\draw (AF-C) -- (AF-CD);
\draw (AF-C) -- (AF-CE);
\draw (AF-C) -- (AF-CF);

% Subgame from BD - Player 1 plays A here
\node[hollow] (BD-A) at (-4,-5.5) {};
\node[hollow] (BD-B) at (-3,-5.5) {};
\node[hollow] (BD-C) at (-2,-5.5) {};
\draw[line width=2pt] (BD) -- node[left,tiny] {A} (BD-A);
\draw (BD) -- node[left,tiny] {B} (BD-B);
\draw (BD) -- node[right,tiny] {C} (BD-C);
\draw[dashed, rounded corners] (-4.2,-5.7) rectangle (-1.8,-5.3);
\node[tiny] at (-1.5,-5.5) {2};

% Terminal nodes from BD
\node[tiny] (BD-AD) at (-4.5,-6.5) {(3,1)};
\node[tiny] (BD-AE) at (-4.1,-6.5) {(0,0)};
\node[tiny] (BD-AF) at (-3.7,-6.5) {(5,0)};
\node[tiny] (BD-BD) at (-3.3,-6.5) {(2,1)};
\node[tiny] (BD-BE) at (-2.9,-6.5) {(1,2)};
\node[tiny] (BD-BF) at (-2.5,-6.5) {(3,1)};
\node[tiny] (BD-CD) at (-2.1,-6.5) {(1,2)};
\node[tiny] (BD-CE) at (-1.7,-6.5) {(0,1)};
\node[tiny] (BD-CF) at (-1.3,-6.5) {(4,4)};
\draw[line width=2pt] (BD-A) -- (BD-AD);
\draw (BD-A) -- (BD-AE);
\draw (BD-A) -- (BD-AF);
\draw (BD-B) -- (BD-BD);
\draw (BD-B) -- (BD-BE);
\draw (BD-B) -- (BD-BF);
\draw (BD-C) -- (BD-CD);
\draw (BD-C) -- (BD-CE);
\draw (BD-C) -- (BD-CF);

% Subgame from BE - Player 1 plays B here
\node[hollow] (BE-A) at (-1,-5.5) {};
\node[hollow] (BE-B) at (0,-5.5) {};
\node[hollow] (BE-C) at (1,-5.5) {};
\draw (BE) -- node[left,tiny] {A} (BE-A);
\draw[line width=2pt] (BE) -- node[left,tiny] {B} (BE-B);
\draw (BE) -- node[right,tiny] {C} (BE-C);
\draw[dashed, rounded corners] (-1.2,-5.7) rectangle (1.2,-5.3);
\node[tiny] at (1.5,-5.5) {2};

% Terminal nodes from BE
\node[tiny] (BE-AD) at (-1.5,-6.5) {(3,1)};
\node[tiny] (BE-AE) at (-1.1,-6.5) {(0,0)};
\node[tiny] (BE-AF) at (-0.7,-6.5) {(5,0)};
\node[tiny] (BE-BD) at (-0.3,-6.5) {(2,1)};
\node[tiny] (BE-BE) at (0.1,-6.5) {(1,2)};
\node[tiny] (BE-BF) at (0.5,-6.5) {(3,1)};
\node[tiny] (BE-CD) at (0.9,-6.5) {(1,2)};
\node[tiny] (BE-CE) at (1.3,-6.5) {(0,1)};
\node[tiny] (BE-CF) at (1.7,-6.5) {(4,4)};
\draw (BE-A) -- (BE-AD);
\draw (BE-A) -- (BE-AE);
\draw (BE-A) -- (BE-AF);
\draw (BE-B) -- (BE-BD);
\draw[line width=2pt] (BE-B) -- (BE-BE);
\draw (BE-B) -- (BE-BF);
\draw (BE-C) -- (BE-CD);
\draw (BE-C) -- (BE-CE);
\draw (BE-C) -- (BE-CF);

% Subgame from BF - Player 1 plays A here
\node[hollow] (BF-A) at (2,-5.5) {};
\node[hollow] (BF-B) at (3,-5.5) {};
\node[hollow] (BF-C) at (4,-5.5) {};
\draw[line width=2pt] (BF) -- node[left,tiny] {A} (BF-A);
\draw (BF) -- node[left,tiny] {B} (BF-B);
\draw (BF) -- node[right,tiny] {C} (BF-C);
\draw[dashed, rounded corners] (1.8,-5.7) rectangle (4.2,-5.3);
\node[tiny] at (4.5,-5.5) {2};

% Terminal nodes from BF
\node[tiny] (BF-AD) at (1.5,-6.5) {(3,1)};
\node[tiny] (BF-AE) at (1.9,-6.5) {(0,0)};
\node[tiny] (BF-AF) at (2.3,-6.5) {(5,0)};
\node[tiny] (BF-BD) at (2.7,-6.5) {(2,1)};
\node[tiny] (BF-BE) at (3.1,-6.5) {(1,2)};
\node[tiny] (BF-BF) at (3.5,-6.5) {(3,1)};
\node[tiny] (BF-CD) at (3.9,-6.5) {(1,2)};
\node[tiny] (BF-CE) at (4.3,-6.5) {(0,1)};
\node[tiny] (BF-CF) at (4.7,-6.5) {(4,4)};
\draw[line width=2pt] (BF-A) -- (BF-AD);
\draw (BF-A) -- (BF-AE);
\draw (BF-A) -- (BF-AF);
\draw (BF-B) -- (BF-BD);
\draw (BF-B) -- (BF-BE);
\draw (BF-B) -- (BF-BF);
\draw (BF-C) -- (BF-CD);
\draw (BF-C) -- (BF-CE);
\draw (BF-C) -- (BF-CF);

% Subgame from CD - Player 1 plays B here
\node[hollow] (CD-A) at (7,-5.5) {};
\node[hollow] (CD-B) at (8,-5.5) {};
\node[hollow] (CD-C) at (9,-5.5) {};
\draw (CD) -- node[left,tiny] {A} (CD-A);
\draw[line width=2pt] (CD) -- node[left,tiny] {B} (CD-B);
\draw (CD) -- node[right,tiny] {C} (CD-C);
\draw[dashed, rounded corners] (6.8,-5.7) rectangle (9.2,-5.3);
\node[tiny] at (9.5,-5.5) {2};

% Terminal nodes from CD
\node[tiny] (CD-AD) at (6.5,-6.5) {(3,1)};
\node[tiny] (CD-AE) at (6.9,-6.5) {(0,0)};
\node[tiny] (CD-AF) at (7.3,-6.5) {(5,0)};
\node[tiny] (CD-BD) at (7.7,-6.5) {(2,1)};
\node[tiny] (CD-BE) at (8.1,-6.5) {(1,2)};
\node[tiny] (CD-BF) at (8.5,-6.5) {(3,1)};
\node[tiny] (CD-CD) at (8.9,-6.5) {(1,2)};
\node[tiny] (CD-CE) at (9.3,-6.5) {(0,1)};
\node[tiny] (CD-CF) at (9.7,-6.5) {(4,4)};
\draw (CD-A) -- (CD-AD);
\draw (CD-A) -- (CD-AE);
\draw (CD-A) -- (CD-AF);
\draw (CD-B) -- (CD-BD);
\draw[line width=2pt] (CD-B) -- (CD-BE);
\draw (CD-B) -- (CD-BF);
\draw (CD-C) -- (CD-CD);
\draw (CD-C) -- (CD-CE);
\draw (CD-C) -- (CD-CF);

% Subgame from CE - Player 1 plays A here
\node[hollow] (CE-A) at (11,-5.5) {};
\node[hollow] (CE-B) at (12,-5.5) {};
\node[hollow] (CE-C) at (13,-5.5) {};
\draw[line width=2pt] (CE) -- node[left,tiny] {A} (CE-A);
\draw (CE) -- node[left,tiny] {B} (CE-B);
\draw (CE) -- node[right,tiny] {C} (CE-C);
\draw[dashed, rounded corners] (10.8,-5.7) rectangle (13.2,-5.3);
\node[tiny] at (13.5,-5.5) {2};

% Terminal nodes from CE
\node[tiny] (CE-AD) at (10.5,-6.5) {(3,1)};
\node[tiny] (CE-AE) at (10.9,-6.5) {(0,0)};
\node[tiny] (CE-AF) at (11.3,-6.5) {(5,0)};
\node[tiny] (CE-BD) at (11.7,-6.5) {(2,1)};
\node[tiny] (CE-BE) at (12.1,-6.5) {(1,2)};
\node[tiny] (CE-BF) at (12.5,-6.5) {(3,1)};
\node[tiny] (CE-CD) at (12.9,-6.5) {(1,2)};
\node[tiny] (CE-CE) at (13.3,-6.5) {(0,1)};
\node[tiny] (CE-CF) at (13.7,-6.5) {(4,4)};
\draw[line width=2pt] (CE-A) -- (CE-AD);
\draw (CE-A) -- (CE-AE);
\draw (CE-A) -- (CE-AF);
\draw (CE-B) -- (CE-BD);
\draw (CE-B) -- (CE-BE);
\draw (CE-B) -- (CE-BF);
\draw (CE-C) -- (CE-CD);
\draw (CE-C) -- (CE-CE);
\draw (CE-C) -- (CE-CF);

% Subgame from CF - Player 1 plays B here
\node[hollow] (CF-A) at (15,-5.5) {};
\node[hollow] (CF-B) at (16,-5.5) {};
\node[hollow] (CF-C) at (17,-5.5) {};
\draw (CF) -- node[left,tiny] {A} (CF-A);
\draw[line width=2pt] (CF) -- node[left,tiny] {B} (CF-B);
\draw (CF) -- node[right,tiny] {C} (CF-C);
\draw[dashed, rounded corners] (14.8,-5.7) rectangle (17.2,-5.3);
\node[tiny] at (17.5,-5.5) {2};

% Terminal nodes from CF
\node[tiny] (CF-AD) at (14.5,-6.5) {(3,1)};
\node[tiny] (CF-AE) at (14.9,-6.5) {(0,0)};
\node[tiny] (CF-AF) at (15.3,-6.5) {(5,0)};
\node[tiny] (CF-BD) at (15.7,-6.5) {(2,1)};
\node[tiny] (CF-BE) at (16.1,-6.5) {(1,2)};
\node[tiny] (CF-BF) at (16.5,-6.5) {(3,1)};
\node[tiny] (CF-CD) at (16.9,-6.5) {(1,2)};
\node[tiny] (CF-CE) at (17.3,-6.5) {(0,1)};
\node[tiny] (CF-CF) at (17.7,-6.5) {(4,4)};
\draw (CF-A) -- (CF-AD);
\draw (CF-A) -- (CF-AE);
\draw (CF-A) -- (CF-AF);
\draw (CF-B) -- (CF-BD);
\draw[line width=2pt] (CF-B) -- (CF-BE);
\draw (CF-B) -- (CF-BF);
\draw (CF-C) -- (CF-CD);
\draw (CF-C) -- (CF-CE);
\draw (CF-C) -- (CF-CF);

\end{tikzpicture}

\end{document}
```

Por eso, perfecto en subjueto es una estrategia que nos dice que en todos los subjuegos se juega un equilibrio de Nash. El que dije recién, por ejemplo, **es** un equilibrio de Nash porque En el primer subjuego ( el de abajo a la izquierda, jeugan $B$, $E$ y en la matriz vemos que es un equilibrio. Y asi para cada subjuego... El perfil $(ABABABABAB, DEDEDEDEDE)$ es un equilibrio 


# C)
En ($C$,$F$) 2 no tiene incentivo a desviarse, el 1 prefiere jugar A. 
Estrategia Trigger:
$$
J_{1} = \begin{cases}
\text{ en } t=1 \quad  \text{ $C$ } \\
\text{ en } t>1 \quad  \begin{cases}
C \text{ si en t-1 se jugó el perfil } (C,F)\\
A \text{ si no} 
\end{cases}
\end{cases}


$$

$$
J_{2} = \begin{cases}
\text{ en } t=1 \quad  \text{ $C$ } \\
\text{ en } t>1 \quad  \begin{cases}
F \text{ si en t-1 se jugó el perfil } (C,F)\\
E \text{ si no} 
\end{cases}
\end{cases}
$$


# D)
Vemos que el 1 no se quiera desviar. Cooperar le da 4 siempre, desviarse le da 5 y despues 1 siempre
$$
4 \frac{1}{1-\delta} \geq 5 + \frac{\delta}{1-\delta}
$$
$$
4 \geq 5 - 5\delta + \delta
$$
$$
-1 \geq -4 \delta
$$
$$
\frac{1}{4} \leq \delta
$$
El 2 cualquier descuento es suficiente porque ya es la mejor respuesta.

# E)
si el descuento del 1 es 1/2 alcanza porque es mayor que 1/4. Para el 2 cualquier descuento le alcanza para cooperar, entonces cooperan si esos son los descuentos