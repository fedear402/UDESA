$\{ \hat{\beta}_{n} \}_{n=1}^{\infty}$ Sucesión de estimadores de modelo lineal 
## Ley de Grandes Numeros
$\{ z_{n} \}_{n=1}^{\infty}$ es una sucesion de variables aleatorias iid, y $E(z_{n})=\mu$. LGN operea sobre $\{ \bar{z}_{n} \}_{n=1}^{\infty}$, lo correcto es:
$$\bar{z}_{n} \to_{p} \mu$$
Eventualmente piede su aleatoriedad. LGN no rige el comportamiento de las variables aleatorias, sino el promedio de esas variables aleatorias. El comportamiento de los promedios muestrales. La prueba es con Ley de Kolmogorov, suponiendo que el segundo momento existe, con la desigualdad de Chebychev. 

Si cada $\{ z_{n} \}_{n=1}^{\infty}$ tiene una acumulada $F_{n}(z)$
- Acumulada $F(y)= P(Y<y)$
una sucesion de vars aleatorias converge a una variable aletaroria si convergen las funciones de distribucion acumulada.
$$
\lim_{ n \to \infty } F_{n}(z)=F(z) \implies z_{n} \to_{d} z
$$
La acumulada no tiene que ser continua aunque las variables aleatorias sean continuas. No tiene que ocurrir en donde es discontinua. Por la LGN, con una sucesión de variables aleatorias, la sucesión de promedios tiende a la esperanza de cualquiera de las 
LGN aplica sobre momentos descentrados (promedios), tenes que lograr que se parezca al promedio.


## Teorema Central del Límite
$\{ z_{n} \}_{n=1}^{\infty}$ sucesión de variables aleatorias iid con $E(z_{i})=\mu$, $V(z_{i})=\sigma^2$, o sea, tiene por lo menos dos momentos bien definidos. 
Lindeberg-Levy:
$$
\sqrt{ n } \frac{\bar{z}_{n} - \mu}{\sigma} \sim\mathcal{N}(0,1)
$$
---
### LGN aplica sobre $\{ \bar{z}_{n} \}_{n=1}^{\infty}$ , TCL aplica sobre $\{ z_{n} \}_{n=1}^{\infty}$. 

LGN: Asumiendo $E(z_{n})= \mu$, $V(z_{n})=\sigma^2$
$$
E(\bar{z}_{n})=E\left( \sum_{i=1}^{n} \frac{z_{i}}{n} \right)
$$
$$
E(\bar{z}_{n})=\sum_{i=1}^{n} \frac{E(z_{i})}{n}
$$
Porque son **idénticas en distribución** - todas las caracteriscitas de la distribucion son la misma (no independientes, eso no es necesario), se puede hacer esto:
$$
E(\bar{z}_{n})=\sum_{i=1}^{n} \frac{\mu}{n} = \mu
$$
Para la varianza:
$$
V(\bar{z}_{n}) =V\left( \sum_{i=1}^{n} \frac{z_{i}}{n} \right)
$$
$$
V(\bar{z}_{n}) = \frac{V(\sum_{i=1}^{n}z_{i})}{n^2}
$$
Por **independientes** (la covarianza es 0):
$$
V(\bar{z}_{n}) = \sum_{i=1}^{n}\frac{V(z_{i})}{n^2}
$$
Porque sin **identicas**:
$$
V(\bar{z}_{n}) = n\frac{\sigma^2}{n^2} = \frac{\sigma^2}{n}
$$
Es un resultado que no cambia con $n$. En el limite la dispersion de una variable aletoria es 0. 

TCL:
$$
h_{n}=\underbrace{ \sqrt{ n } }_{ \to \infty } \underbrace{ \frac{\bar{z}_{n}-\mu}{\sigma} }_{ \to 0  \text{ por LGN} }
$$
Porque cuando $n\to \infty$, $\bar{z}_{n} \to \mu$, entonces el segundo termino es 0 por LGN. 
$$
E(h_{n}) = h_{n}= \sqrt{ n }\frac{ \overbrace{E(\bar{z}_{n})}^{=\mu} -\mu}{\sigma} = 0
$$
$E(h_{n})$ vale 0 para cualquier $n$. $V(h_{n})=1$, para todo $n$. 

- No hay justificacion emopiricica de la normal, porque hay uchas que se parecen. EL CLT sosteien la normalidad de los **promedios** NO de las variables aleatorias. 
### ? LGN es una degenearción y TCL no


---
Una sucesion, no existe n para el que x sea igual al valor al que converge, solo lo aproxima. El TCL tambien aproxima

$$
\text{TCL }  \boxed{\sqrt{ n } \frac{\bar{z}_{n}-\mu}{\sigma} \to_{d} \mathcal{N}(0,1)} \quad \forall n
$$
Si eso es normal, una transformacion lineal de una normal es normal:
$$
\bar{z}_{n} \to_{d} \mathcal{N}\left( \mu, \frac{\sigma^2}{n} \right)
$$
TIENDE, para cualquier n
DISTRIBUIDO, para n grande es indistinguible de la normal
TCL : No dice nada exacto sobre n finito,


## Slutzky
$$
z_{n} \to_{p} c = \text{plim }  z_{n} = c
$$
El $\text{plim }$ pasa a traves de fincoines continuas (propiedades continuas) 
$$
\text{plim } g(z_{n}) = g(\text{plim } z_{n})
$$
$$
z_{n} \to_{p} c \implies g(z_{n}) \to_{p} g(c)
$$
$$
z_{n} \to_{d} c \implies g(z_{n}) \to_{d} g(c)
$$
Cramer Wold ; 

## Estimador Consistente
Estimador consistente si la sucesión de estimadores converge en una constante. Es consistente en un punto.

$\hat{\theta}_{n}$ es consistente para $\theta_{0}$ si $\hat{\theta}_{n}\to_{p} \theta_{0}$

Ejemplo: $\tilde{\theta}_{n}= \frac{x_{1}+x_{n}}{2}$  es insesgado pero no consistente, porque la distribución no colapsa al centro. 
$\bar{\theta}_{n}=\bar{x}_{n}+4$ es sesgado e inconsistente, colapsa en otro lugar que no es la esperanza.
$\bar{\theta}_{n}=\bar{x}_{n}+\frac{1}{n}$ es sesgado pero consistente, porque por LGN, el promedio $\bar{x}_{n}$ tiende a $\mu$ y $\frac{1}{n }$ tiende a 0, asintoticamente. 

Consistencia es propiedad de sucesion de stimadores en el limite
$\hat{\theta}_{n}$ asintoticamente normal si
$$
\sqrt{ n } ( \hat{\theta}_{n}-\theta_{0}) \to_{d} \mathcal{N}(0,\Sigma)
$$
$\Sigma$ es la varianza asintotica, esos $\hat{\theta}_{n}$ son $\sqrt{ n }$-consistente. la varianza en el limite de un estimador es 0, preguntas la varianza de la transformacion.
Solo te garantiza que llega, nada sobre cuando, con cuantas n, pero eventualmente llegas.
insesgado es que en promedio llegas al lugar que queres.

