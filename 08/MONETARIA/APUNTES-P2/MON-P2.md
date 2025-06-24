# Clase 1 (15-10) Paridad de tipo de cambio
### Tasa de Interés y Tipo de Cambio Nominal
Tipo de Cambio es el precio relativo de activos en pesos y activos denominados en otra moneda. Salvo que haya influencia del gobierno o control de tipo de cambio el tipo de cambio refleja la oferta y demanda relativa de los activos en pesos y en otra moneda. Es parte de la teoría de portfolios porque involucra cómo la gente toma decisiones de inversión (en un país o en otro). Estas decisiones van a tener incertidumbre. En el caso que no las haya sería:

### Relación entre TC y tasa de interés, sin incertidumbre
Si $i_{t}$ es la tasa doméstica (ARS), luego $i^*_{t}$ es la tasa extranjera (USD). Con libre movilidad de capitales la ubicación genera sustitutos perfectos si se cumple: I) no hay limitaciones a la movilidad (cepo)  II) son comparables las tasas (riesgo - probabilidad de repago y default). Si se cumple eso $i^*_{t}$ debería ser también la tasa de un bono local denominado en moneda extranjera.
$$
\upvarepsilon_{t} : \text{Tipo de Cambio Nominal }
$$
$$
\varepsilon_{t} : \text{Depreciación del TCN : }  \frac{\upvarepsilon_{t}}{\upvarepsilon_{t-1}}-1
$$
Depreciación (Apreciación) es cuando naturalmente por movimientos de mercado baja (sube) el valor de la moneda. Devaluación (revaluación) es cuando por decisión del gobierno se cambia un tipo de cambio fijo o de referencia de la moneda. Se enfrentan estas alternativas de inversión:

**Mercado Local:** Podes percibir la tasa $i_{t}$ y obtener en $t+1$ $(1+i_{t}) \textdollar$ por cada $1 \$$ 
$1\text{ARS}_{t} \to(1+i_{t})\text{ARS}_{t+1}$ 

**Mercado Extranjero:** Compras moneda extranjera, percibís $i^*_{t}$ y después lo convertís a moneda local al tipo de cambio $\upvarepsilon_{t+1}$.
$1\text{ARS}_{t} \to \frac{1}{\upvarepsilon_{t}} USD_{t}$ ; invertís $\frac{1}{\upvarepsilon_{t}}$ dólares
$\frac{1}{\upvarepsilon_{t}}USD_{t} \to\frac{1}{\upvarepsilon_{t}}USD_{t}(1+i_{t}^*)$ 
$\frac{1}{\upvarepsilon_{t}}USD_{t}(1+i_{t}^*) \to \frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}}ARS_{t+1}(1+i_{t}^*)$
De esa forma se pueden comparar las inversiones al término, porque están en la misma moneda

Si no hay barreras en los países, entonces no puede haber arbitraje y se cumple la **paridad de tasas**:
$$
(1+i_{t})=(1+i_{t}^*) \frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}} 
$$
en logs $i_{t} = i^*_t+\varepsilon_{t+1}$
Si en $t$ $i_{t} >i^*_{t}$, va a depreciar en $t+1$.

Esto debería cumplirse no solo para tasas de bonos soberanos, sino para cualquier clase de activos de la economía. En el modelo se mide como una emisión primaria hipotética y no con el retorno de mercado del bono. También en el modelo la tasa de interés no es fuente de incertidumbre por riesgo.
### Paridad cubierta
Los Futuros eliminan la incertidumbre del TC porque se fija en $t$ un precio de intercambio de monedas a realizarse en el futuro. Sin incertidumbre $\upvarepsilon_{t+1}=F_{t}$
$1\text{ARS}_{t} \to \frac{1}{\upvarepsilon_{t}} USD_{t}$ ; invertís $\frac{1}{\upvarepsilon_{t}}$ dólares
$\frac{1}{\upvarepsilon_{t}}USD_{t}(1+i_{t}^*) \to \frac{F_{t}}{\upvarepsilon_{t}}ARS_{t+1}(1+i_{t}^*)$ ; Haces un acuerdo forward y deciden intercambiar a precio $F_{t}$ una moneda por otra en $t+1$.

La **Paridad Cubierta** sería que
$$
(1+i_{t})=(1+i_{t}^*) \frac{F_{t}}{\upvarepsilon_{t}} 
$$
en logs $i_{t} = i^*_t+f_{t}$
$f_{t}=\frac{F_{t} -\upvarepsilon_{t} }{\upvarepsilon_{t}}$ es la *forward premium*
Empíricamente, se cumple en países con libre movilidad de capitales.

### Paridad descubierta
$$
(1+i_{t})=(1+i_{t}^*) \frac{E\left[  \upvarepsilon_{t+1}\right] }{\upvarepsilon_{t}} 
$$
en logs $i_{t} = i^*_t+E[\varepsilon_{t+1}]$
Si en $t$ $i_{t} >i^*_{t}$, *se espera* que se vaya a depreciar en $t+1$. Puede ser porque $\upvarepsilon_{t+1}$ vaya a ser mayor o $\upvarepsilon_{t}$ vaya a ser menor. Esto no se cumple en la realidad, lo cual es esperable porque en la realidad actúan evitando el riesgo. Se testea con:
$$
\varepsilon_{t+1} = \alpha+\beta f_{t} +u_{t}
$$
Si se cumple, entonces $\alpha=0$ y $\beta=1$. Como no se cumple, da lugar a carry trades muy rentables. Endeudarse en la tasa más baja e invertir en la más alta.

# Clase 2 (16-10) Decisiones de portafolio
Con UIP se cumplía que
$$
\frac{ 1+i_{t} }{1+i^*_{t}} =  \frac{E\left[  \upvarepsilon_{t+1}\right] }{\upvarepsilon_{t}} 
$$
### Decisiones de portafolio (con endowments)
Agentes tienen utilidad:
$$
E_{0} \left\{ \sum_{t=0}^\infty \beta^t U(c_{t}) \right\} 
$$
Sujeta a la restricción de presupuesto:
$$
P_{t}c_{t} + B_{t} + \upvarepsilon_{t}B_{t}^*=P_{t}y_{t}+B_{t-1}(1+i_{t-1})+\upvarepsilon_{t} B_{t-1}^*(1+i_{t-1}^*)
$$
Las condiciones de primer orden son:
$$
U'(c_{t}) = \beta(1+i_{t})E_{t} \left\{ \frac{U'(c_{t+1})}{1+\pi_{t+1}}  \right\} 
$$
$$
U'(c_{t}) = \beta(1+i_{t}^*)E_{t} \left\{ \frac{U'(c_{t+1})}{1+\pi_{t+1}} \frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}} \right\} 
$$
Definimos el **factor de descuento estocástico**/**Pricing Kernel**.
$$
sdf_{t+1}=\frac{\beta U'(c_{t+1})}{U'(c_{t})} \frac{1}{1+\pi_{t+1}}
$$
Esto se relaciona con la aversión al riesgo porque al ser cóncavas las utilidades en su argumento prefieren la certeza que una combinación lineal.
$$
U(c) \geq p U(a) + (1-p)U(b)
$$
con $c=\lambda a+(1-\lambda)b$. Los agentes prefieren un punto $c$ sobre alguna combinación lineal de dos puntos $a<c<b$. Continuando con la optimización, combinando las dos CPO:
$$
\frac{ 1+i_{t} }{1+i^*_{t}}  =\frac{E_{t}\left[ sdf_{t+1} \frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}}\right] }{E_{t} \left[ sdf_{t+1} \right]}
$$
No se puede distribuir la esperanza de un producto, entonces,
$$
\frac{ 1+i_{t} }{1+i^*_{t}}  =\frac{E_{t}\left[ sdf_{t+1}   \right]  \cdot E_{t}\left[  \frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}} \right] }{E_{t} \left[ sdf_{t+1} \right]} + \frac{\mathbb{COV}_{t}\left[ sdf_{t+1} ,\frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}}\right] }{E_{t} \left[ sdf_{t+1} \right]}
$$
$$
\underbrace{\frac{ 1+i_{t} }{1+i^*_{t}}  }_{\text{Diferencial de Tasas/Indiferencia}}=\underbrace{\frac{E_{t}\left[ \upvarepsilon_{t+1} \right]}{\upvarepsilon_{t}} }_{\text{Depreciación Esperada}}  + \underbrace{\frac{\mathbb{COV}_{t}\left[ sdf_{t+1} ,\frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}}\right] }{E_{t} \left[ sdf_{t+1} \right]}}_{\text{Prima de riesgo de la moneda local}} 
$$

La prima de riesgo y el signo la va a determinar $\mathbb{COV}_{t}\left[ sdf_{t+1} ,\frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}}\right]$. 
$$
\beta \cdot \mathbb{COV}_{t} \left\{ \frac{U'(c_{t+1})}{U'(c_{t})} \frac{1}{1+\pi_{t+1}} , \frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}} \right\} 
$$
- La correlación entre $\frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}}$ y $\frac{1}{1+\pi_{t+1}}$ puede ser positiva o negativa
- La correlación entre $\frac{U'(c_{t+1})}{U'(c_{t})}$ y $\frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}}$ es positiva si se espera que una depreciación baje el consumo. $\frac{U'(c_{t+1})}{U'(c_{t})}$ es inversa al crecimiento del consumo.
### Determinación del TCN
Definiendo:
$$
rp_{t}=\frac{\mathbb{COV}_{t}\left[ sdf_{t+1} ,\frac{\upvarepsilon_{t+1}}{\upvarepsilon_{t}}\right] }{E_{t} \left[ sdf_{t+1} \right]}-1
$$
$$
e_{t}=\log(\upvarepsilon_{t})
$$
La UIP queda:
$$
i_{t}-i^*_{t}= \mathbb{E}_{t}\left\{ e_{t+1} \right\} -e_{t} +rp_{t}
$$
Iterando la $e_{t}$
$$
e_{t} = \sum_{h=0}^{\infty}  \mathbb{E}_{t}\left\{ i^*_{t+h} - i_{t+h} - rp_{t+h} \right\}  + \mathbb{E}_{t}\left\{ e_{t+1+h}\right\} 
$$
Va a subir la tasa nominal hoy cuando aumenta la tasa extranjera actual y futura esperada; cae la tasa local actual o esperada; sube la prima de riesgo actual o esperada; o se espera que en el futuro vaya a subir el tipo de cambio.


# Clase 3 (22-10) Clasificación de regímenes
### Regimenes cambiarios
Se los agrupa en 4 tipos de acuerdo a cuánto fluctúa el tipo de cambio en esos países. El tipo de cambio es un precio y depende de cuánto influye el Banco Central en su determinación. Es decir, si compra/vende en el mercado para fijar un precio. O establece regulaciones directas (i.e. cepo, controles de cambio).

**Fixed/Peg**
El tipo de cambio está fijo respecto a otra moneda. Se mueve con márgenes de 1%, más o menos. Se pueden distinguir dos tipos de tipo de cambio fijo:
1- **Dolarización** pura, como ecuador, donde se prescinde de la moneda local. En ese caso no existe la política monetaria. Otro ejemplo son los países de Europa sujetos al ECB y usando euros.
2- **Caja de conversión**: El Banco Central compra o vende moneda en el mercado para estabilizar el valor. Requiere tener siempre dólares para poder satisfacer excesos de oferta o demanda de moneda local o extranjera tal que el precio de una respecto a otra no fluctúe (flote).

**Limited Flexibility/Crawling Peg**
En este caso, el tipo de cambio se mueve pero muy poco y con una regla clara de cómo se va a mover. 
- A una tasa determinada (ej. crawling peg)
- Ajustado periódicamente
- Entre bandas
- Por indicadores cuantitativos

**Managed Floating**
Tiene influencia pero limitada y no anuncia cómo o cuando va a intervenir pero lo hace seguido

**Flexible**
El tipo de cambio lo determina completamente el mercado. Es lo que se asume con el modelo que cumple UIP. Ejempo: Banco Central de Chile, excepto en 2008, 2019 y COVID. En general no interviene salvo en momentos de riesgo excepcional.


### Fear of Floating
Calvo (2002) compara arreglos de jure, lo que reportan los países, con la realidad de lo que implementan. Nota que algunos dice que flotan mientras que en realidad no lo hacen. Se hace la pregunta: ¿Por qué dicen que flotan si no lo hacen? ¿Que beneficio tiene mentir? ¿Por qué no quisieran flotar? 
Para caracterizar la flotación de hecho usa un benchmark de referencia:
$$
Prob(|\Delta\%NER|)< \bar{c}
$$
NER = Nominal Exchange Rate
Con la serie de tiempo del TC de cada país, calculan la probabilidad de que la variación del tipo de cambio esté fija en un valor; ej. que no fluctúe más de 1%. Como benchmark de flexibilidad usan a Estados Unidos y Japón. Resulta que países como Bolivia o India se comportaron muy muy fijos y reportaron ser flexibles. 

### De Jure vs De Facto
Levy-Yeyati & Sturzenegger (2005) 



| Class       | Variación en niveles | Variación del cambio en TCN <br>(Depreciaciones nominales) | Variación de las reservas del central                |
| ----------- | -------------------- | ---------------------------------------------------------- | ---------------------------------------------------- |
| Inconcluso  | bajo                 | bajo                                                       | bajo                                                 |
| Float       | alto                 | alto                                                       | bajo                                                 |
| Dirty Float | alto                 | alto                                                       | alto                                                 |
| Crawling    | alto                 | bajo (hay una regla fija de cambio en TCN)                 | alto (mientras mas fijo, mas variables las reservas) |
| Fixed       | bajo                 | bajo                                                       | alto (para compensar excesos de demanda/oferta)      |



# Clase 4 (23-10) MIU en economía abierta
Modelo MIU con economía abierta pequeña. Se llega a que el tipo de cambio fijo no es siempre sostenible. El modelo tiene un único bien de consumo y es transable. Si el bien es de libre movilidad perfecta, entonces $P_{t}=E_{t}P_{t}^*$. Es decir, se cumple la PPP. Al ser pequeña, lo que pasa en esta economía no afecta precios internacionales, $P_{t}$ ni $i_{t}^*$ (el precio de la deuda). Hay un endowment $Y_{t}$ que es constante por neutralidad $Y$. El gobierno establece impuestos de suma fija, determina la oferta de dinero y acumula reservas internacionales. Los agentes tienen utilidad separable (por ende neutralidad):
$$
U=\sum_{}^\infty \beta ^t \left[ u(c_{t}) + v\left( \frac{M_{t}^D}{P_{t}}\right) \right] 
$$
A diferencia del modelo anterior donde $Y=C$, con eco abierta esa igualdad no se cumpliría. Pero si la utilidad es separable igual sí. La restricción presupuestaria es:
$$
P_{t}Y+ (1+i_{t-1})B_{t-1}+E_{t} (1+i_{t-1}^*)B_{t-1}^{*P}+M_{t-1}^{D} =P_{t} C_{t} +B_{t} +E_{t} B_{t}^{*P}  + M_{t}^D + T_{t}
$$
Optimizan la función:
$$
\mathcal{L} =\sum_{t=0}^\infty \beta^t \left\{ \left[ u(C_{t}) + v\left( \frac{M_{t}^D}{P_{t}} \right)  \right] + \lambda_{t}\left[ P_{t}Y+ (1+i_{t-1})B_{t-1}+E_{t} (1+i_{t-1}^*)B_{t-1}^{*P}+M_{t-1}^{D} - P_{t} C_{t} -B_{t} -E_{t} B_{t}^{*P}  - M_{t}^D - T_{t} \right]   \right\}   \\
$$
CPO:
$$
\frac{ \partial \mathcal{L} }{ \partial C_{t} } = 0 \to \beta^t u' - \beta^t \lambda_{t}P_{t}=0 \to u'(C_{t}) = \lambda_{t} P_{t} 
$$
$$
\frac{ \partial \mathcal{L} }{ \partial B_{t} } = 0 \to -\beta^t \lambda_{t} +\beta^{t+1}\lambda_{t+1}(1+i_{t})=0 \to \lambda_{t} = \beta \lambda_{t+1} (1+i_{t})
$$
$$
\frac{ \partial \mathcal{L} }{ \partial B_{t}^* }  = 0 \to -\beta^t \lambda_{t} E_{t}+\beta^{t+1}\lambda_{t+1}(1+i^*) E_{t+1}=0 \to \lambda_{t} = \beta \lambda_{t+1} (1+i^*) \frac{E_{t+1}}{E_{t}} 
$$
$$
\frac{ \partial \mathcal{L} }{ \partial M_{t}^D } = 0 \to \beta ^t \frac{v'}{P_{t}} +\beta ^{t+1} \lambda_{t+1} -\beta ^t \lambda_{t} = 0 \to \lambda_{t} = \frac{v'}{P_{t} } + \beta \lambda_{t+1}
$$

Juntando las de bonos llegamos a la paridad descubierta:
$$
1+i_{t}=(1+i^*) \frac{E_{t+1}}{E_{t}} 
$$
Juntando consumo y bonos extranjeros:
$$
\frac{u'(C_{t})}{P_{t}} =\beta \left( \frac{u'(C_{t+1})}{P_{t+1}} \right)(1+i^*) \frac{E_{t+1}}{E_{t}} 
$$
Usando PPP, $E_{t}=P_{t}$:
$$
u'(C_{t}) =\beta u'(C_{t+1}) (1+i^*_{t})
$$
Asumimos que la tasa extranjera es constante $i_{t}^*=i^*$ y que hay neutralidad entonces $C_{t}=\bar{C}$ (porque la utilidad es separable entre balances reales y consumo). Además que $\beta(1+i^*)=1$, es decir $1+i^*=1+\rho$. Eso se tiene que cumplir para que no haya incentivos a posponer indefinidamente el consumo si $\beta(1+i^*)>1$. Esto elimina soluciones de esquina que no interesan.
Usando la de $B_{t}$:
$$
\frac{\lambda_{t}}{ (1+i_{t})}= \beta \lambda_{t+1}
$$
Reemplazándola en la de $M_{t}$
$$
\lambda_{t} = \frac{v'(\cdot)}{P_{t} } + \frac{\lambda_{t}}{ (1+i_{t})}
$$
$$
\lambda_{t} - \frac{\lambda_{t}}{ (1+i_{t})}= \frac{v'(\cdot)}{P_{t} }  
$$
$$
\lambda_{t} \left( 1- \frac{1}{ 1+i_{t}} \right) = \frac{v'(\cdot)}{P_{t} }  
$$
$$
\lambda_{t} \left( \frac{i_{t}}{ 1+i_{t}} \right) = \frac{v'(\cdot)}{P_{t} }  
$$
Esa es la demanda implícita. En general, se puede despejar y llegar a algo de la forma:
$$
\frac{M_{t}^D}{P_{t}}=L(\bar{C},i_{t})
$$Con propiedades $\frac{ \partial L }{ \partial \bar{C} }>0$; $\frac{ \partial L }{ \partial i_{t} }<0$. La demanda de dinero para transacciones en la mayoría de los países es demanda de moneda doméstica. En casos de currency substitution, la demanda es por otra moneda para realizar transacciones.
### Gobierno
Tiene gastos $G_{t}$ e ingresos $T_{t}$. Tiene Activos Externos Netos $B_{t}^{g*}$ que representan los activos en dólares menos la deuda en dólares. Asume que no hay deuda doméstica, o sea que $B_{t}^{g}=0$. Y produce la oferta de dinero $M_{t}^S$. Queda una RP consolidada de 
$$
P_{t}T_{t}+E_{t}B_{t-1}^{g*}(1+i_{t}^*)+(M_{t}^S-M_{t-1}^S)=P_{t}G_{t}+E_{t}B_{t}^{g*}
$$
Por PPP:
$$
B_{t}^{g*}-B_{t-1}^{g*}= \frac{M_{t}^S-M_{t-1}^S}{P_{t}}-\left[ G_{t}-T_{t}-i^*B_{t-1}^{g*} \right] 
$$
La primera parte serían las reservas netas de activos internacionales. Estas pueden aumentar solo si aumenta la oferta de dinero (señoreaje) o reduciendo el déficit total.

### Equilibrio
- PPP $P_{t}=E_{t}$ 
- Neutralidad $C_{t}=\bar{C}$
- UIP : $1+i_{t}=(1+i^*_{t}) \frac{E_{t+1}}{E_{t}}$
- Equilibrio mercado de dinero $M_{t}^d=M_{t}^S=M_{t}$ : $L(\bar{C},i_{t})$
- Restricción fiscal fija : $\frac{M_{t}-M_{t-1}}{P_{t}} - (B_{t}^{g*}-B_{t-1}^{g*})=DEF_{t}$

Eso ultimo quiere decir que el deficit lo financias perdiendo reservas o con señoreaje. Hay 6 variables y 5 ecuaciones, por lo que se necesita una regla de política monetaria. Ahora hay un nuevo instrumento de política posible que es el tipo de cambio. Pero solamente se puede usar uno de los tres posibles porque para que se cumpla UIP, tiene que haber libre movilidad de capitales. No se puede controlar simultáneamente control de cambios, libre movilidad de capitales y política monetaria independiente (elegir $i_{t}$ o $M_{t}$).

### Tipo de Cambio Fijo
**Equilibrio:** Se determina un tipo de cambio $E_{t}=\bar{E}$ para todo $t$. Por PPP y con $P^*_{t}=1$, los precios locales son constantes. Además, por la paridad de tasas $i_{t}=i^*_{t}=i^*$. Entonces, la demanda de dinero también es fija porque $M_{t}=\bar{E} L(\bar{C},i^*)=\bar{M}$. Si la demanda de dinero es constante, el señoreaje es 0, porque ya no puede recaudar cambiando la oferta monetaria; la demanda va a ser la misma. Eso lleva a que las reservas caigan en la proporción del déficit: $0 - (B_{t}^{g*}-B_{t-1}^{g*})=DEF_{t} \to (B_{t}^{g*}-B_{t-1}^{g*})=-DEF_{t}$. Este régimen es insostenible si el deficit persiste para siempre: te quedas sin reservas.

**Devaluación:** Si en $t=t_{0}$ se devalúa de manera sorpresiva, se pasa a tener dos periodos: 
- Cuando $t<t_{0}$ $E_{t}=\bar{E}$
- Cuando $t>t_{0}$ $E_{t}=\bar{E}'>\bar{E}$
Sube el nivel de precios, pero el nivel y crecimiento esperado a partir de ahí es constante. La tasa de interés hoy se determina por lo que pasa en el futuro por ende no cambia ya que no cambia la tasa de depreciación esperada. El consumo tampoco se afecta por neutralidad. Lo que si se ve afectado es la demanda de dinero, que por un periodo es mayor y por ende en $t_{0}$ el señoreaje es positivo.
### Crawling Peg
**Equilibrio:**  Establece política de $\frac{E_{t}}{E_{t+1}}=1+d_{t}$. La paridad entonces es $i_{t}=(1+i^*)(1+d)-1$, o sea que la tasa de interés es una función de la tasa de depreciación $i(d)$ y es constante. Eso implica que la demanda es constante $\frac{M_{t}}{P_{t}}=L(\bar{C},i(d))$, por lo que para que $M_{t}$ sea constante, tiene que crecer a la misma tasa que los precios, $\frac{M_{t}}{M_{t-1}}=1+d$. El señoreaje va a ser $\frac{M_{t}-M_{t-1}}{P_{t}}=\frac{M_{t}}{P_{t}} - \frac{M_{t}}{P_{t}} \frac{M_{t-1}}{M_{t}}=L(\bar{C},i(d))\left( 1-\frac{1}{1+d} \right)$. Es la misma situación que la curva de Laffer cuando se controlaba el crecimiento de la base monetaria. 

**Cambio en el Nivel de Devaluación - Sorpresiva:** Cambia el nivel de $E_{t}$ en $t=0$ y es mas alto de lo esperado, es $E'_{t}$. Pero si sigue creiblemente $d_{t}=d$ constante, entonces la tasa de interés no cambia y tiene que subir la demanda en la misma proporción que subió el nivel de precios. El señoreaje es:
$$
L\left[ \bar{C},i(d) \right]  \left( 1-\frac{E_{t_{0}-1}}{E'_{t_{0}}} \right) > L\left[ \bar{C},i(d) \right]  \left( 1-\frac{E_{t_{0}-1}}{E_{t_{0}}} \right) 
$$
Es decir, es mayor del que hubiera sido si no hubiera cambiado el nivel de tipo de cambio

**Cambio en la Tasa de Devaluación - Anticipada:** anuncia que $d_{t}=d'>d$  en $t>t_{0}$. Al momento del anuncio, el tipo de cambio que se esperaba era $E_{t_{0}}$ para el periodo siguiente, dada la regla anterior. Eso afecta la tasa de interés, que ahora espera algo más alto que antes. $i(d')$ es la tasa de $t_{0}$ en adelante. Al aumentar la tasa se reduce la demanda de dinero y el señoreaje (es el mismo análisis de curva de Laffer que en economía cerrada). El cambio en la tasa de crecimiento de la depreciación es la anticipación de un cambio en el nivel. La anticipación de un cambio en el nivel reduce el ingreso por señoreaje a través de la tasa de interés.


# Clase 5 (29-10) Crisis Cambiaria (Krugman)
**Crisis de Balanza de Pagos**: El gobierno no quiere o no puede cumplir obligaciones financieras. Estas obligaciones de definen de manera amplia: pueden ser deuda pública o satisfacer excesos de demanda u oferta de divisas si estaban en un régimen de tipo de cambio fijo, con un compromiso implícito e explícito de mantenerlo.

**Crisis Cambiaria**: En un caso en el que controla el tipo de cambio, con algún peg o flotando dirty, es cuando se ve obligado a devaluar más de lo esperado. Si estaba controlando el tipo de cambio, entonces si sube la demanda pierde muchas reservas lo cual puede imposibilitar que se mantenga el tipo de cambio que habían fijado, viéndose obligado a devaluar. Si la expectativa de que eso suceda se sale de control y mucha gente lo espera, llega a una corrida bancaria. Es un **ataque especulativo**. La crisis cambiaria es un tipo de crisis de balanza de pagos

Hay dos modelos para ver esos fenómenos. 1) La inconsistencia entre política fiscal y el peg 2) El sesgo inflacionario y equilibrios múltiples.

### Ejemplo Argentina
De inicios de octubre a finales noviembre de 2001 las reservas del BCRA venían cayendo y el ultimo dia de noviembre pierden 2 mil millones de dólares en un día (ataque especulativo). El primer dia de diciembre implementan el corralito. 

### Crisis Cambiaria con peg insostenible
En el modelo MIU quedaban con las ecuaciones de equilibrio:
$P_{t} = \mathcal{E}_{t} \to$  (PPP con $P^*=1$)
$c_{t} =\bar{c}$ 
$\frac{M_{t}}{P_{t}} = L\left( \bar{c}, i_{t} \right) \to$ (Demanda de dinero)
$1+i_t=(1+i^*) \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}} \to$ (UIP)
$\frac{M_{t}-M_{t-1}}{P_{t}}-\left( B_{t}^{g*} - B_{t-1}^{g*}\right)=DEF_{t}$

Propone un país con déficit constante positivo y establece un peg $\mathcal{E}_{t}=\mathcal{E}$. Además, tiene activos externos netos positivos $B_{1}^{g^*}>0$ en el primer periodo y no puede endeudarse con el exterior. Dado eso, con el tipo de cambio fijo no tiene ingresos por señoreaje, por ende pierde reservas cada periodo para financiar el déficit. $\left( B_{t}^{g*} - B_{t-1}^{g*}\right)=-DEF_{t}$. 

Perdiendo así en cada periodo, eventualmente llegas a un momento $T-1$ en el que se queda sin reservas y entonces $B_{T-1}^{g^*}=0$. Nadie le presta a este país porque nunca se espera que elimine el déficit. El punto importante es que en el ultimo periodo de pérdidas de reservas, de $T-2$ a $T-1$, la caída va a ser mayor que el déficit. $\left( B_{t}^{g*} - B_{t-1}^{g*}\right)<-DEF_{t}$. Ese es el **ataque especulativo**. En $t=T$, tiene que abandonar el tipo de cambio fijo y refinanciarse. 

Tres fases de una crisis de Balanza de Pagos:
1. Pre colapso, $t<T-1$
2. Crisis, $T-1$: ataque especulativo y se espera que en $T$ se abandone el tipo de cambio fijo.
3. Post-crisis, $t>T-1$: sin el tipo de cambio fijo, el gobierno sin reservas puede imprimir dinero para financiarse.
### I) Pre-crisis
Incluye desde $t=1$ hasta $t=T-2$. El tipo de cambio está fijo en todos los periodos, entonces $\mathcal{E}_{t-1}=\mathcal{E}_{t}=\mathcal{E}$. Además, se cumple que $P_{t}=\upvarepsilon$, $i_{t}=i^*$ $M_{t}=\mathcal{E} L(\bar{C},i^*)$ y no hay recaudación por señoreaje: $\frac{M_{t}-M_{t-1}}{P_{t}}=0$. Además en todos los periodos pierde reservas para cubrir el déficit fijo $B_{t}^{g^*}-B_{t-1}^{g^*}=-DEF$. 

### III) Post-crisis
El gobierno se queda sin reservas, entonces $B_{t}^{g^*}=0$ en $t=T-1, T, T+1, \dots$ Se empieza a financiar con señoreaje aumentado la base monetaria a tasa $\mu$ para cubrir su déficit: $\frac{M_{t}}{M_{t-1}}=1+\mu$. Entonces, debe ser que flota y los precios ($P$ y $\upvarepsilon$) crecen a la misma tasa: $\frac{P_{t}}{P_{t-1}}=1+\mu$, $\frac{\mathcal{E}_{t}}{\mathcal{E}_{t-1}}=1+\mu$. La tasa de interés crece en función de $\mu$, $1+i_{t}=(1+i^*)(1+\mu)$. Si la base monetaria está creciendo, entonces $i(\mu)>i^*$. El señoreaje queda $\frac{M_{t}-M_{t-1}}{P_{t}}=\frac{\mu}{1+\mu}L(\bar{C},i(\mu))$. Como no tiene reservas, elige el señoreaje tal que cubra el déficit, $DEF=\frac{\mu}{1+\mu}L(\bar{C},i(\mu))$
### II) Crisis
En $t=T-1$ se da el ataque especulativo. Se cumplía el régimen de cambio fijo, $\mathcal{E}_{t-1}=\mathcal{E}_{t}=\mathcal{E}$, pero se espera que en $T$ se termine el régimen de tipo de cambio fijo y se devalúe $\mu$ (porque los agentes tiene conocimiento perfecto del modelo y de que va a haber una crisis que obligue a devaluar para cubrir el gasto, porque no tiene reservas). Se espera que $\frac{\mathcal{E}_{T}}{\mathcal{E}_{T-1}}=1+\mu$. Por ende, $1+i_{T-1}=(1+i^*)(1+\mu)$ y $i_{T-1}=i(\mu)>i^*$.  Eso implica para la demanda que,
$$
\frac{M_{T-1}}{P_{T-1}}=L(\bar{C},i(\mu))
$$
$$
\frac{M_{T-2}}{P_{T-2}}=L(\bar{C},i^*)
$$
El señoreaje va a ser $\frac{M_{T-1}-M_{T-2}}{P_{T-1}}=L_{T-1}(\bar{C},i(\mu))-L_{T-2}(\bar{C},i^*)<0$. Demandan más en $T-2$ porque la tasa era más baja, entonces en el momento de crisis baja la recaudación. Al bajar la tasa por la expectativa de devaluación, reduce tanto la demanda en el periodo que devalúa que en vez de recaudar pierde plata. En el momento de la crisis, cuando todos esperan que se devalué porque no va a haber más reservas de activos externos netos, la pérdida de esos activos es mayor que el déficit (el nivel constante que venía teniendo), es el **ataque especulativo**:
$$
B_{T-2}^{g^*}-B_{T-1}^{g^*}=L_{T-1}(\bar{C},i(\mu))-L_{T-2}(\bar{C},i^*)-DEF <DEF
$$
![[C5.png|500]]
Crisis estilo Krugman (1979) “A Model of Balance-of-Payments Crisis”. No se determina el periodo $T-1$, cuál ese periodo, cómo se llega, sólo qué pasa en ese momento de crisis. Se llaman crisis de primera generación porque surgen es la inconsistencia entre el régimen de tipo de cambio y la necesidad de financiamiento. El los 80' eso pasaba. En los 90' hubieron ataques especulativos a pesar de que la situación de reservas no era mala, entonces hay otros modelos: primera generación, con multiples equilibrios, y de tercera generación, con fricciones financieras. 

# Clase 6 (30-10) Crisis Cambiaria (Obstfeld)

El modelo a la Krugman partía de que era inconsistente la política fiscal que requiere financiarse constantemente y un tipo de cambio rígido. Algunos países sufrían esas corridas de $T-1$ pero sin desbalances extremos que asume Krugman. Por ejemplo, en Europa antes de asumir el Euro. Como condición antes de meterse todas en el euro, tenían que tener equilibrio fiscal y cosas así, para ser parte. Además tenían que asegurar que sus monedas no sufran fluctuaciones muy extremas, es decir que no podian devaluar para generar ganancia de competitividad y ganancias fiscales en euro. Si eso pasa muy seguido, el euro podria solucionar esos conflictos que eventualmente podían devenir en guerras. Muchos establecen bandas para lograr eso. Pero en los 90 sufren corridas y saltos pero sin financiar deficit con reservas y esos problemas. 

El modelo trata de explicar por qué pasaba eso con multiples equilibrios, si estas en un equilibrio estable, pero pasa algo moverse al otro equilibrio posible y consistente con las condiciones de la economía pero con un tipo de cambio mas alto (devaluación óptimamente mas alta). Si los dos son posibles, si todos de repente piensan coordinar en el otro equilibrio a vos también te conviene coordinar en el otro equilibrio. Con calvo, era la tasa de interés más alta que surgía por una profesía auto-cumplida, aca es con un tipo de cambio mas alto. 

### Modelo Barro-Gordon de Crisis Cambiaria
Este es un modelo basado Obstfeld (1996), del tipo Barro-Gordon con sesgo inflacionario pero con multiples equilibrios, que el original no tenía. Primero plantea PPP y $P_{t}^*=1$, entonces la depreciación es la inflación. En el modelo de Barro-Gordon el gobierno elegía una inflación que maximizaba su beneficio, lo que en este modelo es lo mismo que elegir una tasa de depreciación. El comportamiento del sector privado es la curva de Phillips:
$$
 \pi=\pi^{e} +(y-\bar{y})+\underbrace{z}_{\text{shock inflacionario}\sim(0,\sigma)}
$$
Con relación a Barro-Gordon, estaría diciendo que $\theta=1$. El gobierno elige $\pi$ para minimizar:
$$
L=(y-\bar{y}-k)^2 + \chi \pi^2 +C(\pi)
$$
$\chi \pi^2$ es el costo de producir inflación (de modificar la tasa de depreciación). $C(\pi)$ es el costo de reputación/costo político de producir inflación. En este modelo, puede ser 0, ser alto o bajo. 
$$
C(\pi) =
\begin{cases}
\bar{c} \quad \text{si} \quad \pi >0   \quad \to \text{gobierno fija y sube el TC: costo por depreciacion} \\
0 \quad \text{si} \quad \pi =0 \quad \to \text{el gobierno no cambia el TC: deja flotar} \\
\underline{c} \quad \text{si} \quad \pi <0  \quad \to \text{gobierno fija y baja el TC: costo por apreciar}
\end{cases}
$$
Asume que $\underline{c}$ es tan grande que nunca le conviene apreciar. Entonces sus opciones son no hacer nada y deja fijo el tipo de cambio ($\pi=0$), o devaluar ($\pi>0$). Estos serian costos en términos de producto? No hay commitment entonces toma $\pi^e$ como dado. Sus variables de decisión son $y$ (producto) y $\pi$ (devaluación). 

### Caso flotación
Es flotación porque no hay costo por cambiar los precios?. Reemplazando la curva de Philips en la función de pérdida:
$$
L=([\pi-\pi^{e}-z]-k)^2 + \chi \pi^2 
$$
Resolviendo el problema
$$
\min_{\pi} \quad ([\pi-\pi^{e}-z]-k)^2 + \chi \pi^2 
$$
se obtienen las CPO:
$$
2([\pi-\pi^{e}-z]-k) + 2\chi \pi=0
$$
$$
-2(\pi^{e}+z+k) =-2\chi \pi -2\pi
$$
$$
\frac{\pi^{e}+z+k}{1+\chi}=\pi^\text{flex}
$$
Esa es la inflación optima que elige el gobierno dados esos datos (la funcion de reaccion). Si hay shock inflacionario $z$, la inflación elegida es mayor, pero no es una relación de aumento 1 a 1 como indica la curva de Philips, sino que está moderado por el costo $\frac{1}{1+\chi}$. Reemplazando la inflación que elige el gobierno en su función de pérdida:
$$
L=(\left[ \frac{\pi^{e}+z+k}{1+\chi} \right] - (\pi^{e}+z+k) )^2 + \chi \left[ \frac{\pi^{e}+z+k}{1+\chi} \right] ^2 
$$
$$
L=\left(  \frac{\chi}{1+\chi} (\pi^{e}+z+k)  \right)^2 + \chi \left[ \frac{\pi^{e}+z+k}{1+\chi} \right] ^2 
$$
$$
L^\text{flex}=\frac{\chi}{1+\chi}  (\pi^{e}+z+k)^2
$$
Ese es el costo total que asume si deja flotar. (Cuando elige la inflación optima dada la flotación)
### Caso peg  
Cuando está fijo, eso quiere decir que $\pi=0$, entonces la pérdida es
$$
L=([-\pi^{e}-z]-k)^2 
$$
$$
L^\text{fix}=(\pi^e+z+k)^2 
$$
$L^\text{fix}$ es mayor que $L^\text{flex}$ porque, al decidir su inflación optima, con flex la inflación elegida es mayor y el producto es mayor (tal que desplaza el costo macroeconómico $\chi$ por la mayor inflación). 
$$
L^\text{flex}=\frac{\chi}{1+\chi} L^\text{fix}
$$
### Decisión de devaluar
Si el gobierno ya esta fijando el tipo de cambio, entonces puede mantener fijo o devaluar. El costo económico de mantener fijo es $L^\text{fix}$. El costo de devaluar (mover el tipo de cambio) son los costos macroeconómicos de movimiento de tipo de cambio $L^\text{flex}$ (que son menores que los de fijar), pero en este modelo también tiene un costo político desviarse del fix; ese costo es $\bar{c}$, para el caso de devaluar y subir el tipo de cambio nominal. Entonces va a devaluar si los costos totales por mover el tipo de cambio son menores que los de mantenerlo fijo:
$$
L^\text{fix}>L^\text{flex} + \bar{c}
$$
$$
L^\text{fix}-L^\text{flex} > \bar{c}
$$
$$
\frac{1}{1+\chi} (\pi^e+z+k)^2 > \bar{c}
$$
Devalúa si $z$ es muy grande, devalúa. El $z$ para el que pasa eso lo llamamos $\bar{z}$ y entonces devalúa si el shock es
$$
\pi^e+z +k>\sqrt{ \bar{c}(1+\chi) } 
$$
$$
z>\sqrt{ \bar{c}(1+\chi) } -k-\pi^e
$$
$$
z>\bar{z}
$$
Con un tipo de cambio fijo, la actividad $y$ es la que se tiene que ajustar al shock. Si el shock es muy grande y el costo en actividad es muy doloroso, prefiere devaluar y asumir el costo político. Los múltiples equilibrios surgen de que el cutoff $\bar{z}$ es determinado por las expectativas $\pi^e$ que a su vez son determinadas por las decisiones del gobierno y esas también son determinadas por $\bar{z}$. Esas expectativas están dadas por:
$$
\mathbb{E}(\pi)=\mathbb{E}(\pi|z>\bar{z}) P(z>\bar{z})+\mathbb{E}(\pi|z\leq\bar{z}) P(z\leq \bar{z})
$$
Con expectativas racionales, los agentes saben que cuando $z<\bar{z}$ va a fijar el tipo de cambio y $\pi=0$. 
$$
\mathbb{E}(\pi)=\mathbb{E}(\pi|z>\bar{z}) P(z>\bar{z})
$$
Para calcular eso asume que $z$ está distribuida uniformemente entre $[-Z,Z]$. Para las uniformes la regla era que si $X$ estaba distribuida entre $a$ y $b$, entonces $P(c<X<d)= \frac{d-c}{b-a}$. Entonces $P(z>\bar{z})= \frac{Z-\bar{z}}{2Z}$. Ademas, $\mathbb{E}(z|z>\bar{z})=\frac{1}{2} (Z+\bar{z})$.

Cuando $\bar{z}<-Z$, o sea el cutoff para devaluar es siempre menor que el mínimo de la distribución de $z$, entonces la probabilidad de que un shock induzca una devaluación es 1, porque siempre van a ser mayores los shocks que lo mínimo necesario para devaluar ($\bar{z}$). En ese caso, 
$$
\bar{z}<-Z \quad \to \quad \sqrt{ \bar{c}(1+\chi) } -k-\pi^e<-Z  \quad \to \quad \sqrt{ \bar{c}(1+\chi) } -k+Z<\pi^e
$$
Si la expectativa de devaluación/inflación es muy grande, más grande que ese numero de corte $\bar{\pi^e}=\sqrt{ \bar{c}(1+\chi) } -k+Z$, (o si el corte $\bar{\pi^e}$ es muy chico) entonces si o si va a haber flotación y devaluación. Mientras mas bajo sea ese valor de corte mas probable que sea una devaluación. Eso es cuando menor sea el costo de reputación, no tiene sentido fijar para el gobernador, lo mismo para $\chi$, porque no te cuesta tanto la inflación. Además mientras mayor sesgo de inflación $k$, es decir mientras mas requiera el politico que el producto supere al producto potencial, mas probable flotar/devaluar.   
### Equilibrios Múltiples
Quedaban dos casos:
**1)** Cuando $\bar{\pi^e}<\pi^e$ o $\bar{z}<-Z$ entonces si o si estas flotando. En ese caso, la función de reacción del gobierno es $\frac{\pi^{e}+z+k}{1+\chi}=\pi^\text{flex}$. La gente sabe que el gobierno elige eso y entonces la inflación esperada es $\mathbb{E}(\pi)=\mathbb{E}(\frac{\pi^{e}+z+k}{1+\chi})$. Como $E(z)=0$ entonces:
$$
\mathbb{E}(\pi)=\frac{\pi^{e}+k}{1+\chi}
$$
**2)** Para el otro caso cuando $\bar{z}>-Z$ ($\bar{\pi^e}>\pi^e$), para saber $\mathbb{E}(\pi)=\mathbb{E}(\pi|z>\bar{z}) P(z>\bar{z})$ primero hay que saber $\mathbb{E}(\pi|z>\bar{z})$. Es decir la inflación esperada dado que flota. Como flota, usa esa función de reacción que sabe. $\mathbb{E}(\pi|z>\bar{z})=\frac{\pi^{e}+\mathbb{E}(z|z>\bar{z})+k}"{1+\chi}=\frac{\pi^{e}+\frac{Z+\bar{z}}{2}+k}{1+\chi}$. Entonces:
$$
\mathbb{E}(\pi)=\mathbb{E}(\pi|z>\bar{z}) P(z>\bar{z})=\frac{\pi^{e}+\frac{Z+\bar{z}}{2}+k}{1+\chi}  \cdot \frac{Z-\bar{z}}{2Z}
$$
Ahora incorporando expectativas racionales, $\pi^e=\mathbb{E}(\pi)$. En el primer caso, donde es siempre flexible, $\mathbb{E}(\pi)=\pi^e=\frac{\pi^{e}+k}{1+\chi}$. Por ende 
$$
\pi^e-\pi^e \frac{1}{1+\chi}=\frac{k}{1+\chi}
$$
$$
\pi^e \frac{\chi}{1+\chi}=\frac{k}{1+\chi}
$$
$$
\pi^e =\frac{k}{\chi}
$$
Es igual al resultado de sesgo de inflación de Barro-Gordon. En ese modelo se asumía que era flexible porque era la inflación. Como $k>0$, ya saben que van a tratar de usar la inflación para exceder el producto por encima del potencial y eligen una inflación que anticipa eso. En consecuencia la inflación era eso en promedio pero el producto no terminaba siendo más grande como quería el político. \sqrt{ \bar{c}(1+\chi) } -k-\pi^e
Para el otro caso es más difícil: 
$$
\pi^e=\frac{\pi^{e}+\frac{Z+\bar{z}}{2}+k}{1+\chi}  \cdot \frac{Z-\bar{z}}{2Z}
$$
$$
\pi^e=\frac{\pi^{e}+\frac{Z+\sqrt{ \bar{c}(1+\chi) } -k-\pi^e}{2}+k}{1+\chi}  \cdot \frac{Z-\sqrt{ \bar{c}(1+\chi) } -k-\pi^e}{2Z}
$$
El problema es que no es lineal en $\pi^e$ entonces al despejar quedan términos cuadráticos. Entonces la depreciación va a ser 0 si $z<\bar{z}$ estando definidas las expectativas.  si son muy grandes las expectativas más chico es $\bar{z}$ y menos probable es que se mantenga el tipo de cambio fijo y la depreciación sea 0. Entonces la expectativa de producto más alta de equilibrio genera menor producto, lo cual aumenta el incentivo del gobierno a efectivamente devaluar para salvar los costos de producto que le genera el tipo de cambio fijo. 

# Clase 7 (5-11) TNT con rigideces
Asume ley de único precio, $P_{t}^T=\mathcal{E}_{t}P_{t}^*$, para los transables. Para los no transables los precios se determinan en competencia monopolista. Es decir los bienes finales no transables se producen con un continuo de infinitas variedades de insumos con monopolio por variedad. El IPC es $P_{t}=(P_{t}^{T})^{\omega }(P_{t}^{N})^{1-\omega }$ y hay autoridad monetaria. 

### Hogares
Maximizan la función:
$$
\mathbb{E}_{t}\left\{  \sum_{t=0}^{\infty} \beta^{t} \left[ \omega\frac{ (C_{t}^T)^{1-\sigma}}{1-\sigma} + (1-\omega)\frac{ (C_{t}^N)^{1-\sigma}}{1-\sigma} -H_{t} + v\left( \frac{M_{t}}{P_{t}} \right)  \right]  \right\} 
$$
sujeta a 
$$
W_{t}H_{t}+\mathcal{E}_{t}B^*_{t-1} (1+i^*_{t-1}) +B_{t-1} (1+i_{t-1})+M_{t-1}+\Sigma_{t}=P_{t}^TC_{t}^T+P_{t}^NC_{t}^N+ \mathcal{E}_{t}B^*_{t}+M_{t}+T_{t}
$$
Las variables de decisión son el consumo de ambos bienes, las tenencia de dinero, la tenencia de ambos tipos de bonos y las horas trabajadas. Entonces, tenemos 6 condiciones de primer orden. Respecto de los transables:
$$
\beta^t \omega (C_{t}^T)^{-\sigma} = \lambda_{t} P_{t}^T
$$
Respecto de los no transables
$$
\beta^t (1-\omega) (C_{t}^N)^{-\sigma} = \lambda_{t} P_{t}^N 
$$
Respecto del trabajo:
$$
\beta^t=\lambda_{t} W_{t}
$$
Respecto de los bonos internacionales:
$$
 \mathbb{E}_{t} (\lambda_{t+1}\mathcal{E}_{t+1}) (1+i_{t}^*) =\lambda_{t}\mathcal{E}_{t} 
$$
Respecto de los bonos nacionales:
$$
 \mathbb{E}_{t} (\lambda_{t+1} )(1+i_{t}) =\lambda_{t}
$$
Respecto del dinero:

$$
\beta^t v'\left( \frac{M_{t}}{P_{t}} \right) \frac{1}{P_{t}} = \lambda_{t}-\mathbb{E}(\lambda_{t+1})
$$
Usando $P_{t}^T=\mathcal{E}_{t}P^*_{t}$, divide la de no transables y transables. 
$$
\frac{1-\omega}{\omega} \left( \frac{C_{t}^T}{C_{t}^N} \right)^{\sigma} =\frac{P_{t}^N}{P_{t}^T}
$$Divide la de salario y no transables
$$
\frac{1}{1-\omega}(C_{t}^N)^\sigma=\frac{W_{t}}{P_{t}^N}
$$

Reemplaza la de transables en las dos de los bonos y en la del dinero reemplaza la de bonos nacionales y después la de transables. La de bonos internacionales:
$$
 \mathbb{E}_{t} (\lambda_{t+1}\mathcal{E}_{t+1}) (1+i_{t}^*) =\lambda_{t}\mathcal{E}_{t} 
$$
La de transables:
$$
\beta^t \frac{\omega (C_{t}^T)^{-\sigma}}{P_{t}^T} = \lambda_{t} 
$$
Reemplazada en la de bonos internacionales
$$
\mathbb{E}_{t} \left( \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}} \beta^{t+1} \frac{\omega (C_{t+1}^T)^{-\sigma}}{P_{t+1}^T}  \right) (1+i_{t}^*) =\beta^t \frac{\omega (C_{t}^T)^{-\sigma}}{P_{t}^T} 
$$
$$
\beta \mathbb{E}_{t} \left( \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}}  \frac{(C_{t+1}^T)^{-\sigma} P_{t}^T}{P_{t+1}^T}  \right) (1+i_{t}^*) =(C_{t}^T)^{-\sigma}
$$
$$
\beta \mathbb{E}_{t} \left( \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}}  \frac{(C_{t+1}^T)^{-\sigma} P_{t}^T}{P_{t+1}^T}  \right) (1+i_{t}^*) =(C_{t}^T)^{-\sigma}
$$
$$
\boxed {\beta \mathbb{E}_{t} \left( \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}} (C_{t+1}^T)^{-\sigma}  \frac{ (1+i_{t}^*) }{1+\pi^T_{t+1}}  \right) =(C_{t}^T)^{-\sigma}}
$$

La bonos locales:
$$
 \mathbb{E}_{t} \left( \beta^{t+1} \frac{\omega (C_{t+1}^T)^{-\sigma}}{P_{t+1}^T}  \right) (1+i_{t}) =\beta^t \frac{\omega (C_{t}^T)^{-\sigma}}{P_{t}^T} 
$$
$$
 \mathbb{E}_{t} \left( \beta \frac{ (C_{t+1}^T)^{-\sigma} P_{t}^T }{P_{t+1}^T}  \right) (1+i_{t}) = (C_{t}^T)^{-\sigma}
$$
Reemplaza la anterior
$$
 \mathbb{E}_{t} \left( \beta \frac{ (C_{t+1}^T)^{-\sigma} P_{t}^T }{P_{t+1}^T}  \right) (1+i_{t}) = \beta \mathbb{E}_{t} \left( \frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}} (C_{t+1}^T)^{-\sigma}  \frac{ (1+i_{t}^*) }{1+\pi^T_{t+1}}  \right) 
$$
$$
\boxed{(1+i_{t}) =(1+i_{t}^*) \frac{\mathbb{E}_{t}\left(\frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}} \frac{(C_{t+1}^T)^{-\sigma}}{P_{t+1}^T}    \right)}{\mathbb{E}_{t} \left( \frac{(C_{t+1}^T)^{-\sigma}}{P_{t+1}^T} \right) } }
$$
Y en la de dinero se obtiene la demanda implícita
$$
\beta^t v'\left( \frac{M_{t}}{P_{t}} \right) \frac{1}{P_{t}} = \frac{\omega (C_{t}^T)^{-\sigma}}{P_{t}^T} \left( \frac{i_{t}}{1+i_{t}} \right) 
$$
$$
\frac{M_{t}}{P_{t}} = L(C_{t},i_{t})
$$

Usando el **Consumo agregado**
$$
\frac{(C_{t} ^T)^{-\sigma}}{P_{t}^T} = \frac{(C_{t})^{-\sigma}}{P_{t}}
$$
Se obtiene la UIP ajustada:
$$
(1+i_{t}) =(1+i_{t}^*) \frac{\mathbb{E}_{t}\left(\frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}} \frac{1}{1+\pi_{t+1}} (\frac{C_{t+1}}{C_{t}} )^{-\sigma}   \right)}{\mathbb{E}_{t} \left( \frac{1}{1+\pi_{t+1}} (\frac{C_{t+1}}{C_{t}} )^{-\sigma} \right) } 
$$
### Firmas
En el sector de no transables hay un continuo de $J$ monopolistas. La firma $j$ enfrenta el problema:
$$
Y_{j,t}^N= A_{t}H_{j,t}
$$
Cambiar precios tiene el costo
$$
Cost = \phi_{N}(p_{j,t}^N - p_{j,t-1}^N )^2
$$
Ingresos son la diferencia con el precio de monopolio:
$$
-\delta_{N} (p_{j,t}^N - p_{j,t}^{N*} )^2
$$
$$
p_{j,t}^{N*}=\mu+mc_{t}^N
$$
$$
mc_{t}^N = w_{t} - a_{t}
$$
Todas resuelven el mismo problema
$$
\min_{p^N} \quad \delta_{N} (p_{j,t}^N - p_{j,t}^{N*} )^2 + \phi_{N}(p_{j,t}^N - p_{j,t-1}^N )^2+ \beta\mathbb{E}_{t}(p_{j,t+1}^N - p_{j,t}^N )^2
$$
$$
\min_{p^N} \quad \delta_{N} (p_{j,t}^N - \mu+mc_{t}^N )^2 + \phi_{N}(p_{j,t}^N - p_{j,t-1}^N )^2+ \beta\mathbb{E}_{t} (p_{j,t+1}^N - p_{j,t}^N )^2
$$
entonces el equilibrio es simétrico
$$
\pi^N_{t}= \frac{\delta_{N}}{\phi_{N}} (p_{j,t}^N - \mu+mc_{t}^N)+ \beta \mathbb{E}_{t}(\pi^N_{t+1})
$$

### Gobierno
Tiene el presupuesto:
$$
B_{t}+M_{t}+T_{t}=B_{t-1}(1+i_{t-1})+M_{t-1}
$$
El mercado de no transables se limpia
$$
Y_{t} ^N=C_{t}^N +CostP_{t}^N
$$
el $CostP_{t}^N$ es el costo en recursos de ajustar los precios no transables. Entonces toda la producción de las firmas $Y_{t}^N=∫Y_{j,t}^Ndj$ es usado en parte en consumo y en parte en costo de poner el precio que tenga en $t$. Entonces los beneficios nominales totales son
$$
\Sigma_{t} = P_{t}^TY_{t}^T + P_{t}^N∫Y_{j,t}^N dj-W_{t}∫H_{j,t}dj - P_{t}^N CostP_{t}^N
$$
Reemplaza el presupuesto del gobierno y la formula de beneficios en el presupuesto de los agentes_
$$
\begin{matrix}
W_{t}∫H_{j,t}dj+\mathcal{E}_{t}B^*_{t-1} (1+i^*_{t-1}) +B_{t-1} (1+i_{t-1})+M_{t-1}+P_{t}^TY_{t}^T + P_{t}^N∫Y_{j,t}^N dj-W_{t}∫H_{j,t}dj - P_{t}^N CostP_{t}^N  \\
=P_{t}^TC_{t}^T+P_{t}^NC_{t}^N+ \mathcal{E}_{t}B^*_{t}+M_{t}+B_{t-1}(1+i_{t-1})+M_{t-1}-M_{t}-B_{t}
\end{matrix}
$$

y después reemplaza con LOOP:
$$
\frac{B_{t}^*}{P_{t}^*}=Y_{t}^T-C_{t}^T+\frac{B_{t-1}^*}{P_{t}^*} (1+i_{t-1}^*)
$$
Llega a la balanza de pagos
$$
\tilde{B_{t}^*} = \underbrace{Y_{t}^T - C_{t} ^T}_{\text{trade balance}}  + \tilde{B} ^*_{t-1} \frac{1+i_{t-1}^*}{1+\pi_{t+1}^T}
$$
### Todas las condiciones de equilibrio
Bonos internacionales:
$$
 \mathbb{E}_{t} \left( \beta \frac{ (C_{t+1}^T)^{-\sigma} P_{t}^T }{P_{t+1}^T}  \right) (1+i_{t}) = (C_{t}^T)^{-\sigma}
$$
Balanza de pagos:
$$
\tilde{B_{t}^*} = \underbrace{Y_{t}^T - C_{t} ^T}_{\text{trade balance}}  + \tilde{B} ^*_{t-1} \frac{1+i_{t-1}^*}{1+\pi_{t+1}^T}
$$
Esas dos son un sistema para **determinar $C_{t}^T$ y $\tilde{B_{t}^*}$** con todas variables exógenas (precios extranjeros transables y dotación transable). El sector transable es completamente aparte del resto de la economía.

---
Precio relativo no transables y transables
$$
\frac{1-\omega}{\omega} \left( \frac{C_{t}^T}{C_{t}^N} \right)^{\sigma} =\frac{P_{t}^N}{P_{t}^T}
$$Salario relativo no transable
$$
\frac{1}{1-\omega}(C_{t}^N)^\sigma=\frac{W_{t}}{P_{t}^N}
$$
Producción endogena no transable
$$
Y_{t}^N=A_{t}H_{t}
$$
Clearing mercado no transable
$$
Y_{t}^N =C_{t}^N + CostP_{t}^N
$$
Precios de equilibrio simétrico elegido por monopolistas
$$
\pi^N_{t}= \frac{\delta_{N}}{\phi_{N}} (p_{j,t}^N - \mu+mc_{t}^N)+ \beta \mathbb{E}_{t}(\pi^N_{t+1})
$$
Costo marginal real de los no transables
$$
rmc_{t}^N=w_{t}-a_{t}-p_{t}^N
$$
LOOP
$$
P_{t}^T=\mathcal{E}_{t}P_{t}^*
$$
IPC
$$
P_{t}=(P_{t}^{T})^{\omega }(P_{t}^{N})^{1-\omega }
$$
Todas estas 8 se pueden combinar en logaritmos:
$$
\pi_{t} ^N = \frac{\delta_{N}}{\phi_{N}  } (\sigma c_{t}^N - a_{t} + \mu - \omega) + \beta \mathbb{E}_{t}(\pi_{t+1}^N)
$$
$$
p_{t}^{NT}= \omega^{-1} + \sigma (c_{t}^T- c_{t}^N) 
$$
$$
p_{t}^{NT}=p_{t-1}^{NT} + \pi_{t} ^N - \epsilon_{t} - \pi_{t}^*
$$
**Así queda determinado $p_{t}^{NT}$, $\pi_{t}^N$ y $c_{t}^N$.** 

---
Quedan estas:

Demanda de dinero:
$$
\frac{M_{t}}{P_{t}} = L(C_{t},i_{t})
$$
UIP ajustada:
$$
(1+i_{t}) =(1+i_{t}^*) \frac{\mathbb{E}_{t}\left(\frac{\mathcal{E}_{t+1}}{\mathcal{E}_{t}} \frac{1}{1+\pi_{t+1}} (\frac{C_{t+1}}{C_{t}} )^{-\sigma}   \right)}{\mathbb{E}_{t} \left( \frac{1}{1+\pi_{t+1}} (\frac{C_{t+1}}{C_{t}} )^{-\sigma} \right) } 
$$
Que determinan solo dos de tres variables de política monetaria, hay que establecer una regla con alguna de $M_{t}$, $\mathcal{E}_{t}$ o $i_{t}$

### Tipo de Cambio Real
$$
RER_{t} = \frac{\mathcal{E}_{t}P_{t}^*}{P_{t}}
$$
Si sube el tcr se deprecia la moneda local. El consumo doméstico es más barato que afuera. Para los locales es más caro ir afuera. Usando LOOP el nivel de precios es
$$
P_{t}=(P_{t}^T)^\omega (P_{t}^N)^{1-\omega}=(\mathcal{E}_{t} P_{t}^*)^{\omega} (P_{t}^N)^{1-\omega}
$$

$$
RER_{t} = \frac{\mathcal{E}_{t}P^*_{t}}{(\mathcal{E}_{t} P_{t}^*)^{\omega} (P_{t}^N)^{1-\omega}} = \frac{P_{t}^T}{(P_{t}^T)^{\omega} (P_{t}^N)^{1-\omega}}  
$$
$$
RER_{t}=(P_{t}^{NT})^{-(1-\omega)}
$$
Si sube el precio relativo de los no transables hay una apreciación real (baja el tcr). El consumo doméstico se vuelve más caro. Si baja es una depreciación real. Con precios flexibles y neutralidad, los precios nominales de no transables compensan exactamente los cambios en el tipo de cambio nominal; el tcn no tiene ningún efecto real.
# Clase 8 (6-11) TNT Política óptima y shocks
### Politica Optima
Lo ideal para un planner es que $\pi^N_{t}=0$ porque cambiar esos precios no transables tiene costo social que quiere minimizar. En equilibrio dadas las ecuaciones del modelo y la decision de los agentes se cumplía que:
$$
p_{t}^{NT}=p_{t-1}^{NT} + \pi_{t} ^N - \epsilon_{t} - \pi_{t}^*
$$
$$
 \epsilon_{t} =p_{t-1}^{NT} - p_{t}^{NT}+ \pi_{t} ^N  - \pi_{t}^*
$$
Optimamente:
$$
 \epsilon_{t} =p_{t-1}^{NT} - p_{t}^{NT}  - \pi_{t}^*
$$
Si hay algún shock al precio relativo de los no transables, lo óptimo es mover el tipo de cambio para desplazar completamente ese movimiento. Es decir, si aumenta $p^{NT}$ debería apreciar y vice versa. En este sentido un tipo de cambio fijo no es óptimo. Esto es así si solo hay rigideces en los no transables. Si fueran los dos rígidos, usar el tipo de cambio para desplazar costos de no transables te genera volatilidad costosa en los transables. Se genera un trade-off entre ambos efectos y va a depender de cual es más rígido (cuál genera más costos). 

### Shocks

**Aumenta $Y_{t}^T$**: 
Por efecto ingreso, consume más de $T$ y de $N$. Mejora la balanza comercial y baja la deuda. Es un shock apreciatorio: necesitar bajar el tcn para compensar un aumento en precio de no transables. Los no transables aumentan porque aumentó la demanda de $N$. La oferta de $N$ cae porque ahora con mas ingreso trabajan menos. La respuesta al aumento en $p^{NT}$ puede ser:
- Óptima: Como aumentó el precio de los no transables haya costos asociados a eso y la respuesta es apreciar para que el precio relativo se netee y no cambie. Como al final los no transables quedan relativamente igual que antes, la demanda también queda igual que antes
- Peg: Sube el precio de no transables pero menos de lo que es necesario (de lo que subiría en flotación) dado el shock, por los costos. El consumo no transable (y el producto) entonces puede aumentar. 

# Clase 9 (12-11) TNT Política óptima y shocks
**Aumenta $i_{t}^*$**: 
(la FED sube la tasa; aumenta la prima de riesgo emergente) Esto genera efecto ingreso negativo si sos deudor, y un efecto sustitución porque se reduce el consumo presente. Asumiendo que sos deudor en total el efecto es negativo sobre el consumo presente y sobre el producto, se reduce la demanda de ambos bienes. Lo optimo es depreciar y que se ajuste el precio relativo. Con un tipo fijo, cae el precio porque cae el consumo pero menos de lo que debe. Entonces esta más caro de lo que estaría con flotación y se reduce el consumo y el producto
### Ejemplo Argentina
En argentina, cuando hubo un boom de commodities antes de la crisis del 2008, lo óptimo era dejar apreciar la moneda como hizo el resto de latinoamerica. De esa manera, los precios relativos de los no transables podían aumentar en la medida necesaria mediante el ajuste en el tipo de cambio, en lugar de ajustarse el precio de los no transables. 
Los precios de no transables no aumentaban lo necesario para acomodarse al boom debido a las rigideces. Pero no solo eso sino que Argentina hizo todo lo contrario: depreció su moneda y el precio relativo de los no transables aumentó todavía mas de lo que fue inducido por el boom de commodities. Esto causó más consumo del que hubiera habido de otra forma, porque los precios no transables eran mucho mas baratos de lo que debían ser, pero fue aumentando la inflación y aumentando muy rapido, lo cual trajo muchos problemas. 
La inflación de ese momento no salió por señoreaje; había superavit. Fue por depreciar la moneda cuando había que apreciar. Otros países apreciaron cuando subió el precio relativo de los no transables y no tuvieron inflación. Argentina depreció y el precio relativo aumentó hasta más de lo que debía, de manera rígida, por lo que aumentó el producto en el corto plazo pero fue generando inflación.

# Clase 10 (13-11) Mecanismos de Transmisión
### Transmisión
De qué manera la política monetaria, aumento en la tasa por ejemplo, afecta en la economía. Puede controlar el tipo de cambio indirectamente con movimientos en la tasa de interés. 

2 Canales:
1. **Tasa de interés - Yield Curve** : mismo mecanismo que eco cerrada
2. **Expenditure Switch**

El consumo estaba dado por
$$
 \mathbb{E}_{t} \left( \beta \frac{ (C_{t+1}^T)^{-\sigma} P_{t}^T }{P_{t+1}^T}  \right) (1+i_{t}) = (C_{t}^T)^{-\sigma}
$$
que en logaritmos es
$$
c_{t}=\mathbb{E}_{t} (c_{t+1}) - \sigma ^{-1} (i_{t}- E(\pi_{t+1}) - \rho)
$$
iterando...
$$
c_{t} = -\sigma^{-1} \sum_{j=0}^\infty \mathbb{E}_{t}\left\{ i_{t+j} - \pi_{t+1+j} - \rho \right\} 
$$
bajar la yield curve aumenta el consumo y la mayor demanda de ambos bienes, lo cual empuja al precio de no transables (el de no transables no se puede mover salvo por tcn). Entonces tiene que pasar que sube el precio de no transables y/o baja el tipo de cambio nominal (apreciación), puede ser cualquiera de los dos.  

La UIP sin prima de riesgo es
$$
\mathcal{E}_{t} = \sum_{h=0}^{\infty} \mathbb{E}_{t} \left[  i^*_{t+h} - i_{t+h} \right] 
$$
bajar la yield curve SUBE el tc nominal en vez de bajarlo. Con precios flexibles no hay efectos reales y el aumento de precio no transable desplaza el efecto en el consumo completamente, como pasa en los transables. Si son fijos, suben pero no alcanza para desplazar ese efecto y los no transables quedan relativamente baratos y hay inflación no transable. También hay inflación transable porque el tipo de cambio se deprecia y cae en precio relativo en vez de subir. Esa caída produce el segundo canal que es el de **expenditure switching**. 

Al bajar el precio relativo, sube el consumo de no transables y si el modelo es neutral como es este al consumo transable no cambia -> el yield curve aumenta el consumo de transables pero el expenditure switch lo reduce, en este caso, en exactamente la misma medida. Ese es el aisalmiento de los transables que generaba la neutralidad y la dotacion.

### Contracción y Devaluación - Ejemplo Argentina

El tipo de cambio (TC) salta en respuesta a una situación contractiva. Es decir, la economía exige una devaluación para amortiguar el impacto y sufrir menos. Aunque existe una correlación entre contracción económica y devaluación, esta se debe a la necesidad de ajuste frente a rigideces que impiden una corrección más gradual.

**Caso de Argentina: 2001-2002**

- En 2001, la economía argentina sufrió múltiples shocks que culminaron en la devaluación de 2002.
- El tipo de cambio nominal pasó de 1 a 3 (en pesos por dólar) en 2002.
- El desempleo y el subempleo aumentaron considerablemente, reflejando una caída significativa en la actividad económica.

**Crisis desde 1998**

- A partir de 1998, Argentina se enfrentó a una serie de crisis en economías emergentes:
    - Default de Rusia.
    - Crisis en Asia.
    - En 1999, Brasil devaluó su moneda, lo que generó un shock negativo para los bienes transables argentinos. Los productos argentinos se volvieron demasiado caros para los brasileños, limitando las exportaciones.
- Además, Argentina tenía un déficit fiscal significativo, que se volvió costoso y difícil de refinanciar debido a estas crisis globales.

**Expectativas bajo precios flexibles**

- Si los precios fueran flexibles, los shocks contractivos habrían provocado:
    - Una caída en la demanda, especialmente en bienes no transables.
    - Una disminución en el precio relativo de los bienes no transables.
- Con un tipo de cambio fijo y precios flexibles, los precios de los no transables habrían bajado para ajustar la economía.

**Rigideces en salarios y precios**

- En la realidad, los salarios nominales pueden servir como un proxy de los precios de los bienes no transables, ya que estos se producen principalmente con trabajo.
- Sin embargo, tanto los precios como los salarios mostraron rigidez.
    - Por esta razón, los precios relativos de los bienes no transables no ajustaron a la baja como se necesitaba.
    - La caída en la demanda de bienes no transables, junto con la imposibilidad de reducir precios o salarios, provocó una reducción en la producción y el empleo.

**Ajuste necesario: Salario real (W/EW/EW/E)**

- Para restaurar el equilibrio, el salario real debía disminuir (W/EW/EW/E).
- Sin embargo, con un tipo de cambio fijo (EEE) y salarios rígidos (WWW), el ajuste no fue posible.
- La devaluación en 2002 permitió una reducción en el salario real, lo que facilitó la recuperación del empleo.

# Clase 11 (19-11) Fricciones financieras

Modelo TNT pero sin que devaluar y ajustar el tc sea siempre la politica deseable. Ante un shock que requiere un ajuste de precios relativos, con rigideces es optimo que el precio relativo que ajuste sea el tcn y no el precio de no transables. La política monetaria óptima mueve o deja mover el tcn tal que se logre ese ajuste. Un shock negativo entonces requiere una depreciación real. 

### Fricciones
Propone que hay una cantidad de deuda que se desea asumir $D$ y un límite máximo de cuánto te prestan, que es función de indicadores de repago. Entonces debe ser que
$$
D≤f(V)
$$
Se generan ciclos viciosos en los que ante un shock generalizado a $V$ (ej. ingreso), se quiere pedir prestado, pero al bajar $V$ baja también la cantidad que puede prestar, lo cual luego vuelve a reducir $V$ para todos y así. Es el proceso de amplificación del shock es la deflación Fisheriana. Otra forma de verlo es en mayores costos de deuda dados los indicadores $V$:
$$
i^*_{t} = i_{t} ^w + \rho \left(  - \frac{B_{t}^*  / P_{t}^*   }{Y_{t}^T+Y_{t}^NP_{t}^{NT}} \right) 
$$
$\rho$ es la prima de riesgo (negativo en el argumento porque es deudor neto) y usa el PBI en términos transables como indicador de repago. Hay una situación de currency mismatch - efectos de hoja de balance - descalce de monedas - dolarización de pasivos. **Si cae el precio de los no transables,es mas caro repagar.** Esto lo produce que la deuda está en una moneda distinta a la del indicador de repago (PBI está en dolares). Si tengo deuda en moenda extranjero pero mi ingreso en es no transables, si cae el precio relativo de esos para repagar tenes que producir más. Eso lleva a una correlación embi-tcr. 

### Shock externo negativo

**Sin rigideces:** 2 mecanismos, 
- mayores préstamos: ajuste natural por suavización
- depreciación real, baja el precio relativo de los no transables. 
Los dos hacen que suba el ratio deuda a pbi, sube la tasa a la que le prestan. Baja el consumo de amnos bienes, lo cual reduce más que antes el precio relativo. Entre paises va a ser distinto el efecto si tienen riesgos asociados distintos. Uno con embi mas alto le pega menos la deflacion fisheriana porque tiene mas alto el corte de prestamo maximo. 

**Rigideces**: Al usar $\mathcal{E}$ reducis el costo de cambiar $P^N$ pero por las fricciones financieras aumenta el costo de la deuda. En cambio si fijas y dejas que $P^N$ se ajuste a medias y con costos tenes menos costo en prima de riesgo porque por las rigideces $P^N$ baja menos de lo que debería. No es que fijar sea mejor sino que es menos el ajuste que es óptimo, mas cercano al fix. De ahí surge el miedo a flotar. Argentina por ejemplo en 2001 tenia dolarizados sus pasivos (Calvo 2003)

# Clase 12 (20-11) Estabilización
**Planes en países con inflación elevada**

Cuando se implementan planes para reducir la inflación, el enfoque y las medidas adoptadas varían según el contexto. No es lo mismo enfrentar una situación de tasas de inflación extremadamente altas que lidiar con una inflación crónica, como ocurrió en Argentina en 2023 o durante los años 80.

**Hechos estilizados sobre la estabilización de la inflación**

1. En general, la inflación se reduce casi inmediatamente después de implementar un plan de estabilización.
2. Frecuentemente, se fija el tipo de cambio nominal (como en el Plan Austral o la Convertibilidad).
3. Los costos en términos de actividad económica suelen ser acotados: la actividad no cae más de lo que ya venía cayendo previamente.
**Casos históricos**
- **Perdedores de la entre guerra**: Estos casos muestran ejemplos de estabilizaciones exitosas y rápidas.
- En general, no solo se fija el tipo de cambio, sino que también se implementan otras reformas fiscales complementarias.
- La inflación tiene elevados costos sociales que es necesario cortar de raíz.
### Planes de estabilización basados en el tipo de cambio (TC)

- Estos planes suelen terminar en crisis, ya que "siembran la semilla de problemas futuros".
- Cuando no son creíbles, pueden desencadenar un salto cambiario y una crisis.
- **Gráfico 1**: Muchos planes consisten en reducir la tasa de depreciación del tipo de cambio, mediante mecanismos como el crawling peg (tablita) o directamente fijando el tipo de cambio. En promedio, al año T+1 después de la estabilización, se observan devaluaciones del 50%, viniendo de más del 500% en T < T.
- La inflación generalmente permanece por encima de la devaluación. Esto implica que los precios suben más rápido que la depreciación, generando una apreciación real del tipo de cambio (RER).
    - Como la inflación supera a la devaluación, el RER disminuye, generando una apreciación real.
- La actividad económica tiende a mostrar un "boom" inicial tras la estabilización, pero luego se desacelera. Este fenómeno lleva a un deterioro de las cuentas externas, lo que a su vez genera una pérdida de reservas, marcando el inicio de la eventual crisis.

### Planes de estabilización basados en la cantidad de dinero

- Hay menos experiencias de este tipo en comparación con las basadas en el tipo de cambio.
- Ejemplo: **Plan Bonex**.
    - Se reduce la oferta de dinero, lo que genera una contracción de la actividad y un aumento significativo en las tasas de interés.
- **Trade-offs**:
    - _Planes basados en dinero_: Logran reducir la inflación, generan una contracción económica y mantienen la inflación baja de forma persistente. Son adoptados por países con pocas reservas.
    - _Planes basados en tipo de cambio (ERBS)_: Reducen la inflación, generan un aumento inicial en la actividad económica, pero la inflación baja no persiste, y requieren reservas significativas.

Argentina presenta una combinación de enfoques, ya que cuenta con un tipo de cambio fijo, controles de capital y medidas para controlar los agregados monetarios.

## Modelo en tiempo continuo
### Consumidores
- transables: $(y^*_{t}, c_{t}^*)$
- UIP $i_{t}=r+\epsilon_{t}$
Restricción de agentes: 
$$
E_{t} y^*_{t} + P_{t}y_{t}+E_{t}\tau_{t}+rE_{t}b_{t}=E_{t}c^*_{t} + P_{t}c_{t}+E_{t} \dot{b_{t}} + \dot{M_{t}}
$$
$b_{t}$ activos externos netos. Dividido por $E_{t}$ con $e_{t}=\frac{E_{t}}{P_{t}}$
$$
y^*_{t} + \frac{y_{t}}{e_{t}}+\tau_{t}+rb_{t}=c^*_{t} + \frac{c_{t}}{e_{t}}+\dot{b_{t}} + \frac{\dot{M_{t}}}{E_{t}}
$$
Usando que $\frac{\dot{M}_{t}}{E_{t}}=\dot{m}_{t} + \epsilon_{t}m_{t}$, agrega $r m_{t}$ y usa $i_{t}=r+\epsilon_{t}$
$$
y^*_{t} + \frac{y_{t}}{e_{t}}+\tau_{t}+r(b_{t}+m_{t})=c^*_{t} + \frac{c_{t}}{e_{t}}+\dot{b_{t}} + i_{t} m_{t}+\dot{m}_{t}
$$
Restricción de por vida:
$$
b_{0}+m_{0}+\int_{0}^{\infty} \left( y^*_{t}+\frac{y_{t}}{e_{t}} +\tau_{t} \right) e^{-rt}dt = \int_{o}^{\infty}\left( c^*_{t}+\frac{c_{t}}{e_{t}} +i_{t}m_{t} \right)  e^{-rt}dt
$$
Con cash in advance: $\alpha (E_{t}c^*_{t}+P_{t}c_{t}) \leq M_{t}$, con igualdad
$$
b_{0}+m_{0}+\int_{0}^{\infty} \left( y^*_{t}+\frac{y_{t}}{e_{t}} +\tau_{t} \right) e^{-rt}dt = \int_{o}^{\infty} \left[ \left( c^*_{t}+\frac{c_{t}}{e_{t}}  \right) \left( 1+i_{t} \alpha \right) \right]    e^{-rt}dt
$$
Preferencias
$$
\int_{0}^{\infty} \left[ \log c^*_{t} + \log c_{t} \right]  e^{-rt} dt
$$Lagrangiano:
$$
\int_{0}^{\infty} \left[ \log c^*_{t} + \log c_{t} \right]  e^{-rt} dt + \lambda \left\{ b_{0}+m_{0}+\int_{0}^{\infty}  \left[ \left( y^*_{t}+\frac{y_{t}}{e_{t}} +\tau_{t} \right) -\left( c^*_{t}+\frac{c_{t}}{e_{t}}  \right) \left( 1+i_{t} \alpha \right) \right]  e^{-rt}dt  \right\} 
$$
CPO:
$$
c_{t}^{*-1} = \lambda (1+i_{t}\alpha) 
$$
$$
c_{t}^{-1} = \frac{\lambda}{e_{t}} (1+i_{t}\alpha) 
$$
$$
c_{t} = e_{t}c^*_{t}
$$
### Oferta
Producción de transables es dotación. $y^*_{t}=y_{t}$
Producción de no transables es definido por curva de Phillips

### Equilibrio
# Clase 13 (26-11) Estabilización 




# Clase 14 (27-11) Estabilización