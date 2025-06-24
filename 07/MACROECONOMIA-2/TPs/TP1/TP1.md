\section*{1 Evidencia empírica: discusión} 

La diferencia en el ingreso y el crecimiento que existe entre países es el resultado de muchos factores y el modelo neoclásico de Solow por sí solo, en su forma estándar, no logra explicarlas por completo. Por este motivo, diversas modificaciones se han hecho al modelo y algunos han planteado que modelos neoclásicos con tecnología exógena no son convenientes para explicar las diferencias de ingreso per cápita entre países. Un punto central en ese debate es la importancia relativa que se le debería asignar al progreso tecnológico y a la acumulación capital. 

Campante, Sturzenegger y Velasco (CSV, 2021) clasifican tres medidas de 'bondad de ajuste' del modelo neoclásico dada la evidencia empírica sobre las diferencias de ingreso per cápita entre países, las cuales encapsulan las distintas posiciones respecto al dilema de productividad vs capital. Estas son: contabilidad de crecimiento (propuesto por Solow, mide el la contribución del progreso tecnológico sobre el crecimiento como el residuo una vez contabilizadas las contribuciones al crecimiento del trabajo y del capital), regresiones de crecimiento y calibración.

En cuanto a regresiones de crecimiento, un trabajo muy importante es el de Mankiw, Romer, Weil (MRW, 1992). Ellos usan mínimos cuadrados ordinarios con una base de datos de varios países para medir el efecto de la acumulación de capital usando modelo de Solow estándar (buscan ver si eso explica la diferencia en ingresos entre países) y obtienen resultados que confirmarían a Solow. Luego corren la regresión incluyendo capital humano y el ajuste es todavía mejor, al igual que son más cercanos los parámetros del retorno a los factores ($\alpha$) a lo esperado.  Notablemente, la regresión del modelo aumentado con capital humano resulta en un $R^2$ de 78%. Sin embargo, CSV notan que usar MCO no sería adecuado si dejan el progreso tecnológico como variable omitida en el error, ya que probablemente está correlacionada con la acumulación del capital, sesgando la bondad de ajuste.

Por otro lado, CSV hablan de calibración y se refieren, por ejemplo, al trabajo de Hall y Jones (HJ, 1999). Con un enfoque diferente, encuentran cómo en el largo plazo los países logran altos niveles de producción por trabajador porque alcanzan altas tasas de inversión en capital físico y humano, y porque utilizan estos insumos con un alto nivel de productividad. Enfatizan especialmente cómo las diferencias en la infraestructura social entre países causan grandes diferencias en la acumulación de capital, logros educativos y productividad, y por lo tanto grandes diferencias en el ingreso. Estas diferencias están asociadas con el grado de influencia que tuvo Europa Occidental sobre sus instituciones. Utilizando la distancia desde el ecuador y datos de idioma, concluyen que son las diferencias en la infraestructura social las culpables de grandes diferencias en el ingreso. Sus resultados son robustos ante error de medición y endogeneidad.

Por otro lado, Klenow & Rodriguez-Clare (KR, 1997) toman la posición aún más contraria al modelo neoclásico. La crítica principal es sobre la medida usada de capital humano y argumentan que con mejores medidas de capital humano se concluiría que el modelo neoclásico es inútil para explicar diferencias entre países. El enfoque se podría clasificar también como de calibración (aunque CSV no menciona este paper), ya que en lugar de utilizar MCO tratan de ajustar los parámetros para medir los efectos dados esos parámetros.



\section*{2 Definiciones de conceptos}
\subsection*{a) Función de producción neoclásica}
Las funciones de producción neoclásicas satisfacen tres condiciones: $I)$ El producto marginal a cada factor es decreciente $II)$ Los retornos constantes a escala (homogeneidad de grado 1) $III)$ Las condiciones de Inada: cuando un factor tiende a 0, su productividad marginal tiende a infinito y viceversa; cuando un factor tiende a infinito su productividad marginal tiende a 0.

\subsection*{b) Sendero de crecimiento balanceado}
El sendero de crecimiento balanceado en el modelo de Solow es la ruta que sigue una economía hacia su equilibrio estable a largo plazo. En este punto, el crecimiento las variables per cápita (no así las agregadas) se mantiene constante. Esto sucede cuando la inversión compensa exactamente la depreciación del capital per cápita tal que no aumente por mucho ahorro o decrezca por la elevada depreciación. 

\subsection*{c) La regla dorada}
La regla dorada surge de la idea de que distintos niveles de ahorro llevan a distintos valores en el sendero de crecimiento balanceado. En particular, describe el nivel de ahorro que maximiza el consumo (tomado por Solow como medida del bienestar) en el largo plazo en una economía. En el modelo, es cuando la depreciación del capital es igual al producto marginal del capital de estado estacionario. 

\subsection*{d) Ineficiencia dinámica}
Hay infinitos niveles de capital para los cuales la economía está en un sendero de crecimiento balanceado. Pero no todos están en el (único) nivel de capital de la regla dorada. Todos aquellos niveles (ya donde se acumulo demasiado capital o donde no se acumuló el suficiente tal que se maximice el consumo) son dinámicamente ineficientes.

\section*{3 Solow con función de producción CES}
\subsection*{a)}
Es homogénea de grado 1 si se cumple que:
$$
hF(K,L)=F(hK,hL)
$$
para cualquier $h > 1$. Lo demostramos de la siguiente manera:
$$
hF(K,L)=hA[K^\phi+L^\phi]^{1/\phi}
$$
$$(h^\phi)^{1/\phi}A[K^\phi+L^\phi]^{1/\phi}$$
$$A[(h^\phi)(K^\phi+L^\phi)]^{1/\phi}$$
$$A[(h^\phi K)^\phi+(h^\phi L)^\phi)]^{1/\phi}$$
$$A[(hK)^\phi+(hL)^\phi)]^{1/\phi}=F(hK,hL)$$
Para expresar la función de producción en términos per-cápita simplemente usamos $h=\frac{1}{L}$ y nos queda
$$A[k^\phi+1]^{1/\phi}$$

\subsection*{b)}
En equilibrio, la remuneración a los factores es igual al producto marginal, entonces el salario agregado $W$ sería:
$$W=\frac{\partial Y}{\partial L}$$
$$W= A \frac{1}{\phi} [K^\phi+L^\phi]^{\frac{1}{\phi} - 1}\phi L^{\phi-1}$$
$$W=A\frac{[K^\phi+L^\phi]^{\frac{1}{\phi}}}{[K^\phi+L^\phi]} \frac{L^{\phi}}{L}$$
Esto se puede simplificar de esta manera sabiendo que $Y=A[K^\phi+L^\phi]^{\frac{1}{\phi}}$:
Elevo el término $[K^\phi+L^\phi]$ en $\frac{1}{\phi}\phi$. Además, multiplico y divido A. (Todo sigue igual)

$$W=A \frac{A}{A} \frac{[K^\phi+L^\phi]^{\frac{1}{\phi}}}{([K^\phi+L^\phi]^{1/\phi})^{\phi}} \frac{L^{\phi}}{L}$$
Ahora expreso el término $A$ que agregué en el denominador como $A^{1-\phi}A^{\phi}$
$$W=A \frac{A}{A^{1-\phi}A^{\phi}} \frac{[K^\phi+L^\phi]^{\frac{1}{\phi}}}{([K^\phi+L^\phi]^{1/\phi})^{\phi}} \frac{L^{\phi}}{L}$$
Observamos que hay un término $A$ elevado en $\phi$ y también e lo está el término $([K^\phi+L^\phi]^{1/\phi})$, puedo juntarlos
$$W=A \frac{A}{A^{1-\phi}} \frac{[K^\phi+L^\phi]^{\frac{1}{\phi}}}{(A[K^\phi+L^\phi]^{1/\phi})^{\phi}} \frac{L^{\phi}}{L}$$
Ahora, simplemente reexpreso usando $Y=A[K^\phi+L^\phi]^{\frac{1}{\phi}}$ en el denominador y en el nominador.
$$W=A \frac{1}{A^{1-\phi}} \frac{Y}{(Y)^{\phi}} \frac{L^{\phi}}{L}=\frac{Y}{L} \left(\frac{AL}{Y}\right)^{\phi}
$$
Re-ordenando los términos:

$$W=A^{\phi}\left(\frac{Y}{L}\right)^{1-\phi}$$
Similarmente, obtenemos el retorno al capital R:
$$R=A^{\phi}\left(\frac{Y}{K}\right)^{1-\phi}$$
Para el caso per-cápita, esperamos que los productos marginales sean la división de los factores en fórmulas encontradas por $L$. (Es decir, $w=A^{\phi}y^{1-\phi}$ para el salario y $r=A^{\phi}\left(\frac{y}{k}\right)^{1-\phi}$ para la renta del capital). Lo demostramos a continuación:
\newline
tenemos que $$y=f(k)=A[k^{\phi}+1]^{1/\phi}$$
El producto marginal del capital es $f'(k)$ y en equilibrio es igual a la renta del capital $r$.
$$
f'(k)=A \frac{1}{\phi} \left[ k^{\phi} +1 \right] ^{\frac{1}{\phi}-1} \phi k^{\phi-1}
$$
Con el mismo procedimiento que el que usamos para el salario en el caso agregado llegamos a esta expresión:
$$
f'(k)=A^{\phi} \frac{y}{y^{\phi}} \frac{k^{\phi}}{k}=\frac{y}{k} \left( \frac{k}{y} \right) ^{\phi} A^{\phi}
$$
$$
r=\left( \frac{y}{k} \right) ^{1-\phi} A^{\phi}
$$
Ahora para el salario debemos encontrar la diferencia entre el producto per capita y el producto marginal por el capital per capita. $w=f(k)-kf'(k)$.
$$
w=y-k\left[ A^{\phi} \frac{y}{y^{\phi}} \frac{k^{\phi}}{k} \right] = y-k^{\phi} A^{\phi} y^{1-\phi} 
$$
$$
w=\left( \frac{y}{A^{\phi}y^{1-\phi}}-k^{\phi} \right) A^{\phi} y^{1-\phi}
$$
Ahora expando las expresiones de $y$ y cancelo términos similares.
$$
w=\left( \frac{A\left[ k^{\phi} + 1 \right]^{1/\phi}}{A^{\phi} \frac{A\left[ k^{\phi} + 1 \right]^{1/\phi} }{A^{\phi}\left[ k^{\phi} + 1 \right]}}-k^{\phi} \right)  A^{\phi} y^{1-\phi}
$$
$$
w=\left( \left[ k^{\phi} +1 \right] -k^{\phi} \right)  A^{\phi} y^{1-\phi}
$$
$$
w=A^{\phi }y^{1-\phi}
$$


\subsection*{c)}
Comenzamos buscando una expresión del estado estacionario en función de los parámetros de depreciación,  inversión y la constante $A$.\newline
\textbf{Capital:}
$$s f(k^*)=(\delta+n)k^*$$
$$s A[(k^*)^\phi+1]^{1/\phi}=(\delta+n)k^*$$
$$\frac{[(k^*)^\phi+1]^{1/\phi}}{k^*}=\left(\frac{\delta+n}{sA}\right)$$
$$\frac{[(k^*)^\phi+1]}{(k^*)^\phi}=\left(\frac{\delta+n}{sA}\right)^{\phi}$$$$1+(k^*)^{-\phi}=\left(\frac{\delta+n}{sA}\right)^{\phi}$$
$$(k^*)^{-\phi}=\left(\frac{\delta+n}{sA}\right)^{\phi}-1$$
$$k^*=\left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1/\phi}$$
\newline
\textbf{Producto:}
$$y^*=A[(k^*)^\phi+1]^{1/\phi}$$
$$y^*=A\left[ \left( \left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1/\phi}\right)^{\phi}+1\right]^{1/\phi}$$
$$y^*=A\left[  \left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1}+1\right]^{1/\phi}$$

Steady State inversión y consumo. Estas variables las expresamos en términos del capital de estado estacionario.
\newline
\textbf{Ahorro:}
$$s^* A[(k^*)^\phi+1]^{1/\phi}=(\delta+n)k^*$$
$$s^* =\frac{(\delta+n)k^*}{A[(k^*)^\phi+1]^{1/\phi}}=\frac{(\delta+n)k^*}{y^*}$$
\newline
$\textbf{Consumo:}$
\newline
La fórmula del consumo es:\newline
$$c=(1-s)y$$
Es decir la parte de la producción que no es invertida/ahorrada.
En estado estacionario, reemplazo el valor de $s^*=\frac{(\delta+n)k^*}{y^*}$ 
$$
c^*=y^*-\frac{(\delta+n)k^*}{y^*}y^*
$$
$$
c^*=y^*-(\delta+n)k^*
$$
$$c^*(s)=A\left[  \left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1}+1\right]^{1/\phi}-(\delta+n)\left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1/\phi}$$

\subsection*{d)}
En el modelo de Solow usamos el ahorro como variable para determinar los niveles de las otras variables que maximizan el consumo.
$$ c^*(s) = y^*-(\delta+n) k^*$$
En general, el procedimiento que realizaríamos sería despejar un valor $s_{gold}$ de la expresión de arriba. Ese es el nivel de ahorro para el que el $k^*$ de \textit{steady state} maximiza el consumo. Ese nivel de capital que obtenemos al reemplazar $s_{gold}$ en la expresión que teníamos de $k^*$ (que era una función de $s$) es el nivel de capital de golden rule $k^*_{gold}$.\newline
Ahora tratamos de llegar a una expresión algebraica exacta:
\newline
Tenemos que
\newline
$k^*=\left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1/\phi}$
$y^*=A\left[  \left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1}+1\right]^{1/\phi}$
\newline
\newline
Para simplificar, voy a escribir $r=\left( \frac{\delta+n}{sA}\right)^{\phi}$
\newline
$k^*=\left[ r-1\right]^{-1/\phi}$
\newline
$y^*=A\left[  \left[ r-1\right]^{-1}+1\right]^{1/\phi}$
\newline
\newline
Necesitamos obtener $\frac{\partial c}{\partial s} = \frac{\partial y^*}{\partial s}-(\delta+n)\frac{\partial k^*}{\partial s}$
\newline
Antes de tomar esa derivada noto que $r$ es una función de $s$ y su derivada con respecto a esa variable es
$$\frac{\partial r}{\partial s} =-\phi \left( \frac{\delta+n}{sA}\right)^{\phi-1}s^{-2}\left(\frac{\delta+n}{A}\right)$$
Esto se puede reescribir notando $r^{1/\phi}=\frac{n+\delta}{sA}$
$$\frac{\partial r}{\partial s} =-\phi  \frac{r}{\cancel{r^{1/\phi}}}  s^{-1}\cancel{r^{1/\phi}}$$
$$
\frac{\partial r}{\partial s} = -\frac{\phi r}{s}
$$
Ahora sí tomo la derivada de $c$ con respecto a $s$ e igualo a 0. 
$$
c=A \left[ \left( r-1 \right)^{-1} + 1   \right]^{1/\phi} - (\delta+n)(r-1)^{-1/\phi}
$$
$$
\frac{ \partial c }{ \partial s } =-A \frac{1}{\phi} \left[ \left( r-1 \right)^{-1} + 1   \right]^{1/\phi - 1} (r-1)^{-2} \frac{-\phi r}{s} -(\delta+n)  (-1) \frac{1}{\phi} (r-1)^{\frac{-1}{\phi}-1} \frac{-\phi r}{s}= 0
$$
$$
A \left[ \left( r-1 \right)^{-1} + 1   \right]^{1/\phi - 1} (r-1)^{-1} =(\delta+n)   (r-1)^{\frac{-1}{\phi}} 
$$
$$
\left[ \left( r-1 \right)^{-1} + 1   \right]^{1/\phi - 1} \frac{(r-1)^{-1}}{(r-1)^{\frac{-1}{\phi}}} =\frac{\delta+n}{A} 
$$
$$
\left[ \left( r-1 \right)^{-1} + 1   \right]^{\frac{1-\phi}{\phi}} (r-1)^{\frac{1-\phi}{\phi}} =\frac{\delta+n}{A} 
$$
$$
\left[ \left( r-1 \right)^{-1} + 1   \right] (r-1) =\left( \frac{\delta+n}{A} \right)^{\frac{\phi}{1-\phi}} 
$$
$$
(r-1) =\left( \frac{\delta+n}{A} \right)^{\frac{\phi}{1-\phi}} 
$$
$$
r =\left( \frac{\delta+n}{A} \right)^{\frac{\phi}{1-\phi}} +1
$$
Ahora despejo el ahorro del término que definí como $r=\left( \frac{\delta+n}{sA}\right)^{\phi}$.
$$
\left( \frac{\delta+n}{sA}\right)^{\phi}=\left( \frac{\delta+n}{A} \right)^{\frac{\phi}{1-\phi}} +1
$$
$$
\frac{\delta+n}{sA}=\left[  \left( \frac{\delta+n}{A} \right)^{\frac{\phi}{1-\phi}} +1 \right] ^{1/\phi}
$$
$$
s_{gold}=\frac{\delta+n}{A}\left[  \left( \frac{\delta+n}{A} \right)^{\frac{\phi}{1-\phi}} +1 \right] ^{-1/\phi}
$$  
Para obtener el nivel de capital en steady state que maximiza el consumo reemplazamos el valor del ahorro de steady state en golden rule en la exprsion del capital en steady state. Para hacer las cuentas mas simples voy a reemplazar la expresión de $r$ que encontramos al despejar la derivada del consumo con respecto al ahorro, ya que esa expresión de $r$ maximiza el consumo.
$$k^*_{gold}=\left[ \left( \left( \frac{\delta+n}{A} \right)^{\frac{\phi}{1-\phi}} +1\right)-1\right]^{-1/\phi}$$
$$k^*_{gold}=\left[  \left( \frac{\delta+n}{A} \right)^{\frac{\phi}{1-\phi}}\right]^{-1/\phi}$$
$$k^*_{gold}=\left( \frac{A}{\delta+n} \right)^{\frac{1}{1-\phi}}$$
Por último, el producto en estado estacionario de golden rule va a ser simplemente $f(k^*_{gold})$

$$y^*_{gold}=A\left[\left( \frac{A}{\delta+n} \right)^{\frac{1}{1-\phi}} +1 \right]^{1/\phi}$$
Similarmente, el consumo de golden rule steady state queda 
$$ c^*(s) = y^*_{gold}-(\delta+n) k^*_{gold}$$
$$ c^*(s) = A\left[\left( \frac{A}{\delta+n} \right)^{\frac{1}{1-\phi}} +1 \right]^{1/\phi}-(\delta+n) \left( \frac{A}{\delta+n} \right)^{\frac{1}{1-\phi}}$$
---
La diferencia del ingreso entre los países es resultado de varios factores y variables que afectan las condiciones en las que los trabajadores de una economía reciben lo entendemos como el retorno del trabajo. En los papers leídos entendemos como las interpretaciones que hacen los distintos autores refieren a la importancia del capital humano y físico para explicar la diferencia de los ingresos cross country. 

Para Mankiw, Romer, Weil (MRW, 1992) a través de la regresión de su modelo de Solow ampliado concluye que una función de producción consistente con los resultados obtenidos es $Y= K ^{1/3} + H^{1/3} + L^{1/3} $ donde a diferencia del modelo convencional que consideraba que el capital físico era el principal motor del crecimiento económico, el modelo ampliado estima que el capital humano desempeña un papel igualmente importante. Esto implica que las inversiones en educación y capacitación pueden tener un impacto significativo en el nivel de ingresos de un país a largo plazo, al aumentar la productividad total de los factores. 

Este estudio es retomado por Klenow, Clare (1997) donde actualiza los sus datos y agrega datos sobre educación primaria y terciaria que han estado disponibles desde su estudio. Debido a que la obtención del la educación primaria implica mucha menos diferencia entre países por lo que las estimaciones del capital humano varían mucho menos entre países que las estimaciones de MRW. A su vez, incorporan evidencia acerca de como la producción de capital humano es más intensiva en trabajo y menos intensiva en capital físico que la producción de otros bienes. Reduciendo aún más las diferencias entre países en las estimaciones de los stocks de capital humano.

A partir de la introducción del valor tiempo de los estudiantes dentro de la contabilidad del ingreso lo cual afecta al capital humano. Al igual que MRW, utiliza una muestra de 98 países. Pero mientras MRV utiliza el producto per cápita K,C utilizamos el producto por trabajador. Dado que los resultados son muy similares a MRW1, ahora podemos incorporar datos sobre la inscripción en la escuela primaria, etc., para nuestra muestra de 98 países sin temor a que el cambio en la muestra obstruya la comparación. Encontrnado que la educación primaria no varía en la misma medida con productor por trabajador entre países como lo hace la educación secundaria como la hace MRW. Al centrarse únicamente en la educación secundaria, se exagera la variación porcentual en el capital humano entre países y su covarianza con el producto por trabajador.

En tanto Hall, Jones (1999).Con un enfoque diferente encuentran como en el largo plazo los países producen altos niveles de producción por trabajador porque alcanzan altas tasas de inversión en capital físico y humano y porque utilizan estos insumos con un alto nivel de productividad.  

Las diferencias en la infraestructura social entre países causan grandes diferencias en la acumulación de capital, logros educativos y productividad, y por lo tanto grandes diferencias en el ingreso entre países.  Y estas diferencias están asociadas con el grado en que han sido influenciados por Europa Occidental. Utilizando la distancia desde el ecuador y datos de idioma, concluyen  que las diferencias en la infraestructura social causan grandes diferencias en el ingreso es robusto frente al error de medición y preocupaciones de endogeneidad.

Camapante, Sturzenegger y Velasco asocian el planteamiento sobre si el modelo de Solow puede dar cuenta de las marcadas diferencias en los niveles de ingresos a nivel mundial. Se investiga cómo la participación del capital, representada por $\alpha$, influye en la capacidad del modelo para explicar estas disparidades. Se discute el argumento de Parente y Prescott sobre la subestimación de la participación del capital en el PIB debido a activos intangibles. Además, se introduce una fórmula para calcular las diferencias en los niveles de ingresos entre países, utilizando la inversión y la depreciación como factores clave. Se llega a la conclusión de que, incluso con ajustes en la participación del capital, el modelo de Solow requiere diferencias sustanciales en la productividad total de los factores para aproximarse a las disparidades observadas en los ingresos entre países.