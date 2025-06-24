
$E$ : trabajadores empleados
$U$ : trabajadores desempleados
$E+U=\bar{L}$ 

$V$ : trabajos vacantes
$F$ : trabajos ocupados
$F=E$ Un trabajador ocupa un solo trabajo

$C$ : costo fijo de un puesto de trabajo vacante o no, por unidad de tiempo
$A$ : unidades producto producidas por un trabajador 
$A>C$
$w$ : salario que obtiene un trabajador empleado, determinado en equilibrio

$$
U_{L}=
\begin{cases}
w \ \ \ \text{si est\'a empleado}\\
0 \ \ \ \text{si no est\'a empleado}
\end{cases}
$$
$$
\pi=
\begin{cases}
A-w-C \ \ \ \ \text{si el puesto esta ocupado} \\
-C \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \text{si el puesto esta vacante}
\end{cases}
$$
## Función de Matching:
$$
M=M(U,V)=KU^\beta V^\gamma
$$
El matching no es instantáneo, hay un flujo de trabajos que se crean
Si hay más desempleados y si hay más vacantes, va a haber más matches (filled positions). 

## Dinámica

$b$ : tasa de destrucción de empleo
$a$ : tasa con la que los desempleados encuentran trabajo
$\alpha$ : tasa con la que se ocupan vacantes
$$
\dot{E} = M(U,V)-bE
$$
$$
a=\frac{M(U,V)}{U}
$$
$$
\alpha=\frac{M(U,V)}{V}
$$
Si hay muchas vacantes, las tasa con la que se encuentra trabajo es mayor $a$. Tight job market: muchas vacantes y bajo desempleo ($\alpha$ bajo)
Trading externalities : 

## Funciones de valor:
$r=\text{tasa de inter\'es}=\text{tasa de descuento individual}$

Para los trabajadores
$rV_{E}=w-b(V_{E}-V_{U})$ : el valor de estar empleado es el salario en todos los periodos, mitigados por la posibilidad de perderlos.
$rV_{U}=a(V_{E}-V_{U})$ : el valor de estar desempleado es la probabilidad de tener un flujo de ingresos

Para las firmas:
$rV_{V}=(-C)+\alpha(V_{F}-V_{V})$ : el valor de tener un puesto vacante para el empleador es -costo y la posibilidad de que se ocupe
$rV_{F}=(A-w-C)-b(V_{F}-V_{V})$ : el valor de tener un puesto ocupado



---
Equilibrio $\to$ mismo poder de negociación $\to$ mismos beneficios en equilibrio
$$
V_{E}-V_{U}=V_{F}-V_{V}
$$
## Negociación de Nash
$rV_{E}-rV_{U}$ : beneficio del trabajador por estar empleado. Cuánto gana por estar empleado por encima de lo que ganaría estando desempleado
$rV_{F}-rV_{V}$ : beneficio de la firma tener un empleado empleado

Trabajadores:
$$
r(V_{E}-V_{U})=w-b(V_{E}-V_{U})-\left[ a(V_{E}-V_{U}) \right] 
$$$$
r(V_{E}-V_{U})+b(V_{E}-V_{U})+a(V_{E}-V_{U})=w
$$$$
(V_{E}-V_{U}) (r+b+a)=w
$$$$
\boxed{V_{E}-V_{U} =\frac{w}{r+b+a}}
$$
Firmas:
$$
r(V_{V}-V_{F})=(-C)+\alpha(V_{F}-V_{V})-\left[ (A-w-C)-b(V_{F}-V_{V}) \right] 
$$
$$
r(V_{V}-V_{F})-\alpha(V_{F}-V_{V})-b(V_{F}-V_{V}) =-C  - A+w+C
$$
$$
(V_{F}-V_{V}) (r-\alpha-b) =- A+w
$$
$$
\boxed{V_{F}-V_{V}=\frac{A-w}{r+\alpha+b}}
$$
## Salario en equilibrio
Salario con mismo poder de negociación cumple
$$
V_{E}-V_{U}=V_{F}-V_{V}
$$
$$
\frac{w}{r+b+a}=\frac{A-w}{r+\alpha+b}
$$
$$
\frac{w}{r+b+a}+\frac{w}{r+\alpha+b}=\frac{A}{r+\alpha+b}
$$
$$
w \left( \frac{1}{r+b+a}+\frac{1}{r+\alpha+b} \right) =\frac{A}{r+\alpha+b}
$$
$$
w =\frac{A}{(r+\alpha+b )\cdot \left( \frac{1}{r+b+a}+\frac{1}{r+\alpha+b} \right)}
$$
$$
w =\frac{A}{ \frac{r+\alpha+b }{r+b+a}+1}
$$
$$
\boxed{w =\frac{A(r+b+a)}{ 2r+\alpha+2b+a}}
$$
$a$ es qué tan fácil es para el trabajador encontrar otro trabajo, $\alpha$ qué tan fácil para el empleador encontrar otro empleado. Entonces si $\alpha$ es mayor, el salario es menor; si $a$ es mayor, el salario es mayor.

## Valor de generar posiciones
Las firmas van a generar posiciones de trabajo si el valor de tener un puesto vacante es positivo. ***"In equilibrium, the value of a vacant job will be driven down to zero."*** 
$$
rV_{V}=-C+\alpha(V_{F}-V_{V})
$$
$$
rV_{V}=-C+\alpha  \frac{A-w}{\alpha+b+r}=-C+\alpha \frac{A-\left(\frac{A(r+b+a)}{ 2r+\alpha+2b+a} \right) }{\alpha+b+r}
$$
$$
rV_{V}=-C+\alpha \frac{\frac{A(2r+\alpha+2b+a)-A(r+b+a)}{ 2r+\alpha+2b+a}  }{\alpha+b+r}
$$
$$
rV_{V}=-C+\alpha \frac{\frac{A(r+b+a)+A(r+b+\alpha)-A(r+b+a)}{ 2r+\alpha+2b+a}  }{\alpha+b+r}
$$
$$
rV_{V}=-C+\alpha \frac{\frac{A(r+b+\alpha)}{ 2r+\alpha+2b+a}  }{\alpha+b+r}
$$
$$
\boxed{rV_{V}=-C+\frac{A}{a+\alpha+2b+2r}\alpha}
$$
## Estado estacionario
Con $E$ constante, $\dot{E}=0$, 
$$
\dot{E} = M(U,V)-bE=0
$$
$$
M(U,V)=bE
$$
El numero de trabajos vacantes que son ocupados por un desocupado es igual a la proporción de empleos que dejan de existir (empleados que pierden el trabajo). Si pasa eso, siempre hay la misma cantidad de empleados y empleos. Se puede pasar todo a términos de $E$:
$$
a=\frac{bE}{U}
$$
$$
\boxed{a=\frac{bE}{\bar{L}-E}}
$$
Y para $\alpha$,

---
Antes de sacar $\alpha$, despejamos $V$ usando que $M=M(U,V)=KU^\beta V^\gamma$
$$
KU^\beta V^\gamma=bE
$$
$$
K(\bar{L}-E)^\beta V^\gamma=bE
$$
$$
K(\bar{L}-E)^\beta V^\gamma=bE
$$
$$
 V=\left( \frac{bE}{K(\bar{L}-E)^\beta} \right)^{1/\gamma} 
$$
---

$$
\alpha=\frac{bE}{V}
$$
$$
\alpha=\frac{bE}{\left( \frac{bE}{K(\bar{L}-E)^\beta} \right)^{1/\gamma} }
$$
$$
\alpha=\frac{bE}{(bE)^{1/\gamma}}K^{1/\gamma}(\bar{L}-E)^{\beta/\gamma}
$$
$$
\boxed{\alpha=(bE)^{ \frac{\gamma-1}{\gamma} }  K^{1/\gamma}(\bar{L}-E)^{\beta/\gamma}}
$$
Volviendo a que ***"In equilibrium, the value of a vacant job will be driven down to zero."***  El empleo de equilibrio lo da:
$$
rV_{V}(E)=-C+\frac{\alpha(E)}{a(E)+\alpha(E)+2b+2r}A=0
$$
tiene pendiente negativa porque mas empleo hace mas dicicil que se ocupe un puesto vacante, y baja el valor de tener un puesto vacante, es mas costoso y menos prospecto de retorno.
Cuando E es 0, nadie está empleado, es fácil encontrar alguien para un puesto vacante

![[Pasted image 20240508094739.png|300]]