## Clase 1 (17-10) Monopolio
Supuestos 1er Teorema de Bienestar:
- No saciedad local
- **Agentes (firmas y consumidores) son tomadores de precios**
- Mercados completos
	- Información completa
	- No hay costos de transacción
	- Todos los activos en cualquier posible estado tienen un precio
- Racionalidad
- No hay externalidades

Se viola el supuesto de tomadores de precios si hay poder de mercado. En monopolio u oligopolio, una o varias firmas (vendedores) fijan precios por encima del costo marginal. En monopsonio u oligopsonio, uno o varios compradores exigen un precio por debajo de la productividad marginal.
### Definición de Mercado
**Test del monopolista hipotético o Small but significant and non-transitory increase in price (SSNIP):** 
Para ver si un producto $C$ está en un mercado,
1. Identificar todos los productos iguales a $C$ vendidos bajo otra marca, con otro nombre, pero que son el mismo producto esencialmente. Esos están en un mercado.
2. Plantear la situación de un monopolista controlador de toda la producción de $C$ y *todos* los productos homogéneos idénticos que están definitivamente en el mercado. Analizar los beneficios al aumentar un poco el precio.
3. Si aumentan, entonces $C$ y sus productos homogéneos constituyen todo el mercado
4. Si decrecen, entonces hay otros productos en el mercados a los cuales se divierte la demanda.
5. Para productos fuera del grupo del monopolista analizar elasticidades cruzadas.

**Consideración geográfica:** No es lo mismo un producto en un lugar que el mismo producto en otro lugar
### Evaluación de Mercado
EN un mercado con $N$ firmas ordenadas por market share $s_{1} > s_{2} > \dots>s_{N}$

**n-Concentration Ratio**:
$$
CR_{n} = \sum_{i=1}^n s_{i}
$$
**Herfindahl-Hirschmann**: 
$$
HHI=\sum_{i=1}^N s_{i}^2
$$
Pueden no reflejar la competencia si aunque esté muy concentrado hay amenaza de entrada de competidores (barreras de entradas bajas).

**Disputabilidad**: cualidades de las barreras de entrada. Legales, económicas o estratégicas

**Probabilidad de Colusión**: Hay casos en los que pueden llegar a coordinarse los fijadores de precios, si son pocos o hay barreras.

### Bienestar
Demanda del producto es $x(p)$; $x'(p)<0$. Demanda inversa es $P(x)$; $P'<0$
Decisión óptima dada por un índice de Lerner igual a la elasticidad ($\eta$) inversa
$$
(p^m, q^m): \frac{p^m-c'(q^m)}{p^m} = \frac{1}{\eta(p^m)}
$$
$$
p^m=P(q^m)
$$
Si el monopolista aumenta su producción de $q^m$ a $q^m+\Delta$, entonces gana 
$$
\frac{ \partial \pi }{ \partial q^m } =p^m+P'(q^m)q^m$$

### Discriminación
Si hay $I$ consumidores $i: 1 \dots I$ con utilidades cuasi-lineales $U_{i}(x_{i},m_{i})=\phi_{i}(x_{i})+m_{i}$. Asumiendo que $\phi_{i}(0)=0$. Hay una oferta $(x_{i}, T_{i})$ que hace el monopolista. Le ofrece darle la cantidad $x_{i}$ del bien a cambio de que le transfiera al monopolista $T_{i}$. Cada consumidor $i$ acepta si la oferta la da por lo menos tanta utilidad como no consumir:
$$
U_{i}(x_{i})-T_{i} \geq U_{i}(0)
$$
$$
\phi(x_{i}) - T_{i} \geq \phi(0)
$$
$$
\phi(x_{i}) - T_{i} \geq 0
$$
$$
\phi(x_{i}) \geq T_{i}
$$
Va a pedirle un $T_{i}$ exactamente igual a la utilidad que deriva el consumidor por consumir el bien $x_{i}$.
El monopolista va a querer maximizar la suma de las transferencias que pide menos el costo de proveer el bien.
$$
max_{x_{i},T_{i}} \sum_{i} T_{i} - c \left(  \sum_{i} x_{i} \right) 
$$
s.a. $T_{i} \leq \phi_{i} (x_{i})$

Va a igualar porque pudiendo discriminar no es óptimo pedirle menos que su utilidad marginal.
$$
max_{x_{i},T_{i}} \sum_{i} \phi_{i}'(x_{i}) - c \left(  \sum_{i} x_{i} \right) 

$$
Con discriminación perfecta, el óptimo para todo $i$:
$$
\phi'_{i} (x_{i} ) \leq  c'\left( \sum_{i} x_{i} \right) 
$$
- Por qué no $\sum_{i}c \left(   x_{i} \right)$? porque $c \left(  \sum_{i} x_{i} \right)$ es el costo de la cantidad de bien que va a tener que proveer. (subaditividad)

## Clase 2 (18-10) Monopolio
El caso de discriminación perfecta hace desaparecer la ineficiencia pero no es realista por I) Arbitraje (al que se lo vende mas barato le conviene ir y vendérselo al que lo valora mas caro pero menos que lo que le ofrece el monopolista) II) Información (difícil de obtener por incentivos a mentir sobre la disposición a pagar). Otro caso es con información sobre la demanda agregada y no exactamente $\phi$ pero sí una distribución sobre los posibles grupos que permita que se auto-seleccionen.
### Discriminación con información asimétrica
Modelo con dos tipos de consumidores. El monopolista ofrece dos posibles contratos, en los que provee $x$ a cambio de que le transfieran $T$ donde $i$ puede ser de tipo $\theta_{H}$ o $\theta_{L}$; $\theta_{L} < \theta_{H}$. Además $\mu=P(\theta=\theta_{H})$. Entonces ofrece $(x_{L},T_{L})$ y $(x_{H},T_{H})$ esperando que se revelen los consumidores. Estos tienen estas utilidades:
$$
U_{i}(x_{i},m_{i}) = \theta_{i} \phi(x_{i}) +m_{i} \qquad \phi(0)=0
$$
Para que se revelen, debe cumplirse la condición de incentivos compatibles ($IC$) y de participación ($PC$). La primera es necesaria para que se auto-seleccionen:
$$
IC_{L} :\qquad \theta_{L} \phi(x_{L}) - T_{L} \geq\theta_{L} \phi(x_{H}) - T_{H}
$$
$$
IC_{H} :\qquad \theta_{H} \phi(x_{H}) - T_{H} \geq\theta_{H} \phi(x_{L}) - T_{L}
$$
La primera dice que la utilidad que recibe el de tipo $L$ por consumir el contrato $(x_{L},T_{L})$ debe ser mayor a la utilidad que obtendría consumiendo el de tipo $H$. La segunda es lo mismo al revés y es más importante porque requiere que el que más valora el bien esté dispuesto a pagar $T_{H}$ en lugar de pagar menos (consumiendo menos). Eso pone un límite a lo que se le va a poder cobrar.

La otra restricción es $PC$ e indica que cada uno debe querer participar de la transacción en lugar de no comerciar (caso en el que obtiene 0 de utilidad).
$$
\theta_{i}\phi(x_{i})-T_{i}\geq 0
$$
El óptimo se va a dar en
$$
\max_{(x_{L},T_{L}), (x_{H},T_{H})} \qquad \mu T_{H} +(1-\mu) T_{L} - c\left( \mu x_{H}+(1-\mu)x_{L} \right)  \quad \text{   s.a.  } IC_{H}, PC_{L}
$$
Las restricciones importantes son $IC_{H}, PC_{L}$ porque el low no tiene incentivos a contratar algo mas caro si lo valora poco, pero sí podría tener incentivos a no participar. 
$$
PC_{L} :\qquad \theta_{L}\phi(x_{L})-T_{L}\geq 0 \to \theta_{L}\phi(x_{L})\geq T_{L}
$$
Se va a cumplir con igualdad y al restricción queda: $\theta_{L}\phi(x_{L})= T_{L}$, porque le pide una transferencia lo mas grande que pueda mientras acepte. Reemplazándola en la otra restricción:
$$
IC_{H} :\qquad \theta_{H} \phi(x_{H}) - T_{H} \geq\theta_{H} \phi(x_{L}) - \theta_{L}\phi(x_{L})
$$$$
T_{H} \leq - \theta_{H} \phi(x_{L}) + \theta_{L}\phi(x_{L}) + \theta_{H} \phi(x_{H})
$$Se va a cumplir con igualdad porque quiere elegir un $T_{H}$ que sea lo más grande posible, como la otra. despejando la parte derecha queda:
$$
T_{H} = \theta_{H}\phi(x_{L}) + \phi(x_{L}) (\theta_{L}-\theta_{H})
$$
Reemplazando $T_{H}$ y $T_{L}$ en la función objetivo:
$$
\max_{x_{L},x_{H}} \qquad \mu \left[ \theta_{H}\phi(x_{L}) + \phi(x_{L}) (\theta_{L}-\theta_{H}) \right]  +(1-\mu) \left[ \theta_{L}\phi(x_{L}) \right] - c\left( \mu x_{H}+(1-\mu)x_{L} \right)
$$
Las CPO quedan:
$$
 /x_{H} \quad \mu \theta_{H} -\mu c'(\cdot)= 0
$$
$$
\theta_{H} \phi'(x_{H}) = c'(\cdot)
$$
Para el Low:
$$
/x_{L} \quad\mu \phi'(x_{L})(-\theta_{H}+\theta_{L}) +(1-\mu) \theta_{L}\phi'(x_{L})-(1-\mu)c'(\cdot) = 0
$$
$$
\mu \phi'(x_{L}) (\theta_{L} - \theta_{H}) = (1-\mu) \left[ c'(\cdot) - \theta_{L} \phi'(x_{L}) \right] 
$$
$$
\theta_{L} \phi'(x_{L}) = c'(\cdot) +\frac{\mu}{1-\mu} \phi'(x_{L}) (\theta_{H} - \theta_{L}) 
$$
O sea que para el high sí ofrece al costo marginal, como sería optimo, pero al low le vende menos que lo que sería eficiente. Mayor $\mu$ (proporción de highs), mayor es la distorsión de cantidad.

- Por qué si en el óptimo ofrecido por el monopolista la utilidad marginal del low es mayor al costo marginal eso implica que le provee menos que en un óptimo (en el que utilidad marginal se iguala al costo marginal)?
- Por qué alcanza chequear una sola de cada una de las $IC$ y $PC$ como restricción de la maximización? 
### Discriminación con características observables
Hay $S$ grupos de consumidores con demanda agregada cada uno de $P_{s}(q_{s})$. 
$$
\max_{q_{s}} \sum_{S}P_{s}(q_{s}) \cdot q_{s} - c\left( \sum_{S} q_{s} \right) 
$$
CPO $\forall s$:
$$
P_{s}(q_{s}) + P_{s}'(q_{s}) \cdot q_{s} = c'(\cdot)
$$
Para dos tipos $s$ y $s'$, si $q_{s'}>0$, $q_{s}>0$ y $p_{s} >p_{s'}$, entonces $\eta_{s}(p_{s}) < \eta_{s'}(p_{s'})$. Al que es menos elástico le cobra un precio mayor. Para ninguno $p=c'$ (no hay equilibrio eficiente). para los dos tipos se debe igualar el costo marginal al beneficio marginal del tipo
$$
P_{s}(q_{s}) + P_{s}'(q_{s}) \cdot q_{s} = c'(\cdot) \qquad \qquad P_{s'}(q_{s'}) + P_{s'}'(q_{s'}) \cdot q_{s'} = c'(\cdot)
$$
$$
P_{s}(q_{s}) + P_{s}'(q_{s}) \cdot q_{s}  = P_{s'}(q_{s'}) + P_{s'}'(q_{s'}) \cdot q_{s'}
$$
$$
p_{s} \left[ 1-\frac{1}{\eta_{s}} \right]  = p_{s'} \left[ 1-\frac{1}{\eta_{s'}} \right] 
$$
En el óptimo los precios son distintos si las elasticidades son distintas. A los más elásticos les cobra menos y están mejor que si no discriminara probablemente. Los menos elásticos están peor.

### Oligopolio
Con $N$ firmas.
$$
\max_{q_{i}} P(q_{i}+q_{-i}) \cdot q_{i} - c_{i} (q_{i})
$$
Equilibrio de Nash $(q_{1}^C, \dots, q_{N}^C), p^C$ es el óptimo. Si $q=q_{i}+q_{-i}$. La CPO es:
$$
P(q)+P'(q) q_{i} -c_{i}'(q_{i})=0
$$
Multiplico por $\frac{q}{P(q)}$
$$
q+\frac{ \partial P(q) }{ \partial q } \frac{q}{P(q)} q_{i}=c_{i}'(q_{i}) \cdot\frac{q}{P(q)}
$$
Los valores óptimos van a ser los equilibrios de Nash
$$
\frac{1}{\eta(p^C)}q_{i}^C=c_{i}'(q_{i}^C) \cdot\frac{q}{p^C}-q
$$
$$
\frac{1}{\eta(p^C)}= \frac{q}{q_{i}^C} \left[   c_{i}'(q_{i}^C) \cdot\frac{1}{p^C}-1 \right] 
$$
Definiendo $s(q_{i})=\frac{q_{i}}{q}$ el share de mercado de $i$. 
$$
\frac{s(q_{i}^C)}{|\eta(p^C)|}= \frac{p^C-c_{i}(q_{i}^C)}{p^C}
$$
Otra forma de expresarlo (¿por qué?):
$$
\frac{\sum_{i=1}^N s(q_{i}^C)^2} {|\eta(p^C)|}= \frac{p^C-\sum_{i=1}^N s(q_{i}^C) \cdot c_{i}(q_{i}^C)}{p^C} 
$$
$$
\frac{HHI} {|\eta(p^C)|}= \frac{p^C-\sum_{i=1}^N [s(q_{i}^C) ]\cdot c_{i}(q_{i}^C)}{p^C} 
$$

## Clase 3 (24-10) Monopolio
### Monopsonio
Una distorsión generada por poder de compra.

```tikz
\usepackage{tikz}
\begin{document}

\begin{tikzpicture}[scale=1.2]
    % Axis
    \draw[->] (0,0) -- (7,0) node[right] {$z$};
    \draw[->] (0,0) -- (0,6) node[above] {$w$};

    % Demand (Average Revenue) curve
    \draw[thick, blue, domain=0:6, smooth] plot (\x, {5 - 0.5*\x}) node[right] {AR};

    % Supply curve w(z)
    \draw[thick, red, domain=0:5, smooth] plot (\x, {0.5*\x + 1}) node[right] {$w(z)$};

    % Marginal Cost curve w(z) + z*w'(z)
    \draw[thick, purple, domain=0:5, smooth] plot (\x, {0.9*\x + 1 + 0.2*\x}) node[right] {$w(z) + z \cdot w'(z)$};

    % Monopsony supply point
    \draw[dashed] (0,2.25) -- (2.5,2.25) circle node[below right] {$w_m$};
    \draw[dashed] (2.5,2.25) -- (2.5,0) node[below] {$z_m$};

    % Competitive equilibrium supply point
    \filldraw[black] (4,3) circle (2pt) node[right] {$w_c$};
    \draw[dashed] (4,3) -- (4,0) node[below] {$z_c$};

    % Deadweight loss shading
    \fill[orange, opacity=0.3] (2.5, 2.25) -- (2.5, 3.75) -- (4, 3) -- cycle;

\end{tikzpicture}
\end{document}
```

Al revés de monopolio, acá lo que sabe es que la cantidad que compra es una función del precio. Si compra $z$, entonces maximiza
$$
\max_{z,w} f(z) - w\cdot z \to \max_{w} f(z(w)) - w \cdot z(w)
$$
El óptimo es:
$$
\frac{MR-c }{c}
$$
$$
\frac{f'(z^m) -w^m }{w^m}
$$
Posibles soluciones: 
- Regulación directa : fijar precios, pero requiere demasiada información sobre la tecnología de producción
- Defensa de la competencia : no requiere información y consiste en la sanción de conductas de exclusión y concentración.
### Monopolio natural
**Subaditividad de costos**: es más barato producir $q$ unidades si las produce una sola empresa que si las producen varias.
$$
c\left( \sum_{i}^N q_{i} \right) < \sum_{i}^N c(q_{i})  \qquad \forall(q_{1}\dots q_{N})
$$
Eso implica que es más barato producir todo junto que producir cada cosa por separado y que hay economías de escala. Ejemplo de función que genera esto: $c(q)=\theta q+f$, una función con costos fijos.

```tikz
\usepackage{tikz}
\begin{document}
\begin{tikzpicture}[scale=1.2]
    % Axis
    \draw[->] (0,0) -- (7,0) node[right] {$q$};
    \draw[->] (0,0) -- (0,6) node[above] {Cost};
    % Average Cost Curve (decreasing)
    \draw[thick, red, domain=0.5:6.5, smooth] plot (\x, {2/\x + 1}) node[right] {Average Cost};
    % Marginal Cost (horizontal dashed line)
    \draw[dashed, orange] (0,1) -- (6.5,1) node[right] {$\theta$};
    
    % Mark q^bar and draw dashed lines
    \draw[dashed]  (3,2/3 + 1) -- (3,0) node[below] {$\bar{q}$};
    \draw[dashed] (0,2/3 + 1) -- (3,2/3 + 1);
    % Fill the area formed by intersection of Average Cost and axes at q^bar
    \fill[yellow, opacity=0.6] (0,0) -- (0,2/3 + 1) -- (3,2/3 + 1) -- (3,0) -- cycle;

	\node[below] at (3.5, -0.5) {Costo total con una sola firma (amarillo)};

\end{tikzpicture}
\end{document}
```
```tikz
\usepackage{tikz}
\begin{document}
\begin{tikzpicture}[scale=1.2]
    % Axis
    \draw[->] (0,0) -- (7,0) node[right] {$q$};
    \draw[->] (0,0) -- (0,6) node[above] {Cost};
    % Average Cost Curve (decreasing)
    \draw[thick, red, domain=0.5:6.5, smooth] plot (\x, {2/\x + 1}) node[right] {Average Cost};
    % Marginal Cost (horizontal dashed line)
    \draw[dashed, orange] (0,1) -- (6.5,1) node[right] {$\theta$};

    % Mark q^bar and draw dashed lines
    \draw[dashed]  (3/2, 4/3 + 1) -- (3/2, 0) node[below] {$\frac{\bar{q}}{2}$};
    \draw[dashed] (0, 4/3 + 1) -- (3/2, 4/3 + 1);
    % Fill the area formed by intersection of Average Cost and axes at q^bar
    \fill[yellow, opacity=0.6] (0,0) -- (0, 4/3 + 1) -- (3/2, 4/3 + 1) -- (3/2 ,0) -- cycle;

    % Mark q^bar and draw dashed lines
    \draw[dashed]  (3, 4/3 + 1) -- (3, 0) node[below] {$\bar{q}$};
    \draw[dashed] (3/2, 4/3 + 1) -- (3, 4/3 + 1);
    % Fill the area formed by intersection of Average Cost and axes at q^bar
    \fill[yellow, opacity=0.6] (3/2,0) -- (3/2, 4/3 + 1) -- (3, 4/3 + 1) -- (3 ,0) -- cycle;

	\node[below] at (3.5, -0.5) {Costo total con dos firmas (amarillo)};

\end{tikzpicture}
\end{document}
```
Con una demanda lineal el mercado se ve así:

```tikz

\usepackage{tikz}
\begin{document}

\begin{tikzpicture}[scale=1.2]
    % Axis
    \draw[->] (0,0) -- (7,0) node[right] {$q$};
    \draw[->] (0,0) -- (0,6) node[above] {Cost};

    % Average Cost Curve (decreasing)
    \draw[thick, black, domain=0.5:6.5, smooth] plot (\x, {2/\x + 1}) node[right] {CMe};

    % Demand (decreasing)
    \draw[thick, black, domain=0:6.7, smooth] plot (\x, {-0.7*\x+5}) node[right] {Demanda};

    % MR (decreasing)
    \draw[thick, black, domain=0:5, smooth] plot (\x, {-1.2*\x+5}) node[right] {MR};

    % Marginal Cost (horizontal dashed line)
    \draw[dashed, black] (0,1) -- (6.5,1) node[right] {$\theta$};

	% q^s (second point): the other intersection where Average Cost equals Demand 
	\draw[dashed] (5.161,1.388) -- (5.161,0) node[below] {$q^s$}; 
	\draw[dashed] (5.161,1.388) -- (0,1.388)  node[left] {$p^s$};
	% q^o: where Demand equals Marginal Cost (theta = 1) 
	\draw[dashed] (5.714,1) -- (5.714,0) node[below] {$q^o$}; 
	\node[left] at (0,1) {$p^o$}; 
	% q^m: where MR equals Marginal Cost (theta = 1) 
	\draw[dashed] (3.333,2.667) -- (3.333,0) node[below] {$q^m$}; 
	\draw[dashed] (3.333,2.667) -- (0,2.667) node[left] {$p^m$};

\end{tikzpicture}

\end{document}

```
En este caso $q^o$ es el first best y $q^s$ es el second best. Un equilibrio es sostenible si a esos precios y cantidades nadie puede entrar y tener beneficios positivos. Si el equilibrio del mercado es el sostenible, entonces es un mercado disputable. El punto es que no puede cambiar el precio porque sino entra otra y cobra menos, si lo sube; y sino tiene beneficios negativos, si los baja. Esto es condicional a la libre entrada (y libre salida).

- El caso de $(q^o,p^o)$, un entrante a esos precios $\pi=p^oq^o-\theta q^o - f=-f$ entonces no tiene beneficios positivos. Es **no sostenible** y **no disputable**.
- El caso de $(q^s,p^s)$, es el de average cost pricing. Es el caso de un equilibrio **sostenible y disputable**. Es el mínimo caso posible de disputabilidad sostenible: los beneficios son no positivos porque son 0. Todos los $q<q^s$ deberían ser disputables e insostenibles. Uno de esos casos es,
- el caso de $(q^m,p^m)$, puede entrar otra firma y tener beneficios positivos por ende, es **no sostenible** y **disputable**.
### Regulación de monopolio no disputable
Para lograr que el equilibrio sea el óptimo $q^o$, hay que compensarle a la firma con un subsidio $t$, que tiene costo de recaudación $\lambda$. Por cada unidad de subsidio, el costo en términos de excedente es $1+\lambda$. 
$$
W = \left[ \phi(x(p)) - p \cdot  x(p) - (1+\lambda)\cdot t \right] + \left[ p\cdot x(p) +t - \theta\cdot x(p) -f\right] 
$$
$$
W = \phi(x(p)) - \lambda t  - \theta\cdot x(p) -f
$$
sujeto a que $p\cdot x(p) +t - \theta\cdot x(p) -f \geq 0$ (el monopolista tiene que tener beneficios por lo menos 0). El impuesto debe cumplir $t \geq f - p\cdot x(p)+\theta\cdot x(p)$. O sea que $t = f - p\cdot x(p)+\theta\cdot x(p)$ y la función objetivo queda:
$$
W = \phi(x(p)) - \lambda \left[ f - p\cdot x(p)+\theta\cdot x(p) \right]  - \theta\cdot x(p) -f
$$
$$
W = \phi(x(p)) - \lambda f + \lambda p\cdot x(p)-\lambda \theta\cdot x(p)   - \theta\cdot x(p) -f
$$
El problema del gobierno queda:
$$
\max_{p} \quad \phi(x(p))  + \lambda p\cdot x(p)- (1+\lambda) (f + \theta\cdot x(p) )
$$
La CPO de la maximización:
$$
\phi'(x(p)) \cdot x'(p) + \lambda p x'(p) + \lambda x(p) -(1+\lambda) \theta x'(p) = 0
$$
En equilibrio competitivo, $\phi'(x(p))=p$

$$
(1+\lambda) p\cdot x'(p) + \lambda x(p) -(1+\lambda) \theta x'(p) = 0
$$
Multiplico por $\frac{p}{x(p)}$
$$
(1+\lambda) p\cdot \eta+ \lambda p -(1+\lambda) \theta \eta = 0
$$
$$
\lambda p  = (1+\lambda) \theta \eta - (1+\lambda) p\cdot \eta
$$
$$
\lambda p  = (1+\lambda) \eta (\theta-p)
$$$$
\frac{\lambda}{1+\lambda} \frac{1}{|\eta|}  =  \frac{p-\theta}{p}
$$
Regla de marginal cost pricing pero ahora cobra una proporción de la elasticidad inversa por sobre el costo marginal. O sea el precio es menor que en monopolio pero mayor que en equilibrio, depende del costo que tiene recaudar el impuesto. Si es muy alto el costo, no vale la pena tanto en terminos de pérdida de utilidad y el precio va a estar más cerca al de monopolio.
## Clase 4 (25-10) Monopolio
### Regulación de monopolio no disputable con información asimétrica
Si hay dos posibles tipos de empresa con costo $\theta_{L}$ o $\theta_{H}$ que el gobierno no puede observar. La empresa debe anunciar a que grupo pertenece, por lo que se debe seleccionar un subsidio tal que no hayan incentivos a declarar un tipo falso. En particular, el de costos bajos debe no querer declarar ser de tipo alto para que le subsidien de más. Es decir, se debe cumplir la restricción de compatibilidad de incentivos $IC$:
$$
IC_{L} \qquad t_{L} + p_{L} x(p_{L}) - \theta_{L}x(p_{L}) - f \geq t_{H} + p_{H} x(p_{H}) - \theta_{L}x(p_{H}) - f
$$
$$
IC_{H} \qquad  t_{H} + p_{H} x(p_{H}) - \theta_{H}x(p_{H}) - f \geq  t_{L} + p_{L} x(p_{L}) - \theta_{H}x(p_{L}) - f 
$$
La del $IC_{H}$ se puede suponer que e cumple (y la solución eventualmente afirma que se cumple), porque ya existen esos incentivos. Después se tiene que cumplir la restricción de racionalidad individual $IR$, que dice que las firmas deben querer producir, siendo su tipo, al decir la verdad; i.e. los beneficios deben ser positivos:
$$
IR_{L} \qquad t_{L} + p_{L} x(p_{L}) - \theta_{L}x(p_{L}) - f\geq 0
$$
$$
IR_{H} \qquad  t_{H} + p_{H} x(p_{H}) - \theta_{H}x(p_{H}) - f \geq 0
$$
La de $IR_{L}$ es irrelevante porque se cumple si se cumple $IC_{L}$. Entonces queda mirar solo $IC_{L}$ y $IR_{H}$, que el Low no quiere mentir y que el High quiera participar. El gobierno va a maximizar el valor esperado del bienestar.
$$
\begin{matrix}
E_{\theta} \left[  \phi (x(p)) - \lambda t(\theta) - \theta x(p(\theta)) - f \right] = \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad  \qquad  \qquad  \qquad \\
\nu \left[ \phi (x(p_{L})) - \lambda t_{L} - \theta_{L} x(p_{L}) - f \right]  + (1-\nu) \left[ \phi (x(p_{H})) - \lambda t_{H} - \theta_{H} x(p_{H}) - f \right]
\end{matrix}
$$
Sujeto a $IC_{L}$ y $IR_{H}$
$$
IR_{H} \qquad  t_{H}  = -  p_{H} x(p_{H}) + \theta_{H}x(p_{H}) + f
$$
$$
IC_{L} \qquad t_{L} + p_{L} x(p_{L}) - \theta_{L}x(p_{L}) - f = [-  p_{H} x(p_{H}) + \theta_{H}x(p_{H}) + f] + p_{H} x(p_{H}) - \theta_{L}x(p_{H}) - f
$$
De eso se puede despejar:
$$
t_{L}  = \theta_{H}x(p_{H}) + f - \theta_{L}x(p_{H}) + \theta_{L}x(p_{L}) - p_{L} x(p_{L}) 
$$
$$
t_{L}  =    x(p_{H}) (\theta_{H} -\theta_{L})  + f + \theta_{L}x(p_{L}) - p_{L} x(p_{L}) 
$$
Entonces debe maximizar:
$$
\begin{matrix}
max_{p_{L}, p_{H}} \qquad \nu \left[ \phi (x(p_{L})) - \lambda \left[  x(p_{H}) (\theta_{H} -\theta_{L})  + f + \theta_{L}x(p_{L}) - p_{L} x(p_{L})  \right]  - \theta_{L} x(p_{L}) - f \right]   \\ 
  +(1-\nu) \left[ \phi (x(p_{H})) - \lambda \left[  -  p_{H} x(p_{H}) + \theta_{H}x(p_{H}) + f \right]  - \theta_{H} x(p_{H}) - f \right]
\end{matrix}
$$
La CPO del Low es:
$$
/p_{L} \qquad p_{L}x'(p_{L})- \lambda \left[  \theta_{L}x'(p_{L}) - p_{L} x'(p_{L}) -  x(p_{L}) \right]  - \theta_{L} x'(p_{L})   = 0
$$
Multiplico y divido por $\frac{p}{x(p)}$
$$
p_{L}  \eta - \lambda \left[  \theta_{L}\eta - p_{L} \eta -  p_{L} \right]  - \theta_{L} \eta   = 0
$$
$$
p_{L}  \eta - \lambda  \theta_{L}\eta + \lambda p_{L} \eta +\lambda p_{L}  - \theta_{L} \eta   = 0
$$
$$
(p_{L}   + \lambda p_{L} - \theta_{L} - \lambda  \theta_{L} ) \eta  = -\lambda p_{L}
$$
$$
( p_{L} (1+\lambda)- \theta_{L} (1+\lambda) ) \eta  = -\lambda p_{L}
$$
$$
( p_{L} (1+\lambda)- \theta_{L} (1+\lambda) ) \eta  = -\lambda p_{L}
$$
$$
(1+\lambda) ( p_{L} - \theta_{L} ) \eta  = -\lambda p_{L}
$$
$$
 \frac{ p_{L} - \theta_{L} }{p_{L}}  = \frac{\lambda}{(1+\lambda)} \frac{1}{|\eta| }
$$
O sea, la misma que hubiera cobrado antes, sin información asimétrica. El Low tiene que cobrar cerca del costo marginal. Después, la CPO del High es:
$$
/p_{H} \qquad -\nu \lambda x'(p_{H}) (\theta_{H} -\theta_{L})  +  (1-\nu) \left[ \phi '(x(p_{H})) x'(p_{H})- \lambda \left[  -  p_{H} x'(p_{H}) - x(p_{H}) + \theta_{H}x'(p_{H}) \right]  - \theta_{H} x'(p_{H})  \right]  = 0
$$
Multiplico y divido por $\frac{p}{x(p)}$
$$
-\nu \lambda \eta (\theta_{H} -\theta_{L})  +  (1-\nu) \left[ \phi '(x(p_{H})) \eta- \lambda \left[  -  p_{H} \eta - p_{H} + \theta_{H}\eta \right]  - \theta_{H} \eta  \right]  = 0
$$
$$
(1-\nu) \left[ \phi '(x(p_{H})) \eta- \lambda \left[  -  p_{H} \eta - p_{H} + \theta_{H}\eta \right]  - \theta_{H} \eta  \right]  = \nu \lambda \eta (\theta_{H} -\theta_{L}) 
$$
$$
p_{H} \eta- \lambda \left[  -  p_{H} \eta - p_{H} + \theta_{H}\eta \right]  - \theta_{H} \eta   = \frac{\nu}{(1-\nu)} \lambda \eta (\theta_{H} -\theta_{L}) 
$$
$$
p_{H} \eta+ \lambda  p_{H} \eta +\lambda p_{H} -\lambda \theta_{H}\eta   - \theta_{H} \eta   = \frac{\nu}{(1-\nu)} \lambda \eta (\theta_{H} -\theta_{L}) 
$$$$
(1+\lambda) p_{H} \eta +\lambda p_{H} - (1+\lambda) \theta_{H} \eta   = \frac{\nu}{(1-\nu)} \lambda \eta (\theta_{H} -\theta_{L}) 
$$Dividiendo por $(1+\lambda) \eta p_{H}$
$$
 1+\frac{\lambda}{(1+\lambda )\eta} -  \frac{\theta_{H}}{p_{H}}   = \frac{\nu}{(1-\nu)} \frac{\lambda}{1+\lambda} \frac{ (\theta_{H} -\theta_{L})}{p_{H}} 
$$
$$
\frac{p_{H}-\theta_{H}}{p_{H}}   =\frac{\lambda}{(1+\lambda )} \frac{1}{|\eta|} + \frac{\nu}{(1-\nu)} \frac{\lambda}{1+\lambda} \frac{ (\theta_{H} -\theta_{L})}{p_{H}} 
$$
---
Church: "the optimal marginal price for the highest demand consumer is set equal to marginal cost. This result, sometimes known as the **“no distortion at the top”** property of optimal mechanisms, occurs because surplus is maximized by pricing at marginal cost. The only reason that the prices for lower demand customers have to be raised above marginal cost is to prevent the high-demand customer from consuming a smaller amount and reducing profits to the monopolist". (eso es para el caso de discriminación por parte del monopolista)

---
Mientras menor sea el costo del subsidio, mas se le subsidia (a los dos) tal que pongan un precio lo mas cerca posible al costo marginal. Pero el precio del high va a ser mas alto que el del low, por lo que se le va a tener que subsidiar menos (o sea su precio es mas cercano al que pondría en monopolio). Y si el high recibe menos subsidio, el low no tiene los incentivos a copiarlo porque no es que va a recibir mucho mas subsidio. Entonces al de tipo bajo se le tiene que subsidiar más de lo necesario para que no se haga pasar por high; al high se le da justo lo que necesita para poner precio en el cost marginal. ¿Cómo se ve eso en las ecuaciones de equilibrio?

## Clase 5 (31-10) Agregación
Las intervenciones publicas dependen de preferencias sociales. Preferencias sociales de $I$ individuos sobre $X$ alternativas. Cada $i$ tiene preferencias $\succcurlyeq_{i}$ completas y transitivas (racionales). Se busca encontrar una función F de preferencias sociales que también sea completa y transitiva. 

### Regla de Condorcet
Mayorías simples de a pares. Entre las opciones, por cada par se vota por mayoría simple. Si $x=\left\{ a,b,c,d,e \right\}$, $xFy$ ($x$ preferido a $y$) si $\# \left\{ i:x \succcurlyeq_{i} y \right\} \geq \# \left\{ i:y \succcurlyeq_{i} x \right\}$ 

### Borda
Ordena preferencias y les da un puntaje que es la posición $c(x)$ en un ranking
$$
xFy \text{ si } \sum_{i}^I c_{i}(x)\leq\sum_{i}^I c_{i}(y)
$$
(Posiciones en orden inverso el mas preferido tiene el numero mas bajo)
### Pluralidad
Le da un punto a la más referida y 0 a las demás.
$$
xFy \text{ si } \sum_{i}^I c_{i}(x)\geq\sum_{i}^I c_{i}(y)
$$
---
Entre dos opciones la mayoría simple es la mejor y funciona. Mas de dos llegas al problema de imposibilidad de Arrow.

### Características de la SWF
$$
F(\alpha) \in \left\{ -1,0,1 \right\} 
$$
* **Pareto**: Unanimidad
* **Simetría|Anonimidad**: No importa qué individuo es el que tiene cierta preferencia, ninguno tiene más peso: no hay dictaduras
* **Neutralidad**: $F(\alpha)=-F(-\alpha)$
* **Respuesta Positiva**: si $\alpha'\geq\alpha$ , $\alpha \neq \alpha'$ y $F(\alpha)>0$, entonces $F(\alpha')=1$. Si algo es preferido por la SWF y alguien pasa a preferirlo más, entonces la SWF no puede preferirlo menos.
Con 2 alternativas mayoría simple es la única estrategia que cumple las tres. Con más se da la paradoja de condorcet: no hay transitividad

## Clase 6 (1-11) Agregación
### Ganador de Condorcet
Es el que no pierde en elecciones de a pares al enfrentarse de a pares de a dos. En los casos de paradoja de condorcet no hay ganador de condorcet

### Condiciones deseables para más alternativas
* **Pareto**: Unanimidad
* **Irrelevancia de Alternativas Irrelevantes**: Borda no lo cumple
* **No Dictadura**.
Imposibilidad de Arrow: no existe SWF que cumple las tres cosas

Si debilitas supuestos de la SWF, la condicionas más podes llegar a algo que cumple las tres. (también si ignoras alguno podes llegar a otra SWF)

### Single Peak

## Clase 7 (7-11) Rent-Seeking
### Ejercicio votación sobre impuesto

### Rent seeking

## Clase 8 (8-11) Impuestos

## Clase 9 (14-11) Impuesto Sobre Bienes

## Clase 10 (15-11) Impuesto Sobre Ingresos

## Clase 11 (21-11) Impuesto Sobre Ingresos

## Clase 12 (25-11) Impuesto Sobre Ingresos

## Clase 13 (28-11) Jurisdicciones
## Clase 14 (29-11) Jurisdicciones
