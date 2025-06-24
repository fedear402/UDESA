# 3
### a.
Sabemos que en cualquier equilibrio perfecto en subjuegos, la negociación acaba en la primer ronda de negociación, ya que los jugadores descuentan los pagos del futuro. Usando inducción hacia atrás para hallar el equilibrio SPNE, partimos de la última ronda de negociación en la que Lucía ofrece $x_{4}$ y Cristian decide entre aceptar (A) y rechazar (R). En este juego de negociación típico, Cristian tiene dos estrategias, aceptar todas las ofertas $x_{4}\geq 0$ o aceptar cualquier $x_{4}> 0$ y rechazar $x_{4}= 0$. Esta segunda no puede ser parte de un equilibrio ya que no existe un número real que sea mejor respuesta de Lucía (ofrecer un número infinitesimalmente mayor que 0). Por esto en equilibrio Cristian acepta todas las ofertas $x_{4}\geq 0$ y Lucía ofrece $x_{4}=0$ en la cuarta ronda de negociación.


```tikz
\begin{document}
\begin{tikzpicture}
    % Define styles for nodes
    \tikzstyle{hollow node}=[circle, draw, inner sep=1.5];
    \tikzstyle{solid node}=[circle, draw, inner sep=1.5, fill=black];
    
    \node (0)[solid node] {} [grow=south]
		child{}
		child{edge from parent node[right]{$x_1$}};
	
	\draw[bend right] (0-1) to (0-2);

	\node (1)[solid node, yshift=-50] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{node[solid node]{}
			child{}
			child{edge from parent node[right]{$x_2$}}
		edge from parent node[right]{Rechazar}};
	\draw[bend right] (1-2-1) to (1-2-2);

	\node (2)[solid node, yshift=-142, xshift=22] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{node[solid node]{}
			child{}
			child{edge from parent node[right]{$x_3$}}
		edge from parent node[right]{Rechazar}};
	\draw[bend right] (2-2-1) to (2-2-2);

	\node (3)[solid node, yshift=-234, xshift=44] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{node[solid node]{}
			child{}
			child{edge from parent node[right]{$x_4$}}
		edge from parent node[right]{Rechazar}};
	\draw[bend right] (3-2-1) to (3-2-2);

	\node (4)[solid node, yshift=-326, xshift=66] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{edge from parent node[right]{Rechazar}};
	
	\node[below] at (1-1) {$S - x_1$};
	\node[below=0.5cm] at (1-1) {$x_1$};

	\node[below] at (2-1) {$\delta_C x_2$};
	\node[below=0.5cm] at (2-1) {$\delta_L(S-x_2)$};

	\node[below] at (3-1) {$\delta_C^2 (S-x_3)$};
	\node[below=0.5cm] at (3-1) {$\delta_L^2x_3$};

	\node[below] at (4-1) {$\delta_C^3 x_4$};
	\node[below=0.5cm] at (4-1) {$\delta_L^3(S-x_4)$};

	\node[below] at (4-2) {0};
	\node[below=0.5cm] at (4-2) {0};

	\node[above] at (0) {C};
	\node[above] at (1) {L};
	\node[right] at (1-2) {L};
	\node[above] at (2) {C};

	\node[right] at (2-2) {C};
	\node[above] at (3) {L};
	\node[right] at (3-2) {L};
	\node[above] at (4) {C};


\end{tikzpicture}
\end{document}
```

De esta manera, cuando Lucía tiene que aceptar o rechazar la oferta de Cristian en la tercera ronda de negociación sabe que, por racionalidad secuencial, rechazar implica un vector de pagos de $(0, \delta_{L}^3S)$. Con la misma lógica que en la cuarta ronda de negociación, la estrategia de Cristian especifica que debe ofrecer un $x_{3}$ tal que Lucía acepte y ella acepta si $\delta_{L}^2x_{3}\geq\delta_{L}^3S$. Entonces si despejamos de esa igualdad, vemos que el valor que se ofrece es $x_{3}=\delta_{L}S$, ya que es lo mínimo que se puede ofrecer y que la oferta se acepte; por su parte, Lucía tiene la estrategia de aceptar las ofertas $x_{3}\geq\delta_{L}S$ y rechazarlas si son estrictamente menores a ese valor. La forma extensiva recortado queda:

```tikz
\begin{document}
\begin{tikzpicture}
    % Define styles for nodes
    \tikzstyle{hollow node}=[circle, draw, inner sep=1.5];
    \tikzstyle{solid node}=[circle, draw, inner sep=1.5, fill=black];
    
    \node (0)[solid node] {} [grow=south]
		child{}
		child{edge from parent node[right]{$x_1$}};
	
	\draw[bend right] (0-1) to (0-2);

	\node (1)[solid node, yshift=-50] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{node[solid node]{}
			child{}
			child{edge from parent node[right]{$x_2$}}
		edge from parent node[right]{Rechazar}};
	\draw[bend right] (1-2-1) to (1-2-2);

	\node (2)[solid node, yshift=-142, xshift=22] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{node[solid node]{}
			child{}
			child{edge from parent node[right]{$x_3$}}
		edge from parent node[right]{Rechazar}};
	\draw[bend right] (2-2-1) to (2-2-2);

	\node (3)[solid node, yshift=-234, xshift=44] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{edge from parent node[right]{Rechazar}};



	
	\node[below] at (1-1) {$S - x_1$};
	\node[below=0.5cm] at (1-1) {$x_1$};

	\node[below] at (2-1) {$\delta_C x_2$};
	\node[below=0.5cm] at (2-1) {$\delta_L(S-x_2)$};

	\node[below] at (3-1) {$\delta_C^2 (S-x_3)$};
	\node[below=0.5cm] at (3-1) {$\delta_L^2x_3$};

	\node[below] at (3-2) {$0$};
	\node[below=0.5cm] at (3-2) {$\delta_L^3S$};

	\node[above] at (0) {C};
	\node[above] at (1) {L};
	\node[right] at (1-2) {L};
	\node[above] at (2) {C};

	\node[above] at (2-2) {C};
	\node[above] at (3) {L};




\end{tikzpicture}
\end{document}
```

Pasamos a analizar la segunda ronda de negociación sabiendo que en tercera ronda Cristian ofrece $x_{3}=\delta_{L}S$ y Lucía acepta, por lo que si Cristian rechaza la oferta $x_{2}$ de Lucía en esta segunda vuelta la racionalidad secuencial indica un vector terminal de pagos $(\delta_C^2 (S-\delta_{L}S), \ \delta_L^3S)$. La forma extensiva recortad queda:

```tikz
\begin{document}
\begin{tikzpicture}
    % Define styles for nodes
    \tikzstyle{hollow node}=[circle, draw, inner sep=1.5];
    \tikzstyle{solid node}=[circle, draw, inner sep=1.5, fill=black];
    
    \node (0)[solid node] {} [grow=south]
		child{}
		child{edge from parent node[right]{$x_1$}};
	
	\draw[bend right] (0-1) to (0-2);

	\node (1)[solid node, yshift=-50] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{node[solid node]{}
			child{}
			child{edge from parent node[right]{$x_2$}}
		edge from parent node[right]{Rechazar}};
	\draw[bend right] (1-2-1) to (1-2-2);

	\node (2)[solid node, yshift=-142, xshift=22] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{edge from parent node[right]{Rechazar}};





	
	\node[below] at (1-1) {$S - x_1$};
	\node[below=0.5cm] at (1-1) {$x_1$};

	\node[below] at (2-1) {$\delta_C x_2$};
	\node[below=0.5cm] at (2-1) {$\delta_L(S-x_2)$};


	\node[below right] at (2-2) {$\delta_C^2 (S-\delta_{L}S)$};
	\node[below right=0.5cm] at (2-2) {$\delta_L^3S$};
	
	\node[above] at (0) {C};
	\node[above] at (1) {L};
	\node[right] at (1-2) {L};
	\node[above] at (2) {C};





\end{tikzpicture}
\end{document}
```
De nuevo, notamos que Lucía debe ofrecer un $x_{2}$ tal que $\delta_{C}x_{2}=\delta_C^2 (S-\delta_{L}S)\to x_{2}=\delta_C (S-\delta_{L}S)$. Los pagos terminales quedan $(\delta_{C}^2(S-\delta_{L}S), \ \delta_{L}[S-\delta_C (S-\delta_{L}S)])$
```tikz
\begin{document}
\begin{tikzpicture}
    % Define styles for nodes
    \tikzstyle{hollow node}=[circle, draw, inner sep=1.5];
    \tikzstyle{solid node}=[circle, draw, inner sep=1.5, fill=black];
    
    \node (0)[solid node] {} [grow=south]
		child{}
		child{edge from parent node[right]{$x_1$}};
	
	\draw[bend right] (0-1) to (0-2);

	\node (1)[solid node, yshift=-50] {} [grow=south]
		child{edge from parent node[left]{Aceptar}}
		child{edge from parent node[right]{Rechazar}};
	
	\node[below] at (1-1) {$S - x_1$};
	\node[below=0.5cm] at (1-1) {$x_1$};

	\node[below=0.2cm, right] at (1-2) {$\delta_{C}^2(S-\delta_{L}S)$};
	\node[below=0.7cm , right ] at (1-2) {$\delta_{L}[S-\delta_C (S-\delta_{L}S)]$};

	
	\node[above] at (0) {C};
	\node[above] at (1) {L};

\end{tikzpicture}
\end{document}
```
Finalmente, en la primer ronda de negociación Cristian ofrece $x_{1}=\delta_{L}[S-\delta_C (S-\delta_{L}S)]$. Los pagos en el equilibrio perfecto en subjuegos son $(S-\delta_{L}[S-\delta_C (S-\delta_{L}S)],\ \delta_{L}[S-\delta_C (S-\delta_{L}S)])$.


De esta manera, podemos especificar el perfil de estrategias que constituye el único equilibrio de Nash perfecto en subjuegos. Estas estrategias de equilibrio son:

Cristian: 
- En $t=1$, la estrategia es $s^{C}_{t=1}=x_{1}=\delta_{L}[S-\delta_C (S-\delta_{L}S)]$
- En $t=2$, jugar $s^{C}_{t=2}$ 
$$
s^{C}_{t=2}=\begin{cases}
\text{Aceptar}  \ \ \ \ \ \ \ \ \text{si} \ \ x_{2}\geq\delta_C (S-\delta_{L}S) \\
\text{Rechazar}  \ \ \ \ \ \ \text{si} \ \ x_{2}<\delta_C (S-\delta_{L}S)
\end{cases}
$$
- En $t=3$, jugar $s^{C}_{t=3}=x_{3}=\delta_{L}S$ 
- En $t=4$, jugar $s^{C}_{t=4}$
$$
s^{C}_{t=4}=\begin{cases}
\text{Aceptar}  \ \ \ \ \ \ \ \ \text{si} \ \ x_{3}\geq0 \\
\text{Rechazar}  \ \ \ \ \ \ \text{si} \ \ x_{3}<0
\end{cases}
$$
Lucía:
- En $t=1$, jugar la estrategia $s^{L}_{t=1}$
$$
s^{L}_{t=1}=\begin{cases}
\text{Aceptar}  \ \ \ \ \ \ \ \ \text{si} \ \ x_{1}\geq\delta_{L}[S-\delta_C (S-\delta_{L}S)] \\
\text{Rechazar}  \ \ \ \ \ \ \text{si} \ \ x_{1}<\delta_{L}[S-\delta_C (S-\delta_{L}S)]
\end{cases}
$$
- En $t=2$, jugar $s_{t=2}^L=x_{2}=\delta_C (S-\delta_{L}S)$
- En $t=3$, jugar $s^{L}_{t=3}$
$$
s^{L}_{t=3}=\begin{cases}
\text{Aceptar}  \ \ \ \ \ \ \ \ \text{si} \ \ x_{3}\geq\delta_{L}S \\
\text{Rechazar}  \ \ \ \ \ \ \text{si} \ \ x_{3}<\delta_{L}S
\end{cases}
$$
- En $t=4$, jugar $s^{L}_{t=4}=x_{4}=0$

Comprobamos que son planes completos contingentes, especifican un movimiento para cada uno de los conjuntos de información posibles, son condicionales en la historia de juego.

El factor de descuento $\delta_{L}$ y $\delta_{C}$ determina cuanto valoran los pagos futuros y el valor de utilidad que puede obtener cada uno. Por ejemplo, de por sí, Cristian tiene ventaja por ser el primero en jugar y el último en decidir. Si lucía es muy impaciente y lo que pueda obtener en el futuro no vale nada, $\delta_{L}=0$ , entonces Cristian puede ofrecer $x_{1}=0$ y la mejor respuesta de Lucia una estrategia de equilibrio va a ser aceptar, dejando a Cristian todo el excedente. Si Lucia tiene paciencia, eso le da más poder de negociación, porque ahora está dispuesta a esperar a que lleguen periodos futuros donde ella ofrece y Cristian va a tener que compensar esa disposición a esperar.

El pago de Cristian es mayor al de Lucía cuando:
$$
U^C\geq U^L
$$
$$
U^C-U^L\geq 0
$$
$$S-\delta_{L}[S-\delta_C (S-\delta_{L}S)] - ( \delta_{L}[S-\delta_C (S-\delta_{L}S)])>0$$
$$S-S\delta_{L}[(1-\delta_{C}(1-\delta_{L})]-S\delta_{L}[(1-\delta_{C}(1-\delta_{L})]>0$$
$$S(1-\delta_{L}[(1-\delta_{C}(1-\delta_{L})]-\delta_{L}[(1-\delta_{C}(1-\delta_{L})])>0$$
por definición $S>0$.
$$1-2\delta_{L}[(1-\delta_{C}(1-\delta_{L})]>0$$
$$\frac{1}{2}>\delta_{L}[(1-\delta_{C}(1-\delta_{L})]$$
Graficamos esta función en y observamos todos los puntos encima de la línea $\frac{1}{2}=\delta_{L}[(1-\delta_{C}(1-\delta_{L})]$.
### b.
```tikz
\begin{document}
    \begin{tikzpicture}
        % Define styles for nodes
        \tikzstyle{hollow node}=[circle, draw, inner sep=1.5];
        \tikzstyle{solid node}=[circle, draw, inner sep=1.5, fill=black];
        
        \node (0)[solid node] {} [grow=south]
    		child{}
    		child{edge from parent node[right]{$x_1$}};
    	
    	\draw[bend right] (0-1) to (0-2);
    
    	\node (1)[solid node, yshift=-50] {} [grow=south]
    		child{edge from parent node[left]{Aceptar}}
    		child{node[solid node]{}
    			child{}
    			child{edge from parent node[right]{$x_2$}}
    		edge from parent node[right]{Rechazar}};
    	\draw[bend right] (1-2-1) to (1-2-2);
    
    	\node (2)[solid node, yshift=-142, xshift=22] {} [grow=south]
    		child{edge from parent node[left]{Aceptar}}
    		child{node[solid node]{}
    			child{}
    			child{edge from parent node[right]{$x_3$}}
    		edge from parent node[right]{Rechazar}};
    	\draw[bend right] (2-2-1) to (2-2-2);
    
    	\node (3)[solid node, yshift=-234, xshift=44] {} [grow=south]
    		child{edge from parent node[left]{Aceptar}}
    		child{node[solid node]{}
    			child{}
    			child{edge from parent node[right]{$x_4$}}
    		edge from parent node[right]{Rechazar}};
    	\draw[bend right] (3-2-1) to (3-2-2);
    
    	\node (4)[solid node, yshift=-326, xshift=66] {} [grow=south]
    		child{edge from parent node[left]{Aceptar}}
    		child{edge from parent node[right]{Rechazar}};
    	
    	\node[below] at (1-1) {$(S-c) - x_1$};
    	\node[below=0.5cm] at (1-1) {$x_1$};
    
    	\node[below] at (2-1) {$x_2$};
    	\node[below=0.5cm] at (2-1) {$(S-2c)-x_2$};
    
    	\node[below] at (3-1) {$(S-3c)-x_3$};
    	\node[below=0.5cm] at (3-1) {$x_3$};
    
    	\node[below] at (4-1) {$x_4$};
    	\node[below=0.5cm] at (4-1) {$(S-4c)-x_4$};
    
    	\node[below] at (4-2) {0};
    	\node[below=0.5cm] at (4-2) {0};
    
    	\node[above] at (0) {C};
    	\node[above] at (1) {L};
    	\node[right] at (1-2) {L};
    	\node[above] at (2) {C};
    
    	\node[right] at (2-2) {C};
    	\node[above] at (3) {L};
    	\node[right] at (3-2) {L};
    	\node[above] at (4) {C};
    
    
    \end{tikzpicture}
	\end{document}
```
Podemos encontrar el equilibrio perfecto en subjuegos usando inducción hacia atrás. 

En $t=4$ tenemos un juego de ultimatum de toda la vida así que Lucía ofrece 0 y la estrategia de Cristian es aceptar 0 y cualquier cosa mayor (rechazar cualquier cosa menor). Nos queda que  $u_{t=4}^C=0$ y $u_{t=4}^L=S-4c$. 

En $t=3$, Cristian ofrece $x_{3}=S-4c$ y Lucia acepta eso y cualquier cosa mayor (rechaza cualquier cosa menor). Tenemos de utilidades,  $u_{t=3}^C=c$ y $u_{t=3}^L=S-4c$. 

En $t=2$, Lucia ofrece $x_{2}=c$ y Cristian acepta eso y cualquier cosa mayor (rechaza cualquier cosa menor). Llegamos a $u_{t=2}^C=c$ y $u_{t=2}^L=S-3c$. 

En $t=1$, Cristian ofrece $x_{1}=S-3c$ y Lucia acepta eso y cualquier cosa mayor (rechaza cualquier cosa menor). Llegamos a $u_{t=1}^C=S-c-(S-3c)=2c$ y $u_{t=1}^L=S-3c$. Esos son los pagos de equilibrio

### c.

Va a ser un equilibrio perfecto en subjuegos si es un equilibrio de Nash en todos los subjuegos que comienzan para cada posible valor de $c$ que proponga el abogado. Cada uno  de estos subjuegos es uno de negociación alternada que ya resolvimos en el ejercicio anterior. En un SPNE el abogado propone el mayor $c$ posible para el que se sostienen las estrategias de equilibrio en los subjuegos de negociación alternada.

Sabemos que en el equilibrio de la negociación alternada llegan a un acuerdo en la primer ronda, por lo que el pago del abogado es $U_{A}=c$. Además ya calculamos que Cristian y Lucía ganan $U_{C}=2c$ y $U_{L}=S-3c$ aceptando hacer el emprendimiento. Entonces, la condición que debe cumplirse es que no les convenga rechazar hasta obtener 0 cada uno. Es decir, $c$ debe ser el mayor posible para inducir un equilibrio perfecto en subjuegos.

En $t=4$, Cristian acepta si $x_{4}\geq 0$, lo cual se cumple porque en equilibrio $x_{4}$ sin importar el valor de $c$. Además, Tiene que ser racional para Lucía ofrecer 0, es decir, no puede ganar más induciendo a Cristian a rechazar, lo cual sucedería si su pago por hacer el emprendimiento es menor que no realizarlo. Por eso requerimos que $S-4c\geq 0$, es decir $\frac{S}{4}\geq c$. Si se cumple esto, los periodos previos van a generar un equilibrio. Sabemos que en equilibrio $c$ permite que en cada periodo el jugador que le corresponde acepta:

- En $t=3$, Lucía acepta si $x_{3}\geq S-4c$ y requerimos $(S-3c)-x_{3}\geq 0$. En el SPNE $x_{3}=S-4c$ así que $c$ debe cumplir que $S-4c\geq S-4c$ (se cumple sin importar el $c$) y también que $(S-3c)-(S-4c)\geq 0\to c\geq 0$ 

- En $t=2$, Cristian acepta si $x_{2}\geq c$ y requerimos que $(S-2c)-x_{2}\geq S-4c$ para que sea un equilibrio en el que actúa racionalmente. Lo primero se cumple con el valor de equilibrio $x_{2}=c$ para cualquier $c$. Luego para que Lucia actúe racionalmente $(S-2c)-c\geq S-4c \to 0\leq c$. 

- En $t=1$, Lucía acepta si $x_{1}\geq S-3c$ y requerimos que $S-c-x_{1}\geq c$. Lo primero se cumple siempre. $S-c-(S-3c)\geq c \to c \geq 0$

Entonces $0\leq c\leq \frac{1}{4}S$

Para el abogado nunca va a ser un equilibrio proponer $c$ menor que $\frac{S}{4}$ porque si lo hiciera no estaría eligiendo su mejor respuesta. El mayor $c$ que puede proponer para que haya negociación es $\frac{S}{4}$. Notamos que especificamos estrategias con desigualdades débiles porque las otras posibles estrategias con desigualdades estrictas no permiten un valor real de equilibrio. $c=\frac{S}{4}$ es el único posible valor de $c$ en un SPNE, porque si es mayor no se sostienen las estrategias de equilibrio en el último subjuego, el de $t=4$, ya que Lucía no estaría jugando una mejor respuesta. Si es menor, el abogado no estaría jugando una mejor respuesta porque puede cobrar más. 

Al final tenemos estos pagos de equilibrio :$$U^{C}=\frac{1}{2}S \ \ \  \ \ \ \ \ \  \ U^{L}=\frac{1}{4}S \ \ \ \ \ \ \ \ \ U^{A}=\frac{1}{4}S$$Esto es esperable dado que los jugadores son perfectamente pacientes. Lo único que importa es quien juega último, porque no pierden nada esperando. El que acepta o rechaza en el último periodo tiene todo el poder de negociación (porque es un numero par de rondas).

# 4.
```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=30mm]
	\tikzstyle{level 2}=[sibling distance=30mm]
	\tikzstyle{level 3}=[sibling distance=15mm]
	\tikzstyle{level 4}=[sibling distance=5mm]
	
	\node(0)[solid node]{}[grow=east]
		child{node []{} edge from parent[] node[left]{NS}
		}
		child{node [solid node]{}
		child{node [solid node]{}
			child{node [solid node]{}
				child{edge from parent[] node[below]{ND'}}
				child{edge from parent[] node[above]{D'}}
				edge from parent[] node[below]{ND'}
			}
			child{node [solid node]{}
				child{edge from parent[] node[below]{ND'}}
				child{edge from parent[] node[above]{D'}}
				edge from parent[] node[above]{D'}
			}
			edge from parent[] node[below, left]{ND}
		}
		child{node [solid node]{}
			child{node [solid node]{}
				child{edge from parent[] node[below]{ND}}
				child{edge from parent[] node[above]{D}}
				edge from parent[] node[below]{ND}
			}
			child{node [solid node]{}
				child{edge from parent[] node[below]{ND}}
				child{edge from parent[] node[above]{D}}
				edge from parent[] node[above]{D}
			}	
			edge from parent[] node[above, left]{D}
		}
		edge from parent[] node[left]{S}
		}
;
	\draw[dashed] (0-2-1-1) to (0-2-1-2);
	\draw[dashed] (0-2-2-1) to (0-2-2-2);
	\node [left] at (0) {Apple}; 
	\node [left] at (0-2) {D1}; 
	\node [below] at (0-2-1) {D2}; 
	\node [above] at (0-2-2) {D2}; 
	\node [above] at (0-2-2-2) {D3}; 
	\node [above] at (0-2-1-2) {D3}; 
	\node [right] at (0-1) {$(0,0,0,0)$};
	\node [right] at (0-2-2-2-2) {$(10,4,4,4)$};
	\node [right] at (0-2-2-2-1) {$(6,2,2,0)$};
	\node [right] at (0-2-2-1-1) {$(6,2,0,2)$};
	\node [right] at (0-2-2-1-2) {$(-4,-2,0,0)$};
	\node [right] at (0-2-1-2-1) {$(6,0,2,2)$};
	\node [right] at (0-2-1-2-2) {$(-4,0,-2,0)$};
	\node [right] at (0-2-1-1-2) {$(-4,0,0,-2)$};
	\node [right] at (0-2-1-1-1) {$(-6,0,0,0)$};
\end{tikzpicture}
\end{document}
```

### a.
Las estrategias son las siguientes:

$S_{Apple}=\{ S, NS \}$, puede sacar el producto (S) o no sacarlo (NS)
$S_{D1}=\{ D, ND \}$, puede desarrollar (D) o no desarrollar (ND)
$S_{D2}=\{ D \ D',D \ ND', ND \ D', ND \ ND' \}$
$S_{D3}=\{ D \ D',D \ ND', ND \ D', ND \ ND' \}$
D2 y D3 tienen dos conjuntos de información cuando eligen simultáneamente luego de que D1 elija desarrollar o no. Entonces sus estrategias especifican que hacen en cada una de las acciones de D1; con un apóstrofe marcamos las que corresponden a estrategias cuando D1 no desarrolla.
### b.

```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=30mm]
	\tikzstyle{level 2}=[sibling distance=30mm]
	\tikzstyle{level 3}=[sibling distance=15mm]
	\tikzstyle{level 4}=[sibling distance=5mm]
	
	\node(0)[solid node]{}[grow=east]
		child{node []{} edge from parent[] node[left]{NS}
		}
		
		child{node [solid node]{}
			child{node []{} edge from parent[] node[left]{ND}}
			child{node []{} edge from parent[] node[left]{D}}
			node []{} edge from parent[] node[left]{S}
			};

	\node [left] at (0) {Apple}; 
	\node [left] at (0-2) {D1}; 
	\node [right] at (0-1) {$(0,0,0,0)$};
	\node [right] at (0-2-2) {$(10,4,4,4)$};
	\node [right] at (0-2-1) {$(6,0,2,2)$};

\end{tikzpicture}
\end{document}
```
```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=30mm]
	\tikzstyle{level 2}=[sibling distance=30mm]
	\tikzstyle{level 3}=[sibling distance=15mm]
	\tikzstyle{level 4}=[sibling distance=5mm]
	
	\node(0)[solid node]{}[grow=east]
		child{node []{} edge from parent[] node[left]{NS}
		}
		
		child{node [solid node]{}
			child{node []{} edge from parent[] node[left]{ND}}
			child{node []{} edge from parent[] node[left]{D}}
			node []{} edge from parent[] node[left]{S}
			};

	\node [left] at (0) {Apple}; 
	\node [left] at (0-2) {D1}; 
	\node [right] at (0-1) {$(0,0,0,0)$};
	\node [right] at (0-2-2) {$(10,4,4,4)$};
	\node [right] at (0-2-1) {$(-6,0,0,0)$};

\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
	\tikzstyle{hollow node}=[circle,draw,inner sep=1.5];
	\tikzstyle{solid node}=[circle,draw,inner sep=1.5,fill=black];
	\tikzstyle{level 1}=[sibling distance=30mm]
	\tikzstyle{level 2}=[sibling distance=30mm]
	\tikzstyle{level 3}=[sibling distance=15mm]
	\tikzstyle{level 4}=[sibling distance=5mm]
	
	\node(0)[solid node]{}[grow=east]
		child{node []{} edge from parent[] node[left]{NS}
		}
		
		child{node [solid node]{}
			child{node []{} edge from parent[] node[left]{ND}}
			child{node []{} edge from parent[] node[left]{D}}
			node []{} edge from parent[] node[left]{S}
			};

	\node [left] at (0) {Apple}; 
	\node [left] at (0-2) {D1}; 
	\node [right] at (0-1) {$(0,0,0,0)$};
	\node [right] at (0-2-2) {$(10,4,4,4)$};
	\node [right] at (0-2-1) {$(-8/3,0,0,0)$};

\end{tikzpicture}
\end{document}
```
### c.


# 5.
### a.
Este es un juego de Bertrand. Por un lado sabemos que en equilibrio van a cobrar lo mismo todas porque sino siempre habrían incentivos a cobrar infinitesimalmente menos que una que esté cobrando menos que el resto y quedarse con todo el mercado para uno, por lo que no sería mejor respuesta en ese perfil. Además, en equilibrio todas las firmas deberían fijar un precio igual a 0 (el costo marginal) porque de otra manera el beneficio sería negativo.

### b.
Comenzamos notando que el valor actual del pago de la firma $i$ si todas las firmas juegan la estrategia gatillo es:
$$
\pi_{i}^{coop}(p_{i})=p_{i} \frac{D(p_{i})}{n}+\delta p_{i} \theta\frac{D(p_{i})}{n}+\delta^2 p_{i} \theta\frac{D(p_{i})}{n}+ \dots 
$$
Para que sea un SPNE tiene que ser mayor ese pago por cooperar que el de no cooperar. Es decir, el beneficio de cobrar en algún momento infinitesimalmente menos que el resto tiene que ser menor que  $\pi_{i}^{coop}(p_{i})$. Al desviarse, obtiene $\pi_{i}^{d}(p_{i})=p_{i} D(p_{i})+0+0+\dots$ Es decir todo el beneficio posible y después 0 para siempre como especifica la estrategia gatillo de las demás. 

Entonces, hay incentivo a cooperar si:
$$
\pi_{i}^{coop}(p_{i})\geq\pi_{i}^{d}(p_{i})
$$
Habíamos definido esos pagos descontados como:
$$
p_{i} \frac{D(p_{i})}{n}+\delta p_{i} \theta\frac{D(p_{i})}{n}+\delta^2 p_{i} \theta\frac{D(p_{i})}{n}+ \dots \geq p_{i}  D(p_{i})+0+0+\dots
$$
Ahora sacamos factor común y despejamos
$$
p_{i} \frac{D(p_{i})}{n}\left( 1+\theta\sum_{i=1}^\infty \delta^i   \right)  \geq p_{i}  D(p_{i})
$$
$$
\frac{1}{n}\left(1+\theta \sum_{i=1}^\infty \delta^i   \right)  \geq 1
$$
La serie geométrica $\sum_{i=1}^\infty \delta^i=S=(\delta+\delta^2+\dots)$ ya sabemos que converge a $\frac{\delta}{1-\delta}$.
$$
1+ \theta\frac{\delta}{1-\delta}  \geq n
$$Y de esa expresión despejamos un valor de $\delta$ para el que sea conveniente cooperar.
$$
\frac{\delta}{1-\delta}  \geq \frac{n-1}{\theta}
$$
$$
\frac{1-\delta}{\delta}  \leq \frac{\theta}{n-1}
$$
$$
\frac{1}{\delta}-1 \leq \frac{\theta}{n-1}
$$
$$
\frac{1}{\delta} \leq \frac{\theta}{n-1}+1
$$
$$
\frac{1}{\delta} \leq \frac{\theta+(n-1)}{n-1}
$$
$$
\boxed{\delta \geq \frac{n-1}{\theta+n-1}}
$$
De esta manera, encontramos un valor mínimo para el descuento tal que haya cooperación. 

Está claro que $\frac{n-1}{\theta+n-1}$ es menor cuando $\theta$ es mayor, es decir que si la demanda es más fuerte baja el umbral y es necesario un descuento menor para incentivar a no desviarse. Tiene sentido porque is hay mas demanda, se paga mas por el producto, se pude obtener mucho más para siempre que solo hoy. En cambio, si hay más firmas el umbral es más mayor, porque ahora es menos el beneficio de cooperar, habría que repartirlo entre más firmas que antes, y empieza a ser más conveniente desviarse.



# 1.
Vamos a plantear un equilibrio en el que los jugadores alternan entre las estrategias (A,D) y (A,C).
$$U_1=2+5\delta+2\delta^2+5\delta^3+\dots$$
$$
U_1=2+2\delta^2+2\delta^4+\dots+5\delta+5\delta^3+5\delta^5\dots
$$
$$U_1=2(\delta^0+\delta^2+\delta^4+\dots) + 5\delta(\delta^0+\delta^2+\delta^4+\dots)$$
$$
\frac{2}{1-\delta^2} + \frac{5\delta}{1-\delta^2}
$$
$$
\frac{2}{(1-\delta)(1+\delta)} + \frac{5\delta}{(1-\delta)(1+\delta)}
$$
$$
\frac{2+5\delta}{(1-\delta)(1+\delta)}
$$
Obtenemos el pago promedio multiplicando por $(1-\delta)$ y lo fijamos como máximo a 4. 
$$
\frac{2+5\delta}{1+\delta}\leq 4
$$
$$
2+5\delta\leq 4(1+\delta)
$$
$$
2+5\delta\leq 4+4\delta
$$
$$
5\delta-4\delta \leq 4-2
$$
$$
\delta \leq 2
$$
Es decir que se cumple para cualquier descuento.

Para el jugador 2:
$$
U_2=6+3\delta+6\delta^2+3\delta^3+\dots
$$
$$
\frac{6}{1-\delta^2} + \frac{3\delta}{1-\delta^2}
$$
$$
\frac{6+3\delta}{(1-\delta)(1+\delta)}
$$
El pago promedio es:
$$
\frac{6+3\delta}{(1+\delta)}
$$
Lo fijamos mayor a 4
$$
\frac{6+3\delta}{(1+\delta)}\geq 4
$$
$$
6+3\delta\geq 4(1+\delta)
$$
$$
6+3\delta\geq 4+4\delta
$$
$$
6-4 \geq 4\delta-3\delta
$$
$$
2\geq \delta
$$
De nuevo, cualquier factor de descuento cumple la condición. Ahora buscamos que sea un SPNE. Proponemos la estrategia gatillo:

\begin{itemize}
    \item \textbf{Jugador 1}:  Jugar A infinitamente, siempre y cuando se cumpla que:
		- En un periodo impar, el perfil del periodo anterior es (A,D)
		- En un periodo par, el perfil del periodo anterior es (A,C)
		De otra manera juega el equilibrio de Nash (B,D)
    \item \textbf{Jugador 2}: Jugar D en la primer etapa, jugar C en la segunda y alternar así infinitamente, siempre y cuando se cumpla que:
		- En un periodo impar, el perfil del periodo anterior es (A,D)
		- En un periodo par, el perfil del periodo anterior es (A,C)
		De otra manera juega el equilibrio de Nash (B,D)
\end{itemize}


Buscamos los $\delta$ para los que este es un SPNE:

Ya tenemos los pagos de cooperación que eran:
$$
U_{1}=\frac{2+5\delta}{(1-\delta)(1+\delta)}
$$
$$
U_{2}=\frac{6+3\delta}{(1-\delta)(1+\delta)}
$$
Ahora buscamos que no se quieran desviar en ningún periodo:

Cuando en el periodo anterior se jugó (A,C) (ahora se jugaría (A,D)), el jugador 1 requiere que:
$$
\frac{2+5\delta}{(1-\delta)(1+\delta)} \geq \frac{3}{1-\delta}
$$
Es decir, tiene que preferir eso antes que jugar para siempre:
$$
\frac{2+5\delta}{(1+\delta)} \geq 3
$$
$$
2+5\delta \geq 3(1+\delta)
$$
$$
5\delta-3\delta \geq 3-2
$$
$$
\delta \geq \frac{1}{2}
$$
Luego para el jugador 2 es obvio que la condición se cumple para cualquier $\delta$ porque desviarse le da 5 hoy y 1 para siempre, mientras que cooperando hoy ganaría entre 6 y 5 para siempre. Algebraicamente la cuenta da que $\delta \geq -\frac{5}{2}$.

Cuando en el periodo anterior se jugó (A,D), el jugador 2 requiere que:
$$
\frac{6+3\delta}{(1-\delta)(1+\delta)}\geq 6+\frac{\delta}{1-\delta}
$$
Esto también se cumple para cualquier $\delta$ porque está ganando siempre 6 o 3 cuando coopera, mientras que desviándose obtiene 6 una sola vez y después siempre 1. En particular llegamos a
$$
0\geq-5\delta^2-2\delta
$$
que tiene solución cuando $\delta \geq 0$

Luego el jugador 1 requiere 
$$
\frac{2+5\delta}{(1-\delta)(1+\delta)}\geq 6+\frac{3\delta}{1-\delta}
$$
$$
\frac{2+5\delta}{(1+\delta)}\geq 6(1-\delta)+3\delta
$$
$$
2+5\delta \geq (6-3\delta)(1+\delta)
$$
$$
0\geq-3\delta^2-2\delta+4
$$
Buscamos las raíces y la solución positiva que encontramos es 
$$
\delta \geq \frac{1}{3}\left( \sqrt{ 13 } -1 \right) 
$$
Entonces $\frac{1}{3}\left( \sqrt{ 13 } -1 \right)\approx 0.86$

De esta manera podemos elegir un valor como por ejemplo $0.9$ y sabemos que va a ser un SPNE y a la vez cumple con que el pago promedio del jugador 1 sea como máximo 4 y el del jugador 2 sea como mínimo 4, en particular, los pagos promedio son:
Para el 1:
$$
\frac{2+5 \times 0.9}{1+ 0.9}=3.4\dots
$$
Para el 2
$$
\frac{6+3\times 0.9}{1+0.9}=4.5\dots
$$

