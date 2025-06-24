# 1. Separabilidad

Sea $M = \mathbb{R}^m_+$ un subconjunto del conjunto de bienes $X = \mathbb{R}^L_+$ con $m < L$ elementos, y sea $\neg M = \mathbb{R}^{L-m}_+$ el conjunto de bienes que no pertenecen a $M$. Para un elemento $x \in X$, escribimos $x = (x_M, x_{\neg M})$, donde $x_M$ es un vector de dimensión $m$ que indica la cantidad consumida de cada bien en $M$, mientras que $x_{\neg M}$ representa las cantidades de los bienes en $\neg M$.

Se dice que las preferencias $\succsim$ son debilmente separables en $M$ si, siempre que se cumpla que:

$$(x_M, x_{\neg M}) \succsim (x'_M, x_{\neg M}) \text{ si y solo si } (x_M, x'_{\neg M}) \succsim (x'_M, x'_{\neg M}) \quad \forall x'_{\neg M} \in \neg M$$

**De ahora en más trabajaremos con preferencias racionales que cumplan los supuestos de existencia de función de utilidad, siendo esta dos veces diferenciable y monótona.**

1-DEMOSTRAR
a) Existe una función de agregación real $f : M \to \mathbb{R}$ tal que $u(x_M, x_{\neg M}) = U(f(x_M), x_{\neg M})$, si las preferencias son debilmente separables.
b) Las preferencias son debilmente separables en $M$ si existe una función de agregación real $f : M \to \mathbb{R}$ tal que $u(x_M, x_{\neg M}) = U(f(x_M), x_{\neg M})$.

2. Suponga que tenemos la siguiente función de utilidad
  $$U(x_1, \ldots, x_6) = U^*(f_1(x_1, x_2), f_2(x_3, x_4, x_5), x_6)$$

  a) ¿Cómo depende la tasa marginal de sustitución entre los bienes 3 y 4 de las cantidades de los bienes 1 y 2?

  b) Construye un ejemplo de una función de utilidad de esta forma en la que la tasa marginal de sustitución entre los bienes 3 y 6 dependa de la cantidad del bien 1.

3. Demuestre que las tasas marginales de sustitución entre los bienes pertenecientes a $M$ son independientes de los bienes pertenecientes a $\neg M$ si las preferencias son separables.

4. Se puede demostrar (no lo debe hacer usted) que resolver los problemas de maximización de utilidad o minimización del gasto son análogos a resolver de forma separada siguiendo los siguientes pasos:

  **Utilidad:**
  
  1) Encontrar el gasto asociado a la subutilidad (puede ser por dualidad)
     $$e_M(u_M, p_M) = \min_{x_M} p_M x_M \text{ sujeto a } f(x_M) \geq u_M$$

  2) Resolver
     $$\max_{u_m, x_{\neg M}} u(u_m, x_{\neg M}) \text{ sujeto a } e_M(u_M, p_M) + p_{\neg M} x_{\neg M} \leq w$$
     
     Y reemplazar en las Hicksianas (da Marshallianas).

  **Gasto:**
  
  1) Encontrar $x_M$ para maximizar primero la subutilidad $f$:
     $$v_M(m_M, p_M) = \max_{x_M} f(x_M) \text{ sujeto a } p_M x_M \leq w - p_{\neg M} x_{\neg M} \equiv w_M$$

  2) Resolver
     $$\min_{w_m, x_{\neg M}} w_M + p_{\neg M} x_{\neg M} \text{ sujeto a } u(v_M(m_M, p_M), x_{\neg M}) \geq \bar{u}$$
     
     Y reemplazar en las Marshallianas (da Hicksianas)

  Considere la solución interior de la función de utilidad con $\alpha \leq 1$,
  $$u(x) = x_0^\alpha \left[\sum_{i=1}^L a_i x_i^\rho\right]^{\frac{1-\alpha}{\rho}}$$

  Defina algún $f(x_M)$ para este caso y demuestre que con cualquiera de los dos resultados anteriores se llega a las mismas soluciones que resolviendo el EMP y UMP.

5. Demuestre que para $v_M(m_M, p_M)$ y $e_M(u_M, p_M)$ valen la Identidad de Roy y el Lema de Shephard.

6. Asuma que la función de subutilidad $f(x_M)$ es homotética. Demuestre que se puede escribir $e_M(u_M, p_M)$ como $\bar{e}(p_M) u_M$. Demuestre que bajo estas condiciones podemos armar índices de precios y cantidades.

7. Llamaremos índice de precios de los bienes $M$ a $P_M = \bar{e}(p_M)$ y agregador $X = f(x_M) = u_M$, demuestre que se llega al mismo resultado resolviendo el problema de maximización de utilidad que
  $$\max_{X, x_{\neg M}} u(X, x_{\neg M}) \text{ s.t. } P_M X + p_{\neg M} x_{\neg M} \leq W$$

8. Encuentre el agregador de precios y de cantidades para los bienes $1, \ldots, L$ o $1, \ldots, L_J$ de las siguientes funciones de utilidad con $\rho \leq 1$.

  $$u(x) = x_0 + \left[\sum_{i=1}^L x_i^\rho\right]^{\frac{1}{\rho}}$$

  $$u(x) = \prod_{j=1}^J \left[\sum_{i=1}^{L_j} x_i^\rho\right]^{\frac{\alpha_j}{\rho}}$$
  
  $J, L_i \in \mathbb{N}_+$, $\alpha_j > 0$

  Utilice el resultado de los agregadores para maximizar la utilidad y minimizar el gasto. ¿Cuáles serían las Marshallianas de $x_i$ para cada caso?

9. Cuando los economistas de organización industrial desean centrarse en un solo bien o en un grupo de bienes, a menudo utilizan un modelo de dos bienes: el bien de interés (o grupo de bienes de interés) y un bien compuesto que representa "otros bienes". Para hablar de la validez de los "otros bienes" ¿qué estamos suponiendo implícitamente?

10. Considere la siguiente función de utilidad:
   $$u(x) = \phi_{M'}(x_{M'}) + \phi_{M''}(x_{M''}) + \phi_{M'''}(x_{M'''}) + \ldots$$

   Considere que tenemos separabilidad entre varios grupos, donde los grupos pueden combinarse arbitrariamente para formar otros grupos separables. Es decir,
   $$(x^0_M, x^0_{M'}, x_{M''}, \ldots) \succsim (x^1_M, x^1_{M'}, x_{M''}, \ldots)$$
   solo si
   $$(x^0_M, x^0_{M'}, x'_{M''}, \ldots) \succsim (x^1_M, x^1_{M'}, x'_{M''}, \ldots)$$
   para todo $x'_{M''}$, etc.

   Gorman/Debreu demostraron que la única estructura de preferencias que permite escribir la utilidad en esta forma aditiva son aquellas que satisfacen esta propiedad. Este tipo de separabilidad se conoce como **separabilidad fuerte**, **separabilidad aditiva** o **aditividad**.

   a. Demuestre que en este caso no solo la razón marginal de sustitución (MRS) dentro de cada grupo es independiente de las cantidades en otros grupos, sino que también las utilidades marginales de las cantidades dentro de un grupo son independientes de las cantidades en otros grupos.

   b. En modelos macroeconómicos de elección intertemporal, los bienes no solo se diferencian por sus atributos, sino también por el momento en que se consumen. En este caso, si hay $T$ períodos y $n$ bienes sin fecha específica, el número total de bienes diferenciados por el tiempo es $nT$. En estos modelos, se suele suponer que el consumidor elige un único "bien agregado" en cada período que puede componerse por ocio y consumo por ejemplo (u otras cosas), centrándose en la trayectoria temporal de su consumo sumando estos agregados o una función de los mismos. ¿Dónde está la separabilidad estricta acá, es decir, entre qué bienes? ¿Cómo son las tasas de sustitución intra e intertemporales?

   c. Demuestre el siguiente teorema. **Teorema:** Si las preferencias son representables mediante una función de utilidad continua, entonces son separables aditivamente y homotéticas si y solo si pueden representarse mediante una función de utilidad que toma una de estas dos formas:
      $$u(x) = \sum_i a_i x_i^b \quad \text{o} \quad u(x) = \sum_i a_i \ln x_i$$

   d. Entonces, ¿por qué en macroeconomía siempre usan alguna aditiva entre períodos CES? ¿Cómo se relaciona con la idea de poder tener índices de precios entre períodos y soluciones más simples? Esto es más de discusión, no hay una sola respuesta correcta. Piense en un agente con preferencias en $T$ períodos sobre $L$ bienes en cada uno (ejemplo ocio, consumo, activos o trabajo).

---

# 2. Competencia oligopolística con múltiples sectores

Se considera una economía en la que conviven hogares y firmas en un entorno de competencia oligopolística. Los hogares tienen preferencias sobre una canasta de bienes diferenciados agrupados en sectores $s \in [0, 1]$. La utilidad está dada por:

$$U = \left[\int_0^1 C_s^{1-\frac{1}{\sigma}} ds\right]^{\frac{\sigma}{\sigma-1}} \equiv C$$

donde $C_s$ representa el consumo del sector $s$, $\sigma > 1$ es la elasticidad de sustitución entre sectores, y $C$ es el consumo agregado del hogar.

Dentro de cada sector, el consumo agregado se define como:

$$C_s = \left[\frac{1}{n_s} \sum_{i \in I_s} C_{s,i}^{1-\frac{1}{\omega}}\right]^{\frac{1}{1-\frac{1}{\omega}}}$$

donde $C_{s,i}$ es el consumo de la variedad $i$ en el sector $s$, $n_s$ es el número de firmas en el sector y $\omega > \sigma$ mide la elasticidad de sustitución entre bienes dentro del sector.

La restricción presupuestaria del hogar es:

$$W = \int_0^1 P_s C_s ds$$

donde $W$ es la riqueza del hogar y $P_s$ es el índice de precios del sector $s$. A su vez, el índice de precios agregado se denota como $P$, y $P_{s,i}$ es el precio fijado por la firma $i$ en el sector $s$.

En el lado de la producción, nos alejamos del modelo de competencia monopolística atomística y nos enfocamos en un entorno de competencia imperfecta dentro de cada sector, donde un número limitado de firmas produce variedades diferenciadas y se comporta estratégicamente, estas firmas compiten en precios.

Cada firma $i$ en el sector $s$ produce bienes utilizando una tecnología:

$$Y_{s,i} = Z_{s,i}^\gamma$$

donde $Z_{s,i}$ representa la cantidad de insumos utilizados.

## 2.1. Decisión del hogar

1. Considere un agregador de cantidades $Q = F(Q_1, Q_2, \ldots, Q_n)$. El índice de precios asociado se define como:

  $$P^* = \min_{\{Q_i\}} \sum_i P_i Q_i \text{ sujeto a } F(Q_1, Q_2, \ldots, Q_n) = 1$$

  $$P^* = \min_{\{Q_i\}} \int P_i Q_i di \text{ sujeto a } F(Q_1, Q_2, \ldots, Q_n) = 1$$

  Determine los agregadores de precios a nivel sectorial $P_s$ y a nivel agregado $P$ para la economía descrita.

2. Demuestre que estos índices de precios cumplen con las siguientes propiedades:
  - Homogeneidad de grado 1 en precios.
  - Monotonicidad débil en precios.
  - Normalización ($P = 1$ si todos los precios son 1).
  - Simetría ante permutaciones de bienes.

  Además, analice su comportamiento en los siguientes casos:
  - Sustitutos perfectos ($\sigma, \omega \to \infty$).
  - Preferencias Cobb-Douglas ($\sigma, \omega = 1$).
  - Complementos perfectos ($\sigma, \omega \to 0$).

3. Derive la función de demanda Marshalliana para una variedad $i$ dentro de un sector $s$, expresando $C_{s,i}$ en términos de los precios relativos y la riqueza del hogar.

4. Encuentre la expresión para $C_s$ y, asumiendo que los hogares consumen toda su riqueza en cada período, derive el consumo agregado $C$ en función de $W$ y los índices de precios. (**Ayuda:** para resolver este inciso y el anterior usando los resultados de separabilidad del punto anterior)

5. Obtenga la función de utilidad indirecta y demuestre sus propiedades. Encuentre la función de gasto por dualidad y determine las demandas hicksianas.

## 2.2. Decisión de las firmas y equilibrio

1. Determine las condiciones para que los rendimientos a escala sean decrecientes o constantes. Utilícelo de ahora en más. ¿Por qué es esto relevante?

2. Plantee el problema de minimización de costos de una firma $i$ en el sector $s$. Derive la función de costos y justifique su interpretación. ¿Cómo son los costos medios?

3. Formule el problema de maximización de beneficios de una firma en un entorno oligopolístico con competencia en precios al estilo de Bertrand (con productos diferenciados). Obtenga la condición de primer orden (FOC) para el precio óptimo. Resuelva.

4. En un equilibrio simétrico de Bertrand, determine el markup óptimo y el índice de Lerner, expresando el precio de equilibrio en función de los parámetros del modelo.

5. Analice cómo el número de firmas en el sector $n_s$ afecta el markup y el precio de equilibrio. ¿Qué ocurre cuando $n_s \to \infty$ o $n_s = 1$? Compare con el caso de competencia monopolística.

## 2.3. Dinámica del mercado y elasticidades

1. Muestre que la elasticidad de la demanda enfrentada por cada firma es una combinación ponderada de $\sigma$ y $\omega$, dependiendo de la participación de mercado $s_{s,i}$.

2. Derive la regla de elasticidad inversa para el markup en equilibrio y explique cómo la presencia de pocos competidores modifica la fijación de precios en comparación con un entorno monopolístico.

3. Suponga que un sector experimenta una reducción en el número de firmas $n_s$. Explique cómo esto afecta los precios y la demanda de las variedades dentro del sector. ¿Cómo cambiaría la competencia entre sectores?