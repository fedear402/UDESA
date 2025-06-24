
```
...node(coordinate label)[drawing/style options] at(coordinate) {node texts}..
```
Ejemplo:
```
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=15mm];
	
	\node(0)[hollow node]{}
		child{node [solid node]{}}
		child{node [solid node]{}}
		child{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```


```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	
	\node(0)[hollow node]{}
		child{node [solid node]{}}
		child{node [solid node]{}}
		child{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```

# Branch Dist.
Parametro a cada child:

```
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	
	\node(0)[hollow node]{}
		child[sibling distance=25mm]{node [solid node]{}}
		child[sibling distance=25mm]{node [solid node]{}}
		child[sibling distance=25mm]{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	
	\node(0)[hollow node]{}
		child[sibling distance=25mm]{node [solid node]{}}
		child[sibling distance=25mm]{node [solid node]{}}
		child[sibling distance=25mm]{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```

Parametro antes del primer child:
```
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	
	\node(0)[hollow node]{}
	 [sibling distance=25mm]
		child{node [solid node]{}}
		child{node [solid node]{}}
		child{node [solid node]{}};
	
\end{tikzpicture}
\end{document}

```
```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	
	\node(0)[hollow node]{}
	 [sibling distance=25mm]
		child{node [solid node]{}}
		child{node [solid node]{}}
		child{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```
Para cierto nivel:
```
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=25mm]
	
	\node(0)[hollow node]{}
		child{node [solid node]{}}
		child{node [solid node]{}}
		child{node [solid node]{}};
	
\end{tikzpicture}
\end{document}

```

```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=25mm]
	
	\node(0)[hollow node]{}
		child{node [solid node]{}}
		child{node [solid node]{}}
		child{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```

Para varios children distintas distancias:
```
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=20mm]
	\tikzstyle{level 2}=[sibling distance=7.5mm]
	
	\node(0)[hollow node]{}
		child{node(1) [solid node]{}
			child{node [solid node]{}}
			child{node [solid node]{}}
		}
		child{node(2) [solid node]{}
			child{node [solid node]{}}
			child{node [solid node]{}}		
		}
		child{node(3) [solid node]{}
			child{node [solid node]{}}
			child{node [solid node]{}}		
		};
	
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=20mm]
	\tikzstyle{level 2}=[sibling distance=7.5mm]
	
	\node(0)[hollow node]{}
		child{node(1) [solid node]{}
			child{node [solid node]{}}
			child{node [solid node]{}}
		}
		child{node(2) [solid node]{}
			child{node [solid node]{}}
			child{node [solid node]{}}		
		}
		child{node(3) [solid node]{}
			child{node [solid node]{}}
			child{node [solid node]{}}		
		};
	
\end{tikzpicture}
\end{document}
```

# TEXTS
```
...node[label=position parameter:{label texts}]{}...;
```

Ejemplo
```
\begin{document}
\begin{tikzpicture}
\usetikzlibrary{calc}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
\node(0)[hollow node, label=above:{Player One}]{}
child{node[solid node]{}}
child{node[solid node]{}};

\usetikzlibrary{calc}
\draw[dashed,rounded corners=7] ($(0-1)+(-.25,.25)$)rectangle($(0-2)+(.25,-.25)$);

\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
\usetikzlibrary{calc}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
\node(0)[hollow node, label=above:{Player One}]{}
child{node[solid node]{}}
child{node[solid node]{}};

\usetikzlibrary{calc}
\draw[dashed,rounded corners=7] ($(0-1)+(-.25,.25)$)rectangle($(0-2)+(.25,-.25)$);

\end{tikzpicture}
\end{document}
```

---
Para poner texto usando `\node` y `at()`
```
\node[above]at(0){Player 1};
\node at($(0-1)!.5!(0-2)$){Player 2};
```
El `($(0-1)!.5!(0-2)$)` Para poner texto entre dos nodos

Con `child[sibling distance=25mm]` edita distancia entre dos nodos

Ejemplo:

```
\begin{document}
\begin{tikzpicture}
\usetikzlibrary{calc}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
\node(0)[hollow node]{}
child[sibling distance=25mm]{node[solid node]{}}
child[sibling distance=25mm]{node[solid node]{}};

\usetikzlibrary{calc}
\draw[dashed,rounded corners=7] ($(0-1)+(-.25,.25)$)rectangle($(0-2)+(.25,-.25)$);

\node[above]at(0){Player 1};
\node at($(0-1)!.5!(0-2)$){Player 2};


\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
\usetikzlibrary{calc}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
\node(0)[hollow node]{}
child[sibling distance=25mm]{node[solid node]{}}
child[sibling distance=25mm]{node[solid node]{}};

\usetikzlibrary{calc}
\draw[dashed,rounded corners=7] ($(0-1)+(-.25,.25)$)rectangle($(0-2)+(.25,-.25)$);

\node[above]at(0){Player 1};
\node at($(0-1)!.5!(0-2)$){Player 2};


\end{tikzpicture}
\end{document}
```

# Branch Style
```
\begin{document}
\begin{tikzpicture}

\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];


\node(0)[hollow node]{}
child[sibling distance=25mm]{node[solid node]{} edge from parent[red] node[left,xshift=-5]{$\ell$}} 

child[sibling distance=25mm]{node[solid node]{} edge from parent[draw=none] node[align=center, xshift=8, yshift=-5]{missing\\branch}}

child[sibling distance=25mm]{node[solid node]{} edge from parent[->,>=latex,dashed,thick] node[xshift=8]{$d$}}

child[sibling distance=25mm]{node[solid node]{} edge from parent[blue,very thick]}

;
	
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}

\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];


\node(0)[hollow node]{}
child[sibling distance=25mm]{node[solid node]{} edge from parent[red] node[left,xshift=-5]{$\ell$}} 

child[sibling distance=25mm]{node[solid node]{} edge from parent[draw=none] node[align=center, xshift=8, yshift=-5]{missing\\branch}}

child[sibling distance=25mm]{node[solid node]{} edge from parent[->,>=latex,dashed,thick] node[xshift=8]{$d$}}

child[sibling distance=25mm]{node[solid node]{} edge from parent[blue,very thick]}

;
	
\end{tikzpicture}
\end{document}
```
---
Uniform branches:
```
\begin{tikzpicture}[edge from parent/.style={draw,other style options}]
```

# Format Nodes

```
\tikzstyle{style name}=[style options]
```

```
\tikzset{
style name 1/.style={style options}
style name 2/.style={style options}
}
```
Ejemplo:
```
\begin{document}
\begin{tikzpicture}

	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5]
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black]
	\tikzset{
	red node/.style={circle,draw=red,fill=red,inner sep=1.2},
	blue node/.style={rectangle,draw=blue,inner sep=2.5}
	}
	
		\node[hollow node]{}
		child{node[solid node]{}}
		child{node[red node]{}}
		child{node[blue node]{}}
		;
	
\end{tikzpicture}
\end{document}
```
Output:


```tikz
\begin{document}
\begin{tikzpicture}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5]
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black]
\tikzset{
red node/.style={circle,draw=red,fill=red,inner sep=1.2},
blue node/.style={rectangle,draw=blue,inner sep=2.5}
}
\node[hollow node]{}
child{node[solid node]{}}
child{node[red node]{}}
child{node[blue node]{}}
;
\end{tikzpicture}
\end{document}
```

# Growth Direction
Direccionar a cada child:
```
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	
	\node(0)[hollow node]{}
		child[grow=left]{node [solid node]{}}
		child[grow=260]{node [solid node]{}}
		child[grow=south east]{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	
	\node(0)[hollow node]{}
		child[grow=left]{node [solid node]{}}
		child[grow=260]{node [solid node]{}}
		child[grow=south east]{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```
Dirección de todos los children:

```
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	
	\node(0)[hollow node]{}
		[grow=north west]
		child{node [solid node]{}}
		child{node [solid node]{}}
		child{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```


```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	
	\node(0)[hollow node]{}
		[grow=north west]
		child{node [solid node]{}}
		child{node [solid node]{}}
		child{node [solid node]{}};
	
\end{tikzpicture}
\end{document}
```
# Info sets
```
...node[label=position parameter:{label texts}]{}...;
```

Ejemplo
```
\begin{document}
\begin{tikzpicture}
\usetikzlibrary{calc}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
\node(0)[hollow node, label=above:{Player One}]{}
child{node[solid node]{}}
child{node[solid node]{}};

\usetikzlibrary{calc}
\draw[dashed,rounded corners=7] ($(0-1)+(-.25,.25)$)rectangle($(0-2)+(.25,-.25)$);

\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
\usetikzlibrary{calc}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
\node(0)[hollow node, label=above:{Player One}]{}
child{node[solid node]{}}
child{node[solid node]{}};

\usetikzlibrary{calc}
\draw[dashed,rounded corners=7] ($(0-1)+(-.25,.25)$)rectangle($(0-2)+(.25,-.25)$);

\end{tikzpicture}
\end{document}
```

---
Para poner texto usando `\node` y `at()`
```
\node[above]at(0){Player 1};
\node at($(0-1)!.5!(0-2)$){Player 2};
```
El `($(0-1)!.5!(0-2)$)` Para poner texto entre dos nodos

Con `child[sibling distance=25mm]` edita distancia entre dos nodos

Ejemplo:

```
\begin{document}
\begin{tikzpicture}
\usetikzlibrary{calc}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
\node(0)[hollow node]{}
child[sibling distance=25mm]{node[solid node]{}}
child[sibling distance=25mm]{node[solid node]{}};

\usetikzlibrary{calc}
\draw[dashed,rounded corners=7] ($(0-1)+(-.25,.25)$)rectangle($(0-2)+(.25,-.25)$);

\node[above]at(0){Player 1};
\node at($(0-1)!.5!(0-2)$){Player 2};


\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
\usetikzlibrary{calc}
\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
\node(0)[hollow node]{}
child[sibling distance=25mm]{node[solid node]{}}
child[sibling distance=25mm]{node[solid node]{}};

\usetikzlibrary{calc}
\draw[dashed,rounded corners=7] ($(0-1)+(-.25,.25)$)rectangle($(0-2)+(.25,-.25)$);

\node[above]at(0){Player 1};
\node at($(0-1)!.5!(0-2)$){Player 2};


\end{tikzpicture}
\end{document}
```
