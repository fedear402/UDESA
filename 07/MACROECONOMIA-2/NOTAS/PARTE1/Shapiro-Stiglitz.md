## Modelo Simple
$$\pi=Y-wL$$
$$
Y=F(eL)
$$
$F$ tiene rendimientos decrecientes.
$e$ es el esfuerzo del trabajador $\to$ **función creciente del salario real**
$$
e=e(w)
$$
Problema de la firma
$$
\max_{L,w} F(e(w)L)-wL
$$
CPO:
$$
\frac{ \partial \pi }{ \partial L } =F'e(w)-w=0
$$
$$
\frac{ \partial \pi }{ \partial w } =F'L e'(w)-L=0
$$
Combinando
$$
F'L e'(w)=L
$$
$$
F'e'(w)=1
$$

y
$$
F'e(w)=w
$$

entonces
$$
\frac{w}{e(w)} =\frac{1}{e'(w)}
$$
$$
\frac{w}{e(w)} \cdot \frac{ \partial e(w) }{ \partial w } = 1
$$
La elasticidad de la productividad del trabajo es 1 $\to$ es salario de eficiencia
ai aumenta el salario en 1%, el esfuerzo también

DESEMPLEO: Demanda de trabajo total en equilibrio es $NL^*$, con $L^*=F'L e'(w)$ y $N$ el numero de firmas. Las firmas no reducen el salario cuando hay exceso de trabajadores $L$ porque calculan en vase a $eL$. El mercado no se limpia. 


## Modelo Shapiro-Stiglitz
Tiempo continuo. Utilidad de los trabajadores:
$$
u(t)=
\begin{cases}
w(t)-e(t) \ \ \text{si est\'a empleado} \\
0 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  \text{si no} 
\end{cases}
$$
El trabajador puede estar
$U$ : desempleado
$E$ : empleado y esforzándose, $e=\bar{e}$
$S$ : empleado y no esforzándose, $e=0$
$b$ : probabilidad de perder el empleo (destrucción)
$q$ : probabilidad de que lo encuentren no esforzándose
$a$ : probabilidad de encontrar trabajo

Utilidad de las firmas:
$$
\pi(t)=F(\bar{e} E(t))-w(t) \left[ E(t)+S(t) \right] 
$$
## Decisión del trabajador
$V_{i}$ : utilidad intertemporal de estar en el estado $i\in \{ E,U,S \}$
$$
\rho V_{E}=(w-\bar{e})+b(V_{U}-V_{E})
$$
$(V_{U}-V_{E})$ ganancia al perder el trabajo: ganas $V_{U}$ pero perdés $V_{E}$. El valor de estar empleado debería ser mayor al de estar desempleado por lo que el valor de esforzarse es el salario menos el esfuerzo menos el prospecto de quedarse sin trabajo.
$\rho$ es la tasa requerida : $\rho V_{E}$ es el mínimo retorno a estar empleado que requiere para no renunciar o no esforzarse
$$
\rho V_{S}=w+(b+q)(V_{U}-V_{S})
$$
El valor de trabajar y no esforzarse es es salario y el valor de estar desempleado sobre el valor de no esforzarse. El valor de trabajar y no esforzarse debería ser mayor al de estar desempleado, por ende el segundo termino quedaría negativo y el valor de trabajar y no esforzarse es menor al salario.
$$
\rho V_{U}=a(V_{E}-V_{U})
$$
Valor de estar desempleado es el valor que tiene estar empleado por encima de estar desempleado proporcional a la probabilidad de encontrar trabajo.
## Solución del modelo
Para lograr que los empleados se esfuercen, debe suceder que $V_{E}\geq V_{S}$
$$
V_{E}=V_{S}
$$
$$
(w-\bar{e})+b(V_{U}-V_{E})=w+(b+q)(V_{U}-V_{S})
$$
Pero planteamos que $V_{E}=V_{S}$ entonces
$$
(w-\bar{e})+b(V_{U}-V_{E})=w+(b+q)(V_{U}-V_{E})
$$
$$
-\bar{e}=q(V_{U}-V_{E})
$$
$$
\bar{e}=q(V_{E}-V_{U})
$$
$$
0<\frac{\bar{e}}{q}=V_{E}-V_{U}
$$
El valor de estar empleado es mayor que el valor de estar desempleado, entonces los trabajadores tienen miedo de perder el trabajo y se esfuerzan.

Para obtener el salario, reemplaza $\frac{\bar{e}}{q}=V_{E}-V_{U}$ en las funciones de valor $\rho V_{E}$ y en $\rho V_{U}$.
$$
\rho V_{E}=(w-\bar{e})-b\frac{\bar{e}}{q}
$$
$$
\rho V_{U}=a\frac{\bar{e}}{q}
$$
Ahora busca $\rho V_{E}-\rho V_{U}$
$$
\rho(V_{E}-V_{U})=(w-\bar{e})-b\frac{\bar{e}}{q}-a\frac{\bar{e}}{q}
$$
$$
\rho\frac{\bar{e}}{q}=(w-\bar{e})-b\frac{\bar{e}}{q}-a\frac{\bar{e}}{q}
$$
$$
-w=-\bar{e}-b\frac{\bar{e}}{q}-a\frac{\bar{e}}{q}-\rho\frac{\bar{e}}{q}
$$
$$
\boxed{w=\bar{e}+\frac{\bar{e}}{q}(b+a+\rho)}
$$
El salario va a depender de el esfuerzo y un adicional que depende de la probabilidad de encontrarlo no esforzándose. Si es fácil encontrarlo, el salario es menor y viceversa.
## Equilibrio, steady state
En steady state el desempleo es constante: el numero de trabajadores que pierden el trabajo es igual al numero de trabajadores que consiguen trabajo en cada periodo.
$a(\bar{L}-NL)$ : trabajadores desempleados que encuentran trabajo.
$bNL$ : trabajadores empleados que pierden el trabajo.

$$
bNL=a(\bar{L}-NL)
$$
$$
a=\frac{bNL}{\bar{L}-NL}
$$
$$
a+b=\frac{bNL}{\bar{L}-NL}+b
$$
$$
a+b=\frac{bNL+b(\bar{L}-NL)}{\bar{L}-NL}
$$
$$
a+b=\frac{b\bar{L}}{\bar{L}-NL}
$$
sustituyendo en $w=\bar{e}+\frac{\bar{e}}{q}(b+a+\rho)$
$$
\boxed{w=\bar{e}+\frac{\bar{e}}{q}\left( \frac{b\bar{L}}{\bar{L}-NL}+\rho \right)}
$$
No shirk condition: en equilibrio todos los trabajadores se esfuerzan si se cumple esta condición. 
$\frac{\bar{L}-NL}{\bar{L}}=u$ tasa de desempleo
$$
w=\bar{e}+\frac{\bar{e}}{q}\left( \frac{b\bar{L} \frac{1}{\bar{L}} }{(\bar{L}-NL) \frac{1}{\bar{L}}}+\rho \right)
$$
$$
w=\bar{e}+\frac{\bar{e}}{q}\left( \frac{b }{u}+\rho \right)
$$El salario de eficiencia va a ser decreciente en la tasa de desempleo. 
## Demanda de trabajo en equilibrio
$L$ : demanda de trabajo en equilibrio, trabajadores que emplea cada firma. 
De la maximización salía que 
$$
F'\cdot e(w)=w
$$
En equilibrio los trabajadores se esfuerzan
$$
F'(\bar{e}L)\cdot\bar{e}=w
$$
![[Pasted image 20240512195932.png|400]]
