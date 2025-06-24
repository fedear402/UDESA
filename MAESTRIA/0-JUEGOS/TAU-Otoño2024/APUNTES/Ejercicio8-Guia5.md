Doesnt work:
```tikz
\usepackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{shapes.geometric}
\begin{document}

\begin{tikzpicture}[
  % Node styles
  nature/.style={diamond, draw, fill=white, minimum size=8pt},
  decision/.style={circle, draw, fill=white, minimum size=8pt},
  terminal/.style={circle, draw=none, fill=none, minimum size=4pt},
  % Edge styles
  edge/.style={-},
  info/.style={dashed, thick},
  % Labels
  every node/.style={font=\small}
]

% Nature node
\node[nature] (N) at (0,0) {$N$};

% First level - Nature's moves
\node[decision] (1L) at (-3,-2) {$1$};
\node[decision] (1R) at (3,-2) {$1$};

% Second level
\node[decision] (2LL) at (-4.5,-4) {$2$};
\node[decision] (2LR) at (-1.5,-4) {$2$};
\node[decision] (2RL) at (1.5,-4) {$2$};
\node[decision] (2RR) at (4.5,-4) {$2$};

% Terminal nodes and payoffs
\node[terminal] (TLL1) at (-6,-6) {};
\node[terminal] (TLL2) at (-5,-6) {};
\node[terminal] (TLR1) at (-3,-6) {};
\node[terminal] (TLR2) at (-0.5,-6) {};
\node[terminal] (TRL1) at (0.5,-6) {};
\node[terminal] (TRL2) at (3,-6) {};
\node[terminal] (TRR1) at (5,-6) {};
\node[terminal] (TRR2) at (6,-6) {};

% Nature's branches
\draw[edge] (N) -- (1L) node[midway, above left] {$H = 0.5$};
\draw[edge] (N) -- (1R) node[midway, above right] {$L = 0.5$};

% Player 1's branches
\draw[edge] (1L) -- (2LL);
\draw[edge] (1L) -- (2LR);
\draw[edge] (1R) -- (2RL);
\draw[edge] (1R) -- (2RR);

% Player 2's branches
\draw[edge] (2LL) -- (TLL1) node[near end, left] {$A$};
\draw[edge] (2LL) -- (TLL2) node[near end, right] {$B$};
\draw[edge] (2LR) -- (TLR1) node[near end, left] {$C$};
\draw[edge] (2LR) -- (TLR2) node[near end, right] {$D$};
\draw[edge] (2RL) -- (TRL1) node[near end, left] {$E$};
\draw[edge] (2RL) -- (TRL2) node[near end, right] {$F$};
\draw[edge] (2RR) -- (TRR1) node[near end, left] {$G$};
\draw[edge] (2RR) -- (TRR2) node[near end, right] {$H$};

% Information sets (dashed lines)
\draw[info] (2LL) -- (2RL);
\draw[info] (2LR) -- (2RR);

% Terminal payoffs
\node[below] at (TLL1) {$(2,10)$};
\node[below] at (TLL2) {$(0,10)$};
\node[below] at (TLR1) {$(-10,2)$};
\node[below] at (TLR2) {$(6,0)$};
\node[below] at (TRL1) {$(2,10)$};
\node[below] at (TRL2) {$(-10,7)$};
\node[below] at (TRR1) {$(3,5)$};
\node[below] at (TRR2) {$(3,5)$};

% Action labels on branches
\node[above left] at (-2.25,-3) {$D$};
\node[above right] at (-2.25,-3) {$E$};
\node[above left] at (2.25,-3) {$G$};
\node[above right] at (2.25,-3) {$F$};

\node[left] at (-5.25,-5) {$C$};
\node[right] at (-3.75,-5) {$B$};
\node[left] at (-2.25,-5) {$F$};
\node[right] at (-1,-5) {$G$};
\node[left] at (1,-5) {$G$};
\node[right] at (2.25,-5) {$F$};
\node[left] at (3.75,-5) {$F$};
\node[right] at (5.25,-5) {$G$};

\end{tikzpicture}
\end{document}
```


