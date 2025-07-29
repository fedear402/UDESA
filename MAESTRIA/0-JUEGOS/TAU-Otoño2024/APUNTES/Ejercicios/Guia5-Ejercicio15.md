
```tikz
\usepackage{tikz}
\usetikzlibrary{calc}

\begin{document}

\begin{tikzpicture}[
  scale=1.2,
  terminal/.style={rectangle, minimum size=6mm},
  decision/.style={minimum size=8mm},
  chance/.style={minimum size=8mm, fill=gray!20},
  info/.style={dashed, thick, red}
]

% Root node (Nature)
\node[decision] (root) at (0,0) {Nature};

% Pedro's nodes after Nature
\node[decision] (pedroB) at (-3,-2) {J1};
\node[decision] (pedroS) at (3,-2) {J1};

% Pedro's terminal nodes (No gift)
\node[terminal] (noB) at (-4.5,-3.5) {(0,0)};
\node[terminal] (noS) at (4.5,-3.5) {(0,0)};

% Agustín's decision nodes (with information set)
\node[decision] (agustinB) at (-1.5,-3.5) {J2(p)};
\node[decision] (agustinS) at (1.5,-3.5) {J2(1-p)};

% Terminal nodes after Agustín's decisions
\node[terminal] (acceptB) at (-2.5,-5) {(1,-1)};
\node[terminal] (rejectB) at (-0.5,-5) {(-1,0)};
\node[terminal] (acceptS) at (0.5,-5) {(1,1)};
\node[terminal] (rejectS) at (2.5,-5) {(-1,0)};

% Nature's edges
\draw (root) -- (pedroB) node[midway, above left] {$B \frac{1}{4}$};
\draw (root) -- (pedroS) node[midway, above right] {$S \frac{3}{4}$};

% Pedro's edges (type B)
\draw (pedroB) -- (noB) node[midway, above left] {N'};
\draw (pedroB) -- (agustinB) node[midway, above right] {R'};

% Pedro's edges (type S)
\draw (pedroS) -- (noS) node[midway, above right] {N};
\draw (pedroS) -- (agustinS) node[midway, above left] {R};

% Agustín's edges
\draw (agustinB) -- (acceptB) node[midway, above left] {A};
\draw (agustinB) -- (rejectB) node[midway, above right] {R};
\draw (agustinS) -- (acceptS) node[midway, above left] {A};
\draw (agustinS) -- (rejectS) node[midway, above right] {R};

% Information set
\draw[info] (agustinB) -- (agustinS);

\end{tikzpicture}

\end{document}
```
Dado es, el jugador J2 ve RR' y actualiza sus creencias usando la regla de Bayes: