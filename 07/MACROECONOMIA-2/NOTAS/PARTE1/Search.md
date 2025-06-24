En cada periodo $t$ recibe una oferta $w$ salida de $F(w)$ distribución acumulada.
Utilidad en tiempo discreto:
$$
E \left( \sum_{t=0}^\infty \beta^tx_{t} \right) 
$$
$$
\begin{cases}
x_{t}=w_{t} \ \text{si acepta}\\
x_{t}=b_{t} \ \ \text{si rechaza}
\end{cases}
$$

Si en $t$ rechaza la oferta $w_{t}$ y en $t+1$ acepta la oferta $w_{t+1}$, cobra eso par siempre, entonces su utilidad es:
$$b_{t} + \beta w_{t+1}+\beta^2 w_{t+1} + \beta^3 w_{t+1} +\dots$$
Entonces si acepta $w$ en algún $t$, realmente recibiría en $t$ :
$$
W(w)=w+\beta W(w)
$$
También, $W(w)-\beta W(w)=w \to W(w)(1-\beta)=w \to W(w)=\frac{w}{1-\beta}$
que es
$$
W^2(w)=w+\beta w+\beta^2 W(w) 
$$

De nuevo:
$$
W^3(w)=w+\beta \left( w+\beta \left( w+\beta W(w)  \right)  \right) 
$$
$$
W^3(w)=w+\beta  w+\beta^2 w+\beta^3 W(w) $$
Entonces por ejemplo si en el primer periodo no acepta y en el segundo sí acepta un salario de $w_{t+1}$ la utilidad es:
$$
b_{t} + W(w_{t+1})
$$
El valor de aceptar $w$ es $W(w)$ . El valor de no aceptar $w$ es $U$
$$
U=b+\beta \int _{0}^\infty \max\{ U,W(w) \} \, dF(w)
$$Existe un valor $w_{R}$ tal que $W(w_{r})=U$
Entonces si $w<w_{R}$ (porque $W(w)=\frac{w}{1-\beta}$ es una función creciente en $w$) , el operador $\max$ devuelve U en el siguente periodo, agrega un $b$ al principio y queda en el siguiente periodo al que acaba de rechazar ver si acepta o no 
si $w\geq w_{R}$ entonces acepta la oferta y tiene $W(k)$ de utilidad mas tantos $b$ como haya rechazado.

Se puede reescribir todo eso usando que si $W(w_{r})=U$
$$
W(w_{r})=U=\frac{w_{r}}{1-\beta}
$$
$$
\frac{w_{r}}{1-\beta}=b+\beta \int _{0}^\infty \max\{ \frac{w_{r}}{1-\beta} , \frac{w}{1-\beta} \} \, dF(w)
$$
Restarle a ambos lados $\frac{\beta w_{r}}{1-\beta}$
$$
\frac{w_{r}}{1-\beta}-\frac{\beta w_{r}}{1-\beta}=b+\frac{\beta}{1-\beta} \int _{0}^\infty \max\{ w_{r} , w \} \, dF(w) -\frac{\beta w_{r}}{1-\beta}
$$
$$
\frac{w_{r}}{1-\beta} \left( 1-\beta \right)=b+\frac{\beta}{1-\beta} \left(   \int _{0}^\infty \max\{ w_{r} , w \} \, dF(w) -w_{r} \right) 
$$
Ahora expandiendo el operador $\max$
$$
\max\{ w_{r} , w \}=
\begin{cases}
w_{r} \ \ \text{si} \ \ w \leq w_{r}  \\
w \ \ \ \  \text{si} \ \ w > w_{r}
\end{cases}
$$
$$
\frac{w_{r}}{1-\beta} \left( 1-\beta \right)=b+\frac{\beta}{1-\beta} \left(   \int _{0}^{w_{r}} w_{r}  \ \, dF(w) +\int _{w_{r}}^\infty w \ \, dF(w) -w_{r} \right) 
$$

$$
\frac{w_{r}}{1-\beta} \left( 1-\beta \right)=b+\frac{\beta}{1-\beta} \left(  w_{r}F(w_{r}) +\int _{w_{r}}^\infty w \ \, dF(w) -w_{r} \right) 
$$

$$
\frac{w_{r}}{1-\beta} \left( 1-\beta \right)=b+\frac{\beta}{1-\beta} \left( \int _{w_{r}}^\infty w \ \, dF(w)  + w_{r} \left( F(w_{r}) -1 \right)   \right) 
$$

---
Para seguir hay que usar que  $w_{r} \left( F(w_{r}) -1 \right)=- \int_{w_{t}}^{\infty} w_{r} \, dF(w)$. Demostración:
$$
- \int_{w_{t}}^{\infty} w_{r} \, dF(w) 
$$
$$
- \Big[ w_{r} F(w) \Big]_{w_{t}}^\infty  = - \left[ w_{r} \lim_{ w \to \infty } F(w) - w_{r}F(w_{r}) \right]
$$
$F$ es una acumulada entonces $\lim_{ w \to \infty } F(w)=1$
$$
\left[  w_{r}F(w_{r}) - w_{r} \right]
$$
$$
w_{r} \left[  F(w_{r}) -  1\right]
$$
---
Entonces reemplazamos y nos queda que el salario de reserva es
$$
w_{r}=b+\frac{\beta}{1-\beta} \left( \int _{w_{r}}^\infty w \ \, dF(w)  - \int_{w_{t}}^{\infty} w_{r} \, dF(w)  \right) 
$$
$$
\boxed{w_{r}=b+\frac{\beta}{1-\beta}   \int _{w_{r}}^\infty (w-w_{r}) \, dF(w)}
$$
También es recursiva. El salario de reserva es mayor a $b$ (lo que obtiene si rechaza una oferta en algún momento). En cuánto el salario de reserva se excede al subsidio por desempleo nominal $b$ depende de
- Distribución de $F$: qué tan probable es tener una oferta mejor a $w_{r}$ en el futuro. Si el prospecto de un buen salario en el futuro es positivo, va a ser más exigente antes de aceptar una oferta.
- $\beta$: el factor de descuento. Si es menor, tiene menos paciencia (la espera es dolorosa), menor es el salario de reserva.

## Tiempo Continuo
En tiempo continuo hay que indicar el pago en cada instante $(t, \Delta t)$ . por el valor del tiempo el pago de aceptar un salario es $W(w)$ y de no aceptar es $U$ . El valor que recibe en cada instante es el interés de tenerlo entre $t$ y $\Delta t$.
$$
rW(w)=w
$$
$$
rU=b+\alpha \int _{0}^{\infty} \max\{ 0, W(w)-U \} \, dF(w) 
$$El valor de aceptar es una perpetuidad:
$$
W(w)=\frac{w}{r}
$$
El valor en $t$ es el salario en todo momento descontado para siempre a tasa $r$. 
El valor de no aceptar es el pago $b$ más $\alpha$ (probabilidad de una oportunidad de trabajo aceptable - tasa de llegada de una nueva oferta - hazard rate) multiplicado por el pago esperado de los salarios aceptados.
si $W(w_{r})=U$ 
$$
W(w)-U=\left(\frac{ w-w_{r} }{r} \right) 
$$
Entonces
$$
r\left( W(w) -\left(\frac{ w-w_{r} }{r} \right)  \right) =b+\frac{\alpha}{r} \int _{0}^{\infty} \max\{ 0, w-w_{r}  \} \, dF(w) 
$$
$$
rW(w_{r})-(w-w_{r})=b+\frac{\alpha}{r} \left(  \int _{0}^{w_{t}} 0\, dF(w) +  \int _{w_{t}}^{\infty} (w-w_{r})\, dF(w)  \right) 
$$
$$
w_{r}=b+\frac{\alpha}{r} \int _{w_{r}}^{\infty}(w-w_{r}) \, dF(w) 
$$
## Turnover
Si se agrega la posibilidad de perder el trabajo luego de haber aceptado una oferta con probabilidad $\lambda$, el valor de aceptar queda:
$$
rW(w)=w+\lambda \left[ U-W(w) \right] 
$$
El valor de no aceptar es el mismo que antes, y también se cumple que $W(w_{r})=U$. 
Eso implica que evaluando en $w_{r}$,
$$
rW(w_{r})=w_{r}+\lambda \left[ U-W(w_{r}) \right] 
$$
$$
rW(w_{r})=w_{r}
$$
Y también, despejano $W(w)$
$$
W(w)=\frac{w}{r}+\frac{\lambda}{r} \left[ U-W(w) \right] 
$$
$$
W(w)=\frac{w}{r}+  \frac{\lambda}{r}U-\frac{\lambda}{r}W(w) 
$$
$$
W(w)+\frac{\lambda}{r}W(w) =\frac{w}{r}+  \frac{\lambda}{r}U
$$
$$
W(w) \left( 1+\frac{\lambda}{r} \right)  =\frac{w}{r}+  \frac{\lambda}{r}U
$$
$$
W(w)   =\frac{\frac{w}{r}+  \frac{\lambda}{r}U}{ 1+\frac{\lambda}{r} }
$$
$$
W(w)   =\frac{1}{r} \frac{w+  \lambda U}{ 1+\frac{\lambda}{r} }
$$
$$
\boxed{W(w)=\frac{w+\lambda U}{r+\lambda}}
$$
Se reemplaza eso en la formula $rU$
$$
rU=b+\alpha \int _{0}^{\infty} \max\{ 0, W(w)-U \} \, dF(w) 
$$
$$
w_{r}=b+\frac{\alpha}{r-\lambda} \int _{w_{r}}^{\infty}(w-w_{r}) \, dF(w) 
$$

