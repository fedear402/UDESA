
$$
U_{t}=\frac{c_{1t}^{1-\theta}}{1-\theta}+\frac{1}{1+\rho}\frac{c_{2t+1}^{1-\theta}}{1-\theta}
$$
## Hogares
Debe maximizar la utilidad sujeto a $c_{1t}=w_{t}-s_{t}$ y $c_{2t+1} =(1+r_{t+1})s_{t}$
$$
\max L=\frac{c_{1t}^{1-\theta}}{1-\theta}+\frac{1}{1+\rho}\frac{c_{2t+1}^{1-\theta}}{1-\theta}-\lambda \left( c_{1t} +\frac{c_{2t+1}}{1+r_{t+1}}  -w_{t} \right) 
$$
CPO:
$$\frac{ \partial L }{ \partial c_{1t} }=c_{1t}^{-\theta}-\lambda=0$$
$$
c_{1t}^{-\theta}=\lambda
$$
$$\frac{ \partial L }{ \partial c_{2t+1} }=\frac{1}{1+\rho}c_{2t+1}^{-\theta}-\lambda \frac{1}{1+r_{t+1}}=0$$
$$
 \frac{1+r_{t+1} }{1+\rho}c_{2t+1}^{-\theta}=\lambda
$$
Igualando, llegamos a la condición de Euler
$$
c_{1t}^{-\theta}=\frac{1+r_{t+1} }{1+\rho}c_{2t+1}^{-\theta}
$$
$$
\frac{c_{1t}^{-\theta}}{c_{2t+1}^{-\theta}}=\frac{1+r_{t+1} }{1+\rho}
$$
$$
\left(  \frac{c_{1t}}{c_{2t+1}} \right)^{-\theta}=\frac{1+r_{t+1} }{1+\rho}
$$
$$
\left(  \frac{c_{2t+1}}{c_{1t}} \right)^{\theta}=\frac{1+r_{t+1} }{1+\rho}
$$
$$
\boxed{\frac{c_{2t+1}}{c_{1t}}=\left( \frac{1+r_{t+1} }{1+\rho}  \right) ^{1/\theta}}
$$
El cambio en el consumo intertemporal depende de la tasa de rendimiento y la tasa de impaciencia. Si la tasa de retorno aumenta, aumenta el consumo en el segundo periodo relativo al primero. Si aumenta la tasa de descuento, es al revés (valora mas consumir hoy que mañana).
$\frac{1}{\theta}$ es la elasticidad de sustitución entre consumo entre un periodo y otro - sensibilidad a la tasa de interés.  Si $\theta$ es menor, más reacciona el consumo a cambios en la tasa de interés.

Reemplazando en la ecuación de Euler  $c_{1t}=w_{t}-s_{t}$ y $c_{2t+1} =(1+r_{t+1})s_{t}$

$$
\boxed{\frac{(1+r_{t+1})s_{t}}{w_{t}-s_{t}}=\left( \frac{1+r_{t+1} }{1+\rho}  \right) ^{1/\theta}}
$$
## Firmas
En mercados competitivos:
$$
f'(k_{t})=r_{t}
$$
$$
f(k_{t})-k_{t}f'(k_{t})=w_{t}
$$

## Dinámica
Equilibrio en el mercado de bienes implica que la demanda de bienes en cada periodo sea igual a la oferta.
Es lo mismo que decir que la inversión debe ser igual al ahorro:
$$
K_{t+1}-K_{t}=L_{t} s(w_{t},r_{t+1}) - K_{t}
$$
$K_{t+1}-K_{t}$ es la inversión total (lo que queda en $t+1$)
$L_{t} s(w_{t},r_{t+1}) - K_{t}$  es el ahorro (todo el activo de $t$ que pasa a formar parte del producto en $t+1$) menos el capital que los viejos usan en $t$ y por ende no se ahorra.
$$
K_{t+1}=L_{t} s(w_{t},r_{t+1})
$$
Intensiva:
$$
\frac{K_{t+1}}{L_{t}}=\frac{L_{t}s(w_{t},r_{t+1})}{L_{t}}
$$
$$
\frac{K_{t+1}}{\frac{L_{t+1}}{1+n}}=s(w_{t},r_{t+1})
$$
$$
(1+n)k_{t+1}=s(w_{t},r_{t+1})
$$
$$
k_{t+1}=\frac{s(w_{t},r_{t+1})}{1+n}
$$
Es la ecuación que caracteriza [[OLG dinámica y equilibrio|la dinámica del modelo.]] 
Usando que $w$ y $r$ son funciones del stock de capital intensivo en mercados competitivos:
$$
k_{t+1}=\frac{s \left(  w(k_{t}),r(k_{t+1}) \right)}{1+n}
$$
$$
k_{t+1}=\frac{s \left( \ \ f(k_{t})-k_{t}f'(k_{t}),\ \ f'(k_{t+1}) \ \ \right)}{1+n}
$$
Ese es el *Savings locus*. La derivada del savings locus determina la dinámica
$$
\frac{\partial k_{t+1} }{\partial k_{t}}=\frac{1}{1+n} \cdot  \frac{\partial s \left( \ \ f(k_{t})-k_{t}f'(k_{t}),\ \ f'(k_{t+1}) \ \ \right)}{\partial k_{t}} 
$$
La derivada del ahorro respecto al capital en $t$ ls obtenemos con la regla de la derivada total.
$$
\frac{\partial k_{t+1} }{\partial k_{t}}=\frac{1}{1+n}\cdot \left[   \frac{ \partial s }{ \partial w } \frac{ \partial w }{ \partial k_{t} } + \frac{ \partial s }{ \partial r } \frac{ \partial r }{ \partial k_{t} }  \right]
$$
$$
\frac{\partial k_{t+1} }{\partial k_{t}}=\frac{1}{1+n}\cdot \left[   \frac{ \partial s }{ \partial w } \frac{ \partial w }{ \partial k_{t} } + \frac{ \partial s }{ \partial r } \frac{ \partial r }{ \partial k_{t} }  \right]
$$
$$\frac{\partial k_{t+1} }{\partial k_{t}}=\frac{1}{1+n} \left(  \frac{ \partial s }{ \partial w } \cdot \left[ f'(k_{t}) - \left[ f''(k_{t}) k_{t} + f'(k_{t})  \right] \right] + \frac{ \partial s }{ \partial r } \cdot \left[   f''(k_{t+1}) \frac{\partial k_{t+1} }{\partial k_{t}} \right]  \right)$$
$$\frac{\partial k_{t+1} }{\partial k_{t}}=\frac{1}{1+n} \left(  \frac{ \partial s }{ \partial w } \cdot \left[ -f''(k_{t}) k_{t} \right] + \frac{ \partial s }{ \partial r } \cdot \left[   f''(k_{t+1}) \frac{\partial k_{t+1} }{\partial k_{t}} \right]  \right)$$
$$\frac{\partial k_{t+1} }{\partial k_{t}} - \frac{1}{1+n}\left( \frac{ \partial s }{ \partial r } \cdot \left[   f''(k_{t+1}) \frac{\partial k_{t+1} }{\partial k_{t}} \right]  \right) =\frac{1}{1+n} \left(  \frac{ \partial s }{ \partial w } \cdot \left[ -f''(k_{t}) k_{t} \right]  \right)$$
$$\frac{\partial k_{t+1} }{\partial k_{t}} \left( 1 - \frac{1}{1+n} \frac{ \partial s }{ \partial r } \left[   f''(k_{t+1}) \right]  \right) =\frac{1}{1+n} \left(  \frac{ \partial s }{ \partial w }  \left[- f''(k_{t}) k_{t} \right]  \right)$$
$$\frac{\partial k_{t+1} }{\partial k_{t}}  = \frac{1}{1+n}\frac{  \frac{ \partial s }{ \partial k_{t} }  \left[ -f''(k_{t}) k_{t} \right]  }{ 1 - \frac{1}{1+n} \frac{ \partial s }{ \partial w } \left[   f''(k_{t+1}) \right]  }$$
$$\boxed{\frac{\partial k_{t+1} }{\partial k_{t}}  = \frac{  \frac{ \partial s }{ \partial w }  \left[- f''(k_{t}) k_{t} \right]  }{ 1+n -  \frac{ \partial s }{ \partial r } \left[   f''(k_{t+1}) \right]  }}$$
El numerador $\frac{ \partial s }{ \partial w }  \left[ -f''(k_{t}) k_{t} \right]$ es positivo porque aumentar el capital en $t$ aumenta el salario. El denominador es ambiguo porque no está claro porque depende de cómo sea $\frac{ \partial s }{ \partial r }$, lo cual depende de los parámetros en la función de utilidad y si domina el efecto sustitución o el efecto ingreso.

## Estabilidad
![[Pasted image 20240505182312.png|400]]
la linea es el savings locus. 