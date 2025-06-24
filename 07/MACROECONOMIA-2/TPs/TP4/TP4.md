

---
EJERCICIO 4

a.
Planteamos la restricción presupuestaria que enfrenta en cada periodo. 
El primer periodo:
$$C_{1}+(B_{1}-B_{0})=r_{0}B_{0}+Q_{1}$$
El segundo:
$$C_{2}+(B_{2}-B_{1})=r_{1}B_{1}+Q_{2}$$
Es decir, el presupuesto que tienen en $t$ es la dotación $Q_{t}$ y sumado al interés sobre la posición de activos neta al final del periodo anterior (o restando si la posición es pasiva) que notamos como $r_{t-1}B_{t-1}$. Ese presupuesto lo usan en consumo $C_{t}$ y en ahorro $(B_{t}-B_{t-1})$.

Para obtener la restricción presupuestaria intertemporal eliminamos $B_{1}$ del sistema. En la primar ecuación despejamos y nos queda:
$$
B_{1}=(1+r_{0})B_{0}+Q_{1}-C_{1}
$$
Reemplazamos en la segunda considerando que $B_{2}=0$ por la condición de transversalidad:
$$
C_{2}=(1+r_{1})\left[ (1+r_{0})B_{0}+Q_{1}-C_{1} \right] +Q_{2}
$$
Trayendo esta ecuación a valor presente dividiendo por $(1+r_{1})$ llegamos a que:
$$
C_{1}+\frac{C_{2}}{1+r_{1}}=(1+r_{0})B_{0}+Q_{1}+\frac{Q_{2}}{1+r_{1}}
$$
Ahora añadimos la libre movilidad de capitales que impone una tasa $r_{1}=r^*$ y si consideramos que esta economía comienza con posición de inversión $B_{0}=0$ entonces nos queda:
$$
C_{1}+\frac{C_{2}}{1+r^*}=Q_{1}+\frac{Q_{2}}{1+r^*}
$$

b.
Los hogares van a elegir un sendero de consumo de equilibrio $(C_{1}, C_{2})$ tal que sea máxima su función de utilidad sujeta a la restricción presupuestaria que derivamos.
$$
\max_{C_{1},C_{2}} \ \ \ \ln C_{1} + \beta \ln(C_{2}-\alpha C_{1})
$$
$$
\text{sujeto a} \ \ C_{1}+\frac{C_{2}}{1+r^*}=Q_{1}+\frac{Q_{2}}{1+r^*}
$$
Comenzamos reescribiendo la función objetivo en términos de $C_{2}$ tal que la maximización ya incluya la restricción. Despejamos de la RP.
$$
C_2=\left( Q_{1}+\frac{Q_{2}}{1+r^*}-C_{1}  \right)(1+r^*)
$$
Vamos a escribir $\bar{Y}=Q_{1}+\frac{Q_{2}}{1+r^*}$ para hablar de la riqueza intertemporal y notamos que son parámetros exógenos. El problema del hogar se reduce entonces a:
$$
\max_{C_{1}} \ \ \ \ln C_{1} + \beta \ln \left(\left[ \left( \bar{Y}-C_{1}  \right)(1+r^*) \right]-\alpha C_{1}  \right)  
$$
Igualamos la derivada de la utilidad intertemporal a 0 para despejar el $C_{1}$:

ln(x)+b * ln((y-x)(1+r)-a * x)=0
$$
\frac{ \partial  }{ \partial C_{1} }\ln C_{1} + \beta \ln \left( \left[ \left( \bar{Y}-C_{1}  \right)(1+r^*) \right]-\alpha C_{1} \right)  =0 
$$
$$
\frac{1}{C_{1}}+\frac{\beta }{\left[ (\bar{Y}-C_{1})(1+r^*) \right] - \alpha C_{1} } \cdot -[(1+r^*)+\alpha]  =0 
$$
$$
C_{1}= \frac{ \left[ (\bar{Y}-C_{1})(1+r^*) \right]-\alpha C_{1}}{ \beta(1+r^*+\alpha)}
$$
$$
C_{1}= \frac{ \bar{Y}(1+r)-C_{1}(1+r^*)-\alpha C_{1}}{ \beta(1+r^*+\alpha)}
$$
$$
C_{1}= \frac{ \bar{Y}(1+r^*)}{ \beta(1+r^*+\alpha)}-\frac{C_{1}}{\beta}
$$
$$
C_{1}\left( \frac{\beta+1}{\beta} \right) = \frac{ \bar{Y}(1+r^*)}{ \beta(1+r^*+\alpha)}
$$
$$
C_{1} = \frac{ \bar{Y}(1+r^*)}{ (\beta+1)(1+r^*+\alpha)}
$$

Ese es el valor de equilibrio del consumo en el primer periodo. Tambien se puede escribir como:
$$
C_{1} = \frac{ \left[ Q_{1}+\frac{Q_{2}}{1+r^*} \right] (1+r^*)}{ (\beta+1)(1+r^*+\alpha)}
$$
$$
C_{1} = \frac{ Q_{1}(1+r^*)+Q_{2}}{ (\beta+1)(1+r^*+\alpha)}
$$En el segundo periodo va a ser:
$$
C_2=\left( \bar{Y}-\frac{ \bar{Y}(1+r^*)}{ (\beta+1)(1+r^*+\alpha)}  \right)(1+r^*)
$$
$$
C_2=\bar{Y}\left( \frac{ \beta(1+r^*+\alpha)+\alpha}{ (\beta+1)(1+r^*+\alpha)}  \right)(1+r^*)
$$

Luego la balanza comercial se definía como
$$
TB_{1}=Q_{1}-C_{1}
$$
$$
TB_{1}=Q_{1}-\frac{ Q_{1}(1+r^*)+Q_{2}}{ (\beta+1)(1+r^*+\alpha)}
$$
c.

Vamos a comparar la situación cuando $\alpha > 0$ y cuando $\alpha=0$ (no hay hábitos). Está claro que con hábitos la balanza comercial va a ser más positiva porque el consumo del primer periodo va a ser menor. Esto es porque con hábitos va a requerir, en el sendero óptimo, más consumo en el segundo periodo.
$$
U'(C_{1})=\frac{1}{C_{1}}
$$
$$
U'(C_{2})=\beta\frac{1}{C_{2}-\alpha C_{1}}
$$
Pendiente de la utilidad:
$$
\frac{C_{2}-\alpha C_{1}}{\beta C_{1}}
$$
A medida que aumenta $\alpha$, tiene que ser mayor el $C_{2}$ (menor el $C_{1}$) para compensar la diferencia e igualarse a $(1+r^*)$ por la condición de Euler.