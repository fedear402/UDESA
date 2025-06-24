## EJ 3.

Considere el modelo de Solow sin crecimiento poblacional ni cambio tecnológico. Siendo la tasa de ahorro $s$ = 0.2 y la tasa de depreciación $\delta$ = 0.05. 
- $k$ representa el capital por trabajador. 
- $y$ representa el producto por trabajador. 
- $c$ representa el consumo por trabajador. 
- $i$ representa la inversión por trabajador. 

(a) Reescribir $Y = K^{1/3}L^{2/3}$ en términos per capita. 


(b) Hallar el nivel de capital de Steady State. 
- Obtener el cambio en el stock de capital en términos per capita:
$$
\frac{\partial \frac{K}{L}}{\partial t} = \frac{\dot{K}L-\dot{L}K}{L^2}
$$
$$
\frac{\dot{K}L}{L^2}-\frac{\dot{L}K}{L^2}
$$
$$
\frac{\left[sf(k)-(n+\delta)K\right]·L}{L^2}-\frac{nL·K}{L^2}
$$
(c) Defina el concepto de Regla de Oro. 

(d) ¿Cuál es el nivel de capital de la Regla de Oro para esta economía ($k_{gr}$)? Suponga que un gobierno benevolente desea obtener un nivel de acumulación de capital por trabajador idéntico al de la regla dorada $k_{gr}$. 

(e) ¿Qué nivel de ahorro debería ser impuesto? 

(f) Comparar los resultados obtenidos con la tasa de ahorro asumida originalmente. ¿Qué ha de ocurrir con el consumo para llegar a $k_{gr}$? 

(g) Analice gráficamente el shock generado por la modificación de la tasa de ahorro.
## EJ. 6 -- Modelo AK
### a)
$$Y=AK$$
A es un parámetro y entonces 
$$\frac{\dot{A}}{A}=0$$
Como Y es función de K nada mas, da lo mismo usar $K$ o $k$ para diferenciar con la forma intensiva. La ecuación de Solow queda forma intensiva:
$$
\dot{k} =sf(k)-\delta k
$$
$$
\dot{k} =sAk-\delta k
$$
Y era una función lineal en de K y $\dot{k}$ también : sf(k) es una proporción de la otra y tiene esta forma:

```tikz 
\begin{document} 
\begin{tikzpicture}[domain=0:4.5];
\draw[gray, very thin] (-0.5, -0.5) grid (5.2,5.2);
\draw[thick, ->] (-0.2,0) -- (5,0) node[right] {$k$}; 
\draw[thick, ->] (0,-1.2) -- (0,5) node[above] {$f(k)$}; 
\draw[thick, color=black] plot (\x,{1*\x}) node[right] {$f(k)$}; 
\draw[thick, color=black] plot (\x,{0.6*\x}) node[right] {$sf(k)$};
\end{tikzpicture} 
\end{document} 
```

### b)
$$\frac{\dot{k}}{k} =sA-\delta$$
Si $\delta < sA$ entonces el crecimiento es positivo y crece para siempre.
Después para Y
Usando que 
$$\frac{\dot{Y}}{Y}=\frac{\partial \log Y}{\partial t}$$
Entonces tomando logaritmo de Y
$$
\log (Y)=\log (A) + \log (K)
$$
$$
\frac{\partial \log (Y)}{\partial t}=\frac{\partial \log (A)}{\partial t} +\frac{\partial \log (K)}{\partial t}
$$
como $\frac{\partial \log (A)}{\partial t}$ es 0 porque es una constante
$$
\frac{\partial \log (Y)}{\partial t}=\frac{\partial \log (K)}{\partial t}
$$
$$\frac{\dot{Y}}{Y}=\frac{\dot{K}}{K}$$
### c)

# 7) Modelo con gobierno




# 8) Modelo CES
### a)
$$
hF(K,L)=F(hK,hL)
$$
$$
hA[K^\phi+L^\phi]^{1/\phi}
$$
$$(h^\phi)^{1/\phi}A[K^\phi+L^\phi]^{1/\phi}$$
$$A[(h^\phi)(K^\phi+L^\phi)]^{1/\phi}$$
$$A[(h^\phi K)^\phi+(h^\phi L)^\phi)]^{1/\phi}$$
$$A[(hK)^\phi+(hL)^\phi)]^{1/\phi}$$
### b)
Steady State Capital:
$$s ·f(k^*)=(\delta+n)k^*$$
$$s ·A[(k^*)^\phi+1]^{1/\phi}=(\delta+n)k^*$$
$$\frac{[(k^*)^\phi+1]^{1/\phi}}{k^*}=\left(\frac{\delta+n}{sA}\right)$$
$$\frac{[(k^*)^\phi+1]}{(k^*)^\phi}=\left(\frac{\delta+n}{sA}\right)^{\phi}$$$$1+(k^*)^{-\phi}=\left(\frac{\delta+n}{sA}\right)^{\phi}$$
$$(k^*)^{-\phi}=\left(\frac{\delta+n}{sA}\right)^{\phi}-1$$
$$k^*=\left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1/\phi}$$

Steady State Prod:
$$s ·y^*=(\delta+n)k^*$$
$$s ·y^*=(\delta+n)·\left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1/\phi}$$
$$y^*=\frac{\delta+n}{s}·\left[ \left( \frac{\delta+n}{sA}\right)^{\phi}-1\right]^{-1/\phi}$$
Steady State Inversión y Consumo:
$$s^* A[(k^*)^\phi+1]^{1/\phi}=(\delta+n)k^*$$
$$s^* =\frac{(\delta+n)k^*}{A[(k^*)^\phi+1]^{1/\phi}}$$
