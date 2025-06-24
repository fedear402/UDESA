```
\begin{document}
% Node styles
\usetikzlibrary{calc}
\tikzset{
% Two node styles for game trees: solid and hollow
solid node/.style={circle,draw,inner sep=1.5,fill=black},
hollow node/.style={circle,draw,inner sep=1.5}
}
\begin{tikzpicture}[scale=1.5,font=\footnotesize]
% Specify spacing for each level of the tree
\tikzstyle{level 1}=[level distance=15mm,sibling distance=35mm]
\tikzstyle{level 2}=[level distance=15mm,sibling distance=15mm]
% The Tree
\node(0)[solid node,label=above:{$P1$}]{}
child{node(1)[solid node]{}
child{node[hollow node,label=below:{$(a,b)$}]{} edge from parent node[left]{$C$}}
child{node[hollow node,label=below:{$(c,d)$}]{} edge from parent node[right]{$D$}}
edge from parent node[left,xshift=-3]{$A$}
}
child{node(2)[solid node]{}
child{node[hollow node,label=below:{$(e,f)$}]{} edge from parent node[left]{$C$}}
child{node[hollow node,label=below:{$(g,h)$}]{} edge from parent node[right]{$D$}}
edge from parent node[right,xshift=3]{$B$}
};

% information set
\draw[dashed,rounded corners=10]($(1) + (-.2,.25)$)rectangle($(2) +(.2,-.25)$);
% specify mover at 2nd information set
\node at ($(1)!.5!(2)$) {$P2$};
\end{tikzpicture}
\end{document}
```


```tikz
\begin{document}
% Node styles
\usetikzlibrary{calc}
\tikzset{
% Two node styles for game trees: solid and hollow
solid node/.style={circle,draw,inner sep=1.5,fill=black},
hollow node/.style={circle,draw,inner sep=1.5}
}
\begin{tikzpicture}[scale=1.5,font=\footnotesize]
% Specify spacing for each level of the tree
\tikzstyle{level 1}=[level distance=15mm,sibling distance=35mm]
\tikzstyle{level 2}=[level distance=15mm,sibling distance=15mm]
% The Tree
\node(0)[solid node,label=above:{$P1$}]{}
child{node(1)[solid node]{}
child{node[hollow node,label=below:{$(a,b)$}]{} edge from parent node[left]{$C$}}
child{node[hollow node,label=below:{$(c,d)$}]{} edge from parent node[right]{$D$}}
edge from parent node[left,xshift=-3]{$A$}
}
child{node(2)[solid node]{}
child{node[hollow node,label=below:{$(e,f)$}]{} edge from parent node[left]{$C$}}
child{node[hollow node,label=below:{$(g,h)$}]{} edge from parent node[right]{$D$}}
edge from parent node[right,xshift=3]{$B$}
};

% information set
\draw[dashed,rounded corners=10]($(1) + (-.2,.25)$)rectangle($(2) +(.2,-.25)$);
% specify mover at 2nd information set
\node at ($(1)!.5!(2)$) {$P2$};
\end{tikzpicture}
\end{document}
```
