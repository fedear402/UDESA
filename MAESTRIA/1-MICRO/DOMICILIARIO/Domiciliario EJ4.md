# UMP
$$
\max_{\mathbf{x}} \quad  x_{0}^{\alpha} \left( \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1-\alpha}{\rho}} \qquad  \text{sujeto a:} \quad   \sum_{i=0}^{L} p_{i}x_{i} \leq w
$$
Lagrangiano:
$$
\mathcal{L} = x_{0}^{\alpha} \left( \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1-\alpha}{\rho}}  + \lambda \left[ w - \sum_{i=0}^{L} p_{i}x_{i} \right] 
$$
Condiciones de primer orden:
Para el bien $x_{0}$:

$$
\frac{ \partial \mathcal{L} }{ \partial x_{0} } = \alpha x_{0}^{\alpha-1} \left( \left(  \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1}{\rho}} \right)^{1-\alpha} - \lambda p_{0} =0
$$
Para cualquier bien $j=1,2,\dots,L$:
$$
\frac{ \partial \mathcal{L} }{ \partial x_{j} }  = (1-\alpha) x_{0} ^{\alpha}\left( \left( \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1}{\rho}} \right)^{-\alpha} \frac{1}{\rho } \left( \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1}{\rho}-1} \rho a_{j} x_{j}^{\rho-1}  - \lambda p_{j} =0 
$$
Podemos dividir la condicion de un bien $j$ con la de un bien $k$:
$$
\frac{ \partial \mathcal{L} }{ \partial x_{j} } / \frac{ \partial \mathcal{L} }{ \partial x_{k} }  = \frac{p_{j}}{p_{k}} = \frac{a_{j}x_{j}^{\rho-1}}{a_{k} x_{k}^{\rho-1} } 
$$
$$
x_{j} = \left( \frac{p_{j}}{p_{k}} \frac{a_{k}}{a_{j}} \right)^{\frac{1}{\rho-1}} x_{k} \tag{1}
$$
Y dividiendo con respecto a la condición del bien $x_{0}$:
$$
\frac{ \partial \mathcal{L} }{ \partial x_{j} } / \frac{ \partial \mathcal{L} }{ \partial x_{0} }  = \frac{p_{j}}{p_{0}} = \frac{(1-\alpha) x_{0} ^{\alpha}\left( \left( \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1}{\rho}} \right)^{-\alpha} \frac{1}{\rho } \left( \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1}{\rho}-1} \rho a_{j} x_{j}^{\rho-1} }{\alpha x_{0}^{\alpha-1} \left( \left(  \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1}{\rho}} \right)^{1-\alpha} }
$$
$$
\implies\frac{p_{j}}{p_{0}} = \frac{1-\alpha}{\alpha} x_{0} a_{j}x_{j}^{\rho-1} \left( \sum_{i=1}^{L} a_{i} x_{i}^{\rho} \right)^{-1} 
$$
$$
\implies x_{0} = \frac{p_{j}}{p_{0}} \frac{\alpha}{1-\alpha} \frac{1}{a_{j}} \frac{1}{x_{j}^{\rho-1}}  \sum_{i=1}^{L} a_{i} x_{i}^{\rho} \tag{2}
$$
Reemplazando (2) en la restriccion presupuestaria, expresando $x_{0}$ con respecto a algun bien $k\geq1$:
$$
p_{k}\frac{\alpha}{1-\alpha} \frac{1}{a_{k}} \frac{1}{x_{k}^{\rho-1}}  \sum_{i=1}^{L} a_{i} x_{i}^{\rho} +\sum_{i=1}^{L} p_{i}x_{i} = w
$$
Reemplazando (1) para todos los bienes bien $i=1,2,\dots,L$: con respecto al mismo bien $k\geq1$:
$$\tiny
p_{k}\frac{\alpha}{1-\alpha} \frac{1}{a_{k}} \frac{1}{x_{k}^{\rho-1}}  \sum_{i=1}^{L} a_{i} \left[  \left( \frac{p_{i}}{p_{k}} \frac{a_{k}}{a_{i}} \right)^{\frac{1}{\rho-1}} x_{k} \right]^{\rho} +\sum_{i=1}^{L} p_{i}\left[  \left( \frac{p_{i}}{p_{k}} \frac{a_{k}}{a_{i}} \right)^{\frac{1}{\rho-1}} x_{k} \right]  = w
$$
$$\tiny
\implies \frac{\alpha}{1-\alpha} \frac{p_{k}}{a_{k}} \frac{1}{x_{k}^{\rho-1}}  x_{k}^{\rho}  \left( \frac{p_{k}}{a_{k}} \right) ^{-\frac{\rho}{\rho-1}}  \sum_{i=1}^{L} a_{i}^{1-\frac{\rho}{\rho-1}} p_{i}^{\frac{\rho}{\rho-1}} +
x_{k} \left( \frac{p_{k}}{a_{k}} \right) ^{-\frac{1}{\rho-1}}  \sum_{i=1}^{L} p_{i}^{1+\frac{1}{\rho-1}} a_{i}^{-\frac{1}{\rho-1}}  = w
$$

Le llamo $A=\sum_{i=1}^{L} a_{i}^{- \frac{1}{\rho-1}} p_{i}^{\frac{\rho}{\rho-1}}$

$$\tiny
\implies \frac{\alpha}{1-\alpha}  x_{k} \left( \frac{p_{k}}{a_{k}} \right) ^{1-\frac{\rho}{\rho-1}}  A +
x_{k} \left( \frac{p_{k}}{a_{k}} \right) ^{-\frac{1}{\rho-1}}  \sum_{i=1}^{L} p_{i}^{\frac{\rho}{\rho-1}} a_{i}^{-\frac{1}{\rho-1}}  = w
$$
$$\tiny
\implies  x_{k} \left( \frac{p_{k}}{a_{k}} \right) ^{1-\frac{\rho}{\rho-1}}  A \left( \frac{\alpha}{1-\alpha} +1 \right) = w
$$
$$
\implies \boxed{  x_{k}^{m}(\mathbf{p},w)=\frac{w(1-\alpha) a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}}    }{ A}} \tag{Marshaliana del bien $k\geq1$}
$$
Ahora, reemplazamos las marshalianas de los bienes $i=1,\dots,L$ en la restricción prespuestaria para obtener la marshaliana del bien 0. 
$$\tiny
 \sum_{k=1}^{L} p_{k} \left[ \frac{w(1-\alpha) a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}}    }{ A} \right] + p_{0}x_{0}  = w
$$
$$\tiny
w(1-\alpha) \left[ \frac{  \sum_{k=1}^{L}  a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{\rho}{\rho-1}}    }{ A} \right] + p_{0}x_{0}  = w
$$
$$
\boxed{x^{m}_{0}(\mathbf{p},w) = \frac{w}{p_{0}}\alpha}   \tag{Marshaliana del bien $0$}
$$
Ahora también podemos obtener la utilidad indirecta:
$$\tiny
V(\mathbf{p},w)=\left[  \frac{w}{p_{0}}\alpha \right] ^{\alpha} \left( \sum_{k=1}^{L} a_{k} \left[ \frac{w(1-\alpha) a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}}    }{ A} \right] ^{\rho} \right) ^{\frac{1-\alpha}{\rho}} 
$$
$$\tiny
V(\mathbf{p},w)=\left[  \frac{w}{p_{0}}\alpha \right] ^{\alpha} \left( [w(1-\alpha)]^{\rho}  \frac{ \sum_{k=1}^{L}  a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{\rho}{\rho-1}}    }{ \left[ A \right] ^{\rho}}  \right) ^{\frac{1-\alpha}{\rho}} 
$$
$$
\boxed{ V(\mathbf{p},w)=\left[  \frac{w}{p_{0}}\alpha \right] ^{\alpha} \left(  w(1-\alpha)  \left[ A \right] ^{\frac{1-\rho}{\rho}} \right) ^{1-\alpha} } \tag{Utilidad Indirecta}
$$


# EMP

$$
\min_{\mathbf{x}} \sum_{i=0}^{L} p_{i}x_{i}  \qquad  \text{sujeto a:} \quad   x_{0}^{\alpha} \left( \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1-\alpha}{\rho}}\geq \bar{u}
$$
Lagrangeano:
$$
\mathcal{L} = \sum_{i=0}^{L} p_{i}x_{i}   + \lambda \left[ \bar{u} - x_{0}^{\alpha} \left( \sum_{i=1}^{L} a_{i}x_{i}^{\rho} \right) ^{\frac{1-\alpha}{\rho}} \right] 
$$
Dividiendo las condiciones de primer orden obtenemos de nuevo (1) y (2). 

$$
x_{j} = \left( \frac{p_{j}}{p_{k}} \frac{a_{k}}{a_{j}} \right)^{\frac{1}{\rho-1}} x_{k} \tag{1}
$$
$$
x_{0} = \frac{p_{j}}{p_{0}} \frac{\alpha}{1-\alpha} \frac{1}{a_{j}} \frac{1}{x_{j}^{\rho-1}}  \sum_{i=1}^{L} a_{i} x_{i}^{\rho} \tag{2}
$$
Reemplazamos en la restricción del problema con respecto del bien $k$:
$$\tiny 
\left[  \frac{p_{k}}{p_{0}} \frac{\alpha}{1-\alpha} \frac{1}{a_{k}} \frac{1}{x_{k}^{\rho-1}}  \sum_{i=1}^{L} a_{i} \left[ \left( \frac{p_{i}}{p_{k}} \frac{a_{k}}{a_{i}} \right)^{\frac{1}{\rho-1}} x_{k}  \right] ^{\rho}  \right] ^{\alpha} \left( \sum_{i=1}^{L} a_{i} \left[ \left( \frac{p_{i}}{p_{k}} \frac{a_{k}}{a_{i}} \right)^{\frac{1}{\rho-1}} x_{k}  \right] ^{\rho} \right) ^{\frac{1-\alpha}{\rho}} = \bar{u}
$$
$$\tiny 
\left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)^{\alpha} \left( \frac{p_{k}}{a_{k}}  \right) ^{\alpha}  x_{k}^{-(\rho-1)\alpha}  \left( \sum_{i=1}^{L} a_{i} \left[ \left( \frac{p_{i}}{p_{k}} \frac{a_{k}}{a_{i}} \right)^{\frac{1}{\rho-1}} x_{k}  \right] ^{\rho} \right)^{\alpha} \left( \sum_{i=1}^{L} a_{i} \left[ \left( \frac{p_{i}}{p_{k}} \frac{a_{k}}{a_{i}} \right)^{\frac{1}{\rho-1}} x_{k}  \right] ^{\rho} \right) ^{\frac{1-\alpha}{\rho}} = \bar{u}
$$
$$\tiny 
\left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)^{\alpha} \left( \frac{p_{k}}{a_{k}}  \right) ^{\alpha}  x_{k}^{-(\rho-1)\alpha}   \left( \sum_{i=1}^{L} a_{i} \left[ \left( \frac{p_{i}}{p_{k}} \frac{a_{k}}{a_{i}} \right)^{\frac{1}{\rho-1}} x_{k}  \right] ^{\rho} \right) ^{\alpha+\frac{1-\alpha}{\rho}} = \bar{u}
$$
$$\tiny 
\left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)^{\alpha} \left( \frac{p_{k}}{a_{k}}  \right) ^{\alpha}  x_{k}^{-(\rho-1)\alpha}   \left(   x_{k}^{\rho}  \left( \frac{p_{k}}{a_{k}} \right)^{- \frac{\rho}{\rho-1}}    A   \right) ^{\alpha+\frac{1-\alpha}{\rho}} = \bar{u}
$$
$$\tiny 
\left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)^{\alpha} \left( \frac{p_{k}}{a_{k}}  \right) ^{\alpha-\frac{\rho}{\rho-1}(\alpha+\frac{1-\alpha}{\rho})}  x_{k}^{-(\rho-1)\alpha+\rho\left( \alpha+\frac{1-\alpha}{\rho} \right)}   \left(     A   \right) ^{\alpha+\frac{1-\alpha}{\rho}} = \bar{u}
$$
Ahora despejamos los exponentes y vemos que $\alpha-\frac{\rho}{\rho-1}\left( \alpha+\frac{1-\alpha}{\rho} \right)=\alpha-\frac{\rho \alpha}{\rho-1}-\frac{1}{\rho-1}+\frac{\alpha}{\rho-1}=-\frac{1}{\rho-1}$ y también que  $-(\rho-1)\alpha+\rho\left( \alpha+\frac{1-\alpha}{\rho} \right)=-\alpha \rho+\alpha+\rho \alpha+1-\alpha=1$. Llegamos a:
$$
\boxed{x_{k}^{h}(\mathbf{p},\bar{u})    = \bar{u} \frac{ a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}} }{\left(     A   \right) ^{\alpha+\frac{1-\alpha}{\rho}} }  \left( p_{0} \frac{1-\alpha}{\alpha} \right)^{\alpha}} \tag{Hicksiana del bien $k\geq1$}
$$
Reemplazando en la restricción, buscamos la hicksiana del bien 0: 
$$\tiny 
 x_{0}^{\alpha} \left( \sum_{k=1}^{L} a_{k}\left[ \bar{u} \frac{ a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}} }{\left(     A   \right) ^{\alpha+\frac{1-\alpha}{\rho}} }  \left( p_{0} \frac{1-\alpha}{\alpha} \right)^{\alpha} \right] ^{\rho} \right) ^{\frac{1-\alpha}{\rho}} = \bar{u}
$$
$$\tiny 
 x_{0}^{\alpha} \left( \bar{u}^{\rho} \left( p_{0} \frac{1-\alpha}{\alpha} \right)^{\alpha \rho}  \frac{ \sum_{k=1}^{L} a_{k}\left[   a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}}  \right]^{\rho}}{\left[ \left(     A   \right) ^{\alpha+\frac{1-\alpha}{\rho}}  \right]^{\rho}}  \right) ^{\frac{1-\alpha}{\rho}} = \bar{u}
$$
$$\tiny 
x_{0}^{\alpha} \left( \bar{u}^{\rho} \left( p_{0} \frac{1-\alpha}{\alpha} \right)^{\alpha \rho} \left( A  \right) ^{1 - \rho \left( \alpha+\frac{1-\alpha}{\rho} \right)}   \right) ^{\frac{1-\alpha}{\rho}} = \bar{u}
$$
$$
\tiny 
x_{0}^{\alpha} \bar{u}^{1-\alpha} \left( p_{0} \frac{1-\alpha}{\alpha} \right)^{\alpha (1-\alpha)} \left( A  \right) ^{\frac{(1-\rho)(1-\alpha)}{\rho}}  = \bar{u} 
$$
$$
\boxed{  x_{0}^{h}(\mathbf{p},\bar{u})   =   \bar{u} \left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)^{ 1-\alpha}  \left( A  \right) ^{-\frac{(1-\rho)(1-\alpha)}{\rho}} } \tag{Hicksiana del bien 0}
$$

Buscamos la Función de gasto:
$$\tiny 
e(\mathbf{p},\bar{u})=p_{0}  \bar{u} \left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)^{ 1-\alpha}  \left( A  \right) ^{-\frac{(1-\rho)(1-\alpha)}{\rho}} + \sum_{k=1}^{L} p_{k} \left[ \bar{u} \frac{ a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}} }{\left(     A   \right) ^{\alpha+\frac{1-\alpha}{\rho}} }  \left( p_{0} \frac{1-\alpha}{\alpha} \right)^{\alpha} \right] 
$$
 
$$\tiny 
e(\mathbf{p},\bar{u})=p_{0}  \bar{u} \left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)^{ 1-\alpha}  \left( A  \right) ^{-\frac{(1-\rho)(1-\alpha)}{\rho}} +\bar{u} \left(     A   \right) ^{(1-\alpha)(1-\rho)} \left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)^{-\alpha}
$$
$$
e(\mathbf{p},\bar{u})=  \boxed{\bar{u} \left(     A   \right) ^{(1-\alpha)(1-\rho)} \left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)^{-\alpha}\left[         p_{0}  \left( \frac{1}{p_{0}} \frac{\alpha}{1-\alpha} \right)  \left( A  \right) ^{-\frac{1}{\rho}} + 1 \right]}
$$
# Por separado - Utilidad
Elegimos $f(x)=\left( \sum_{i=1}^{L}a_{i}x_{i}^{\rho} \right)^{\frac{1}{\rho}}$
$$
\min \sum_{i=1}^{L} p_{i}x_{i}   \qquad  \text{sujeto a:} \quad   \left( \sum_{i=1}^{L}a_{i}x_{i}^{\rho} \right)^{\frac{1}{\rho}}\geq \bar{u}_{M}
$$
Dividiendo las CPO llegamos a (1) y reemplazamos en la restriccion:
$$
x_{j} = \left( \frac{p_{j}}{p_{k}} \frac{a_{k}}{a_{j}} \right)^{\frac{1}{\rho-1}} x_{k} \tag{1}
$$
$$
\left( \sum_{i=1}^{L}a_{i}\left[ \left( \frac{p_{i}}{p_{k}} \frac{a_{k}}{a_{i}} \right)^{\frac{1}{\rho-1}} x_{k} \right] ^{\rho} \right)^{\frac{1}{\rho}} = \bar{u}_{M}
$$
$$
x_{k} A^{\frac{1}{\rho} } \left( \frac{a_{k}}{p_{k}} \right)^{\frac{1}{\rho-1}} = \bar{u}_{M}
$$
Despejamos $x_{k}$ y tenemos la hicksiana del problema de la subutilidad
$$
\boxed{x_{k}^{hM} =  \bar{u}_{M}\frac{ a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}}    }{ A^{\frac{1}{\rho}}}}
$$
Y la función de valor es:
$$
e_{M}= \bar{u}_{M} A^{\frac{\rho-1}{\rho}}
$$
Ahora en el paso 2) resolvemos:
$$
\max \quad  x_{0}^{\alpha} \bar{u}_{M}^{1-\alpha}   \qquad  \text{sujeto a:} \quad  \bar{u}_{M} A^{\frac{\rho-1}{\rho}} + p_{0}x_{0} \leq w
$$
Las condiciones de primer orden:
$$
\frac{ \partial \mathcal{L} }{ \partial x_{0} } = \alpha x_{0}^{\alpha-1} \bar{u}_{M}^{1-\alpha} - \lambda p_{0}=0
$$
$$
\frac{ \partial \mathcal{L} }{ \partial \bar{u}_{M} } = (1-\alpha) x_{0}^{\alpha} \bar{u}_{M}^{-\alpha}  - \lambda A^{\frac{\rho-1}{\rho}}=0
$$
Las dividimos
$$
\frac{p_{0}}{A^{\frac{\rho-1}{\rho}}} =\frac{\alpha}{1-\alpha}  \frac{x_{0}^{\alpha-1} \bar{u}_{M}^{1-\alpha}}{  x_{0}^{\alpha} \bar{u}_{M}^{-\alpha} }
$$
Despejamos $x_{0}$:
$$
x_{0}=\bar{u}_{M} \frac{A^{\frac{\rho-1}{\rho}}}{p_{0}} \frac{\alpha}{1-\alpha}
$$
Reemplazamos en la restriccion
$$
\bar{u}_{M} A^{\frac{\rho-1}{\rho}} + p_{0}\left( \bar{u}_{M} \frac{A^{\frac{\rho-1}{\rho}}}{p_{0}} \frac{\alpha}{1-\alpha} \right)  = w
$$$$
\bar{u}_{M}=w\left[ A^{\frac{\rho-1}{\rho}} \left( \frac{\alpha}{1-\alpha}+1 \right) \right]^{-1}
$$
Reemplazamos en la hicksiana de la subutlidad:
$$
x_{k}^{hM} =  w\left[ A^{\frac{\rho-1}{\rho}} \left( \frac{1}{1-\alpha} \right) \right]^{-1} \frac{ a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}}    }{ A^{\frac{1}{\rho}}}
$$
$$
=\frac{ a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}}}{A} w(1-\alpha)= x^{m}_{k}
$$
Nos queda exactamente la marshaliana del UMP. 

# Por separado - Gasto:
Resolvemos
$$
\max  \left( \sum_{i=1}^{L}a_{i}x_{i}^{\rho} \right)^{\frac{1}{\rho}}  \qquad  \text{sujeto a:} \quad  \sum_{i=1}^{L} p_{i}x_{i} \leq w_{M}
$$
Nos queda (1) dividiendo las CPO, evaluando en la restriccion:
$$
\sum_{i=1}^{L} p_{i}\left[ \left( \frac{p_{i}}{p_{k}} \frac{a_{k}}{a_{i}} \right)^{\frac{1}{\rho-1}} x_{k} \right]  = w_{M}
$$
Despejamos la marshaliana del bien $k$ para la subutilidad:
$$
\frac{a_{k}^{^{-\frac{1}{\rho-1}}}p_{k}^{\frac{1}{\rho-1}}}{A}w_{M} = x_{k}^{mM}
$$
Y evaluamos para obtener la función de valor:
$$
v_{M}=\left( \sum_{k=1}^{L}a_{k}\left[ \frac{a_{k}^{^{-\frac{1}{\rho-1}}}p_{k}^{\frac{1}{\rho-1}}}{A}w_{M} \right] ^{\rho} \right)^{\frac{1}{\rho}} 
$$
$$
v_{M} = w_{M} A^{\frac{1-\rho}{\rho}}
$$Ahora resolvemos el problema:
$$
\min w_{M} + p_{0}x_{0} \qquad  sa \qquad x_{0}^{\alpha} (w_{M} A^{\frac{1-\rho}{\rho}})^{1-\alpha} \geq \bar{u}
$$
$$
\frac{ \partial \mathcal{L} }{ \partial w_{M} } = 1 - \lambda x_{0}^{\alpha} (1-\alpha) (w_{M} A^{\frac{1-\rho}{\rho}})^{-\alpha} A^{\frac{1-\rho}{\rho}}
$$
$$
\frac{ \partial \mathcal{L} }{ \partial x_{0} } = p_{0}-\lambda \alpha x_{0}^{\alpha-1} (w_{M}A^{\frac{1-\rho}{\rho}})^{1-\alpha}
$$
Las dividimos y obtenemos:
$$
p_{0} = \frac{\lambda \alpha x_{0}^{\alpha-1} (w_{M}A^{\frac{1-\rho}{\rho}})^{1-\alpha}}{ \lambda x_{0}^{\alpha} (1-\alpha) (w_{M} A^{\frac{1-\rho}{\rho}})^{-\alpha} A^{\frac{1-\rho}{\rho}}}
$$
$$
p_{0} = \frac{\alpha}{1-\alpha} \frac{1}{x_{0}} w_{M}
$$
$$
x_{0}=w_{M} \frac{\alpha}{1-\alpha} \frac{1}{p_{0}}
$$
Reemplazando en la restriccion:
$$
\left( w_{M} \frac{\alpha}{1-\alpha} \frac{1}{p_{0}} \right) ^{\alpha} (w_{M} A^{\frac{1-\rho}{\rho}})^{1-\alpha} = \bar{u}
$$
$$
w_{M} \left(  \frac{\alpha}{1-\alpha} \frac{1}{p_{0}} \right) ^{\alpha} ( A^{\frac{1-\rho}{\rho}})^{1-\alpha} = \bar{u}
$$
$$
w_{M}  = \bar{u} \left(  \frac{\alpha}{1-\alpha} \frac{1}{p_{0}} \right) ^{-\alpha} ( A^{\frac{1-\rho}{\rho}})^{-(1-\alpha)} 
$$
Evluamos en la marshaliana de la subutilidad:
$$
x_{k}^{mM} = \frac{a_{k}^{^{-\frac{1}{\rho-1}}}p_{k}^{\frac{1}{\rho-1}}}{A} \bar{u} \left(  \frac{\alpha}{1-\alpha} \frac{1}{p_{0}} \right) ^{-\alpha} ( A^{\frac{1-\rho}{\rho}})^{-(1-\alpha)}  
$$
Ahora vemos que $-\frac{1-\rho}{\rho}(1-\alpha)-1=-\alpha - \frac{1-\alpha}{\rho}$, reoredenamos y nos queda:
$$
x_{k}^{mM} =  \bar{u} \left(  \frac{\alpha}{1-\alpha} \frac{1}{p_{0}} \right) ^{-\alpha} \left(     A   \right) ^{-\alpha-\frac{1-\alpha}{\rho}} a_{k}^{^{-\frac{1}{\rho-1}}}p_{k}^{\frac{1}{\rho-1}}=x_{k}^{h} 
$$
$$
x_{k}^{mM} =\bar{u} \frac{ a_{k}^{^{-\frac{1}{\rho-1}}}  p_{k}^{\frac{1}{\rho-1}} }{\left(     A   \right) ^{\alpha+\frac{1-\alpha}{\rho}} }  \left( p_{0} \frac{1-\alpha}{\alpha} \right)^{\alpha} = x_{k}^{h}
$$
nos queda igual que la hicksiana del EMP.