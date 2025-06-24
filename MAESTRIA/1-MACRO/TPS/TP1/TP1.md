# EJ 2
### 1)
Para resolver:
$$ \int_{0}^{\infty} u(c_t) e^{-\rho t} dt. \text{ sujeto a } \dot{a} = y + r a - c$$
Planteamos el Hamiltoniano:
$$
H = u(c_{t}) + \lambda_{t} \left[ y_{t} + r_{t} -c_{t}\right] 
$$
Las condiciones de primer orden nos describen la decisión óptima de consumo y son:
$$
\frac{ \partial H }{ \partial c_{t} } =0 \implies u'(c_{t}) - \lambda_{t} = 0
$$
$$
\dot{ \lambda _{t}}= - \frac{ \partial H }{ \partial a_{t} } + \rho \lambda _{t} \implies \dot{\lambda}_{t} =-r\lambda _{t}+\rho \lambda _{t} \implies \frac{\dot{\lambda}_{t}}{\lambda _{t}} = \rho-r
$$
Escribimos la derivada de la primer condición sobre la primer condición:
$$
\frac{u''(c_{t})\dot{c_{t}}}{u'(c_{t})} = \frac{\dot{\lambda _{t}}}{\lambda _{t}}
$$
reemplazamos la segunda condición
$$
\frac{u''(c_{t})\dot{c_{t}}}{u'(c_{t})}  \frac{c_{t}}{c_{t}}= \rho-r
$$
Definiendo la elasticidad de sustitución intertemporal $\sigma = -\frac{u'}{u'' c_{t}}$ obtenemos la ecuación de Euler:
$$
\frac{\dot{c_{t}}}{c_{t}} = \sigma(r-\rho)
$$
Esta ecuación describe las decisiones óptimas de consumo de los agentes en cada momento. Además de estas condiciones, debemos imponer la restricción de No Ponzi que no permite que el valor presente de los activos $a_{t}$ sea negativo.

### 2)
Si $r>\rho$, los agentes son muy pacientes, porque el retorno de prestar el activo y tener más activos en el siguiente periodo es mayor que el valor que tienen esos activos al descontarlos y traerlos al presente. Les conviene pasar algo de consumo al futuro y ahorrar hoy para obtener las rentas. Por el contrario $r<\rho$, no pasan tanto consumo al futuro y prefieren consumir hoy. En el equilibrio óptimo, $r=\rho$ y el consumo no crece ni decrece.

### 3)
En una economía cerrada, si los activos son $a_{t}=k_{t}+b_{t}$, el nivel de equilibrio de $b_{t}$ debería ser 0, ya que todos los individuos son idénticos y nadie quiere prestar. Eso también da la equivalencia con el problema del planificador central. Entonces el retorno de los activos es el producto marginal del capital que debe ser igual a la tasa de impaciencia $\rho$. Si esto no fuera así, habría oportunidades de arbitraje y el problema no convergería. Lo conveniente sería prestar para siempre o pedir prestado para siempre si las tasas no fueran iguales.

### 4)
Si la tasa de cambio del consumo es cero, el consumo está siempre en el mismo nivel constante $c^*$. En Friedman (1957) modela al consumo como $c=c_{p}+c_{t}$, una parte permanente $p$ y otra transitoria $t$. La parte transitoria son "'accidental' or 'chance' occurrences" que corresponden a una distribución aleatoria. Esta composición del consumo sale de que el ingreso cuenta con una correspondiente parte aleatoria y otra permanente. En este modelo no hay shocks aleatorios y el agente no decide basado en la esperanza de su ingreso sino en todo el sendero de su ingreso.

### 5)
Partiendo de la restricción de presupuesto:
$$
\dot{a_{t}} - ra_{t} = y_{t}-c_{t}
$$
Usando el factor de integración $e^{-rt}$
$$
\dot{a_{t}}e^{-rt} - ra_{t}e^{-rt} = (y_{t}-c_{t})e^{-rt}
$$
Integramos ambas partes, sabiendo que del lado izquierdo tenemos $\frac{ \partial  }{ \partial t }a_{t}e^{-rt}$
$$
\int_{0}^{t} \frac{ \partial  }{ \partial s } a_{s}e^{-rs} \, ds = \int_{0}^{t} (y_{s}-c_{s}) e^{-st}\, ds 
$$
$$
a_{t}e^{-rt} - a_{0} =  \int_{0}^{t} y_{s}e^{-st} \, ds -  \int_{0}^{t} c_{s}e^{-st} \, ds 
$$
En el límite $t \to \infty$, el valor presente de los activos debe ser 0: 
$$
-a_{0} =  \int_{0}^{\infty} y_{s}e^{-st} \, ds -  \int_{0}^{\infty} c_{s}e^{-st} \, ds 
$$
Además, sabemos que $\rho = r$ entonces el consumo es un valor constante $c^*$. Eso implica que podemos resolver la integral: 
$$
-a_{0} =  \int_{0}^{\infty} y_{s}e^{-st} \, ds - c^*\left( \frac{e^{-r \cdot \infty}}{-r} -\frac{e^{-r \cdot 0}}{-r} \right) 
$$
$$
-a_{0} =  \int_{0}^{\infty} y_{s}e^{-st} \, ds - \frac{c^*}{-r}  \left(0-1 \right) 
$$
Reordenando, llegamos a una ecuación que se puede interpretar claramente:
$$
\frac{c^*}{r}=  \int_{0}^{\infty} y_{t}e^{-rt} \, dt +a_{0}
$$
$\frac{c^*}{r}$ es el valor presente de una perpetuidad que paga $c^*$ regularmente, descontada a tasa $r$. El nivel de consumo es una proporción del ingreso total a lo largo de la vida y de los activos iniciales. Esto se relaciona con la PIH, los agentes deciden su consumo considerando todo su flujo de ingresos a lo largo de vida. 

### 6)
Si la restricción era $\dot{a_{t}} - ra_{t} = y_{t}-c_{t}$ y a partir de un momento $T$, se reduce su ingreso $\dot{a_{t}} - ra_{t} = y_{t}-c_{t}-\tau$. Realizamos el mismo despeje que en el punto anterior y tenemos que:
$$
\frac{c^*}{r}=  \int_{0}^{\infty} y_{t}e^{-rt} \, dt +a_{0} - \frac{\tau}{r}e^{-rT}
$$
Entonces el consumo del agente es menor. La demanda agregada de bienes de toda la economía no debería cambia si el consumo de los agentes baja en la proporción en la que aumenta el gasto en bienes por parte del gobierno. 


Friedman, M. (1957). III. The Permanent Income Hypothesis. In Theory of the Consumption Function (pp. 20-37). Princeton: Princeton University Press. doi.org/10.1515/
9780691188485-005

# EJ 3
