# 1
## a)
Partiendo de que son separables, es decir, si para las canastas $x_{M}$, $x'_{M}$ y $x_{-M}$ se cumple:
$$
(x_{M}, x_{-M}) \succeq (x_{M}', x_{-M}) \iff (x_{M}, x_{-M}') \succeq (x_{M}', x_{-M}') \quad  \forall x'_{-M}
$$
Entonces porque existe una función $u$ de utilidad que representa $\succeq$, entonces se tiene que cumplir también que:
$$
u(x_{M}, x_{-M}) \geq u (x_{M}', x_{-M}) \iff u(x_{M}, x_{-M}') \geq u(x_{M}', x_{-M}') \quad  \forall x'_{-M}
$$
Sabemos que $u$ es monótona, entonces es creciente en sus argumentos. Como en esas desigualdades solo estamos cambiando la primer canasta, mientras aumente algún bien en la primer canasta, esa canasta va ser preferida y tener un mayor valor de utilidad. Si en vez de usar el vector de canastas $x_{M}$ usamos una función $f:M \to \mathbb{R}$ que mantiene la desigualdad en la utilidad, estaríamos va a representar las mismas preferencias. 

Es decir, si tenemos que algunas canastas $x_{M}\geq x_{M}'$ (es decir, algun elemento del primero es mayor o son la misma canasta). Podemos decir que alguna $f$ cumple $f(x_{M})\geq f(x_{M}')$ y va a mantenerse la desigualdad porque $u$ es monótona. 
Si le llamamos $U$ a la utilidad que expresa los valores $U(f(x_{M}), x_{-M})$, porque $u$ es monotona debe ser la misma función de utilidad y cumplir:
$$
U(f(x_{M}), x_{-M}) \geq U (f(x_{M}'), x_{-M})
$$
Esta función debe mantener el efecto que tiene sobre la utilidad un aumento en algun bien de la canasta $x_{M}$. Eso se va a cumplir siempre que en ambos lados de la desigualdad la segunda canasta se mantenga constante, entonces también se va a cumplir:
$$
U(f(x_{M}), x_{-M}') \geq U(f(x_{M}'), x_{-M}') \quad  \forall x'_{-M}
$$
Porque solamente estamos cambiando el primer argumento.
## b)
Las preferencias son débilmente separables en $M$ si existe una función de agregación real $f : M \to \mathbb{R}$ tal que $u(x_M, x_{\neg M}) = U(f(x_M), x_{\neg M})$. Partiendo de que existe una función de agregación $f: M \to \mathbb{R}$ tal que $u(x_M, x_{-M}) = U(f(x_M), x_{-M})$, vamos a demostrar que las preferencias son débilmente separables. Consideremos dos canastas $(x_M, x_{-M})$ y $(x'_M, x_{-M})$ que comparten los mismos bienes fuera de $M$. Si $(x_M, x_{-M}) \succeq (x'_M, x_{-M})$, entonces por la representación de utilidad: $$ u(x_M, x_{-M}) \geq u(x'_M, x_{-M}) $$ Como sabemos que $u(x_M, x_{-M}) = U(f(x_M), x_{-M})$ y $u(x'_M, x_{-M}) = U(f(x'_M), x_{-M})$, podemos reescribir: $$ U(f(x_M), x_{-M}) \geq U(f(x'_M), x_{-M}) $$ Como $U$ es monótona y el segundo argumento es el mismo en ambos lados, esta desigualdad se cumple si y solo si: $$ f(x_M) \geq f(x'_M) $$ Ahora, para cualquier otra canasta $x'_{-M}$, como la relación entre $f(x_M)$ y $f(x'_M)$ no cambia, tenemos: $$ U(f(x_M), x'_{-M}) \geq U(f(x'_M), x'_{-M}) $$ Que es equivalente a: $$ u(x_M, x'_{-M}) \geq u(x'_M, x'_{-M}) $$ Por lo tanto: $$ (x_M, x'_{-M}) \succeq (x'_M, x'_{-M}) $$ Esto muestra que si $(x_M, x_{-M}) \succeq (x'_M, x_{-M})$, entonces $(x_M, x'_{-M}) \succeq (x'_M, x'_{-M})$ para cualquier $x'_{-M}$. De manera análoga, si $(x'_M, x_{-M}) \succeq (x_M, x_{-M})$, siguiendo los mismos pasos llegaríamos a que $(x'_M, x'_{-M}) \succeq (x_M, x'_{-M})$ para cualquier $x'_{-M}$. Por lo tanto, las preferencias son débilmente separables en $M$.


# 2
## a)
$$
TMS_{3,4}=\frac{ \partial U^* / \partial x_{3} }{ \partial U^* / \partial x_{4} }  = \frac{ \partial U^* / \partial f_{2} \cdot \partial f_{2} /  \partial x_{3}}{  \partial U^* / \partial f_{2} \cdot \partial f_{2}  /  \partial x_{4} } 
$$
Como se cancelan las derivadas parciales de $U^*$ respecto de $f_{2}$, no queda ningún termino dependiendo de bienes que no estén en la función de agregación (como $1$ y $2$). Es consecuencia de la separabilidad. Solo depende de los bienes agrupados $x_{3},x_{4},x_{5}$. 

## b)
$$
\frac{ \partial U^* / \partial x_{3} }{ \partial U^* / \partial x_{6} } =  \frac{ \partial U^* / \partial f_{2} \cdot \partial f_{2} /  \partial x_{3}}{  \partial U^* / \partial x_{6} } 
$$
Queremos que alguna $\partial U^* / \partial x_{6}$ o $\partial U^* / \partial f_{2}$ nos queden dependiendo de $x_{1}$ y no se cancelen.
$$
U^* (f_{1}(x_{1},x_{2}),f_{2}(x_{3},x_{4},x_{5}),x_{6}) = f_{1}(x_{1},x_{2})x_{6} + f_{2}(x_{3},x_{4},x_{5})
$$
$f_{2}(x_{3},x_{4},x_{5})=x_{3}x_{4}x_{5}$
$f_{1}(x_{1},x_{2})=x_{1}x_{2}$
$$
U^*=x_{1}x_{2}x_{6}+x_{3}x_{4}x_{5}
$$
$$
TMS_{3,6}= \frac{x_{4}x_{5}}{x_{1}x_{2}}
$$
# 3
Si tenemos la utilidad:
$$
U(x_{M}, x_{-M})
$$
$x_{M}=(x_{1},x_{2},\dots,x_{m})$ y $x_{-M}=(x_{m+1},x_{m+2},\dots,x_{n})$
Partiendo de que las preferencias son separables, eso quiere decir que se puede expresar $U$ como:
$$
U(f(x_{M}), x_{-M})
$$
La tasa de sustitución entre dos bienes en el vector $x_{M}$ cumplen que
$$
TMS_{i,j}=  \frac{ \partial U / \partial f(x_{M}) \cdot \partial f(x_{M}) /  \partial x_{i}}{  \partial U / \partial f(x_{M})\cdot \partial f(x_{M}) /  \partial x_{j} }  =  \frac{ \partial f(x_{M}) /  \partial x_{i}}{   \partial f(x_{M}) /  \partial x_{j} } =g(x_{M}) \qquad \forall i,j \leq m
$$
Porque $\frac{ \partial f(x_{M}) }{ \partial x_{k} }$ solo depende de bienes en $x_{M}$. 



# 5

La función $e_M(u_M, p_M)$ es la función de valor de la minimizacion del gasto para la subutilidad $f$:
$$e_M(u_M, p_M) = \min_{x_M} p_M \cdot x_M \text{ sujeto a } f(x_M) \geq u_M$$
Usamos el teorema de la envolvente al Lagrangeano:
$$\mathcal{L} = p_M \cdot x_M + \lambda(u_M - f(x_M))$$

Tenemos  que por definición:  
$$\frac{\partial e_M}{\partial p_i} = \frac{\partial \mathcal{L}}{\partial p_i}\bigg|_{x_M=x_M^*} = x_i^*$$
Entonces simplemente en la función de gasto derivamos:
$$\frac{\partial e_M(u_M, p_M)}{\partial p_i} = x_i^h(u_M, p_M) \quad \forall i \in M$$

y ahi vemos que $x_i^h(u_M, p_M)$ es la demanda Hicksiana del bien $i$ en el problema de la subutilidad. Ese es el lema de Shephard

Después, $v_M(m_M, p_M)$ es la función de utilidad indirecta para la subutlidad con los $M$ bienes:
$$v_M(m_M, p_M) = \max_{x_M} f(x_M) \text{ sujeto a } p_M \cdot x_M \leq w_M$$
Por el teorema de la envolvente sobre el Lagrangiano:
$$\mathcal{L} = f(x_M) + \mu(w_M - p_M \cdot x_M)$$

Obtenemos:
$\frac{\partial v_M}{\partial p_i} = -\mu^* x_i^*$
$\frac{\partial v_M}{\partial m_M} = \mu^*$
Usndo la envolvente::
$$\frac{\frac{\partial v_M}{\partial p_i}}{\frac{\partial v_M}{\partial w_M}} = \frac{\frac{\partial \mathcal{L}}{\partial p_i}\bigg|_{x_M=x_M^*}}{\frac{\partial \mathcal{L}}{\partial w_M}\bigg|_{x_M=x_M^*}} = -x_i^*$$
Entonces se cumple la identidad de Roy
$$x_i^m(m_M, p_M) = -\frac{\frac{\partial v_M}{\partial p_i}}{\frac{\partial v_M}{\partial w_M}} \quad \forall i \in M$$

# 6
6. Asuma que la función de subutilidad $f(x_M)$ es homotética. Demuestre que se puede escribir $e_M(u_M, p_M)$ como $\bar{e}(p_M) u_M$. Demuestre que bajo estas condiciones podemos armar índices de precios y cantidades.
RESPUESTA:
Si $f(x_M)$ es homotética, o sea que es homogénea de grado 1, entonces si se cumple $f(tx_M) = tf(x_M)$ entonces $e_M(u_M, p_M)$ se puede escribir como $e(\mathbf{p}_{M})u_{M}$.
La definicion del gasto era:
$$
e_M(u_M, p_M) = \min_{x_M} p_M \cdot x_M \text{ sujeto a } f(x_M) \geq u_M
$$

La solucion del problema es la hicksiana $x^{h}(u_M)$ que depende de $u_M$ (y de los precios). Como $f$ es homogénea de grado $1$,

$$
f\!\Bigl(\tfrac{x^{h}(u_M)}{u_M}\Bigr)
     =\tfrac{1}{u_M}\,f(x^{h}(u_M))
     = 1 ,
$$
Eso sale de la restriccion del problema de minimzacion, entonces $\frac{x^{h}(u_M)}{u_M}$ es factible cuando el nivel de utildiad es $1$. El gasto para esa utilidad

$$
p_M\cdot \frac{x^{h}(u_M)}{u_M}
   =\tfrac{1}{u_M}\,p_M\cdot x^{h}(u_M)
   =\tfrac{1}{u_M}\,e_M(u_M,p_M).
$$

Como sabemos que es el optimo

$$
e_M(1,p_M)\;=\;
\tfrac{1}{u_M}\,e_M(u_M,p_M)
\quad\Longrightarrow\quad
e_M(u_M,p_M)\;=\;u_M\,e_M(1,p_M).
\tag{1}
$$


Índice de precios: $P_M = \bar{e}(p_M)$  es el gasto por cada nivel de utilidad
Índice de cantidades: $X_M = f(x_M) = u_M$ es el nivel de utilidad de la subutilidad que sale por la homogeneidad. 

# 7
7. Llamaremos índice de precios de los bienes $M$ a $P_M = \bar{e}(p_M)$ y agregador $X = f(x_M) = u_M$, demuestre que se llega al mismo resultado resolviendo el problema de maximización de utilidad que
  $$\max_{X, x_{\neg M}} u(X, x_{\neg M}) \text{ s.t. } P_M X + p_{\neg M} x_{\neg M} \leq W$$
RESPUESTA:

Teniamos que $u(x_M,x_{\neg M}) = U\bigl(f(x_M),\,x_{\neg M}\bigr),$ el problema de minimzacion de gasto es:
$$
e_M(u_M, p_M) = \min_{x_M} p_M \cdot x_M \text{ sujeto a } f(x_M) \geq u_M
$$

Asumimos que segumos con homotecidad de $f$,
$$
e(p_M,u_M)=u_M\,\bar e(p_M), \qquad
$$

Entonces ahora usamos $P_M=\bar e(p_M), \quad X=u_M=f(x_M)\quad$. El problema del consumidor era

$$
\max_{x_M,x_{\neg M}}
U\bigl(f(x_M),x_{\neg M}\bigr)
\quad\text{s.a.}\quad
p_M\cdot x_M + p_{\neg M}\cdot x_{\neg M}\le W.
\tag{P}
$$

Para cualquier $(x_M,x_{\neg M})$ factible, sea $X=f(x_M)$.   la funcion de gasto para algun $X$ en el subconjunto $M$ cumple:

$$
p_M\cdot x_M \;\ge\; e(p_M,X)=P_M X,
$$

entonces $(X,x_{\neg M})$   

$$
P_M X + p_{\neg M}\,x_{\neg M}\le W,
$$

y es factible si se cumple eso, por lo que podemos reexpresar el problema:

$$
\max_{X,x_{\neg M}} U(X,x_{\neg M})
\quad\text{s.a.}\quad
P_M X + p_{\neg M}\,x_{\neg M}\le W.
\tag{P'}
$$
Entonces es el mismo problema.

# 8.

$$u(x)=x_{0}+\Bigl[\sum_{i=1}^{L}x_{i}^{\rho}\Bigr]^{1/\rho},\qquad \rho\le 1,\;\rho\neq 0$$
Elegimos $X$ que es homogenea
$$
X \;=\;f(x_M)\;=\;\Bigl[\sum_{i=1}^{L}x_{i}^{\rho}\Bigr]^{1/\rho}.
$$
Ahi se ve que $f$ es homogénea de grado $1$ ($f(tx_M)=t\,f(x_M)$) . Para $X=1$ (con lo de que es homotetica) el problema era

$$
\min_{x_M}\;\sum_{i=1}^{L}p_i x_i
\quad\text{s.a.}\quad
\sum_{i=1}^{L}x_i^{\rho}\ge 1.
$$

El Lagrangiano:

$$
\mathcal{L}=\sum_{i=1}^{L}p_i x_i +\lambda\Bigl(1-\sum_{i=1}^{L}x_i^{\rho}\Bigr).
$$

$$
\frac{\partial\mathcal{L}}{\partial x_i}=p_i-\lambda\,\rho\,x_i^{\rho-1}=0
\;\;\Longrightarrow\;\;
x_i^{\rho-1}=\frac{p_i}{\lambda\rho}.
$$

Despejamos $x_i$:

$$
x_i=\Bigl(\tfrac{p_i}{\lambda\rho}\Bigr)^{1/(\rho-1)}.
$$
Ahora reemplazado en la restriccion:

$$
1=\sum_{i=1}^{L}x_i^{\rho}
=\sum_{i=1}^{L}\Bigl(\tfrac{p_i}{\lambda\rho}\Bigr)^{\rho/(\rho-1)}
=(\lambda\rho)^{-\rho/(\rho-1)}\sum_{i=1}^{L}p_i^{\rho/(\rho-1)}.
$$

Despeje $\lambda$:

$$
\lambda\rho
= \Bigl[\sum_{i=1}^{L}p_i^{\rho/(\rho-1)}\Bigr]^{-(\rho-1)/\rho}.
$$

Ahora con el gasto minimo, ya mostramos que se cumple
$$
e_M(1,p_M)=\sum_{i=1}^{L}p_i x_i
= \sum_{i=1}^{L}p_i\Bigl(\tfrac{p_i}{\lambda\rho}\Bigr)^{1/(\rho-1)}
= (\lambda\rho)^{-\!1/(\rho-1)}
      \sum_{i=1}^{L}p_i^{\rho/(\rho-1)+1}.
$$

Ahora usamos que $\frac{\rho}{\rho-1}+1 \;=\;\frac{\rho+(\rho-1)}{\rho-1}\;=\;\frac{1}{\rho-1}.$ Con eso nos queda

$$
e_M(1,p_M)
=(\lambda\rho)^{-\!1/(\rho-1)}
      \sum_{i=1}^{L}p_i^{1/(\rho-1)}.
$$

Usamos el valor de $\lambda\rho$ de antes:

$$
(\lambda\rho)^{-\!1/(\rho-1)}
= \Bigl[\sum_{j=1}^{L}p_j^{\rho/(\rho-1)}\Bigr]^{1/\rho}.
$$

Usamos $\rho/(\rho-1)= -\rho/(1-\rho)$ y  $1/(\rho-1)= -1/(1-\rho)$):

$$
e_M(1,p_M)
=\Bigl[\sum_{j=1}^{L}p_j^{-\rho/(1-\rho)}\Bigr]^{-(1-\rho)/\rho}
      \sum_{i=1}^{L}p_i^{-\!1/(1-\rho)}.
$$

$$
e_M(1,p_M)=\Bigl[\sum_{i=1}^{L}p_i^{-\rho/(1-\rho)}\Bigr]^{-(1-\rho)/\rho}.
$$

$$
P(p_M)=e_M(1,p_M)
      =\Bigl[\sum_{i=1}^{L}p_i^{-\rho/(1-\rho)}\Bigr]^{-(1-\rho)/\rho}.
$$

Ahora el problema le queda:
$$
\max_{x_0,X}\; x_0 + X
\quad\text{s.a.}\quad
p_0\,x_0 + P\,X \le W.
$$
CPO:  
$$
1=\lambda p_0,\qquad 1=\lambda P
\;\;\Longrightarrow\;\; p_0=P.
$$

Si $P<p_0$ (el compuesto es más barato):  
  $$X=\frac{W}{P},\qquad x_0=0.$$
Si $P>p_0$ (el bien $0$ es más barato):  
  $$x_0=\frac{W}{p_0},\qquad X=0.$$
Si $P=p_0$: cualquier combinación con $p_0x_0+PX=W$. Cuando $X>0$, la asignación dentro de los $M$ bienes es:
$$
x_i
=\frac{W}{P}\left(\frac{p_i}{P}\right)^{-1/(1-\rho)},
\qquad i=1,\dots,L.
$$

# 9



# 10 a)

Utilidad marginal de $x_i$:
  $$\frac{\partial u}{\partial x_i}=\phi_{M'}'(x_{M'})\;>0$$
depende solo de variables en $M'$.  Utilidad marginal de cualquier $x_j$ es la misma

  $$
  \text{MRS}_{ij}
  =\frac{\partial u/\partial x_j}{\partial u/\partial x_i}
  =\frac{\phi'_{M'}(x_{M'})}{\phi'_{M'}(x_{M'})}
  =\frac{\partial\phi_{M'}/\partial x_j}{\partial\phi_{M'}/\partial x_i}
  $$
queda libre de cualquier $x_k$ con $k\notin M'$. Por simetría, las utilidades marginales y MRS dentro de un grupo dependen exclusivamente de variables de ese mismo grupo.

---

# 10 b)  

Etiquete los bienes por período:  
$$(x_{1,1},\dots,x_{1,L};\;x_{2,1},\dots,x_{2,L};\;\dots;x_{T,1},\dots,x_{T,L}).$$Si tenemos una función típica del estilo de macroeconomía:

$$
u(x)=\sum_{t=1}^T U_t\!\bigl(\,C_t(x_{t,1},\dots,x_{t,L})\,\bigr),
$$

Ahí $C_t$ es un agregado intraperíodo. Entonces la separabilidad estricta tiene que estar entre los agregados de cada periodo para que sea valido. Y como son separables, las MRS intra-período, entre los bienes dentro en un $t$ dado, no dependen de lo consumido en otros períodos. Las interperiodo dependen solo de las catidades agregadas.

---

# 10 c)
Probamos que si: son representables y separables aditivamente y homoteticas  $\implies$ pueden representarse de las dos formas.
Partiendo de que son representables por la utilidad, entonces $u(x)$ es continua, aditiva y homotética:  Si es aditiva. $u(x)=\sum_i \phi_i(x_i)$.   Sie s homotetica, es homogenea, entonces $u(tx)=t^b u(x)$. Entonces  

$$
t^b\sum_i \phi_i(x_i)=\sum_i \phi_i(tx_i)
=\sum_i \phi_i(1)\,(tx_i)^b
=t^b\sum_i\phi_i(1)\,x_i^b ,
$$

lo que obliga a que $\phi_i(x_i)=a_i x_i^b$ y es $\phi_i(x_i)=a_i\ln x_i$ en el límite $b\to0$.
Por otro lado, pueden representarse de las dos formas $\implies$ son representables y separables aditivamente y homoteticas
Las dos funciones  
$$
u_1(x)=\sum_i a_i x_i^b, 
\qquad
u_2(x)=\sum_i a_i\ln x_i,
$$

son obviamente aditivas; además  
$$
u_1(tx)=\sum_i a_i (tx_i)^b=t^b u_1(x),
\quad
u_2(tx)=\sum_i a_i [\ln t+\ln x_i]=\ln t\sum_i a_i+u_2(x),
$$

y $\ln t$ es solo una transformacion creciente monotona lo cual es valido, para el logaritmo vale que $e^{u_2}$ es homogénea de grado $1$.  Por continuidad y las propiedades de $u$ se cumple.

---

# 10 d)
Que sea aditiva entre periodos sirve para modelar cómo se pasa el consumo del presente al futuro porque la tasa de sustitucion intertemporal el constante y es facil de interpretar. Y no es tan descabellado que las preferencias de las personas cumplan esta propiedad de que lo que pasan de un periodo a otro depende del consumo total. Además se puede definir $u$$n$ indice de precio del consumo que describe como se suaviza el consumo. Te queda que el consumo $C_t$ se describe con precios relativos $(1+ r_{t,t+1})P_{t+1}/P_t$ del índice  