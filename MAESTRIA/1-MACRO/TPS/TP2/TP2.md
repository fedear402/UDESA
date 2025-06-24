# Ejercicio 1
### a)
En cada año $t$, la perpetuidad paga $x$, entonces el valor presente es:
$$
VP = \underbrace{ x }_{ \text{Pago de hoy} } + \underbrace{ \frac{x}{1+r} }_{ \text{Pago dentro de un año} } +\underbrace{ \frac{x}{(1+r)^{2}} }_{ \text{Pago dentro de dos año} } +  \  \dots 
$$
$$
VP = \sum _{t=0}^{\infty} \frac{x}{(1+r)^{t}}
$$
$$
VP = x \sum _{t=0}^{\infty} \left( \frac{1}{1+r} \right)^{t}
$$
Como el denominador siempre menor al numerador, el término $\frac{1}{1+r}$ es siempre menor a $1$ y podemos calcular la serie geométrica.
$$
VP  = x \left( \frac{\frac{1}{1+r}}{1-\frac{1}{1+r}} \right) = x \left( \frac{\frac{1}{1+r}}{r\frac{1}{1+r}} \right) =  \frac{x}{r}
$$
### b)
$$
V = \int_{0}^{\infty} xe^{-rt} \, dt 
$$
Calculamos la integral propia:
$$
V =\left[  \lim_{ t \to \infty }  \frac{xe^{-r t}}{-r} \right] -\left[  \frac{xe^{-r0}}{r} \right]
$$
$$
V =0 -\left[  \frac{xe^{-r0}}{-r} \right] = \frac{x}{r}
$$
### c)
Ahora sabemos que $x$ en el momento $t$ va a ser $xe^{gt}$. Resolviendo el problema de nuevo, tenemos:
$$
V = \int_{0}^{\infty} xe^{gt}e^{-rt} \, dt 
$$
$$
V =\left[  \lim_{ t \to \infty }  \frac{xe^{gt}e^{-r t}}{g-r} \right] -\left[  \frac{xe^{g0}e^{-r0}}{g-r} \right]
$$
$$
V =0 -\left[  \frac{xe^{g0}e^{-r0}}{g-r} \right] = \frac{x}{r-g}
$$
### d)
$$
0= \int \frac{\dot{\lambda}}{\lambda}+(f'(k)-n-r) \, dt
$$
$$
0= \int \frac{\dot{\lambda}}{\lambda} \, dt   +  \int (f'(k)-n-r)\, dt  
$$
Sabemos que $\frac{ \partial \ln(\lambda) }{ \partial t } = \frac{\dot{\lambda}}{\lambda}$, y si asumimos que estamos en estado estacionario, $k$ es fijo:
$$
0= \ln(\lambda _{t}) - \ln(\lambda _{\infty})   + \int_{t}^{\infty}  (f'(k)-n-r) dt
$$
$$
\ln(\lambda_{t}) -\ln(\lambda_{\infty})   =  \int_{t}^{\infty}  (f'(k)-n-r) dt
$$
Elevando todo en $e$:
$$
\lambda_{t}=   e^{-(f'(k)-n-r)t }e^{C}
$$
Además com $\lambda_{0}=e^{-(f'(k)-n-r)0 }e^C$,
$$\lambda= \lambda_{0}  e^{-(f'(k)-n-r)t }$$
Entonces $\lambda$ es el valor inicial, es decir, tiene el mismo valor en cada periodo, nada más que descontado por $f'(k)-n-r$

# Ejercicio 2
Elegimos los siguientes parámetros para Argentina:
$\rho =0.05$
$\alpha=0.424$
$n=0.003$
$y = 12933.2$ 
Además, en los últimos 35 años el crecimiento del $PBI$ per cápita de argentina fue de $g=0.0246$ en promedio.

### b)
i. 
Teníamos la expresión:
$$
k_{t+1} =\left(  \frac{ (1-\alpha) }{(2+\rho)(1+n)}    \right) Ak_{t}^{\alpha}
$$
Lo cual en estado estacionario es:
$$
k_{t}=\left(  \frac{ (1-\alpha) }{(2+\rho)(1+n)}    \right) Ak_{t}^{\alpha}
$$
Despejando $\alpha$ obtenemos:
$$
k^*=\left(  \frac{ (1-\alpha)A }{(2+\rho)(1+n)}    \right)^{(1/(1-\alpha))}
$$


ii.
Tenemos que
$$
y^* = A k^{*\alpha}
$$
$$
y^* = A \left( \left(  \frac{ (1-\alpha)A }{(2+\rho)(1+n)}    \right)^{(1/(1-\alpha))} \right) ^{\alpha}
$$



iii. 
Convertimos las variables a periodos de 35 años:

$\rho_{35} =(1+0.05)^{35}-1=4.51$

$\alpha=0.424$

$n_{35}=(1+0.003)^{35}-1=0.110$

$y_{35} = 12933.2 (1+0.0114)^{35}=18150.48$ 


$$
y^*_{35} = 18150.48 =  \left( \left(  \frac{ (1-\alpha) }{(2+\rho_{35})(1+n_{35})}    \right)^{\frac{1}{(1-\alpha)}} \right) ^{\alpha} A* A^{\alpha/(1-\alpha)}
$$
$$
 18150.48 =  \left( \left(  \frac{ (1-0.424) }{(2+4.51)(1+0.11)}    \right)^{\frac{0.424}{(1-0.424)}} \right)  A^{\frac{1}{(1-0.424)}}
$$
$$
18150.48\left(  \frac{ (1-0.424) }{(2+4.51)(1+0.11)}    \right)^{-\frac{0.424}{(1-0.424)}} =    A^{\frac{1}{(1-0.424)}}
$$
$$
 18150.48^{(1-0.424)}\left(  \frac{ (1-0.424) }{(2+4.51)(1+0.11)}    \right)^{-0.424} =    A
$$
$$
 840.59 =    A
$$


iv.
$$
k^*_{35}=\left(  \frac{ (1-0.424)(840.59) }{(2+4.51)(1+0.11)}    \right)^{1/(1-0.424)} =1476.6
$$
Este es el stock capital en equilibrio constantemente. 

v.
$$
\frac{k^*}{y^*} = \frac{1476.6}{18150.48} = 0.0796
$$
Un ratio capital-producto del 8\% nos podría estar indicando que en equilibrio hay mucho consumo y poco ahorro.

### c)

i.
Sabemos que la tasa de interés en equilibrio es el retorno marginal del capital:
$$
r_{35} = f'(k^*) = \alpha A k ^{\alpha-1}
$$
$$
r_{35} = 0.424 \cdot 840.59  \cdot 1476.60 ^{0.424-1} = 5.32
$$
La tasa de interés anual correspondiente es $r = (r_{35} + 1)^{1/35} - 1$
$$
r=0.054
$$
Entonces podemos compararlo con la tasa de crecimiento de la economía $g$:
$$
r=0.054>0.0114=g
$$
Podemos decir que es eficiente dinámicamente.

ii.
En este caso el presidente no puede desestimar su restricción porque es falso en este caso que "uno puede tener déficits para siempre y nunca tener que pagarlos." Sería cierto si $r<g$ porque aunque tenga déficits para siempre, su deuda va a converger a una proporción constante del producto. Como en nuestra economía $r>g$, el crecimiento del producto no será suficiente para cubrir los pagos de la deuda y debemos tenerlo en cuenta como una restricción. 


### d)
