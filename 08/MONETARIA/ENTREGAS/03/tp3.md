# Ejercicio 1

$\textbf{a)}$ 
El lagrangiano:
$$
\mathcal{L}=  \sum_{t=0}^{\infty} \mathbb{E}_{t} \left\{\beta^tU(c_{t})+\lambda_{t} \left[ P_{t}c_{t}+\sum_{j=1}^{N}Q_{j,t}A_{j,t}-P_{t}y_{t} -\sum_{j=1}^N X_{j,t}A_{j,t-1} \right] \right\} 
$$
Las CPO:
$$
\frac{ \partial \mathcal{L} }{ \partial c_{t} } =\beta^{t}U'(c_{t}) -\lambda_{t}P_{t}=0 \quad \to\quad  \beta^{t} \frac{U'(c_{t})}{P_{t}}=\lambda_{t}
$$
$$
\frac{ \partial \mathcal{L} }{ \partial A_{j,t} } =\lambda_{t}Q_{j,t}-\mathbb{E}_{t}\left[ \lambda_{t+1}X_{j,t+1}\right] =0  \quad \to\quad  \lambda_{t}Q_{j,t}=\mathbb{E}_{t}\left[ \lambda_{t+1}X_{j,t+1}\right]
$$
Reemplazamos la primer condición en la segunda:
$$
 \beta^{t} \frac{U'(c_{t})}{P_{t}}Q_{j,t}=\mathbb{E}_{t}\left[ \beta^{t+1} \frac{U'(c_{t+1})}{P_{t+1}}X_{j,t+1}\right]
$$
$\textbf{b)}$ 
Reordenamos las variables y llegamos a la condición de optimalidad de los activos financieros:
$$
 Q_{j,t}=\mathbb{E}_{t}\left[ \beta \frac{U'(c_{t+1})}{U'(c_{t})} \frac{P_{t}}{P_{t+1}}X_{j,t+1}\right]
$$
$$
 Q_{j,t}=\mathbb{E}_{t}\left[ sdf_{t+1}X_{j,t+1}\right]
$$
El precio que va a estar dispuesto pagar tiene que ser igual al retorno esperado en el siguiente periodo $X_{j,t+1}$ descontado la indiferencia temporal $\beta$, la tasa marginal de sustitución de consumo, $\frac{U'(c_{t+1})}{U'(c_{t})}$ y la inflación $\frac{P_{t}}{P_{t+1}}=\frac{1}{1+\pi_{t+1}}$. Esos tres componen el factor de descuento estocástico $sdf_{t}$. 

$\textbf{c)}$
Para un bono en pesos de un periodo, el factor de descuento estocástico que considera el consumidor se debe igualar al valor presente del pago futuro:
$$
 \frac{1}{1+i_{t}}=\mathbb{E}_{t}\left[ sdf_{t+1}\right]
$$
Para un bono en dólares de un periodo también se debe igualar al valor presente del pago futuro pero el factor de descuento estocástico además se corrige por la depreciación esperada:
$$
\frac{1}{1+i^*_{t}}=\mathbb{E}_{t}\left[ sdf_{t+1} \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}}\right]
$$
Un bono real de un periodo, queda el mismo factor de descuento pero no descuenta por la inflación, solo por la tasa de sustitución de consumo y la preferencia intertemporal:
$$
\frac{1}{1+r_{t}}=\mathbb{E}_{t}\left[ \beta \frac{U'(c_{t+1})}{U'(c_{t})} \right]
$$
Una acción,
$$
1=\mathbb{E}_{t}\left[ sdf_{t+1} \frac{\left( \mathcal{P}_{t+1} +\mathcal{D}_{t+1} \right)}{\mathcal{P}_{t}}\right]
$$
El producto del factor de descuento y el retorno bruto de la inversión se tienen que mover, en promedio, en conjunto. Que esa relación se mantenga va a depender de la correlación entre el retorno y el factor de descuento estocástico.

$\textbf{d)}$ 
Vamos a obtener la paridad de tasas locales $i_{t}$ y extranjeras $i_{t}^*$. Dividimos la CPO de los activos $Q_{j,t}=\mathbb{E}_{t}\left[ sdf_{t+1}X_{j,t+1}\right]$ evaluada en los bonos en pesos sobre la CPO evaluada en bonos en dólares:
$$
\frac{1}{\mathcal{E}_{t}}=\frac{\mathbb{E}_{t}\left[ sdf_{t+1}(1+i_{t})\right]}{\mathbb{E}_{t}\left[ sdf_{t+1}(1+i_{t}^*)\mathcal{E}_{t+1}\right]}
$$
Reordenamos y sacamos los valores conocidos en $t$ de la esperanza y tenemos que:
$$
\frac{\mathbb{E}_{t}\left[ sdf_{t+1} \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}} \right]}{E_{t} \left[ sdf_{t+1} \right]}=\frac{1+i_{t}}{1+i_{t}^*} 
$$
Se puede ver también así:
$$
\mathbb{E}_{t}\left[ sdf_{t+1}\right] (1+i_{t})= \mathbb{E}_{t}\left[ sdf_{t+1} \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}}\right] (1+i^*_{t})
$$
Eso nos dice que el retorno bruto de la inversión en pesos descontada por el factor de descuento estocástico debe igualar el retorno bruto de la inversión en pesos descontado por un factor de descuento estocástico que contempla la depreciación esperada.

Descomponemos la esperanza del producto y vemos que
$$
\frac{ 1+i_{t} }{1+i^*_{t}}  =\frac{E_{t}\left[ sdf_{t+1}   \right]  \cdot E_{t}\left[  \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}} \right] }{E_{t} \left[ sdf_{t+1} \right]} + \frac{\mathbb{COV}_{t}\left[ sdf_{t+1} ,\frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}}\right] }{E_{t} \left[ sdf_{t+1} \right]}
$$
$$
\underbrace{\frac{ 1+i_{t} }{1+i^*_{t}}  }_{\text{Diferencial de Tasas/Indiferencia}}=\underbrace{\frac{E_{t}\left[ \mathcal{E}_{t+1} \right]}{\mathcal{E}_{t}} }_{\text{Depreciación Esperada}}  + \underbrace{\frac{\mathbb{COV}_{t}\left[ sdf_{t+1} ,\frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}}\right] }{E_{t} \left[ sdf_{t+1} \right]}}_{\text{Prima de riesgo de la moneda local}} 
$$
La prima de riesgo y su signo la va a determinar $\mathbb{COV}_{t}\left[ sdf_{t+1} ,\frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}}\right]$. 

$\mathbf{e})$
Usando las ecuaciones que derivamos,
$$
\frac{1}{1+i_{t}}=\mathbb{E}_{t}\left[ sdf_{t+1}\right]
$$
$$
\frac{1}{1+r_{t}}=\mathbb{E}_{t}\left[ \beta \frac{U'(c_{t+1})}{U'(c_{t})} \right]
$$
Dividimos una por la otra y obtenemos esta relación entre la tasa nominal y real:
$$
\frac{1+i_{t}}{1+r_{t}}=\frac{\mathbb{E}_{t}\left[ \beta \frac{U'(c_{t+1})}{U'(c_{t})} \right]}{\mathbb{E}_{t}\left[ sdf_{t+1}\right]}
$$
La ecuación de Fisher decía que el retorno real tiene que ser el retorno nominal descontado por inflación: $1+r_{t}=\frac{1+i_{t}}{1+\pi_{t+1}} \quad \to \quad \frac{1}{1+\pi_{t+1}}=\frac{1+r_{t}}{1+i_{t}}$. Si reemplazamos la forma de la $sdf_{t+1}$:
$$
\frac{1+i_{t}}{1+r_{t}}=\frac{\mathbb{E}_{t}\left[ \beta \frac{U'(c_{t+1})}{U'(c_{t})} \right]}{\mathbb{E}_{t}\left[ \beta \frac{U'(c_{t+1})}{U'(c_{t})} \frac{P_{t}}{P_{t+1}}\right]}
$$
$$
\frac{1+i_{t}}{1+r_{t}}=\frac{\mathbb{E}_{t}\left[ \beta \frac{U'(c_{t+1})}{U'(c_{t})} \right]}{\mathbb{E}_{t}\left[ \beta \frac{U'(c_{t+1})}{U'(c_{t})} \frac{1}{1+\pi_{t+1}}\right]}
$$
O también:
$$
\frac{1+i_{t}}{1+r_{t}}=\frac{\mathbb{E}_{t}\left[ sdf_{t+1} (1+\pi_{t+1}) \right]} {\mathbb{E}_{t}\left[sdf_{t+1}\right]}
$$
Es decir, la ecuación de Fisher se cumple con un ajuste por las preferencias
$$
\frac{1+i_{t}}{1+r_{t}}=\frac{\mathbb{E}_{t}\left[  \frac{U'(c_{t+1})}{U'(c_{t})} \right]}{\mathbb{E}_{t}\left[ \frac{U'(c_{t+1})}{U'(c_{t})} \right] \mathbb{E}_{t}\left[ \frac{1}{1+\pi_{t+1}} \right] +\mathbb{COV}_{t}\left[ \frac{U'(c_{t+1})}{U'(c_{t})} , \ \frac{1}{1+\pi_{t+1}} \right]  } 
$$
$$
\frac{1+r_{t}}{1+i_{t}}=\mathbb{E}_{t}\left[ \frac{1}{1+\pi_{t+1}} \right]  + \frac{\mathbb{COV}_{t}\left[ \frac{U'(c_{t+1})}{U'(c_{t})} , \ \frac{1}{1+\pi_{t+1}} \right]}{\mathbb{E}_{t}\left[ \frac{U'(c_{t+1})}{U'(c_{t})} \right] } 
$$
Sin la corrección del lado derecho, tenemos la ecuación de Fisher que dice que aumenta la tasa real relativa a la tasa nominal en la medida que decrece la tasa esperada de inflación; la inversión real no pierde tanto valor por el cambio en los precios. Visto de otra forma, la tasa nominal es menor mientras menor es la inflación porque tiene que compensar menos el cambio en los precios. 
Con este modelo puede no suceder eso con igualdad. En particular, si se espera que la inflación aumente la tasa a la que sustituye consumo futuro por el presente (lo cual es esperable, sería una relación estilo curva de Philips/demanda agregada), la covarianza va a ser negativa. Por ende, el efecto que tiene la inflación en el consumo mitiga el efecto negativo (positivo) que tiene la inflación sobre la tasa real (nominal). 

$\mathbf{f})$
En el caso sin el ajuste, tenemos la relación de Fisher tradicional $\frac{1+r_{t}}{1+i_{t}}=\mathbb{E}_{t}\left[ \frac{1}{1+\pi_{t+1}} \right]$, la cual se puede expresar en logaritmos (tomando $\log(1+x)≈x$) como:
$r_{t}-i_{t}=-\pi_{t+1}^e$
$i_{t}-r_{t}=\pi_{t+1}^e$
Por lo que sin el término de corrección no sería una medida bastante acertada de la expectativa de inflación. Sin embargo, si las decisiones de consumo intertemporales de los agentes son muy sensibles a la inflación, la diferencia está muy sesgada y la información no sería correcta de interpretar completamente como la expectativa de inflación. 

$\mathbf{g})$
Vemos que en esta ecuación 
$$
sdf_{t, t+h}=\beta^h\frac{ U'(c_{t+h})}{U'(c_{t}) } \frac{P_{t}}{P_{t+h}}= \overbrace{ \beta  \frac{  U'(c_{t+1})}{U'(c_{t})} \frac{P_{t}}{P_{t+1}} }^{sdf_{t+1}} \cdot \overbrace{ \beta  \frac{U'(c_{t+2})}{U'(c_{t+1})} \frac{P_{t+1}}{P_{t+2}} }^{sdf_{t+2}} \cdot \dots \cdot \overbrace{ \beta  \frac{U'(c_{t+H})}{U'(c_{t+H-1})} \frac{P_{t+H-1}}{P_{t+H}} }^{sdf_{t+H}} 
$$
Del lado derecho se pueden cancelar los términos en el numerador de la utilidad en $sdf_{t-1}$ con el de $sdf_{t}$ para todos los $sdf$. Al igual que los precios en el numerador de $sdf_{t}$ con el denominador de $sdf_{t-1}$. 
$$
\beta^h\frac{ U'(c_{t+h})}{U'(c_{t}) } \frac{P_{t}}{P_{t+h}}= \overbrace{ \beta  \frac{ \cancel{ U'(c_{t+1}) }   }{U'(c_{t})} \frac{P_{t}}{ \cancel {P_{t+1} } }  }^{sdf_{t+1}} \cdot \overbrace{ \beta  \frac{U'(c_{t+2})}{  \cancel{ U'(c_{t+1}) } } \frac{\cancel {P_{t+1} } }{P_{t+2}} }^{sdf_{t+2}} \cdot \dots \cdot \overbrace{ \beta  \frac{U'(c_{t+H})}{\cancel{U'(c_{t+H-1})}} \frac{  \cancel{P_{t+H-1}}}{P_{t+H}} }^{sdf_{t+H}} 
$$
$$
\beta^h\frac{ U'(c_{t+h})}{U'(c_{t}) } \frac{P_{t}}{P_{t+h}}= \beta^h\frac{ U'(c_{t+h})}{U'(c_{t}) } \frac{P_{t}}{P_{t+h}}
$$
En el medio usamos que para todos los productos $sdf_{t}$ y $sdf_{t-1}$ se cancelaban los términos. En general pasa para el factor acumulado hasta cualquier $G$ y el factor entre $G$ y un $H$ siguiente.
$$
sdf_{t, t+H}=\beta^H\frac{ U'(c_{t+H})}{U'(c_{t}) } \frac{P_{t}}{P_{t+H}}= \overbrace{ \beta^G  \frac{  U'(c_{t+G})}{U'(c_{t})} \frac{P_{t}}{P_{t+G}} }^{sdf_{t, t+G}} \cdot \overbrace{ \beta^{H-G}  \frac{U'(c_{t+H})}{U'(c_{t+G})} \frac{P_{t+G}}{P_{t+H}} }^{sdf_{t+G,t+H}}
$$

$\mathbf{h})$
La ecuación fundamental tiene la forma:
$$\mathcal{P}_{t}=\mathbb{E}_{t}\left[ sdf_{t+1} (\mathcal{P}_{t+1} +\mathcal{D}_{t+1} )\right]$$
Iteramos uno y dos periodo hacia adelante:
$$\mathcal{P}_{t+1}=\mathbb{E}_{t+1}\left[ sdf_{t+2} (\mathcal{P}_{t+2} +\mathcal{D}_{t+2} )\right]$$
$$\mathcal{P}_{t+2}=\mathbb{E}_{t+2}\left[ sdf_{t+3} (\mathcal{P}_{t+3} +\mathcal{D}_{t+3} )\right]$$
Reemplazamos la forma iterada un periodo hacia adelante, en $t+1$, dentro de la original en $t$:
$$\mathcal{P}_{t}=\mathbb{E}_{t}\left[ sdf_{t+1} ( \left\{ \mathbb{E}_{t+1}\left[ sdf_{t+2} (\mathcal{P}_{t+2} +\mathcal{D}_{t+2} )\right] \right\}  +\mathcal{D}_{t+1} )\right]$$
Distribuimos y tenemos:
$$\mathcal{P}_{t}=\mathbb{E}_{t}\left[ sdf_{t+1} \mathbb{E}_{t+1}\left[ sdf_{t+2} \mathcal{P}_{t+2} + sdf_{t+2} \mathcal{D}_{t+2} \right]  \right]  + \mathbb{E}_{t}\left[ sdf_{t+1} D_{t+1}\right] $$
Por la LEI, la primera esperanza la podemos descartar
$$\mathcal{P}_{t}=\mathbb{E}_{t}\left[ sdf_{t+1} sdf_{t+2} (\mathcal{P}_{t+2} +  \mathcal{D}_{t+2} )\right]  + \mathbb{E}_{t}\left[ sdf_{t+1} D_{t+1}\right]$$
Como mostramos antes, $sdf_{t+1} sdf_{t+2}=sdf_{t,t+2}$. Reemplazamos $\mathcal{P}_{t+2}$:
$$\mathcal{P}_{t}=\mathbb{E}_{t}\left[ sdf_{t,t+2} (\left\{ \mathbb{E}_{t+2}\left[ sdf_{t+3} (\mathcal{P}_{t+3} +\mathcal{D}_{t+3} )\right] \right\}  +  \mathcal{D}_{t+2} )\right]  + \mathbb{E}_{t}\left[ sdf_{t+1} D_{t+1}\right]$$
Con el mismo procedimiento, distribuimos, usamos LEI y llegamos a:
$$\mathcal{P}_{t}=\mathbb{E}_{t}\left[ sdf_{t,t+3}  (\mathcal{P}_{t+3} +\mathcal{D}_{t+3} ) \right] + \mathbb{E}_{t}\left[ sdf_{t,t+2}   \mathcal{D}_{t+2} \right]    + \mathbb{E}_{t}\left[ sdf_{t+1} D_{t+1}\right]$$
$$\mathcal{P}_{t}=\mathbb{E}_{t}\left[ sdf_{t,t+3}  \mathcal{P}_{t+3}  \right] + \mathbb{E}_{t} \left[ sdf_{t,t+3} \mathcal{D}_{t+3}  \right]   + \mathbb{E}_{t}\left[ sdf_{t,t+2}   \mathcal{D}_{t+2} \right]    + \mathbb{E}_{t}\left[ sdf_{t+1} D_{t+1}\right]$$
Siguiendo el patrón hasta la iteración $H$, 
$$\mathcal{P}_{t}=\mathbb{E}_{t}\left[ sdf_{t,t+H} \mathcal{P}_{t+H}   \right] + \sum_{h=1}^{H} \mathbb{E}_{t}\left[ sdf_{t,t+h}   \mathcal{D}_{t+h} \right]  $$
Cuando $H$ tiende a infinito,
$$\mathcal{P}_{t}= \underbrace{ \lim_{ h \to \infty }  \mathbb{E}_{t}\left[ sdf_{t,t+h}  \mathcal{P}_{t+h}  \right] }_{=0 \ \to\text{ No Bubbles}}+ \sum_{h=1}^{\infty} \mathbb{E}_{t}\left[ sdf_{t,t+h}   \mathcal{D}_{t+h} \right]  $$
 Asumiendo $\lim_{ h \to \infty }  \mathbb{E}_{t}\left[ sdf_{t,t+h}  \mathcal{P}_{t+h}  \right]=0$, que es la "no bubbles condition" del modelo simple de demanda de dinero, tenemos la expresión que buscábamos

$\mathbf{i})$
En el contexto de esta condición, llegamos a esa conclusión asumiendo que el precio no puede aumentar tanto que (a pesar de una tasa de descuento que al infinito debería ser casi 0) ese término sea positivo y se quiera vender el activo para obtener renta por el precio mayor de venta. Nos deja con que el precio hoy de la acción debe ser el valor presente de los dividendos descontados. La frase enfatiza un enfoque en los flujos de fondos ignorando el posible retorno por la compra-venta del activo.

$\mathbf{j})$
i. El factor de descuento de ese bono sería $\frac{1}{1+i_{t,t+h}}$ entonces se iguala al factor de descuento estocástico esperado $\mathbb{E}_{t}\left[ sdf_{t,t+h}\right]$. Sabíamos que por la optimización de un agente la ecuación para valuar activos es
$$
 Q_{j,t}=\mathbb{E}_{t}\left[ sdf_{t,t+h}X_{j,t,t+h}\right]
$$
Si pagamos $1$ hoy, y el pago es $1+i_{t,t+h}$,
$$
1=\mathbb{E}_{t}\left[ sdf_{t, t+h}(1+i_{t,t+h})\right]
$$
Si conocemos el pago cierto $i$
$$
\frac{1}{(1+i_{t,t+h})}=\mathbb{E}_{t}\left[ sdf_{t, t+h}\right]
$$
ii.
Usando esta expresión:
$$
\mathcal{P}_{t}=  \sum_{h=1}^{\infty} \mathbb{E}_{t}\left[ sdf_{t,t+h}   \mathcal{D}_{t+h} \right]  
$$
La descomponemos usando la covarianza
$$
\mathcal{P}_{t}=  \sum_{h=1}^{\infty} \mathbb{E}_{t}\left[ sdf_{t,t+h}   \right]  \mathbb{E}_{t} \left[ \mathcal{D}_{t+h} \right]  + \sum_{h=1}^{\infty} \mathbb{COV}_{t} \left[ sdf_{t,t+h}  , \  \mathcal{D}_{t+h} \right]  
$$
Si reemplazamos $\frac{1}{(1+i_{t,t+h})}=\mathbb{E}_{t}\left[ sdf_{t, t+h}\right]$
$$
\mathcal{P}_{t}=  \sum_{h=1}^{\infty}   \frac{\mathbb{E}_{t}\left[ \mathcal{D}_{t+h} \right]}{1+i_{t,t+h}}  +\underbrace{  \sum_{h=1}^{\infty} \mathbb{COV}_{t} \left[ sdf_{t,t+h}  , \  \mathcal{D}_{t+h} \right]  }_{RiskAdj}
$$
iii.
El factor de descuento es alto cuando prefiere consumir hoy antes que mañana, o cuando se espera una inflación alta. En esos momentos el agente quisiera recibir dividendos para cubrir un posible mayor "hambre" de consumo en el futuro. Un activo que cuenta con esa correlación positiva va a ser más deseable y por ende más caro.

# Ejercicio 2

$\textbf{a)}$ 
Buscamos una expresión de la dinámica del dinero en términos reales, desarrollamos la expresión de $\dot{m}_{t}$
$$
\dot{m}_{t}=\frac{ \partial \left( \frac{M_{t}}{E_{t}} \right) }{ \partial t }
$$
$$
\dot{m}_{t}= \frac{\frac{ \partial M_{t} }{ \partial t } E_{t} - \frac{ \partial E_{t} }{ \partial t } M_{t}} {E_{t}^2}
$$
$$
\dot{m}_{t}= \frac{\dot{M_{t}}}{E_{t}} -\frac{\dot{E_{t}}}{E_{t}} m_{t}
$$
$$
\dot{m}_{t}=\frac{\dot{M_{t}}}{E_{t}} - \epsilon_{t} m_{t}
$$
Dividimos la restricción nominal por $E_{t}$:
$$
\frac{\dot{M_{t}}}{E_{t}} =y+\tau_{t}-c_{t}
$$
Ahora usamos $\dot{m}_{t}=\frac{\dot{M_{t}}}{E_{t}} - \epsilon_{t} m_{t}$
$$
\dot{m}_{t}+\epsilon_{t} m_{t}=y+\tau_{t}-c_{t}
$$
$$
\dot{m}_{t}=y+\tau_{t}-c_{t}-\epsilon_{t} m_{t}
$$
Planteamos el Hamiltoniano:
$$
H=\ln c_{t}+\ln m_{t} + \lambda_{t} \left[ y+\tau_{t}-c_{t}-\epsilon_{t} m_{t} \right] 
$$
Tenemos que encontrar el óptimo respecto de la variable de control $c_{t}$ y la variable de estado $m_{t}$. Para eso, necesitamos que se cumplan las condiciones:
$$
\frac{ \partial H }{ \partial c_{t} } =0
$$
y $$
\frac{ \partial H }{ \partial m_{t} } =-\dot{\lambda_{t}}+\rho \lambda _{t}
$$
Reemplazando la primera obtenemos
$$
\frac{1}{c_{t}}-\lambda_{t}=0 \quad \to \quad \lambda_{t}=\frac{1}{c_{t}}
$$
Notamos que $\dot{\lambda}_{t}=-c_{t}^{-2}\dot{c_{t}}$. Entonces, podemos expresar la segunda condición como
$$
\frac{1}{m_{t}} - \frac{1}{c_{t}} \epsilon_{t}=c_{t}^{-2}\dot{c_{t}}+\rho \frac{1}{c_{t}}
$$
Multiplico ambos lados por $c_{t}^2$
$$
\frac{c_{t}^2}{m_{t}} -c_{t} \epsilon_{t}=\dot{c_{t}}+\rho c_{t}
$$
Despejamos y obtenemos:
$$
\dot{c_{t}}=\frac{c_{t}^2}{m_{t}} -c_{t}(\epsilon+\rho)
$$
$\textbf{b)}$ 
Incluimos $\tau_{t}=\epsilon_{t} m_{t}$ en la restricción:
$$
\dot{m}_{t}=y+\tau_{t}-c_{t}-\epsilon_{t} m_{t}
$$
$$
\dot{m}_{t}=y+\epsilon_{t} m_{t}-c_{t}-\epsilon_{t} m_{t}
$$
$$
\dot{m}_{t}=y-c_{t}
$$
Este es el ahorro nacional y en este modelo es igual al cambio en las reservas del banco central y al cambio en los saldos reales, porque esta emisión se usa solo para tener más reservas en lugar de financiar al gobierno u otra cosa. Se puede ver desde la perspectiva de la balanza de pagos que si se consume más que lo producido $y$, se pierden reservas porque se están usando para pagar importaciones.

$\textbf{c)}$ 
La importante diferencia con el modelo simple sin controles es que el dinero no es neutral y no hay señoreaje: no hay que financiar al gobierno. Sin controles, un cambio en niveles (una devaluación inesperada) con expectativas constantes aumenta el señoreaje y no afecta las variables reales. En el modelo de Calvo eso produce una mejora en la balanza de pagos porque reduce el consumo. En cuanto a un cambio anticipado en la tasa, el modelo sin controles aumentaba la tasa de interés lo cual reducía el señoreaje. En este modelo continuo vemos que se afecta el sendero de consumo con un aumento en la tasa de depreciación:
$$
\frac{ \partial \dot{c}_{t} }{ \partial \epsilon } =-c_{t}<0
$$
Reduce el crecimiento del consumo. Calvo argumenta que para que el consumo en equilibrio sea el mismo deben bajar los saldos reales $m$ y empeora la balanza de pagos.

$\textbf{d)}$ 
Las variables reales (consumo, producto) están afectadas por el cambio en la base monetaria, por lo que es super-neutral (y neutral), como argumentamos antes. Esto es diferente del modelo discreto sin controles, en el cual ni un cambio en niveles ni un cambio en la tasa de $\epsilon$ afectaba variables reales

$\textbf{e)}$ 
Se implementó un cambio en el nivel y en la tasa del tipo de cambio. Dijimos que esto debe empeorar el sendero de equilibrio de los saldos reales que siguen exactamente a las reservas. La realidad implicaría que pasó lo opuesto. Se podría explicar porque el producto está dado en el modelo y el canal es la decisión de consumo de los agentes que ahorran o consumen importaciones. Si se modela aparte la dinámica de las reservas se podría incorporar el mecanismo de aumento a través de las decisones de producción

$\textbf{f)}$ 
En este modelo el tipo de cambio es el nivel de precios local, por lo que acelerar esa tasa aceleraría la inflación o frenaría su desaceleración.  Esta política empeora la balanza comercial y las reservas por medio de la baja en los saldos reales
