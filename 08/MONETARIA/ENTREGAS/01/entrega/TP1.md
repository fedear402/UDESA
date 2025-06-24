## 1.a
La utilidad es función del consumo y del ocio. Es decir $U(C_{t}, h_{t})$ es creciente en la variable $C_{t}$, la cantidad consumida en términos reales, y negativamente de $h_t$, las horas trabajadas. El Lagrangiano es:
$$ \mathcal{L}=
\sum_{t=0}^\infty \left\{ \left( \frac{1}{1+\rho} \right)^t U(C_{t}, h_{t}) +\lambda_{t} \left[  P_{t} Y_{t} +(1+i_{t-1}) B_{t-1}  + M_{t-1}^d - P_{t}C_{t}-B_{t}-M_{t}^d-T_{t}\right]  \right\} 
$$
Notamos antes de seguir que $Y_{t} = ( h_{t} )^\alpha\left( \frac{M_{t}^d}{P_{t}} \right)^\theta$ y entonces su derivada con respecto a $M_{t}^d$ es $Y'_{M^d_{t}}= ( h_{t} )^\alpha \theta\left( \frac{M_{t}^d}{P_{t}} \right)^{\theta-1} \frac{1}{P_{t}}$

Las condiciones de primer orden quedan:
$$(1) \frac{\partial\mathcal{L}}{\partial \lambda_{t}}=0$$$$
 P_{t} Y_{t} +(1+i_{t-1}) B_{t-1}  + M_{t-1}^d = P_{t}C_{t}+B_{t}+M_{t}^d+T_{t}
$$Esta condición es simplemente la restricción presupuestaria. Nos indica del lado izquierdo las tenencias nominales en $t$ y del lado derecho los usos de esas tenencias (parte para consumo, parte para ahorro en bonos, parte para dinero y parte para pagar impuestos).

---
$$
(2)\frac{\partial\mathcal{L}}{\partial C_{t}}=\left( \frac{1}{1+\rho} \right)^tU'_{C_{t}}(C_{t},h_{t})-\lambda_{t}P_{t}=0
$$
$$
\left( \frac{1}{1+\rho} \right)^t  \frac{U'_{C_{t}}}{P_{t}}=\lambda_{t}
$$
---
$$
(3) \frac{\partial\mathcal{L}}{\partial M^d_{t}}=\lambda_{t} P_{t} Y'_{M_{t}^d} + \lambda_{t+1} - \lambda_{t} = 0
$$
$$
P_{t} Y'_{M_{t}^d}  = \frac{\lambda_{t} -\lambda_{t+1} }{\lambda_{t} }
$$
---
$$
(4) \frac{\partial\mathcal{L}}{\partial B_{t}}=\lambda_{t+1}(1+i_{t})-\lambda_{t}=0
$$
$$
\lambda_{t+1}(1+i_{t})=\lambda_{t}
$$
---
$$
(5) \frac{\partial\mathcal{L}}{\partial h_{t}}=\left( \frac{1}{1+\rho} \right)^t U'_{h_{t}}+\lambda_{t}P_{t}Y'_{h_{t}}=0
$$
---
Podemos expresar (2) un periodo adelantado:
$$
\lambda_{t}=\left( \frac{1}{1+\rho} \right)^t  \frac{U'_{C_{t}}}{P_{t}}
$$
$$
\lambda_{t+1} = \left( \frac{1}{1+\rho} \right)^{t+1}  \frac{U'_{C_{t+1}}}{P_{t+1}}
$$
Ahora vemos que (4) se puede escribir
$$
(1+i_{t})=\frac{\lambda_{t}}{\lambda_{t+1}}
$$
Entonces reemplazamos $\lambda_{t}$ y $\lambda_{t+1}$ de (2) en (4)
$$
(1+i_{t})=\frac{\left( \frac{1}{1+\rho} \right)^t  \frac{U'_{C_{t}}}{P_{t}}}{\left( \frac{1}{1+\rho} \right)^{t+1}  \frac{U'_{C_{t+1}}}{P_{t+1}}}
$$
$$
(1+i_{t})=(1+\rho)\frac{  U'_{C_{t}}} { U'_{C_{t+1}}   }      \frac{P_{t+1}}{P_{t}}
$$Usando que $\frac{P_{t+1}}{P_{t}} = 1+\pi_{t+1}$ llegamos a que
$$
\frac{1+i_{t}}{(1+\pi_{t+1})(1+\rho)}U'_{C_{t+1}} =U'_{C_{t}}
$$
Esta es la ecuación de Euler, la primer condición de optimalidad que hayamos. Nos dice que en el óptimo la utilidad marginal de consumir hoy tiene que ser igual la utilidad adicional que obtiene consumiendo mañana, adelantado por la tasa de interés nominal, pero descontado por la tasa de inflación y por la tasa de impaciencia. Si no fuera igual, no estaría optimizando: podría consumir más en un periodo u otro y estar mejor. Otra interpretación: una unidad de consumo mañana a valor presente (adelantado por $i$ y actualizado por la inflacion y la impaciencia) es el beneficio marginal de consumir mañana que debe igualar al costo marginal de esa unidad de consumo mañana (cuesta una unidad de consumo hoy y una unidad de consumo hoy es $U'_{C_{t}}$)

---
Luego, tenemos la condición (3) $$P_{t} Y'_{M_{t}^d}  = \frac{\lambda_{t} -\lambda_{t+1} }{\lambda_{t} }$$$$P_{t} Y'_{M_{t}^d}  = 1-\frac{\lambda_{t}}{\lambda_{t+1}}$$Sabemos por la ecuación (4) que $(1+i_{t})=\frac{\lambda_{t}}{\lambda_{t+1}}$. Entonces:
$$
P_{t} Y'_{M_{t}^d}  = i_{t}
$$
En el óptimo, la productividad marginal nominal de los saldos reales tiene que compensar exactamente el costo de oportunidad de tener billetes (que es el retorno nominal neto de los bonos). En otras palabras, tener billetes tiene un retorno nominal de $P_{t} Y'_{M_{t}^d}$, los bonos de $i_{t}$, entonces si no son iguales no es óptimo, puede tener mas dinero o menos dinero (mas bonos) y estar mejor.

---
Por ultimo, reemplazamos (2) en (5)  
$$
\lambda_{t}P_{t}Y'_{h_{t}}+\left( \frac{1}{1+\rho} \right)^t U'_{h_{t}}=0
$$$$
\left( \frac{1}{1+\rho} \right)^t  U'_{C_{t}} Y'_{h_{t}}+\left( \frac{1}{1+\rho} \right)^t U'_{h_{t}}=0
$$
$$
U'_{C_{t}} Y'_{h_{t}}+U'_{h_{t}}=0
$$
$$
U'_{C_{t}} Y'_{h_{t}}=U'_{h_{t}}
$$
Esta condición relaciona consumo y ocio en el óptimo. $U'_{h}$ y $Y'_{h}$ se mueven en forma contraria respecto a $h$. Si trabaja mas, produce mas (y por ende consume mas) pero le resta utilidad. La perdida de utilidad tiene que igualar a la productividad marginal en términos del consumo adicional ganado por trabajar más



## 1.b

Por propiedades del modelo tenemos:
$\frac{M_{t}}{M_{t-1}}=1+\mu$
$C_{t}=Y_{t}$
$U'_{C_{t}}=(C_{t})^{1/\sigma}$
$U'_{h_{t}}=-(h_{t})^{\sigma}$
$Y'_{M^d_{t}}= ( h_{t} )^\alpha \theta\left( z_{t} \right)^{\theta-1} \frac{1}{P_{t}}$
$Y'_{h_{t}}= \alpha ( h_{t} )^{\alpha-1} \left( z_{t}\right)^{\theta}$

En el optimo:
$U'_{C_{t}} Y'_{h_{t}}=U'_{h_{t}}$

$P_{t} Y'_{M_{t}^d}  = i_{t}$

$\frac{1+i_{t}}{(1+\pi_{t+1})(1+\rho)}U'_{C_{t+1}} =U'_{C_{t}}$

$P_{t} Y_{t} +(1+i_{t-1}) B_{t-1}  + M_{t-1}^d = P_{t}C_{t}+B_{t}+M_{t}^d+T_{t}$

---

Reescribimos las condiciones de optimalidad en términos de las utilidades y producción

$$
C_{t}^{1/\sigma} \alpha h_{t}^{\alpha-1} z_{t}^\theta=-h_{t}^\sigma
$$
$$
h_{t}^\alpha \theta z_{t}^{\theta-1}=i_{t}
$$$$
\frac{1+i_{t}}{(1+\pi_{t+1}) (1+\rho)}=\left( \frac{C_{t}}{C_{t+1}} \right) ^{1/\sigma}
$$Además,
$$
\frac{z_{t}}{z_{t+1}} = \frac{\frac{M_{t}}{P_{t}}}{\frac{M_{t+1}}{P_{t+1}}}=  \frac{1+\pi_{t+1}}{1+\mu}
$$
Y también
$$
C_{t}=Y_{t}
$$
$$
C_{t}= ( h_{t} )^\alpha\left( z_{t} \right)^\theta
$$

Entonces tenemos 5 ecuaciones para las 5 variables.

En estado estacionario $\frac{C_{t}}{C_{t+1}}=1$ y $\frac{z_{t}}{z_{t+1}}=1$ porque las variables reales permanecen constantes.

$$
\frac{1+\pi_{t+1}}{1+\mu}=1
$$
$$
1+\pi_{t+1}=1+\mu
$$
que es la solución de $\pi$. Luego
$$
 \left( \frac{1+i_{t}}{(1+\pi_{t+1}) (1+\rho)} \right) ^\sigma=1
$$
$$
 \left( \frac{1+i_{t}}{(1+\mu) (1+\rho)} \right) ^\sigma=1
$$
$$
 \left( 1+i_{t} \right) ^\sigma=((1+\mu) (1+\rho))^\sigma
$$
$$
 1+i_{t}=(1+\mu) (1+\rho)
$$
Lo cual es similar a la condición de Fisher. 

Nos quedan,
$$
h_{t}^\alpha \theta z_{t}^{\theta-1}+1=(1+\mu) (1+\rho)
$$
$$
( ( h_{t} )^\alpha\left( z_{t} \right)^\theta)^{1/\sigma} \alpha h_{t}^{\alpha-1} z_{t}^\theta=-h_{t}^\sigma
$$
