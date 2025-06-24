# 1 Lineal
Modelo lineal $Y_i = \beta_1 + \beta_2 X_{2i} + \cdots + \beta_K X_{Ki} + u_i \quad i = 1, \ldots, n$ - Relación lineal no exacta entre $Y$ y $X_2, \ldots, X_K$. - $Y_i$, $X_{ki}$, observables, $\beta_j$, no. - $u_i$, 'error', no observable.**Objetivo:** recuperar $\beta_j$'s. Recuperar = estimar?. Estimar 'bien'. Notación: En realidad$Y_i = \beta_1 + \beta_2 X_{2i} + \ldots + \beta_{Ki} X_{Ki} + u_i, \quad i = 1, \ldots, n$ es un sistema de $n$ ecuaciones... $Y = X\beta + u$ Definiciones: $\hat{\beta}$, estimador de $\beta$. $\hat{Y} \equiv X\hat{\beta}$, $e \equiv Y - \hat{Y} = Y - X\hat{\beta}$ **Idea:** $\hat{\beta}$ lo más parecido a $\beta$, o $Y$ a $\hat{Y}$, o $e$ a cero. 

Mínimos cuadrados **Propuesta:** $\hat{\beta}$ tal que $\hat{\beta} = \min_{\hat{\beta}} \sum_{i=1}^n e_i^2$Solución es $\hat{\beta} = (X'X)^{-1}X'Y$ **Estimador de mínimos cuadrados ordinarios (MCO)** Resultado: $\hat{\beta} = (X'X)^{-1}X'Y$ $\sum e_i^2 = e'e = (Y - X\tilde{\beta})'(Y - X\tilde{\beta})$ $\implies$ $= Y'Y - \tilde{\beta}'X'Y - Y'X\tilde{\beta} + \tilde{\beta}'X'X\tilde{\beta} \implies  = Y'Y - 2\tilde{\beta}'X'Y + \tilde{\beta}'X'X\tilde{\beta}$. ya que $-\tilde{\beta}'X'Y$ es un escalar, trivialmente igual a su traspuesta, $-Y'X\tilde{\beta}$, lo que conduce al resultado de la tercera línea. $e'e$ es estrictamente convexa como función de $\hat{\beta}$ si $\rho(X) = K$ y diferenciable con respecto a $\tilde{\beta}$, entonces, las condiciones de primer orden son necesarias y suficientes para un único mínimo global: $\frac{\partial e'e}{\partial \tilde{\beta}} = 0$ ; $\frac{\partial e'e}{\partial \tilde{\beta}} = -2X'Y + 2X'X\tilde{\beta} = 0$. Un sistema de $K$ ecuaciones lineales con $K$ incógnitas ($\tilde{\beta}$). Resolviendo para $\tilde{\beta}$ obtenemos: $\hat{\beta} = (X'X)^{-1}X'Y$ **Nota:** Recordar que $\rho(X) = K$ implica $\rho(X'X) = K$ de modo que $(X'X)$ es invertible.

**Supuestos clásicos**1. $Y = X\beta + u$ (modelo lineal)2. $X$ aleatoria.3. $E(u|X) = 0$ (exogeneidad).4. $V(u_i|X) = \sigma^2$ (homocedasticidad)5. $Cov(u_i, u_j|X) = 0$ (no correlación serial)6. Las variables $X$ no pueden tener relaciones lineales exactas (no multicolinealidad, $\rho(X) = K$); $X$  no aleatoria no es necesario.
-$V(u) = E[(u - E(u))(u - E(u))']$ matriz $K \times K$ con $V(u)_{ij} = Cov(u_i, u_i)$ Bajo los supuestos clásicos: $V(u) = \sigma^2 I_n$. 

Esperanzas condicionales $Y$, $X$, VA's $E(Y|X) = \int_{-\infty}^{+\infty} y f_{Y|X}(y|X) dy$. Si $X$ no está fija en un valor, $E(Y|X)$ es una función de $X$: una VA. - Ley de Esperanzas Iteradas (LEI): $E(Y) = E(E(Y|X))$ - $E[g(X)Y|X] = g(X) E(Y|X)$ - $E[g(X)Y] = E[g(X)E(Y|X)]$.

Propiedades de muestra finita bajo los supuestos clásicos:1. $\hat{\beta}$ es lineal: ($\hat{\beta} = AY$).2. $\hat{\beta}$ es insesgado: $E(\hat{\beta}) = \beta$.3. $V(\hat{\beta}|X) = \sigma^2(X'X)^{-1}$ 4. **Teorema de Gauss/Markov:** $\hat{\beta}$ es el estimador lineal insesgado de menor varianza. 

**Lineal:** existe $A_{n \times K}$ con rango $K$ y que depende solo de $X$ tal que $\hat{\beta} = AY$ **Prueba:** $A \equiv (X'X)^{-1}X'$ satisface todos los requisitos. $\hat{\beta}$ 'hereda' la aleatoriedad de $u$ linealmente a través de $Y$. 

**Insesgadez** Por LEI: $E(\hat{\beta}) = E(E(\hat{\beta}|X))$. $\hat{\beta} = (X'X)^{-1}X'Y$ $\implies$ $= (X'X)^{-1}X'(X\beta + u)$ $\implies= \beta + (X'X)^{-1}X'u$ $\implies E(\hat{\beta}|X) = \beta + E[(X'X)^{-1}X'u|X]$ $\implies = \beta + (X'X)^{-1}X'E[u|X]$ $\implies = \beta$. Entonces: $E(\hat{\beta}) = E(E(\hat{\beta}|X)) = E(\beta) = \beta$
¿Cuál es 'el' supuesto? Exogeneidad ¿Heterocedasticidad, normalidad? No se usan ¿Qué supuestos se usan? Linealidad, exogeneidad (+no aleatorias). 

**Varianza.** $V(\hat{\beta}|X) = \sigma^2(X'X)^{-1}$. $\implies V(\hat{\beta}|X) = V(\hat{\beta} - \beta|X) \quad (\beta \text{ no es aleatoria})$ $\implies = V[(X'X)^{-1}X'u|X] \quad \text{(de la prueba anterior...)}$ $\implies = E[(X'X)^{-1}X'uu'X(X'X)^{-1}|X]$ $\implies = (X'X)^{-1}X'E(uu'|X)X(X'X)^{-1}$ $\implies = (X'X)^{-1}X'\sigma^2 I_n X(X'X)^{-1} \quad \text{(homocedasticidad, no corr serial)}$ $\implies = \sigma^2(X'X)^{-1}$ **Recordar:** $V(u) \equiv E[(u - E(u))(u - E(u))']$. Si $E(u) = 0$, $V(u) = E(uu')$. 

**Teorema de Gauss-Markov** $\hat{\beta}$ es el mejor estimador lineal insesgado de $\beta$ bajo los supuestos clásicos. **Formalmente:** Bajo los supuestos clásicos, para cualquier estimador lineal e insesgado $\tilde{\beta}$, $V(\tilde{\beta}|X) - V(\hat{\beta}|X) \geq 0$, es decir, $V(\tilde{\beta}|X) - V(\hat{\beta}|X)$ es positiva semidefinida. 'Mejor', mínima varianza. Gauss/Markov (caso $X$ no aleatoria: $E(u|X) = E(u) = 0$):  Sea $\tilde{\beta}$ cualquier estimador lineal e insesgado. $\tilde{\beta}$ **lineal:** existe $A_{K \times n}$ que depende solo de $X$, con rango $K$, tal que $\tilde{\beta} = AY$. Bajo los supuestos clásicos $E(\tilde{\beta}) = E(AY) = E(A(X\beta + u)) = AX\beta \quad (1)$. $\tilde{\beta}$ **insesgado:** $E(\tilde{\beta}) = \beta \quad (2)$. $\tilde{\beta}$ **lineal e insesgado:** (1) y (2) simultáneamente, requiere $AX = I$. Trivialmente, $\tilde{\beta} = \hat{\beta} + \tilde{\beta} - \hat{\beta} = \hat{\beta} + \hat{\gamma}$, con $\hat{\gamma} \equiv \tilde{\beta} - \hat{\beta}$. **Notar que:** $V(\tilde{\beta}) = V(\hat{\beta}) + V(\hat{\gamma})$ sii $Cov(\hat{\beta}, \hat{\gamma}) = 0$. Entonces, si podemos probar que $Cov(\hat{\beta}, \hat{\gamma}) = 0$, obtendremos nuestro resultado. **Recordar:** $Cov(\hat{\beta}, \hat{\gamma}) \equiv E[(\hat{\beta} - E(\hat{\beta}))(\hat{\gamma} - E(\hat{\gamma}))']$. Trivialmente $E(\hat{\gamma}) = 0$ ($\beta$s insesgados). Como además $\hat{\beta}$ es insesgado, $Cov(\hat{\beta}, \hat{\gamma}) = E[(\hat{\beta} - \beta)\hat{\gamma}']$. Notar que $\hat{\gamma} = AY - (X'X)^{-1}X'Y$ $\implies = (A - (X'X)^{-1}X')Y$ $\implies = (A - (X'X)^{-1}X')(X\beta + u)$ $\implies= (A - (X'X)^{-1}X')u \quad \text{(dado que } AX = I)$ Reemplazando:
$Cov(\hat{\beta}, \hat{\gamma}) = E[(\hat{\beta} - \beta)\hat{\gamma}']$ $\implies= E[(X'X)^{-1}X')uu'(A - (X'X)^{-1}X')']$ $\implies = \sigma^2[(X'X)^{-1}X'(A' - X(X'X)^{-1})]$ $\implies = \sigma^2[(X'X)^{-1}X'A' - (X'X)^{-1}X'X(X'X)^{-1})]$ $\implies = 0$. Donde hemos usado $V(u) = E(uu') = \sigma^2 I_n$, y, nuevamente, $AX = I$. Entonces, de acuerdo a nuestros resultados anteriores: $V(\tilde{\beta}) - V(\hat{\beta}) = V(\hat{\gamma})$ que es positiva semidefinida, por construcción (¡es una varianza!).  Interpretación básica $Y = X\beta + u$. Bajo exogeneidad: $E(Y|X) = X\beta$. Bajo diferenciabilidad y si las $X$ no están funcionalmente relacionadas: $\frac{\partial E(Y|X)}{\partial X_j} = \beta_j$.  **Inferencia** - $H_0 : \beta_j = 0$ (significatividad)?, ¿Intervalo de confianza? - Necesitamos la distribución de $\hat{\beta}$. - **Supuesto adicional:** $u_i$ conjuntamente normales. - Resultado: Dado $X$, $\hat{\beta}$ es normal. ¿Por qué? Bajo supuestos clásicos: $\hat{\beta}|X \sim N(\beta, \sigma^2(X'X)^{-1})$. Tests de significatividad: $H_0 : \beta_j = 0$. Si $V(\hat{\beta}|X) \equiv \sigma^2(X'X)^{-1}$. Entonces $V(\hat{\beta}_j) = \sigma^2 D_{jj}$. con $D \equiv (X'X)^{-1}$. Entonces $\hat{\beta}_j \sim N(\beta_j, \sigma^2 D_{jj})$.. Bajo $H_0 : \beta_j = 0$: $z_j \equiv \frac{\hat{\beta}_j}{\sqrt{\sigma^2 D_{jj}}} \sim N(0,1)$. Idea: rechazar $H_0$ si $z_j$ es muy grande. Problema: $\sigma^2$ no observable. Estimemos $\sigma^2$ usando $S^2 \equiv \sum e_i^2/(n-K)$. Resultado: bajo los supuestos clásicos más normalidad y cuando $H_0 : \beta_j = 0$. $t_j \equiv \frac{\hat{\beta}_j}{\sqrt{S^2 D_{jj}}} \sim t_{n-K}$. Prueba: Tres resultados preliminares: $e = Mu$ con $M \equiv I_n - (X'X)^{-1}X'$ (demostrar como ejercicio). $M$ simétrica e idempotente ($M = M'M$). Si $Z \sim N(0,1)$ y $Y \sim \chi^2(m)$, $Z$ y $Y$ independientes, entonces $\frac{Z}{\sqrt{Y/m}} \sim t_m$ - Si $Z \sim N(0, I_m)$, entonces $Z'AZ \sim \chi^2(\rho(A))$. Recordar que $z_j \equiv \hat{\beta}_j/\sqrt{\sigma^2 D_{jj}}$. Notar que: $t_j = \frac{\hat{\beta}_j}{\sqrt{S^2 D_{jj}}} = \frac{z_j}{\sqrt{S^2/\sigma^2}} = \frac{z_j}{\sqrt{e'e/(n-K)/\sigma^2}}$ Vimos que $z_j \sim N(0,1)$. Si podemos mostrar que $e'e/\sigma^2 \sim \chi^2(n-K)$ e independencia, estamos. 1. **Numerador $\chi^2$:** De $e = Mu$, $e'e = u'MM'u = u'Mu$ dado que $M$ es idempotente. Bajo normalidad $u|X \sim N(0, \sigma^2 I_n)$, entonces, por los resultados anteriores $u'Mu/\sigma^2 \sim \chi^2(n-K)$ dado que $\rho(M) = n-K$. 2. **Independencia:** $\hat{\beta} = \beta + (X'X)^{-1}X'u$ y $e = Mu$ son funciones lineales de $u$, entonces, son conjuntamente normales, dado $X$. Ahora bien, $Cov(\hat{\beta}, e) = E[(\hat{\beta} - \beta)e']$ $\implies = E[(X'X)^{-1}X'uu'M]$ $\implies = (X'X)^{-1}X'E(uu|X)M$ $\implies = \sigma^2(X'X)^{-1}X'M = 0$. usando la Ley de Esperanzas Iteradas, los supuestos clásicos y que $X'M = 0$. Bajo normalidad conjunta, covarianza nula equivale a independencia. Kit básico de regresión 1. $\hat{\beta} = (X'X)^{-1}X'Y$ 2. $\hat{V}(\hat{\beta}_j) = \sigma^2 D_{jj}$ 3. $t_j = \hat{\beta}_j/\sqrt{\sigma^2 D_{jj}} \sim t_{n-K}$.
 


# OLS Geometry


1. $u + v = v + u$ (commutativity)
2. $(u + v) + w = u + (v + w)$ and $(ab)v = a(bv)$ (associativity)
3. $\exists 0/v + 0 = v$ (additive identity)
4. $\forall v, \exists w/v + w = 0$ (additive inverse)
5. $1v = v$ (multiplicative identity)
6. $a(u + v) = au + av$ y $(a + b)u = au + bu$ (distributivity)

$v, w, u, v \in S$, $a, b \in \mathbb{R}$

**Euclidean space $\mathbb{R}^n$:** vector space formed by all vectors in $\mathbb{R}^n$ with the usual definition of sum of vectors and scalar multiplication.

We will impose more structure than the requirements to form a vector space.

 Definitions and Notation

- **Inner product:** $\langle x, y \rangle \equiv x'y$
- **Norm:** $\|x\| \equiv (x'x)^{1/2} = (\sum_{i=1}^n x_i^2)^{1/2}$.
- **Orthogonality:** $x$ and $y$ orthogonal iff $x'y = 0$
- **Linear independence:** $x_1, \ldots, x_K$ are linearly independent if the only choice of $a_1, a_2, \ldots, a_K$ that makes $\sum_{k=1}^K a_k X_k = 0$ is $a_1 = \cdots = a_K = 0$

 Vector geometry in $\mathbb{R}^2$

- Vector representation
- Vector addition.
- Scalar multiplication
- Angles, perpendicular and parallel vectors.

 Subspaces of the Euclidean Space

- A **vector subspace** is any subset of a vector space that is itself a vector space.
- **Subspace:** 1) Has additive identity, closed under 2) addition, 3) scalar multiplication.
- **Span:** $S(x_1, \ldots, x_k) \equiv \{z \in E^n | z = \sum_{i=1}^k b_i x_i, b_i \in \mathbb{R}\}$ is the euclidean vector subspace spanned by $x_1, \ldots, x_k$: set of all linear combinations of $(x_1, \ldots, x_k)$.
- Alternatively, $X = [x_1 \cdots x_k]$, $S(X) \equiv \{z \in E^n | z = X\gamma\}$ is the subspace generated by the columns of $X$ (the span of $X$). All vectors that can be formed as linear combinations of the columns of $X$.

- **Orthogonal complement:** $S^{\perp}(X) \equiv \{w \in E^n | w'z = 0 \text{ for all } z \in S(x)\}$. All vectors that are orthogonal to the columns of $X$.
- **Basis:** a basis of $V$ is a list of linearly independent vectors that span $V$.
- **Dimension:**  of vectors of any basis.
- Note $\dim S(X) \equiv \rho(X)$
- **Result:** $X_{n \times k}$ with $\dim S(X) = k \Rightarrow \dim S^{\perp}(X) = n - k$

- $X$ is a vector in $\mathbb{R}^2$.
- $S(X)$ is the subspace spanned by $X$, $S^{\perp}(X)$ is its orthogonal complement, each of dimension 1.

 Variables and observations in the axis

- **Goal:** represent the data and the OLS estimator.
- We need to change our notion of 'point'. A scatter plot takes every observation as a point.


 OLS Geometry

- By definition, any point in $S(X)$ can be expressed as $X\beta$, $\beta \in \mathbb{R}^k$.
- **Least squares:** given $X$ and $Y$, find the point in $S(X)$ that is the closest $Y$.

Note: $\min_{\beta} \|y - x\beta\| \Leftrightarrow \min_{\beta} \|y - x\beta\|^2$.

Define
Define: $\hat{\beta}$ (solution to the problem), $\hat{Y} = X\hat{\beta}$, $e = Y - \hat{Y}$

Some properties:
- $e$ is orthogonal to any point in $S(X)$, in particular, to $X$ or $X\hat{\beta}$.
- $\hat{\beta} = (X'X)^{-1}X'Y$. From the orthogonality condition $X'(Y - \hat{\beta}X) = 0$.

Q: if $Y = X\beta + u$, where are $X\beta$ and $u$?

 Projections

- **Projection:** a mapping that takes any point in $E^n$ into a point in a subspace of $E^n$.
- **Orthogonal projection:** maps any point into the point of the subspace that is closest to it.

 Projection matrices

- $\hat{Y} = X\hat{\beta} = X(X'X)^{-1}X'Y = P_X Y$ is the orthogonal projection of $Y$ on $S(X)$.
$P_X = X(X'X)^{-1}X'$ is the projection matrix that projects $Y$ orthogonally on to $S(X)$.

- $e = Y - \hat{Y} = Y - X\hat{\beta} = (I - X(X'X)^{-1}X')Y = M_X Y$ is the projection of $Y$ on to the orthogonal complement of $S(X)$, that is, $S^{\perp}(X)$.
$M_X \equiv I - P_X = I - X(X'X)^{-1}X'$. is the projecton matrix that projects $Y$ orthogonally on to $S^{\perp}(X)$.

**Properties:** easy to check algebraically, better to understand them geometrically

- $M_X$ and $P_X$ are symmetric matrices.
- $M_X + P_X = I$. This suggests the orthogonal decomposition $Y = M_X Y + P_X Y$

- $P_X$ and $M_X$ are idempotent: $P_X P_X = P_X$, $M_X M_X = M_X$. Intuition: if a vector is already in $S(X)$, further projecting it in $S(X)$ has no effect.
- $P_X M_X = 0$. Think about what you get of doing fisrt one projection and then the other (in any order). $P_X$ and $M_X$ 'anihilate' each other. 0 is the only point that belongs to both $S(X)$ and $S^{\perp}(X)$.
- $M_X$ anihilates any point in $S(X)$, that is $M_X X\beta = 0$
- $P_X$ anihilates any point in $S^{\perp}(X)$ : $P_X M_X X\beta = 0$
- If $A$ is a non-singular matrix $K \times K$, $P_{XA} = P_X$.
- $\rho(X) = \rho(P_X)$

 Goodness of fit

From the orthogonal decomposition
$$Y = PY + MY$$

Then
$$Y'Y = Y'PY + Y'MY \quad (1)$$
$$= Y'P'PY + Y'M'MY \quad (2)$$
$$\|Y\|^2 = \|PY\|^2 + \|MY\|^2 \quad (3)$$

In $\mathbb{R}^2$ this is simply Pythagoras' theorem. Then

$$R^2 = \frac{\|PY\|^2}{\|Y\|^2} = \cos^2 \theta$$

where $\theta$ is the angle formed by $Y$ and $PY$. Actually this is the uncentered $R^2$.

 The Frisch-Waugh-Lovell Theorem

Modelo lineal: $Y = X\beta + u$

Partámoslo así: $Y = X_1\beta_1 + X_2\beta_2 + u$

$X_1$, $X_2$ matrices de $k_1$ and $k_2$ columnas. $X = [X_1 X_2]$, $\beta' = (\beta_1' \beta_2')'$ y $K = k_1 + k_2$.

$M_2 \equiv I - X_2(X_2'X_2)^{-1}X_2'$, genera residuos de regresar en $X_2$.

$Y^* \equiv M_2Y$, $X_1^* \equiv M_2X_1$, respectivamente, residuos de regresar $Y$ en $X_2$, y todas las columnas de $X_1$ en $X_2$.

Supongamos que queremos estimar $\beta_1$. Dos métodos:

1. En un paso, regresar $Y$ en $X$, $\hat{\beta} = (\hat{\beta}_1' \hat{\beta}_2')' = (X'X)^{-1}X'Y$. $\hat{\beta}_1$ es lo que buscamos.

2. En dos pasos, obtener y regresar $Y^*$ en $X_1^*$, y tomar $\tilde{\beta}_1 = (X_1^{*'} X_1^*)^{-1}X_1^{*'} Y^*$

Sean $e_1$ y $e_2$ los residuos ambos métodos.

**Teorema (Frisch y Waugh, 1933, Lovell, 1963):** $\hat{\beta}_1 = \tilde{\beta}_1$, y $e_1 = e_2$.

 Demostración

$Y = (P + M)Y = PY + MY = X_1\hat{\beta}_1 + X_2\hat{\beta}_2 + MY$.

Multiplicamos ambos lados por $X_1'M_2$ :
$$X_1'M_2Y = X_1'M_2X_1\hat{\beta}_1 + X_1'M_2X_2\hat{\beta}_2 + X_1'M_2MY$$

- $M_2X_2 = 0$ por la propiedad de $M_2$.
- 
$$X_1'M_2M = X_1'(I - P_2)M$$
$$= X_1'M - X_1'P_2M$$
$$= X_1'M - X_1'X_2(X_2'X_2)^{-1}X_2'M$$
$$= 0$$

Esto deja: $X_1'M_2Y = X_1'M_2X_1\hat{\beta}_1$. Entonces:
$$\hat{\beta}_1 = (X_1'M_1X_1)^{-1} X_1'M_1Y = \tilde{\beta}_1$$

 Intuición:

- Dos formas de estimar $\beta_1$. Directa: regresar $Y$ en $X_1$ and $X_2$. Indirecta: primero eliminar el efecto de $X_2$.
- Da contenido a la idea de 'controlar por $X_2$'.
- El modelo de $K$-variables se reduce a uno con dos variables!
- Muchas aplicaciones!. Ver Davidson and MacKinnon (1993).

 Applications of the FWLT

- Deviations from means.
- Detrending
- Seasonal effects
- Later on: multicolinearity, omitted variable bias, panel-data fixed-effects estimation, instrumental variables.

 Deviation from means

Simple model with intercept
$$Y = X\beta + u = \beta_1 \mathbf{1} + [X_2 X_3 \cdots X_K] \beta_{-1}$$

$\mathbf{1} \equiv (1, 1, \ldots, 1)'$, $\beta_{-1} = (\beta_2, \beta_3, \ldots, \beta_K)'$, and $X_k$, $k = 2, \ldots, K$ are the corresponding columns of $X$.

Two methods of estimating $\beta_{-1}$

**Method 1:** Regress $Y$ on $X = [\mathbf{1}' X_2 \cdots X_K]$.

**Method 2:** Get residuals of projecting $X_k$, $k = 2, \ldots, K$ on $\mathbf{1}$, call them $X_k^*$. Do the same with $Y$, and call them $Y^*$.

Note $P_1 = \mathbf{1}(\mathbf{1}'\mathbf{1})^{-1}\mathbf{1}' = n^{-1}J$, $J$ is an $n \times n$ matrix of 1's. Then

$$P_1X_k = \frac{1}{n}JX_k = (\bar{X}_k, \bar{X}_k, \ldots, \bar{X}_k)'$$

so $X_k^* = M_1X_k = (I - P_1)X_k = X_k - (\bar{X}_k, \bar{X}_k, \ldots, \bar{X}_k)'$, an $n \times 1$ vector with typical element

$$X_{ik}^* = X_{ik} - \bar{X}_k$$

So the second method consists in:

1. Reexpress all varaibles as deviations from their sample means.
2. Run the standard regression of these 'residuals' without intercept.

**Question:** what happens if we forget to reexpress $Y$ as deviations from its means.
Generalize this result
 Anatomía de MCO

# Anatomía de MCO

- $\hat{\beta} = (X'X)^{-1}X'Y$
- Mejor: Gauss/Markov
- Bueno: sesgo varianza

¿Qué hace a MCO: a) impreciso, b) sesgado?

---

 Fuentes de imprecisión

$$V(\hat{\beta}_j) = \frac{\sigma^2}{n (1 - R_j^2)V(X_j)}$$

**Resultado crucial.** Cuatro factores contribuyen a la varianza:

1. $\sigma^2$: ignorancia
2. $V(X_j)$: variabilidad de $X_j$
3. $R_j^2$: multicolinealidad
4. $n$: 'micronumerosidad'

---

 Prueba

Por FWL,
$$\hat{\beta}_j = \frac{\sum_{i=1}^n X_{ji}^* Y_i}{\sum_{i=1}^n X_{ji}^{*2}}$$

y
$$V(\hat{\beta}_j) = \frac{\sigma^2}{\sum_{i=1}^n X_{ji}^{*2}} = \frac{\sigma^2}{\sum_{i=1}^n X_{ji}^{*2}} \frac{S_{jj}}{S_{jj}}$$

en donde $X_j^* \equiv M_{-j}X_j$ y $M_{-j}$ genera residuos de regresar $X_j$ en el resto de los regresores. El resultado se sigue notando que:

$$R_j^2 = 1 - \frac{\sum_{i=1}^n X_{ji}^{*2}}{S_{jj}} = 1 - \frac{\sum_{i=1}^n X_{ji}^{*2}}{\sum_{i=1}^n(X_{ji} - \bar{X}_j)^2}$$

---

 Fuente de sesgos

$$Y = X_1\beta_1 + X_2\beta_2 + u$$

- Interés en $\beta_1$. Regresar $Y$ en $X_1$ y $X_2$ (o usar TFWL).
- Supongamos que regresamos $Y$ en solo $X_1$:

$$\hat{\beta}_1^* = (X_1'X_1)^{-1}X_1'Y$$

---

 Resultado (Sesgo por variable omitida)

$$E(\hat{\beta}_1^*|X) = \beta_1 + \delta_{21} \beta_2$$

donde $\delta_{21} = (X_1'X_1)^{-1}X_1'X_2$

- Si $\beta_2 \neq 0$, omitir $X_2$ no necesariamente induce sesgo.
- **Sesgo**: relevancia de $X_2$ y correlacionada con $X_1$.
- Puedo omitir: variables irrelevantes ($\beta_2 = 0$) o relevantes no correlacionadas con la variable de interés.

---

 Prueba

$$\hat{\beta}_1^* = (X_1'X_1)^{-1}X_1'Y$$
$$= (X_1'X_1)^{-1}X_1'(X_1\beta_1 + X_2\beta_2 + u)$$
$$E(\hat{\beta}_1^*|X) = \beta_1 + (X_1'X_1)^{-1}X_1'X_2 \beta_2$$

**Idea clave**: lo que dejemos fuera del modelo pertenece al término de error.

---

 Modelos grandes vs chicos

Interés en $\beta_1$
$$Y = X_1\beta_1 + X_2\beta_2 + u$$

¿Qué hacer con $X_2$?

- $\beta_2 = 0$. Omitir. ¿Por qué?
- $\beta_2 \neq 0$
 - $\delta_{21} = 0$, se puede omitir $X_2$.
 - $\delta_{21} \neq 0$, incluir $X_2$ para evitar sesgo.

En la práctica, ¿incluir $X_2$ o no?

---

 Sesgo por variables omitidas: un ejemplo

Datos ficticios, compatibles con Appleton, French and Vanderpump ("Ignoring a Covariate: an Example of Simpson's Paradox", The American Statistician, 50, 4, 1996)

- $Y$ = riesgo de muerte.
- $SMOKE$ = consumo de cigarrillos.

---

---

 Toda la econometría básica en 3 fórmulas

1. MCO: $\hat{\beta} = (X'X)^{-1}X'Y$

2. Varianza: $V(\hat{\beta}_j) = \frac{\sigma^2}{n (1-R_j^2)V(X_j)}$

3. Sesgo: $E(\hat{\beta}_1^*|X) = \beta_1 + \delta_{21} \beta_2$

---

# Datos en Panel
 Variables binarias para categorías múltiples

$Y$ (salarios), $X$ (educación), este, centro, oeste

$$Y_i = \beta_1 + \beta_2X_i + \delta_1D_{1i} + \delta_2D_{2i} + u_i$$

$D_{1i} = 1[\text{este}]$, $D_{2i} = 1[\text{centro}]$

$$Y_i|\text{oeste} = \beta_1 + \beta_2X_i + u_i$$
$$Y_i|\text{este} = \beta_1 + \delta_1 + \beta_2X_i + u_i$$
$$Y_i|\text{centro} = \beta_1 + \delta_2 + \beta_2X_i + u_i$$

- **Categoría base**: oeste.
- **Efectos diferenciales**: $\delta_1$ = este/oeste, $\delta_2$ = centro/oeste.
- ¿centro/este?

---

 Trampa de variables binarias

$D_{3i} = 1[\text{oeste}]$

$$Y_i = \beta_1 + \beta_2X_i + \delta_1D_{1i} + \delta_2D_{2i} + \delta_3D_{3i} + u_i$$

**¿Problema?**

---

 En general

- **Trampa de variables binarias**: si hay un intercepto, para $J$ categorías, incluir $J - 1$ variables binarias.

- Intercepto y $J - 1$ variables binarias da los mismos efectos diferenciales que sin intercepto y $J$ variables binarias

$$Y_i = \beta_2X_i + \delta_1D_{1i} + \delta_2D_{2i} + \delta_3D_{3i} + u_i$$

Verificar, como ejercicio.

- **Idea**: misma pendiente, distintos interceptos para cada categoría. Generalización: diferentes pendientes.

---

 ¿Por qué paneles?

**Ejemplo (Cronwell y Trumbull): Determinantes del crimen**

- $y = g(I)$, $y$ = crimen, $I$ = justicia criminal.
- Corte transversal: $(y_i, I_i)$ para regiones $i = 1, \ldots, n$
- $I$ es 'importante'
- **Crítica**: $I$ captura el efecto de otros factores regionales. Sesgo por variable omitida. Control

**Paneles**: solución al problema de sesgo, sin agregar otras variables.

---

 Modelo simple para paneles

$$y_{it} = x_{it}'\beta + u_{it}$$
$$u_{it} = \mu_i + \delta_t + \epsilon_{it}$$

$i = 1, \ldots, N$, $t = 1, \ldots, T$. $x_{it}$, a vector de $K$ variables explicativas.

- **Panel**: doble variabilidad
- $u_{it}$
- $\mu_i$ efectos no observables que varían solo por individuo.
- SPG, $\delta_t = 0$

---

 Efectos fijos

$$y_{it} = x_{it}'\beta + \mu_i + \epsilon_{it}$$

**Efecto fijo**: Estima $\beta$ y $\mu_i$ como parámetros $K + (N - 1)$

Modelo lineal con un intercepto para cada individuo:
$$y_{it} = \mu_i + \beta_1 + \beta_2 x_{2,it} + \cdots + \beta_K x_{K,it} + \epsilon_{it}$$

Agregar $N - 1$ variables binarias por individuo, o sin intercepto y $N$ binarias.

---

 En términos matriciales

$$Y = X\beta + D\mu + u$$

$Y_{NT \times 1}$, $X_{NT \times K}$ sin intercepto. $D$, matriz de $N$ binarias por individuo.

$$1_N \equiv \begin{bmatrix} 1 \\ 1 \\ \vdots \\ 1 \end{bmatrix}, \quad D = \begin{bmatrix} 1_N & 0 & \cdots & 0 \\ 0 & 1_N & 0 & \vdots \\ \vdots & \ddots & \ddots & \vdots \\ 0 & 0 & \cdots & 1_N \end{bmatrix}_{NT \times N}$$

---

 Estimador de efectos fijos

Escribamos el modelo como:
$$Y = X\beta + D\mu + u = \dot{X}\delta + u$$

con $\dot{X} \equiv [X \quad D]$ y $\delta \equiv [\beta' \quad \mu']'$.

El estimador de efectos fijos es:
$$\hat{\delta}_{EF} = \begin{pmatrix} \hat{\beta}_{EF} \\ \hat{\mu}_{EF} \end{pmatrix} = (\dot{X}'\dot{X})^{-1}\dot{X}'Y$$

MCO más $N$ dummies ('LSDV').

---

 Efectos fijos y la transformación 'within'

Por el TFWL
$$\hat{\beta} = (X^{*'} X^*)^{-1}X^{*'} Y^*$$

con $X^* \equiv M_D X$ y $Y^* \equiv M_D Y$. $M_D = I - D(D'D)^{-1}D'$ es la matriz que genera errores de regresar las $X$ y las $Y$ en $D$.

Es fácil mostrar (¡hacerlo!) que
$$X_{it}^* = X_{it} - \bar{X}_i$$

**Transformación within**: controlar por efectos fijos es idéntico a restar las medias individuales.

---

 Dos formas idénticas

El TFWL sugiere dos forma idénticas de obtener el estimador de efectos fijos

- Regresar $Y$ en $X$ and $D$.
- Primero restar las medias individuales y luego regresar.

Conceptualmente relevante (nexo con VI, ya veremos)

---

 Efectos fijos y heterogeneidad no observable

- $\hat{\beta}_{FE}$ insesgado, independientemente de si $X$ correlacionada con $D$ (FE controla for $D$).

- Si la variable omitida en nuestro ejemplo varía solo por individuo, es como si hubiésemos controlado por ella aun sin observarla.

- **Intuición**: la transformación within elimina cualquier variable que varía a nivel individual, observada o no.

---

 Panel como control: representación gráfica

[Gráfico de dispersión mostrando datos de panel]

---

 Verbalización

- $Y$ = crimen.
- $X$ = ineficiencia del sistema judicial.
- Dos regiones
- Determinante del crimen no observado, que varía por región y positivamente correlacionado con la ineficiencia judicial (¿densidad?).

---

 MCO vs Efectos fijos

[Gráficos comparativos mostrando las diferencias entre MCO y efectos fijos]

---

 Tres estimadores

$$y_{it} = x_{it}\beta + \mu_i + \epsilon_{it}$$

**Within**: $y_{it}^* = x_{it}^*\beta + \epsilon_{it}^*$
- Controla por $\mu_i$. Variación $N,T$. Insesgado siempre

**Between**: $\bar{y}_i = \bar{x}_i + \mu_i + \bar{\epsilon}_i$
- Omite $\mu_i$. Variación $N$. Insesgado solo si $\mu \not\perp \epsilon$

**MCO de $y_{it}$ en $x_{it}$?**


---

 Diferencias-en-diferencias

**Efecto de salarios mínimos en empleo (Card, Krueger (1994)).**

- ¿Salario mínimo (MW) reduce el empleo?
- ¿Empleo en McDonalds antes y después de cambios en MW? Confunde MW con otros cambios temporales.
- ¿Empleo en McDonalds, mismo período, estados diferentes con diferentes políticas de MW? Confunde MW con determinantes regionales del empleo.

---

 Contexto hiper-simple

- **Unidad de análisis**: restaurant $i$ en el estado $s$ en el período $t$.
- **Variable de interés** $Y_{its}$: empleo en el restaurant $its$.
- Dos períodos: $t = 1, 2$
- Dos estados: $A, B$.
- $N$ restaurants por estado.
- MW, política a nivel estado.
- Estado $A$ no cambia la política de MW. Solo $B$ lo hace, en el período 2.
- $D_{ist} = 1$ si el estado $s$ cambia MW en $t$, 0 si no.
- Notar que $D_{ist} = 1$ iff $s = B$ y $t = 2$.

---

 Modelo aditivo

$$Y_{its} = \gamma_s + \lambda_t + \beta D_{ist} + \epsilon_{ist}$$

$\beta$ es el parámetro de interés: efecto de MW controlando por factores regionales ($\gamma_s$) y temporales ($\lambda_t$).

---

 Diferencias-en-diferencias

$$Y_{its} = \gamma_s + \lambda_t + \beta D_{ist} + \epsilon_{ist}$$

Notar
$$E(Y|B, 2) - E(Y|B, 1) = \lambda_2 - \lambda_1 + \beta$$
$$E(Y|A, 2) - E(Y|A, 1) = \lambda_2 - \lambda_1$$

Restando
$$[E(Y|B, 2) - E(Y|B, 1)] - [E(Y|A, 2) - E(Y|A, 1)] = \beta$$

Cambio en B - Cambio en A = $\beta$

$$\hat{\beta} = \text{Average change in B} - \text{Average change in A}$$

---

 Dif-in-dif vía paneles

$$Y_{its} = \gamma_s + \lambda_t + \beta D_{ist} + \epsilon_{ist}$$

- $DB_{ist} = 1$ sii $i$ está en el estado $B$
- $D2_{ist} = 0$ sii $t = 2$.
- Por construcción $D_{ist} = DB_{ist} \times D2_{ist}$ (el cambio ocurre solo en el estado $B$ y el período 2).

Reemplazando:
$$Y_{its} = \gamma_s + \lambda_t + \beta(DB_{ist} \times D2_{ist}) + \epsilon_{ist}$$

---

 Implementación

$$Y_{its} = \gamma_s + \lambda_t + \beta(DB_{ist} \times D2_{ist}) + \epsilon_{ist}$$

- Es un panel de $N$ restaurants en 2 regiones y 2 períodos, con efectos fijos regionales y por períodos.
- Regresar $Y_{its}$ en 1) dummy for región B, 2) dummy por período 2) 'interacciones' entre ambas.
- **Parámetro de interés**: $\beta$.

---

 Comments

- ¿Panel? errores estándar y tests de hipótesis.
- **'Tendencia común'**: crucial. Ambos estados comparten $\lambda_t$: la evolución del empleo es idéntica en ambos estados. 'Tratamiento' (cambio en MW) solo implica salirse de la tendencia común. Testeable
- **No correlación serial**: supuesto clave para inferencia. Clustered standard errors, Bertrand, Duflo, y Mullainathan (2004).

---

 Random effects

---

 Random effects estimator

Same model
$$Y = X\beta + D\mu + \epsilon$$

If seen as a random variable $D\mu$ es orthogonal to $X$, and if $E(\mu_i|X) = 0$, then the OLS estimator that regresses $Y$ on $X$ is unbiased.

That is, if $D\mu$ is orthogonal to $X$, omitting the dummy variables does not bias OLS.

---

 Fixed or random?

Careful. It is a matter of treatment/estimation.

$$Y = X\beta + D\mu + \epsilon$$

**Fixed effects (controls for $D\mu$)**
$$Y = X\beta + D\mu + \epsilon$$

**Random effects (treats $D\mu$ as an omitted variable)**
$$Y = X\beta + D\mu + \epsilon$$

---

 Problema con random effects

$$Y = X\beta + D\mu + \epsilon$$
$$Y = X\beta + u, \quad u \equiv D\mu + \epsilon$$

**Problem**: $u$ does not satisfy the classical assumptions, even when $D\mu$ and $\epsilon$ do.

Simple proof: assume classical assumptions separately (zero expected value, no serial correlation/heteroskedasticity). Also $D\mu$ and $\epsilon$ uncorrelated. Then

$$V(u) = V(D\mu + \epsilon)$$
$$= DV(\mu)D' + V(\epsilon)$$
$$= \sigma_\mu^2 DD' + \sigma_\epsilon^2 I_{NT}$$

certainly non-spherical.

---

 Intuición

$$u_{it} = \mu_i + \epsilon_{it}$$

- Trivially, $u_{it}$ is correlated with $u_{i,t-1}$ since both 'share' $\mu_i$: the persistent presence of $\mu_i$ implies that random effects induce serial correlation.
- Though not biased, OLS is inefficient (in the sense discussed in class).
- ¿Efficient? GLS.

---

 Generalized Least Squares

Supongamos que valen todos los supuestos clásicos, pero que
$$V(u) = \sigma^2\Omega$$

con $\Omega$ cualquier matriz positiva (permitimos heterocedasticidad y/o correlación serial). Perdimos Gauss/Markov

**Resultado (Aitken)**: bajo todos los supuestos clásicos y cuando $V(u) = \sigma^2\Omega$

$$\hat{\beta}_{gls} \equiv (X'\Omega^{-1}X)^{-1}X'\Omega^{-1}Y$$

es un estimador de varianza mínima en la clase de estimadores lineales e insesgados.

---

 Prueba

**Caso $X$ no aleatoria.** En primer lugar, si $\Omega$ es positiva, existe $C_{n \times n}$ invertible tal que $C'C = \Omega^{-1}$. Partiendo de $Y = X\beta + u$, premultipliquemos ambos lados por $C$, para obtener

$$Y^* = X^*\beta + u^* \quad (1)$$

con $Z^* = CZ$, $Z = Y, X, u$. El modelo transformado (1) tiene los mismos coeficientes desconocidos que el modelo original, y es fácil mostrar que satisface todos los supuestos clásicos (chequear). En particular

$$V(u^*) = E(u^* u^{*'}) = C\sigma^2\Omega C' = \sigma^2 C[(C'C)^{-1}] C' = \sigma^2 I_n$$

Entonces, por el Teorema de Gauss/Markov aplicado al modelo transformado, el estimador de mínima varianza en la clase de los lineales e insesgados es

$$\hat{\beta}_{gls} = (X^{*'} X^*)^{-1}X^{*'} Y^* = (X'\Omega^{-1}X)^{-1}X'\Omega^{-1}Y$$

**GLS 'factible'**
$$\hat{\beta}_{fgls} = (X'\hat{\Omega}^{-1}X)^{-1}X'\hat{\Omega}^{-1}Y$$

en donde $\hat{\Omega}$ es cualquier estimador consistente de $\Omega$.

---

 GLS random effects

Recall
$$\hat{\beta}_{GLS} = (X'\Omega^{-1}X)^{-1}X'\Omega^{-1}Y$$

In our case
$$V(u) = \sigma_\mu^2 DD' + \sigma_\epsilon^2 I_{NT} \equiv \Omega(\theta)$$

with $\theta' = (\sigma_\mu^2, \sigma_\epsilon^2)'$

- FGLS requires to estimate $\theta$ first (variance components).
- Random effects estimator: GLS for random effects.

---

 Test de Hausman

$$Y = X\beta + D\mu + \epsilon$$

- $X \perp D\mu$: MCO, EF, BE, RE todos insesgados para $\beta$. RE (¿por qué?).
- $X \not\perp D\mu$: solo EF insesgado $\beta$.

---

 Test de Hausman

$$H_0 : X \perp D\mu, \quad H_A : X \not\perp D\mu$$

**Test de Hausman**: under $H_0$

$$H = (\hat{\beta}_{BE} - \hat{\beta}_{EF})'(\Omega_{EF} - \Omega_{BE})^{-1}(\hat{\beta}_{BE} - \hat{\beta}_{EF}) \sim \chi^2(K)$$

Rechazar si $H$ es significativamente alto.

Hausman/Taylor (1981): es lo mismo reemplazar BE con RE.

**Intuición**: bajo $H_0$, $\hat{\beta}_{BE}$ y $\hat{\beta}_{EF}$ consistentes, $H$ chico. Bajo $H_A$, solo $\hat{\beta}_{EF}$ consistente, $H$ grande.

# Elementos de Teoria Asintótica
Un número real $a$ es el límite de $\{x_n\}_{n=1}^{\infty}$ si para todo $\epsilon > 0$, existe $N$ tal que para todo $n \geq N$. $|x_n - a| < \epsilon$. Si $f_n(x)$ es una sucesión de funciones con el mismo dominio y codominio, $f(x)$ es el límite puntual de la sucesión sii $\lim_{n\to\infty} f_n(x) = f(x)$ para todo $x$ del dominio. Si $Y$ es una variable aleatoria real, su función de distribución acumulada (FDA) es $F(y) : \mathbb{R} \to (0, 1) = P(Y \leq y)$
**Propiedades asintóticas** - $\hat{\beta} = (X'X)^{-1}X'Y$, $E(\hat{\beta}) = \beta$, fácil, linealidad (dos veces). Asymptotics sirve si fuera $\hat{\beta}^* = g(X, Y)$ no lineal + tuvimos que suponer normalidad para hacer inferencia. Muestra grande como aproximación útil.

 Convergencia en probabilidad. $\{z_n\}$ converge en probabilidad a una constante no aleatoria $a$ si para todo $\epsilon > 0$: $\lim_{n\to\infty} Pr[|z_n - a| > \epsilon] = 0$. Convergencia en distribución $\{z_n\}$ con FDA $F_n(z)$ converge en distribución a una VA escalar $z$ con FDA $F$ si $\lim_{n\to\infty} F_n(z) = F(z)$ para todos los puntos de continuidad de $F(z)$. Notación - $z_n \xrightarrow{p} a$, o $\text{plim } z_n = a$. Se extiende a vectores o matrices, elemento a elemento. - $z_n \xrightarrow{d} z$. - $F$ es la distribución límite de $\{z_n\}$. **Ley de grandes números** $\{\bar{z}_n\} \equiv \frac{\sum_{i=1}^n z_i}{n}$,  $\{z_n\}$ iid, $E(z_i) = \mu$ finita, entonces $\bar{z}_n \xrightarrow{p} \mu$ **Teorema Central del Límite (Lindeberg-Levy)**: $\{z_n\}$ iid con $E(z_i) = \mu$ y $V(z_i) = \sigma^2$ finitas, entonces $\sqrt{n} \frac{\bar{z}_n - \mu}{\sigma} \xrightarrow{d} N(0, 1)$ - LGN y TCL aplican a objetos distintos. - LGN, 'degeneración', TCL, no. - LGN: 'implosión de varianza' - TCL: $\sqrt{n} \frac{\bar{z}_n - \mu}{\sigma} \sim N(0, 1) \implies \bar{z}_n \sim N(\mu, \sigma^2/n)$ (llegando a infinito) como aproximación.

 Resultados de continuidad

Si $g(.)$ continua:
- $z_n \xrightarrow{p} c \Rightarrow g(z_n) \xrightarrow{p} g(c)$
- $z_n \xrightarrow{d} z \Rightarrow g(z_n) \xrightarrow{d} g(z)$

**Slutzky**: $z_n \xrightarrow{d} z$ y $c_n \xrightarrow{p} c$:
- $z_n + c_n \xrightarrow{d} z + c$
- $z_n c_n \xrightarrow{d} zc$
- $z_n/c_n \xrightarrow{d} z/c$, $c \neq 0$

**Cramer Wold Device**: sean $z_n, z$, vectores de $k$ VA's. $z_n \xrightarrow{d} z$ sii $\lambda' z_n \xrightarrow{d} \lambda' z$, $\forall \lambda \in \mathbb{R}^k$

 Estimadores como sucesiones

$X_1, X_2, \ldots, X_n$, muestra de $n$ variables aleatorias. Estimador: $\hat{\theta}_n = T(X_1, X_2, \ldots, X_n)$.

$\{\hat{\theta}_n\}_n$ refiere a una sucesión de estimadores, aumentando la muestra progresivamente.

- $\hat{\theta}_n$ es consistente para $\theta_0$ si $\hat{\theta}_n \xrightarrow{p} \theta_0$.
- $\hat{\theta}_n$ es asintóticamente normal si $\sqrt{n}(\hat{\theta}_n - \theta_0) \xrightarrow{d} N(0, \Sigma)$.
- $\Sigma$ es la varianza asintótica. ¡Cuidado!
- A estos estimadores se los llama $\sqrt{n}$-consistentes.

 Notación

Reescribamos el modelo lineal

$$y_i = \beta_1 x_{1i} + \beta_2 x_{2i} + \cdots + \beta_K x_{Ki} + u_i, \quad i = 1, \ldots, n$$

como: $y_i = x_i' \beta + u_i$, con $x_i$ un vector $K \times 1$, $(x_{1i}, x_{2i}, \ldots, x_{Ki})'$.

$x_i x_i'$ es una $K \times K$ matriz. Verificar:

- $X'X = \sum_{i=1}^n x_i x_i'$, $X'Y = \sum_{i=1}^n x_i y_i$
- $\hat{\beta}_n = (X'X)^{-1}X'Y = \left(\sum_{i=1}^n x_i x_i'\right)^{-1} \left(\sum_{i=1}^n x_i y_i\right)$

 Supuestos para análisis asintótico

1. **Linealidad**: $y_i = x_i' \beta_0 + u_i$, $i = 1, \ldots, n$.
2. **Muestra aleatoria**: $\{x_i, u_i\}$ iid.
3. **Predeterminación**: $E(x_{ik} u_i) = 0$ para todo $i$ y $k = 1, \ldots, K$.
4. **Rango**: $\Sigma_x \equiv E(x_i x_i')$ positiva.
5. $V(x_i u_i) = S$ positiva.

 Resultados

 Consistencia: $\hat{\beta}_n \xrightarrow{p} \beta_0$.

 Normalidad asintótica: 

$$\sqrt{n}\left(\hat{\beta}_n - \beta_0\right) \xrightarrow{p} N(0, \Sigma_x^{-1} S \Sigma_x^{-1})$$

**Simplificación importante**: si $E(u_i^2|x_i) = \sigma_0^2$, entonces usando la LEI:

$$S = V(x_i u_i) = E(x_i u_i u_i x_i') = \sigma_0^2 E(x_i x_i') = \sigma_0^2 \Sigma_x$$

Entonces

$$\Sigma_x^{-1} S \Sigma_x^{-1} = \sigma_0^2 \Sigma_x^{-1} \Sigma_x \Sigma_x^{-1} = \sigma_0^2 \Sigma_x^{-1} = \sigma_0^2 E(X'X)^{-1}$$

nuestro resultado anterior. En síntesis: no hace falta homocedasticidad para normalidad asintótica.

 Consistencia

$$\hat{\beta}_n = \beta_0 + (X'X)^{-1}X'u = \beta_0 + \left(\frac{X'X}{n}\right)^{-1} \left(\frac{X'u}{n}\right)$$

**Idea**: $n^{-1}X'u \xrightarrow{p} 0$ y $\left(\frac{X'X}{n}\right)^{-1}$ finita.

El $h$-ésimo elemento de $\left(\frac{X'u}{n}\right)$ es

$$\frac{1}{n}\sum_{i=1}^n x_{hi}u_i = \frac{1}{n}\sum_{i=1}^n z_i, \quad z_i \equiv x_{hi}u_i$$

con $E(z_i) = 0$. Por la LGN de Kolmogorov

$$\frac{1}{n}\sum_{i=1}^n z_i = \frac{\sum_{i=1}^n x_{hi}u_i}{n} \xrightarrow{p} E(x_{hi}u_i) = 0$$

entonces $\left(\frac{X'u}{n}\right) \xrightarrow{p} 0$

El elemento $(h,j)$ de $\frac{X'X}{n}$ es $\frac{\sum_{i=1}^n x_{hi}x_{ji}}{n}$. Como $E(x_{hi}x_{ji}) = \Sigma_{x,hj}$ y es finita, por LGN (elemento a elemento)

$$\frac{X'X}{n} \xrightarrow{p} \Sigma_x$$

Dado que $\Sigma_x$ es invertible y por continuidad:

$$\left(\frac{X'X}{n}\right)^{-1} \xrightarrow{p} \Sigma_x^{-1}$$

En síntesis:

$$\hat{\beta}_n = \beta_0 + \left(\frac{X'X}{n}\right)^{-1} \left(\frac{X'u}{n}\right) \xrightarrow{p} \Sigma_x^{-1} \cdot 0$$

Por la regla del producto: $\hat{\beta}_n \xrightarrow{p} \beta_0$

 Normalidad asintótica

Partimos de

$$\sqrt{n}\left(\hat{\beta}_n - \beta_0\right) = \left(\frac{X'X}{n}\right)^{-1} \left(\frac{X'u}{\sqrt{n}}\right)$$

Ya mostramos: $\left(\frac{X'X}{n}\right)^{-1} \xrightarrow{p} \Sigma_x^{-1}$

Encontraremos la distribución asintótica de $\left(\frac{X'u}{\sqrt{n}}\right)$ y luego usamos continuidad.

$$\left(\frac{X'u}{\sqrt{n}}\right) = \sqrt{n}\frac{X'u}{n}$$

es un vector de $K$ VA's.

Por el 'artilugio' de Cramer-Wold, buscamos la distribución asintótica de:

$$\sqrt{n} c' \left(\frac{X'u}{n}\right)$$

para cualquier vector $c \in \mathbb{R}^K$. Notar que:

$$\sqrt{n} c' \left(\frac{X'u}{n}\right) = \sqrt{n} c' \frac{\sum x_i u_i}{n} = \sqrt{n} \frac{\sum c' x_i u_i}{n} \equiv \sqrt{n} \frac{\sum z_i}{n}$$

con $z_i \equiv c' x_i u_i$, una VA escalar. Es fácil chequear que:

- $E(z_i) = 0$
- $V(z_i) = c' S c < \infty$.

Entonces, por el TCL aplicado a $\sqrt{n}\bar{z}$:

$$\sqrt{n}(\bar{z} - 0) = c' \left(\frac{X'u}{\sqrt{n}}\right) \xrightarrow{d} N(0, c'Sc)$$

y de vuelta por Cramer-Wold:

$$\left(\frac{X'u}{\sqrt{n}}\right) \xrightarrow{d} N(0, S)$$

Entonces:

$$\sqrt{n}\left(\hat{\beta}_n - \beta_0\right) = \left(\frac{X'X}{n}\right)^{-1} \left(\frac{X'u}{\sqrt{n}}\right) \xrightarrow{p} \Sigma_x^{-1} \cdot N(0, S)$$

Por el teorema de Slutzky's y linealidad de la normal:

$$\sqrt{n}\left(\hat{\beta}_n - \beta_0\right) \xrightarrow{p} N(0, \Sigma_x^{-1} S \Sigma_x^{-1})$$

 En síntesis

Bajo supuestos muy generales (clásicos):

1. $\hat{\beta} \xrightarrow{p} \beta$.
2. $\hat{\beta}|X \sim N(\beta, \sigma^2(X'X)^{-1})$

La normal aparece como resultado asintótico.

Nos va a permitir pensar mucho más allá del modelo lineal y MCO. Relevancia de los resultados de continuidad.

# Large-Sample Robust and Non-linear Inference

 **Cauchy-Schwartz inequality** $E(XY)^2 \leq E(X^2) E(Y^2)$
**Mean value theorem**: If $f$ is continuous on $[a, b]$ and differentiable in $(a, b)$, $\exists x^* \in (a, b)$ at which $f(b) - f(a) = (b - a) f'(x^*)$. At $x^*$ the slope of the tangent and secant coincide. Use: let us 'free' $b = x$ and let it vary $f(x) = f(a) + f'(x^*)(x - a)$

This is the **mean value approximation** of $f$ at $a$. It is exact when $x \to a$, by definition of derivative.

 Heteroskedasticity Consistent Variance Estimation
Recall (asymptotic normality of linear model):

$$\sqrt{n}\left(\hat{\beta}_n - \beta_0\right) \xrightarrow{d} N(0, \Sigma_x^{-1} S \Sigma_x^{-1})$$

where $\Sigma_x = E(x_i x_i')$ and $S = V(x_i u_i)$.

**Notation**: $AV(\hat{\beta}_n) \equiv \Sigma_x^{-1} S \Sigma_x^{-1}$. We need a consistent estimate of $AV(\hat{\beta}_n)$

- Note that $n^{-1} \sum x_i x_i'$ is consistent for $\Sigma_x$.
- Recall we are allowing for heteroskedasticity. Alternative consistent estimators for $S$ depend on what we are willing to assume on this.

 Variance estimation under homoskedasticity

Under homoskedasticity $E(u_i^2|x_i) = \sigma_0^2$. Using LIE:

$$S = E(u_i^2 x_i x_i') = \sigma_0^2 E(x_i x_i') = \sigma_0^2 \Sigma_x$$

So

$$AV(\hat{\beta}_n) = \Sigma_x^{-1} S \Sigma_x^{-1} = \sigma_0^2 \Sigma_x^{-1} \Sigma_x \Sigma_x^{-1} = \sigma_0^2 \Sigma_x^{-1}$$

Hence a consistent estimator for $AV(\hat{\beta}_n)$ can be

$$\widehat{AV}_h = s^2 \left(\frac{X'X}{n}\right)^{-1}, \quad s^2 = \sum e_i^2/n$$

 Heteroskedasticity robust variance estimation

Can we estimate $AV(\hat{\beta}_n) = \Sigma_x^{-1} S \Sigma_x^{-1}$ without assuming homoskedasticity?

Recall $S = E(x_i u_i u_i x_i') = E(u_i^2 x_i x_i')$. We will need an additional assumption:

**Assumption (fourth moments)**: $E[(x_{ik} x_{ij})^2]$ exists and is finite for all $k, j = 1, 2, \ldots, K$.

**Result**

$$\hat{S}_w \equiv \frac{1}{n}\sum_{i=1}^n e_i^2 x_i x_i' \xrightarrow{p} S$$

where $e_i$'s are OLS residuals.

 Proof:

$$e_i = y_i - x_i' \hat{\beta} = y_i - x_i' \beta - x_i'(\hat{\beta} - \beta) = u_i - x_i'(\hat{\beta} - \beta)$$

$$e_i^2 = u_i^2 - 2u_i x_i'(\hat{\beta} - \beta) + (\hat{\beta} - \beta)' x_i x_i'(\hat{\beta} - \beta)$$

Replacing

$$\frac{1}{n}\sum_{i=1}^n e_i^2 x_i x_i' = \frac{1}{n}\sum_{i=1}^n u_i^2 x_i x_i' - \frac{2}{n}\sum_{i=1}^n u_i x_i'(\hat{\beta} - \beta) x_i x_i' + \frac{1}{n}\sum_{i=1}^n (\hat{\beta} - \beta)' x_i x_i'(\hat{\beta} - \beta) x_i x_i'$$

First note that

$$\frac{1}{n}\sum_{i=1}^n u_i^2 x_i x_i' \xrightarrow{p} E(u_i^2 x_i x_i')$$

by Kolmogorov's LLN, since we have assumed finite second moments (expectation exists) and iid.

We will show the other two terms converge to zero.

**I)** $A = \frac{2}{n}\sum_{i=1}^n u_i x_i'(\hat{\beta} - \beta) x_i x_i'$

$$A = \frac{2}{n}\sum_{i=1}^n u_i \left[\sum_{k=1}^K x_{ik}(\hat{\beta}_k - \beta_k)\right] x_i x_i' = 2\sum_{k=1}^K (\hat{\beta}_k - \beta_k) \left[\frac{\sum_{i=1}^n u_i x_{ik} x_i x_i'}{n}\right]$$

Note $\hat{\beta}_k - \beta_k \xrightarrow{p} 0$, by consistency. So if we can show $[\cdot] \xrightarrow{p} < \infty$, we are done.

$\left[\frac{1}{n}\sum_{i=1}^n u_i x_{ik} x_i x_i'\right]$ is a $K \times K$ matrix with typical $(h, j)$ element:

$$\frac{\sum_{i=1}^n u_i x_{ik} x_{ih} x_{ij}}{n}$$

By the Cauchy-Schwartz inequality:

$$E|x_{ik} x_{ih} x_{ij} u_i| \leq E[|x_{ik} x_{ih}|^2]^{1/2} E[|x_{ij} u_i|^2]^{1/2}$$

Both factors in the RHS are $< \infty$, by our fourth moments assumption and by assumption 3. Hence, we can use the LLN:

$$\frac{1}{n}\sum_{i=1}^n u_i x_{ik} x_i x_i' \xrightarrow{p} E(u_i x_{ik} x_i x_i') < \infty$$

so by the product rule and continuity, $A \xrightarrow{p} 0$.

**II)** $B = \frac{1}{n}\sum_{i=1}^n (\hat{\beta} - \beta)' x_i x_i'(\hat{\beta} - \beta) x_i x_i'$

Using the same trick as before:

$$B = \frac{1}{n}\sum_{i=1}^n \left[\sum_{k=1}^K x_{ik}(\hat{\beta}_k - \beta_k)\right] \left[\sum_{k'=1}^K x_{ik'}(\hat{\beta}_{k'} - \beta_{k'})\right] x_i x_i'$$

Now we have a sum of $K^2$ matrices. The $(h, j)$ element of the $k, k'$ summand will be

$$(\hat{\beta}_k - \beta_k)(\hat{\beta}_{k'} - \beta_{k'}) \frac{1}{n}\sum_{i=1}^n x_{ik} x_{ik'} x_{ih} x_{ij}$$

Using again the Cauchy Schwartz inequality and the finite fourth moments assumption:

$$E|x_{ik} x_{ik'} x_{ih} x_{ij}| < \infty$$

And again, by consistency and LLN, $B \xrightarrow{p} 0$. q.e.d.

Then, using $\hat{S}_w$ as an estimator for $S$ and noting

$$\hat{S}_w = \frac{1}{n}\sum_{i=1}^n e_i^2 x_i x_i^2 = \frac{1}{n}(X'BX)$$

with $B \equiv \text{diag}(e_1^2, \ldots, e_n^2)$,

$$\widehat{AV}_w(\hat{\beta}_n) = \hat{\Sigma}_x^{-1} \hat{S}_w \hat{\Sigma}_x^{-1} = n(X'X)^{-1} n^{-1}(X'BX) n(X'X)^{-1} = n(X'X)^{-1}(X'BX)(X'X)^{-1}$$

This is **White's heteroskedasticity consistent estimator** for the asymptotic variance of $\hat{\beta}_n$. Remember that in the derivation of all result we never ruled out the possibility of conditional heteroskedasticity, then its consistency does not depend on it.

 Remarks

- Does 'robust' work in practice? Yes, but for small samples it can be very biased. See Angrist and Pischke (2009, Ch. 9).
- Is GLS dead? No, see Romano and Wolf (2017, Journal of Econometrics). Potentially large efficiency gains even from misspecified variances.

# The Delta Method

Suppose we want to perform inference about a non-linear function of $\beta$, say $a(\beta)$.

 Example 1

$$y_i = \beta_0 + \beta_1 \text{south} + z_i' \beta_2 + u_i$$

$y_i$ is log-wages, south = 1 if south, $z_i$ are controls. Percent difference between south/not south is given by

$$\gamma \equiv e^{\beta_1} - 1$$

and for small values of $\beta_1$ is very similar to $\beta_1$. Suppose we are interested in $\gamma$ exactly. A consistent estimator is $e^{\hat{\beta}_1} - 1$. How to construct a confidence interval for $\gamma$?

 Example 2: consider now

$$y_i = \beta_1 \text{exper} + \beta_2 \text{exper}^2 + z_i' \beta + u_i$$

The level of experience that maximizes expected wages is:

$$\gamma \equiv -\frac{\beta_1}{2\beta_2}$$

and a consistent estimate is provided by

$$\hat{\gamma} = -\frac{\hat{\beta}_1}{2\hat{\beta}_2}$$

How can we construct an estimate for the standard deviation or a confidence interval for $\gamma$?

 Result (Delta Method): 

suppose $x_n$ is a sequence of random vectors of dimension $K$ such that

$$x_n \xrightarrow{p} \beta \text{ and } \sqrt{n}(x_n - \beta) \xrightarrow{d} Z$$

and $a(x) : \mathbb{R}^K \to \mathbb{R}^r$ is a function with continuous derivatives

$$A(\beta) \equiv \frac{\partial a(\beta)}{\partial \beta'}$$

(note $A(\beta)$ is an $r \times K$ matrix).

Then:

$$\sqrt{n}[a(x_n) - a(\beta)] \xrightarrow{d} \sqrt{n} A(\beta)Z$$

 Proof: 

Take a first-order mean value expansion of $a(x_n)$ around $\beta$:

$$a(x_n) = a(\beta) + A(y_n)(x_n - \beta)$$

where the 'mean value' $y_n$ is a vector between $x_n$ and $\beta$.

From this, get

$$\sqrt{n}[a(x_n) - a(\beta)] = \sqrt{n} A(y_n)(x_n - \beta)$$

Now $y_n \xrightarrow{p} \beta$ (why?) so $A(y_n) \xrightarrow{p} A(\beta)$ by continuous differentiability.

Then, by the hypothesis of the theorem and Slutzky's Theorem

$$\sqrt{n}[a(x_n) - a(\beta)] \xrightarrow{d} \sqrt{n} A(\beta)Z$$

As a simple corollary note that if

$$\sqrt{n}(\hat{\beta}_n - \beta) \xrightarrow{d} N(0, AV(\hat{\beta}_n))$$

then

$$\sqrt{n}[a(\hat{\beta}_n) - a(\beta)] \xrightarrow{d} N\left(0, A(\beta) AV(\hat{\beta}_n) A(\beta)'\right)$$

 Example 1 (Blackburn and Neumark, 1992, also in Wooldridge, 2002)

$$y_i = \beta_0 + \beta_1 \text{south} + z_i' \beta_2 + u_i$$

$$a(\beta_1) = e^{\beta_1} - 1$$

with

$$A(\beta_1) = e^{\beta_1}$$

So,
So, according to the delta-method

$$\widehat{AV}\left(e^{\hat{\beta}_1} - 1\right) = \left[e^{\hat{\beta}_1}\right]^2 AV(\hat{\beta}_1)$$


# Bootstrap

- $Y_1, Y_2, \ldots, Y_n$ iid $Y \sim (\mu, \sigma^2)$, ambas finitas.
- Queremos estimar $V(\bar{Y}) = \sigma^2/n$ (varianza de la media muestral)
- Fórmula: $\hat{\sigma}^2/n$ con

$$\hat{\sigma}^2 = \frac{1}{n}\sum_{i=1}^n (Y_i - \bar{Y})^2$$

 Método alternativo 'sin fórmula':

1. De los $n$ datos originales $y_1, y_2, \ldots, y_n$, tomar una muestra con reemplazo, de tamaño $n$.
2. Computar la media muestral con esta 'pseudomuestra'
3. Repetir $B$ veces. Al finalizar tendremos $B$ estimaciones de la media.
4. Computar la varianza de las $B$ medias.

 En términos generales

$Y_i, i = 1, \ldots, n$ y $\theta$ es una magnitud de interés.

1. Muestra de tamaño $n$ con reemplazo de la muestra original (muestra bootstrap).
2. Computar $\hat{\theta}_j, j = 1, \ldots, B$.
3. Repetir $B$ veces.
4. 

$$\hat{V}(\hat{\theta})_B = \frac{1}{B}\sum_{j=1}^B (\hat{\theta}_j - \bar{\hat{\theta}})^2$$

 Ideas

- ¿Por qué?: en la mayoría de los casos NO hay una fórmula para la varianza.
- Mucho más que la varianza: desvío estándar, mediana, coeficiente de Gini,...
- Intervalo de confianza: percentiles empíricos de las $B$ estimaciones bootstrap.
- ¿Regresión?

$$\ln Y = \beta X + u$$

$X$ es una variable binaria. Recordar que $\beta \sim e^\beta - 1$. Supongamos que realmente nos interesa $e^\beta - 1$.

Podemos estimar $\beta$ por MCO de $\ln Y$ en $X$ y su varianza por bootstrap:

1. Tomar una muestra de $(X_i, Y_i)_{i = 1, \ldots, n}$ de tamaño $n$ con reemplazo.
2. Estimar $\hat{\beta}_j$
3. Computar $\hat{\theta}_j = e^{\hat{\beta}_j} - 1, j = 1, \ldots, B$
4. Computar la varianza muestral de los $\hat{\theta}_j$

 ¿Por qué funciona?

- 'Muestra de la muestra'
- $n$ es grande: es como si estuviésemos tomando una muestra de la población.
- Teorema fundamental de la estadística (estamos reemplazando $F(y)$ por $F_n(y)$).



# Variables Instrumentales

## Walter Sosa-Escudero
### March 28, 2019

---

## Recordatorio

$$P = X(X'X)^{-1}X', \quad M = I - P$$

$$\hat{Y} = X\hat{\beta} = X(X'X)^{-1}X'Y = PY$$

- $P$ simétrica e idempotente

---

## Método de Momentos

$X$, $E(X) = \mu_0$

$$E(X - \mu) = 0, \quad \text{sii } \mu = \mu_0$$

$X_i, i = 1, \ldots, n$, iid, $E(X_i) = \mu_0$

$$\frac{1}{n}\sum_{i=1}^n (X_i - \hat{\mu}) = 0$$

**Idea:** si $B \xrightarrow{p} A$ entonces $\hat{\mu} \xrightarrow{p} \mu_0$

Es fácil chequear que $\hat{\mu} = \bar{X}$

---

En términos generales, si para una función $m(.)$

$$E[m(X; \theta)] = 0, \text{ sii } \theta = \theta_0 \quad (1)$$

El **estimador de momentos** de $\theta_0$ es $\hat{\theta}$ tal que

$$\frac{1}{n}\sum_{i=1}^n m(X_i; \hat{\theta}) = 0 \quad (2)$$

para una muestra $X_i$ iid de $X$

**Terminología:** (1) es la *condición de momentos* y (2) es el *análogo muestral*.

---

## Ejemplo: MCO via MM

$$y_i = x_i'\beta_0 + u_i, \quad i = 1, \ldots, n$$

**Condición de momentos:** $E(x_i u_i) = 0$, o:

$$E[x_i(y_i - x_i'\beta)] = 0, \text{ sii } \beta = \beta_0$$

El estimador MM es $\hat{\beta}$ tal que

$$\frac{1}{n}\sum_{i=1}^n x_i(y_i - x_i'\hat{\beta}) = 0$$

Despejando

$$\hat{\beta} = \left(\sum x_i x_i'\right)^{-1}\sum x_i y_i = (X'X)^{-1}X'Y$$

---

## Comentarios

- MM define al estimador en forma implícita.
- Propiedades: asintóticas ($m(.)$ demasiado general).
- Consistencia y normalidad asintótica: condiciones sobre $m(.)$
- Detalles: van der Vaart (1998, Cap. 4)

---

## Endogeneidades

- Consistencia de MCO depende de $E(u_i x_i) = 0$.
- En general, cuando esta condición no vale diremos que $x_i$ es **endógena**.

---

## Ejemplos

### Ecuaciones simultáneas

Oferta y demanda:
$$\begin{cases}
q_i^s = x_i^s \beta_1^s + \beta_2^s p_i + \epsilon_i^s \\
q_i^d = x_i^d \beta_1^d + \beta_2^d p_i + \epsilon_i^d \\
q_i^s = q_i^d
\end{cases}$$

En equilibrio:
$$p_i = (\beta_2^s - \beta_2^d)^{-1}(x_i^d \beta_1^d - x_i^s \beta_1^s + \epsilon_i^d - \epsilon_i^s)$$

En la oferta y en la demanda, $p_i$ depende del término de error.
**MCO no es consistente**

---

### Variables omitidas

$$Y = \beta_1 X_1 + \beta_2 X_2 + u$$

si omitimos $X_2$
$$Y = \beta_1 X_1 + \nu$$

$\nu \equiv \beta_2 X_2 + u$. $X_2$ endógena a menos que $X_1$ y $X_2$ sean ortogonales o $\beta_2 = 0$.

---

### Variable explicativa medida con error

$$C_i = \beta_1 + \beta_2 X_i^* + u_i$$

valen todas las condiciones para consistencia. Supongamos que solo se observa una versión 'ruidosa' de $X_i$:

$$X_i = X_i^* + \omega_i$$

$\omega_i$ es un **error de medición**. Supondremos $\omega_i$ iid, $E(\omega_i) = 0$, $V(\omega_i) = \sigma_\omega^2$ y no correlacionado con $X_i^*$ y $u_i$.

Reemplazando $X_i^* = X_i - \omega_i$

$$C_i = \beta_1 + \beta_2 X_i + \nu_i$$

con $\nu = -\beta_2 \omega_i + u_i$

---

Pero....

$$\text{Cov}(X_i, \nu_i) = E(X_i, \nu_i) = E[(X_i^* + \omega_i)(-\beta_2 \omega_i + u_i)]$$
$$= -\beta_2 \sigma_\omega^2 \neq 0$$

MCO que regresa $Y_i$ en $X_i$ es inconsistente.

---

## IV bajo identificación exacta

**Modelo.** $z_i$ es un vector de $K$ variables instrumentales.

1. **Linealidad:** $y_i = x_i'\beta_0 + u_i$ $i = 1, \ldots, n$.
2. **Muestra aleatoria:** $\{x_i, z_i, u_i\}$ es iid.
3. **Validez de VI 1): rango.** $E(z_i x_i') = \Sigma_{zx}$ invertible.
4. **Validez de VI II): ortogonalidad.** $E(z_{ik} u_i) = 0$ para todo $i$ y $k = 1, \ldots, K$.
5. $V(z_i u_i) = S$ finita y positiva definida.

Permite $x_i$ endógena.

---

## Estimador de VI via MM

**Condición de momentos (ortogonalidad)**

$$E(z_i u_i) = E[z_i(y_i - x_i'\beta)] = 0 \text{ sii } \beta = \beta_0$$

Son $K$ condiciones para $K$ parámetros (identificación exacta).

El estimador MM resuelve:

$$\frac{1}{n}\sum_{i=1}^n z_i(y_i - x_i'\hat{\beta}_{IV}) = 0$$

---

Despejando:

$$\hat{\beta}_{IV} = \left(\sum_{i=1}^n z_i x_i'\right)^{-1}\left(\sum_{i=1}^n z_i y_i\right) = (Z'X)^{-1}Z'Y$$

- **Existencia:** asintótica, por la condición de rango.
- **Identificación exacta:** mismo número de parámetros que de instrumentos.
- Si $x_i$ exógena, instrumento válida para sí misma ($Z = X$). Entonces $\hat{\beta}_{IV} = \hat{\beta}_{MCO}$.

---

## Propiedades asintóticas

**Consistencia:** $\hat{\beta}_{IV} \xrightarrow{p} \beta_0$

**Prueba (bosquejo):** $\hat{\beta}_{IV} = (Z'X)^{-1}Z'Y$. Replacing:

$$\hat{\beta}_{IV} = \beta_0 + (Z'X)^{-1}Z'u$$
$$= \beta_0 + \left(\frac{Z'X}{n}\right)^{-1}\left(\frac{Z'u}{n}\right)$$
$$\xrightarrow{p} \Sigma_{zx} < \infty \xrightarrow{p} 0$$

usando las condiciones de rango y ortogonalidad.

**Normalidad asintótica:** $\sqrt{n}(\hat{\beta}_{IV} - \beta_0) \xrightarrow{d} N(0, \Sigma_{zx}'^{-1}S\Sigma_{zx}'^{-1})$.


**Validez de VI 1): rango.** $E(z_i x_i') = \Sigma_{zx}$, finita e invertible. Instrumentos sí correlacionados con las variables a instrumentar. Se puede testear empíricamente. (Relevancia) - **Validez de VI 2): ortogonalidad.** $E(z_{ik} u_i) = 0$. Instrumentos no correlacionados con no observables. Depende de inobservables y de cómo está armado el modelo. No es testeable  -Instrumento válido: 'afecta a $Y$ solo a través de $X$'.
## VI: caso sobreidentificado

$p > K$ instrumentos válidos. La lógica de MM implica que

$$\frac{1}{n}\sum_{i=1}^n z_i(y_i - x_i'\hat{\beta}_{IV}) = 0$$

es un sistema de $p$ ecuaciones lineales con $K$ incógnitas.

- Si solo nos preocupase la consistencia, hay algo obvio por hacer.
- Menos obvio?

**Idea:** estrategia consistente y tal vez más eficiente.

---

## Modelo

$z_i'$ es un vector de $p > K$ instrumentos.

1. **Linealidad:** $y_i = x_i'\beta_0 + u_i$ $i = 1, \ldots, n$.
2. **Muestra aleatoria:** $\{x_i, z_i^{0}, u_i\}$ conjuntamente iid.
3. **Validez de VI 1): rango.** $E(z_i^{0} x_i') = \Sigma_{z^{0}x}$ es una matriz $p \times K$ finita y con rango columna completo.
4. **Validez de VI 2): ortogonalidad.** $E(z_i^{0} u_i) = 0$ para todo $i$.
5. $V(z_i' u_i) = \sigma^2 E(z_i^{0} z_i^{0'})$ finita y positiva definida.

Cuidado, hemos supuesto homocedasticidad.

---

## Variables instrumentales: $p > K$ instrumentos

$z_i'$ vector de $p > K$ instrumentos.

- Podríamos descartar $p - K$ instrumentos. Consistente.
- Cualquier combinación lineal de VI's es un instrumento válido: combinar los $p$ instrumentos para obtener $K$:

$$Z = Z^{0}A$$

con $Z_{n \times K}$, $Z^{0}_{n \times p}$, $A_{p \times K}$. El estimador sería:

$$\hat{\beta}_{IV} = (Z'X)^{-1}Z'Y$$

tal como en el caso anterior.

**Problema:** ¿cómo elegir $A$?

---

**Resultado:** La combinación lineal de VI's que tiene varianza asintótica mínima corresponde a:

$$A = (Z^{0'}{Z^{0}})^{-1}Z^{0'}X$$

**VI óptimo:**
$$\hat{\beta}_{IV} = (Z'X)^{-1}Z'X$$

con $Z = Z^{0}A = Z^{0}(Z^{0'}{Z^{0'}})^{-1}Z^{0'}X = P_{Z^{0}}X$.

Reemplazando, y dado que $P_{Z^{0}}$ es simétrica:

$$\hat{\beta}_{IV} = (Z'X)^{-1}Z'X$$
$$= (X'P_{Z^{0}}X)^{-1}X'P_{Z^{0}}Y$$

---

Dado que $P_{Z^{0}}$ es idempotente y simétrica:

$$\hat{\beta}_{IV} = (X'P_{Z^{0}}X)^{-1}X'P_{Z^{0}}Y$$
$$= (X'P_{Z^{0}}'P_{Z^{0}}X)^{-1}X'P_{Z^{0}}'P_{Z^{0}}Y$$
$$= (X^{*'}X^*)^{-1}X^{*'}Y^*$$
 
con $X^* \equiv P_{Z^{0}}X$ y $Y^* \equiv P_{Z^{0}}Y$.

---

$$\hat{\beta}_{IV} = (X^{*'}X^*)^{-1}X^{*'}Y^*, \quad X^* \equiv P_{Z'}X, \quad Y^* \equiv P_{Z'}Y$$

**VI óptimo:**
1. Obtener $X^*$ y $Y^*$.
2. MCO con $X^*$ y $Y^*$.

**VI óptimo:** *mínimos cuadrados en dos etapas*.

**Intuición:** MC2E reemplaza las variables por las mejores predicciones en base a $Z$.

---

## Variables instrumentales: cuestiones operativas

- Si $E(x_i u_i) = 0$, trivialmente $z_i = x_i$ y $\hat{\beta}_{VI} = \hat{\beta}_{MCO}$.
- $K$ variables explicativas, solo 1 de ellas endógena: $x_i^1$ exógena, $x_i^2$ endógena. $z_i$ puede incluir $x_i^1$. Falta al menos 1 instrumento. Trivialmente, en la primera etapa, $x_i^{1*} = x_i^1$ (porque?).

---

## Variables instrumentales: resultados de muestra finita

La propiedad clave del método de VI es consistencia. ¿Qué sucede en muestras finitas?

- VI es **sesgado** (Sawa, 1962).
- El sesgo se aproxima al de MCO cuando el $R^2$ entre los instrumentos y las variables endógenas tiende a cero (Bound, Jaeger y Baker, 1995).
- Si la correlación entre los instrumentos y las variables endógenas es baja, una pequeña correlación entre los instrumentos y el error puede causar una gran inconsistencia en VI (BJB, 1995).
- En muestras grandes, $p$ grande es mejor (porque?), pero en muestras chicas, $p$ grande sesga a VI en la dirección de MCO.

---


## Teoría asintótica para estimadores VI

### Consistencia

$$\hat{\beta}_{VI} = (X'P_{Z'}X)^{-1}X'P_{Z'}Y$$
$$= (X'P_{Z'}X)^{-1}X'P_{Z'}(X'\beta_0 + u)$$
$$= \beta_0 + (X'P_{Z'}X)^{-1}X'P_{Z'}u$$
$$= \beta_0 + (X'Z(Z'Z)^{-1}Z'X)^{-1}X'Z(Z'Z)^{-1}Z'u$$
$$= \beta_0 + \left[\frac{X'Z}{n}\left(\frac{Z'Z}{n}\right)^{-1}\frac{Z'X}{n}\right]^{-1}\frac{X'Z}{n}\left(\frac{Z'Z}{n}\right)^{-1}\frac{Z'u}{n}$$

- A partir de aquí los dejo solos. Usar los supuestos y la estrategia que usamos en la clase anterior.

---

### Normalidad Asintótica

Del resultado anterior:

$$\sqrt{n}(\hat{\beta}_{VI}-\beta_0) = \left[\frac{X'Z}{n}\left(\frac{Z'Z}{n}\right)^{-1}\frac{Z'X}{n}\right]^{-1}\frac{X'Z}{n}\left(\frac{Z'Z}{n}\right)^{-1}\left[\sqrt{n}\frac{Z'u}{n}\right]$$

- A partir de aquí, tal como lo hicimos para MCO, hay que establecer normalidad asintótica de $\sqrt{n}\frac{Z'u}{n}$ y utilizar el teorema de Slutzky, se los dejo como ejercicio.

El resultado es:

$$\sqrt{n}(\hat{\beta}_{VI} - \beta_0) \xrightarrow{d} N(0, V)$$

con

$$V = \sigma^2[E(xz')E(zz')^{-1}E(zx')]^{-1}$$

---

# Elección Binaria
**Modelo de elección binaria:** modelo para:

$$p \equiv Pr(Y = 1|x)$$


**Importante:** $y$ condicional en $x$ tiene distribución de Bernoulli.

Entonces:
$$E(y|x) = 1 \cdot p + 0 \cdot (1-p) = p$$

y
$$V(y|x) = p(1-p)$$

---

## El modelo lineal de probabilidad

Un primer modelo podría ser:

$$y = x'\beta + u \quad \text{con} \quad E[u|x] = 0$$

- **Modelo lineal de probabilidad (LPM).**
- $\beta$ puede ser estimados consistentemente por MCO, regresando $y$ en $x$ en base a $(y_i, x_i), i = 1, \ldots, n$.

---

## Problemas con MLP

**1) Genera predicciones inconsistentes con una probabilidad:**

Notar que:
$$E(y|x) = x'\beta$$

**Problema:** $E(y|x) = p$ de modo que $0 \leq E(y|x) = p \leq 1$. Pero en el modelo lineal general $-\infty < x'\beta < \infty$.

---

**2) $u$ es heterocedástico.**

$$V(u_i|x_i) = V(y_i|x_i) = p_i(1-p_i) = x_i'\beta(1-x_i'\beta)$$

no constante. Razón para abandonar MCO, es fácil de arreglar.

**3) LPM implica derivadas parciales constantes:**

$$\frac{\partial p}{\partial x_k} = \beta_k.$$

Intuitivamente, en la mayoría de los casos relevantes no queremos esto. Efectos 'débiles en las puntas'. Ejemplos: asistencia al secundario, admisión a posgrado.

---

## Logits y Probits

El modelo no-lineal que propondremos es:

$$p = F(x'\beta)$$

$F(.)$ tiene las siguientes propiedades:

$$F(-\infty) = 0, \quad F(\infty) = 1, \quad f(z) = dF(z)/dz > 0$$

- **Probit:**
$$F(z) = \int_{-\infty}^z \frac{1}{\sqrt{2\pi}} e^{-\frac{s^2}{2}} ds$$

- **Logit:**
$$F(z) = \frac{e^z}{1 + e^z}$$

Notar que LMP corresponde a $F(z) = z$.

---

## Interpretaciones

$$\frac{\partial p}{\partial x_k} = \beta_k f(x_i'\beta),$$

no constante. Notar que:

$$\text{sgn}(\partial p/\partial x_k) = \text{sgn } \beta_k$$

de modo que el signo es interpretable, no su valor

**Alternativa:** efecto marginal en las medias.

$$\frac{\partial p}{\partial x_k}\bigg|_{x=\bar{x}} = \beta_k f(\bar{x}'\beta_k),$$

Podríamos hacerlo en cualquier punto. O graficar esta derivada moviendo solo una variable y fijando las restantes en algún punto interesante.

---

## Logits o probits?

- Si $X$ es logística, $V(X) = \pi^2/3$, entonces $V(Z = X\sqrt{3}/\pi) = 1$. Se puede mostrar que la distribución de $Z$ (logística re-escalada) es muy similar a la normal estándar.
- En general, los coeficientes del logit exceden a los de probit en $\pi/\sqrt{3}$.
- Utilizar cualquier especificación.

---

## Estimación e inferencia

$(y_i, x_i), i = 1, \ldots, n$, muestra iid. $Y_i$ tiene distribución de Bernoulli con $p_i = Pr(y_i = 1)$

La función de verosimilitud será:

$$L(\beta) = \prod_{y_i=1} p_i \prod_{y_i=0} (1-p_i) = \prod_{i=1}^n p_i^{y_i}(1-p_i)^{1-y_i}$$

y su logaritmo:

$$l(\beta) = \sum_{i=1}^n [y_i \ln p_i + (1-y_i) \ln(1-p_i)]$$
$$= \sum_{i=1}^n [y_i \ln F(x_i'\beta) + (1-y_i) \ln(1-F(x_i'\beta))]$$

---

Las condiciones de primer orden son:

$$\sum_{i=1}^n \frac{(y_i - F_i)f_i x_{ki}}{F_i(1-F_i)} = 0, \quad k = 1, \ldots, K$$

con $F_i \equiv F(x_i'\hat{\beta})$, $f_i \equiv f(x_i'\hat{\beta})$.

- Es un sistema de $K$ ecuaciones no-lineales con $K$ incógnitas.
- No satisface las condiciones del teorema de la función implícita: es imposible 'despejar' $\hat{\beta}$.
- Existe una solución siempre que los regresores sean linealmente independientes y no haya un clasificador perfecto. Ver notas de clase.

---

## Tests de especificación

Habiendo estimado los parámetros por máxima verosimilitud:

$$\sqrt{n}(\hat{\beta}_{MV} - \beta_0) \xrightarrow{d} N(0, V_{MV})$$

**Significatividad individual:** $H_0: \beta_k = \beta_{0k}$ vs. $H_A: \beta_k \neq \beta_{0k}$

$$t_k = \frac{\hat{\beta}_k - \beta_{k0}}{\sqrt{\hat{V}(\hat{\beta}_k)/n}} \xrightarrow{d} N(0,1)$$

---

## Probits via variables latentes

$$y^* = x'\beta^* + u, \quad u \sim N(0,\sigma^2)$$

- Si se observa $(y_i^*, x_i), i = 1, \ldots, n$ es posible estimar $\beta$ y $\sigma^2$ consistentemente.
- Que es posible estimar si se observa $(y, x_i), i = 1, \ldots, n$, con $y_i = \mathbf{1}[y_i^* > 0]$?

---

Si $y^* = x'\beta^* + u$:

$$P(y = 1|x) = P(y^* > 0|x)$$
$$= P(u > -x'\beta^*|x)$$
$$= P(u/\sigma < x'\beta^*/\sigma | x) \quad \text{(Simetría)}$$
$$= \Phi(x'\beta)$$

con, $\beta \equiv \beta^*/\sigma$ y $\Phi(z) = \int_{-\infty}^z \frac{1}{\sqrt{2\pi}} e^{-\frac{1}{2}z^2} dz$.

- $P(y = 1|x) = \Phi(x'\beta)$ es el modelo **probit**.
- Es posible estimar $\beta$ por MV en base a $(y_i, x_i), i = 1, \ldots, n$.

---

$$y^* = x'\beta^* + u, \quad u \sim N(0,\sigma^2)$$

- Con $(y_i^*, x_i)$ es posible recuperar $\beta^*$ y $\sigma^2$.
- Con $(y_i, x_i)$ solo $\beta = \beta^*/\sigma^2$.
- $\sigma^2$ y $\beta^*$ no están identificados en una muestra $(y_i, x_i)$.
- **Ejemplo:** $\beta^* = 10$ y $\sigma^2 = 2$ producen los mismos $(y_i, x_i)$ que $\beta^* = 5$ y $\sigma^2 = 1$.

---

## MLP vs Probit (Logit)

Variables latentes. $y^* = x'\beta^* + u$:

$$P(y = 1|x) = \Phi(x'\beta)$$

con, $\beta \equiv \beta^*/\sigma$. Recordar

$$\frac{\partial p}{\partial x_k} = \beta_k f(x_i'\beta),$$

Entonces, si $\sigma^2 \to \infty$, $\partial p/\partial x_k \to 0$. Idea: cuando $\sigma^2$ es alta, MPL y Probit son muy difíciles de distinguir
# Maximum Likelihood Estimation


## Likelihood and basic Concepts

- $Z \sim f(z; \theta_0)$. $\theta_o \in \mathbb{R}^K$. $f(z; \theta)$ is a member of a parametric class 'indexed' by $\theta$.
- $\tilde{Z} = (Z_1, Z_2, \ldots, Z_n)'$ is an iid sample $\sim f(z; \theta_0)$.

The **likelihood function** for $Z$ is
$$L(\theta; z) : \mathbb{R}^K \to \mathbb{R} : f(z; \theta)$$

**Density:** $\theta$ taken as given and $z$ varies. **Likelihood:** roles reversed

Due to the iid assumption:
$$L(\theta; \tilde{z}) = f(\tilde{z}; \theta) = \prod_{i=1}^n f(z_i; \theta) = \prod_{i=1}^n L(\theta; z_i)$$

## Example: $Z \sim N(\mu, \sigma^2)$

$\theta = (\mu, \sigma^2)'$, $K = 2$.

- $f(z; \theta) : \mathbb{R} \to \mathbb{R} : \frac{1}{\sqrt{2\pi\sigma}} \exp\left[-\frac{(z-\mu)^2}{2\sigma^2}\right]$
- $L(\theta; z) : \mathbb{R}^2 \to \mathbb{R} : \frac{1}{\sqrt{2\pi\sigma}} \exp\left[-\frac{(z-\mu)^2}{2\sigma^2}\right]$

$L(\theta; z_0)$: how compatible is any choice of $\theta$ with the occurrence of $z_0$.

## Maximum Likelihood

The **maximum-likelihood estimator** $\hat{\theta}_n$ is defined as
$$\hat{\theta}_n \equiv \arg\max_\theta L(\theta; \tilde{z})$$

It is kind of a 'reverse engineering' process: to generate random numbers for a certain distribution you first set parameter values and then get realizations. This is doing the reverse process: first set the realizations and try to get the parameters that are 'most likely' to have generated them.

## Some normalizations

$$\hat{\theta}_n \equiv \arg\max_\theta L(\theta; \tilde{z})$$

- Note
$$\hat{\theta}_n = \arg\max_\theta \ln L(\theta; \tilde{z})$$

and $\sum_{i=1}^n \ln L(\theta; z_i) = \sum_{i=1}^n l(\theta; z_i)$

- Also
$$\hat{\theta}_n = \arg\max_\theta \frac{1}{n}\sum_{i=1}^n l(\theta; z_i)$$

We will use whichever one is more convenient.

## The discrete case

When $Y$ is a discrete random variable, the likelihood function will be directly the probability function, that is
$$L(Y; \theta) = f(y; \theta)$$

where $f(y : \theta)$ is now $\Pr(Y = y; \theta)$.

## Three Examples

**Poisson Distribution:** $Y \sim \text{Poisson}(\mu)$ if it takes integer and positive values (including zero) and:
$$f(y) = \Pr(Y = y) = \frac{e^{-\lambda_o}\lambda_o^y}{y!}$$

For an iid sample:
$$L(\lambda, \tilde{Y}) = \prod_{i=1}^n \frac{e^{-\lambda}\lambda^{y_i}}{y_i!}$$

its log is:
$$l(\lambda, \tilde{Y}) = \sum_{i=1}^n [-\lambda + y_i\ln \lambda - \ln y_i!]$$
$$= -n\lambda + \ln \lambda \sum_{i=1}^n y_i - \sum_{i=1}^n \ln y_i!$$

FOC's are
$$-n + \frac{1}{\lambda}\sum_{i=1}^n y_i = 0$$

so the MLE of $\lambda$ is:
$$\hat{\lambda} = \frac{1}{n}\sum_{i=1}^n y_i = \bar{y}$$

**Probit Model:**

$Y|X \sim \text{Bernoulli}(p)$, $p \equiv \Pr(Y = 1|x) = F(x'\beta)$, and $F(z)$ is the normal CDF.

The sample (conditional) likelihood function will be:
$$L(\beta, \tilde{Y}) = \prod_{i/y_i=1} p_i \prod_{i/y_i=0} (1 - p_i) = \prod_{i=1}^n p_i^{y_i}(1 - p_i)^{1-y_i}$$

Then
$$l(\beta, \tilde{Y}) = \sum_{i=1}^n \left[y_i\ln F(x_i'\beta) + (1 - y_i) \ln (1 - F(x_i'\beta))\right]$$

FOC's for a local maximum are:
$$\sum_{i=1}^n \frac{(y_i - F_i)f_i x_i}{F_i(1 - F_i)} = 0$$

$F_i \equiv F(x_i'\hat{\beta})$, $f_i \equiv f(x_i'\hat{\beta})$. This is a system of $K$ non-linear equations with $K$ unknowns. Moreover, it is not possible to solve for $\hat{\beta}$ and obtain and explicit solution.

**Gaussian regression model:**

$y = x'\beta_0 + u$, with $u|x \sim N(0, \sigma^2)$

or, alternatively
$$y|x \sim N(x'\beta_0, \sigma^2) = \frac{1}{\sqrt{2\pi\sigma}} \exp\left[-\frac{1}{2}\left(\frac{y - x'\beta_0}{\sigma}\right)^2\right]$$

Then
$$l(\beta, \sigma^2; \tilde{Y}) = -n \ln \sigma - n \ln \sqrt{2\pi} - \frac{1}{2\sigma^2}\sum_{i=1}^n (y_i - x_i'\beta)^2$$

Any idea what will be the MLE of $\beta_0$?

## Properties

- Consistency
- Asymptotic Normality
- Estimation of the asymptotic variance
- Asymptotic efficiency
- Invariance

## Setup and Regularity Conditions

At this stage we will simply state them, and discuss them as we go along. Some are purely technical, but some of them have important intuitive meaning.

1. $Z_i, i = 1, \ldots, n$, iid $\sim f(z_i; \theta_0)$
2. $\theta \neq \theta_0 \Rightarrow f(z_i; \theta) \neq f(z_i; \theta_0)$.
3. $\theta \in \Theta$, $\Theta$ a compact set.
4. $\ln f(z_i; \theta)$ is continuous at each $\theta \in \Theta$ w.p.1.
5. $E\left[\sup_{\theta\in\Theta} |\ln f(z; \theta)|\right] < \infty$.

These conditions will be used for **consistency**.

In addition, for **asymptotic normality** we will add the following:

6. $\theta_0$ is an interior point of $\Theta$.
7. $f(z; \theta)$ is twice continuously differentiable and strictly positive in a neighborhood $\mathcal{N}$ of $\theta_0$.
8. $\int \sup_{\theta\in\mathcal{N}} \|\nabla_\theta f(z; \theta)\| dz < \infty$ and $\int \sup_{\theta\in\mathcal{N}} \|\nabla_{\theta\theta} f(z; \theta)\| dx < \infty$.
9. $J \equiv E [s(\theta_0, Z)s(\theta_0, Z)']$ exists and is non-singular.
10. $E[\sup_{\theta\in\mathcal{N}} \|H(Z; \theta)\|] < \infty$.

## Quick detour: bounds

Recall that:
$$|E(X)| < E(|X|)$$

Then by bounding $E(|X|)$ we are guaranteeing that $-\infty < E(X) < \infty$.

By considering something like $E\left[\sup_{\theta\in\Theta} |\ln f(z; \theta)|\right] < \infty$. we are bounding the 'worst case' scenario (the sup of the absolute value).

## Consistency

$$\hat{\theta}_n \xrightarrow{p} \theta_0$$

Proof (omitted, see slides)

## Asymptotic normality

But first we need to establish some notation and results.

- Score and hessian.
- Score equality
- Information matrix
- Information matrix equality

## Score, Hessian and Information

- **Score:** $s(\theta; Z) \equiv \nabla_\theta l(\theta; Z)$, a $K \times 1$ vector.
- **Sample score:** $s(\theta; \tilde{Z}) = \nabla_\theta l(\theta; \tilde{Z}) = \sum_{i=1}^n s(\theta; Z_i)$
- **Hessian:** $H(\theta; Z) \equiv \nabla_{\theta\theta'} l(\theta; Z)$, a $K \times K$ matrix.
- **Sample hessian:** $H(\theta; \tilde{Z}) = \nabla_{\theta\theta'} l(\theta; \tilde{Z}) = \sum_{i=1}^n H(\theta; Z_i)$
- **Information matrix:** $J \equiv E [s(\theta_0; Z)s(\theta_0; Z)']$, an $K \times K$ matrix.

**Score equality:** $E [s(\theta_0; Z)] = 0$ (It is kind of a FOC of the likelihood inequality.)

**Information equality:** $E [H(\theta_0; Z)] = -J$

Note that this implies $V [s(\theta_0; Z)] = J$

## Asymptotic normality

$$\sqrt{n}\left(\hat{\theta}_n - \theta_0\right) \xrightarrow{d} N\left(0, J^{-1}\right)$$

Proof: see slides

## Variance estimation

The asymptotic variance of $\hat{\theta}_n$ is $J^{-1}$, with $J = V(s(\theta_0, Z)$. We will propose three consistent estimators:

1. Inverse of empirical minus hessian:
$$\left[-\frac{1}{n}\sum_{i=1}^n H(\hat{\theta}_n; Z_i)\right]^{-1}$$

2. Inverse of empirical variance of score (OPG):
$$\left[\frac{1}{n}\sum_{i=1}^n s(\hat{\theta}_n; Z_i)s(\hat{\theta}_n; Z_i)'\right]^{-1}$$

3. Inverse of empirical information matrix:
$$\left[J(\hat{\theta}_n)^{-1}\right]$$

## Invariance

**Invariance:** Let $\lambda = g(\theta)$, where $g(\theta)$ is a one-to-one function. Let $\theta_0$ denote the true parameter, so $\lambda_0 = g(\theta_0)$ is the true parameter under the new reparametrization. Then, if $\hat{\theta}$ its MLE of $\theta_0$, $\hat{\lambda} = g(\hat{\theta})$ is the MLE of $\lambda_0$

Example: if $\tilde{\theta}$ is the MLE of $\ln(\theta_0)$, how can we get the MLE of $\theta_0$?

## Proof:

Since $\hat{\theta}$ is the MLE
$$l(\hat{\theta}, \tilde{z}) \geq l(\theta, \tilde{z})$$

for every $\theta \in \Theta$. Since $\lambda = g(\theta)$ is one-to-one:
$$l(g^{-1}(\hat{\lambda}), \tilde{z}) \geq l(g^{-1}(\lambda), \tilde{z})$$

then $\hat{\lambda} = g(\hat{\theta})$ maximizes the reparametrized log-likelihood.

## MLE and unbiasedness

The invariance property makes the MLE estimator very likely to be biased in many relevant cases.

Consider the following intuition. Suppose $\tilde{\theta}$ is the MLE for $\theta_0$ and suppose it is unbiased, so
$$E(\tilde{\theta}) = \theta_0$$

By invariance, $g(\tilde{\theta})$ is the MLE of $g(\theta_0)$. Is $g(\tilde{\theta})$ unbiased? In general
$$E(g(\hat{\theta})) \neq g(E(\hat{\theta})) = g(\theta_0)$$

so if the MLE is unbiased for one parametrization, it is very likely to be biased for most other parametrizations.

## MLE and Efficiency

Let $\theta^*$ be any unbiased estimator of $\theta_0$. An important result is the following

**Cramer-Rao Inequality:** $V(\theta^*) - (nJ)^{-1}$ is psd.

This provides a lower bound for unbiased estimators.

## MLE and efficiency

- The CR bound applies to unbiased estimators. MLE is likely to be biased.
- MLE estimators are asymptotically normal, centered around the true parameter with normalized variance equal to the CR lower bound for unbiased estimators.
- Problem: the class of consistent AN estimators includes some extreme (an highly unusual) cases that can improve upon the CR bound (the so called 'superefficient' estimator).
- Rao (1963): the MLE estimator is efficient (minimum variance) in the class of consistent and uniformly asymptotically normal (CUAN) estimators.
- CUAN estimators: $\tilde{\theta}$ is CUAN for $\theta_0$ if it is consistent and $\sqrt{p}(\tilde{\theta} - \theta_0)$ converges in distribution to a normal rv uniformly over compact subsets of $\Theta$.

## Proof of score equality (the continuous case):

For any $\theta$
$$\int f(z; \theta) dz = 1$$

Taking derivatives in both sides
$$\frac{d[\int f(z; \theta)dz)]}{d\theta} = 0$$

If it is possible to interchange differentiation and integration:
$$\int \frac{df(z; \theta)}{d\theta} d\theta = 0$$

The score is a log-derivative, so
$$s(\theta; z) = \frac{d \ln f(z; \theta)}{d\theta} = \frac{df(z; \theta)/d\theta}{f(z, \theta)}$$

hence
$$df(z; \theta)/d\theta = s(\theta; z)f(z, \theta)$$

Replacing above:
$$\int s(\theta; z)f(z; \theta) dz = 0$$

When $\theta = \theta_0$
$$\int s(\theta_0; z)f(z; \theta_0) dz = E [s(\theta_0; z)]$$

So
$$E [s(\theta_0; z)] = 0$$

## Proof of information equality (the continuous case):

From the previous result:
$$\int s(\theta; z)f(z; \theta)dz = 0$$

Take derivatives in both sides, use the product rule and omit arguments in functions to simplify notation:
$$\int (sf' + s'f)dz = 0$$
$$\int sf'dz + \int s'fdz = 0$$

From the score equality, $f' = sf$, replacing $f'$ above
$$\int s(\theta; z)s(\theta; z)'f(z; \theta)dz + \int s(\theta; z)'f(z; \theta)dx = 0$$

When $\theta = \theta_0$
$$E(s(\theta_0, Z)s(\theta_0, Z)') + \int H(\theta_0; z)f(z; \theta_0)dz = 0$$
$$J + E(H(\theta_0; Z)) = 0$$

which implies the desired result.

## Proof of Asymptotic normality

Under our assumptions, wpa1 the MLE estimator satisfies the FOC's
$$s(\hat{\theta}_n; \tilde{Z}) = 0$$

Take a first order Taylor expansion around $\theta_0$
$$s(\hat{\theta}_n; \tilde{Z}) = s(\theta_0; \tilde{Z}) + H(\bar{\theta}; \tilde{Z})(\hat{\theta}_n - \theta_0) = 0$$

where $\bar{\theta}$ is a 'mean value' located between $\hat{\theta}_n$ and $\theta_0$. (Note that consistency implies $\bar{\theta_n} \xrightarrow{p} \theta_0$).

Now solve
$$\sqrt{n}\left(\hat{\theta}_{n} - \theta_0\right) = \left(-\frac{H(\bar{\theta}; \tilde{Z})}{n}\right)^{-1} \left(\frac{s(\theta_0; \tilde{Z})}{\sqrt{n}}\right)$$

Now we are back in familiar territory: we will show that the first factor does not explode, and that the second is asymptotically normal

First we will show: $-\left(n^{-1}H(\bar{\theta}; \tilde{Z})\right)^{-1} \xrightarrow{p} J^{-1}$

Preliminary result: if $g_n(\theta)$ is a sequence of random functions that converge uniformly in probability to $g_0(\theta)$ for all $\theta$ in a compact set $\Theta$, and $g_0(\theta)$ is continuous, $\hat{\theta}_n \xrightarrow{p} \theta_0$ implies $g_n(\hat{\theta}_n)\xrightarrow{p} g_0(\theta_0)$ (see Ruud (2000, pp. 326).

According to our assumptions $n^{-1}H(\theta; \tilde{Z}) = n^{-1} \sum_{i=1}^n H(\theta; Z_i)$ converges uniformly in probability to $E [H(\theta; Z)]$, which by the previous results, it is continuous in $\theta$.

Hence, by the previous result, since $\bar{\theta} \xrightarrow{p} \theta_0$
$$n^{-1}H(\bar{\theta}; \tilde{Z}) \xrightarrow{p} E [H(\theta_0; Z)] = -J < \infty$$

by the information equality. Then the result follows by continuity of matrix inversion and existence of the information matrix.

Now we show:
$$\frac{s(\theta_0; \tilde{Z})}{\sqrt{n}} \xrightarrow{d} N(0, J)$$

Start with
$$\frac{s(\theta_0; \tilde{Z})}{\sqrt{n}} = \sqrt{n} \frac{s(\theta_0, \tilde{Z})}{n} = \sqrt{n} \frac{\sum_{i=1}^n s(\theta_0, Z_i)}{n}$$

In order to apply the CLT we check
- $E [s(\theta_0, Z_i)] = 0$, by the score equality.
- $V [s(\theta_0, Z_i)] = J < \infty$.

Then, using the Cramer Wold device (please fill details) we get the desired result.

Collecting results:
$$\sqrt{n}\left(\hat{\theta}_n - \theta_0\right) = \left(-\frac{H(\theta_0,\tilde{X})}{n}\right)^{-1} \left(\frac{s(\theta_0,\tilde{X})}{\sqrt{n}}\right)$$
$$\xrightarrow{p} J^{-1} \quad \xrightarrow{d} N(0, J)$$

Then by Slutzky' theorem and linearity
$$\sqrt{n}\left(\hat{\theta}_n - \theta_0\right) \xrightarrow{d} N\left(0, J^{-1}JJ^{-1}\right) = N\left(0, J^{-1}\right)$$

## Proof of CR bound, single parameter case

For any two random variables $X$ and $Y$
$$\text{Cov}(X, Y)^2 \leq V(X)V(Y)$$

since the squared correlation is less than 1. Then
$$V(X) \geq \frac{\text{Cov}(X, Y)^2}{V(Y)}$$

We will take $X = \theta^*$ and $Y = s(\theta_0, \tilde{Z})$. It is immediate to check
$$V(s(\theta_0, \tilde{Z})) = V\left(\sum_{i=1}^n s(\theta_0, \tilde{Z}_i)\right) = n J$$

So...what do we need to show to finish the proof?

We have
$$V(\theta^*) \geq \frac{\text{Cov}\left(\theta^*, s(\theta_0, \tilde{Z})\right)^2}{nJ}$$

so we need to show $\text{Cov}\left(\theta^*, s(\theta_0, \tilde{Z})\right) = 1$.

(Sketch:) Since $E(s(\theta_0, \tilde{Z})) = 0$, $\text{Cov}\left(\theta^*, s(\theta_0, \tilde{Z})\right) = E\left(\theta^* s(\theta_0, \tilde{Z})\right)$

$$E(\theta^* s) = \int \theta^* s f(\tilde{z})d\tilde{z}$$
$$= \int \theta^* \frac{\dot{f}(\tilde{z})}{f(\tilde{z})} f(\tilde{z})d\tilde{z}$$
$$= \int \theta^* \dot{f}(\tilde{z})d\tilde{z}$$
$$= \frac{\partial}{\partial\theta} \int \theta^* f(\tilde{z}, \theta)d\tilde{z}\bigg|_{\theta=\theta_0}$$
$$= \frac{\partial}{\partial\theta} E(\theta^*)|_{\theta=\theta_0}$$
$$= 1$$

since $E(\theta^*) = \theta_0$.

## Consistency

Our starting point is the following normalized version of the MLE:
$$\hat{\theta}_n = \arg\max_\theta Q_n(\theta), \quad Q_n(\theta) \equiv \frac{1}{n}\sum_{i=1}^n l(\theta, Z_i)$$

For consistency we need to establish the following three results

1. $Q_n(\theta)$ converges uniformly in probability to $Q_0(\theta) \equiv E [l(\theta, Z)]$.
2. $Q_0(\theta)$ has a unique maximum at $\theta_0$.
3. 
$$Q_n(\theta) \xrightarrow{up} Q_0(\theta) \Rightarrow \underbrace{\arg\max_{\theta\in\Theta} Q_n(\theta)}_{\hat{\theta}_n} \xrightarrow{p} \underbrace{\arg\max_{\theta\in\Theta} Q_0(\theta)}_{\theta_0}$$

## Intuition

- $\hat{\theta}_n$ maximizes $Q_n(\theta)$ (definition of MLE).
- $Q_n(\theta) \to Q_0(\theta)$ (the MLE problem if well defined at $\infty$).
- $\theta_0$ maximizes $Q_0(\theta)$ (the true value solves the problem at $\infty$).
- By maximizing $Q_n(\theta)$ we end up maximizing $Q_0(\theta)$, convergence of the sequence of functions guarantees converges of maximizers. (this is the difficult step).

If $\arg\max Q_n(\theta)$ is seen as function defined on functions, what property is implied by 3)?

## 1) $Q_n(\theta)$ converges uniformly in probability to $Q_0(\theta) \equiv E [l(\theta, Z)]$

If we fix $\theta$ at any point $\theta^*$ then
$$Q_n(\theta^*) = \frac{1}{n}\sum_{i=1}^n l(\theta^*, Z_i) \xrightarrow{p} E[l(\theta^*, Z)]$$

since by our assumptions (which ones?), $l(\theta^*, Z_i)$ is a sequence of rv's that satisfies Kolmogorov's LLN.

This establishes pointwise convergence of $Q_n(\theta)$ to $Q_0(\theta)$. But our strategy requires uniform convergence.

**Uniform convergence in probability:** $Q_n(\theta)$ converges uniformly in probability to $Q_0(\theta)$ means $\sup_{\theta\in\Theta} |Q_n(\theta) - Q_0(\theta)| \xrightarrow{p} 0$.

**Uniform LLN:** if $Z_i$ are iid, $\Theta$ is compact and $a(Z_i, \theta)$ is a continuous function at each $\theta \in \Theta$ wp1, and there is $d(Z)$ with $\|a(z, \theta)\| \leq d(Z)$ for all $\theta \in \Theta$ and $E[d(Z)] < \infty$, then $E[a(z, \theta)]$ is continuous and $n^{-1} \sum_{i=1}^n a(Z_i, \theta)$ converges uniformly in probability to $E[a(Z, \theta)]$ (Newey and West, 1994, pp. 2129).

In our case, $a(Z_i, \theta) = l(\theta, Z_i)$, continuous on a compact set $\Theta$, the required bound is provided by our assumption
$$E\left[\sup_{\theta\in\Theta} |\ln f(z; \theta)|\right] < \infty$$

and the desired result follows from the iid assumption.

## 2) $Q_0(\theta)$ has a unique maximum at $\theta_0$.

**Information inequality:** if $\theta \neq \theta_0 \Rightarrow f(z_i'; \theta) \neq f(z_i; \theta_0)$ and $E[|l(\theta; Z)|] < \infty$ for all $\theta$, then $Q_0(\theta) = E[l(\theta, Z)]$ has a unique maximum at $\theta_0$.

$$E[l(\theta_0; Z)] - E[l(\theta; Z)] = E[l(\theta_0; Z) - l(\theta; Z)]$$
$$= E\left[- \ln \frac{f(Z, \theta)}{f(Z, \theta_0)}\right]$$
$$> - \ln E\left[\frac{f(Z; \theta)}{f(Z; \theta_0)}\right] \quad \text{Jensen's inequality!}$$
$$> - \ln \int \frac{f(z; \theta)}{f(z; \theta_0)} f(z; \theta_0) dz$$
$$> - \ln 1$$
$$> 0$$

Important: check where does the argument break down if assumptions do not hold.

## 3) 1) and 2) imply consistency.

Pick any $\epsilon > 0$. Let us get three inequalities wpa 1.

$\hat{\theta}_n$ maximizes $Q_n(\theta)$, so

a) $Q_n(\hat{\theta}_n) > Q_n(\theta_0) - \epsilon/3$

$Q_n(\theta)$ converges uniformly to $Q_0(\theta)$, so $Q_n(\hat{\theta}_n) - Q_0(\hat{\theta}_n) < \epsilon/3$, hence

b) $Q_0(\hat{\theta}_n) > Q_n(\hat{\theta}_n) - \epsilon/3$

and $Q_0(\theta_0) - Q_n(\theta_0) < \epsilon/3$ hence

c) $Q_n(\theta_0) > Q_0(\theta_0) - \epsilon/3$

Now start with b)
$$Q_0(\hat{\theta}_n) > Q_n(\hat{\theta}_n) - \epsilon/3$$
$$> Q_n(\theta_0) - \epsilon 2/3 \quad \text{Subtract } \epsilon/3 \text{ in both sides of a)}$$

d) $Q_0(\hat{\theta}_n) > Q_0(\theta_0) - \epsilon$ Subtract $\epsilon 2/3$ in both sides of c)

Let $\mathcal{N}$ be an open subset of $\Theta$ containing $\theta_0$. $\mathcal{N}$ open implies $\mathcal{N}^c \cap \Theta$ closed and bounded: compact in our case.

Since $Q_0(\theta)$ is continuous (the uniform limit of a continuous function is continuous) then:
$$\sup_{\theta\in\Theta\cap\mathcal{N}^c} Q_0(\theta) = Q_0(\theta^*)$$

for some $\theta^* \in \Theta \cap \mathcal{N}^c$ (continuous functions over compact sets achieve their maximum).

Now since $\theta_0$ is the unique maximizer of $Q_0(\theta)$,
$$Q_0(\theta^*) < Q_0(\theta_0)$$

Now pick $\epsilon = Q_0(\theta_0) - Q_0(\theta^*)$, then by inequality d), wpa1
$$Q_0(\hat{\theta}) > Q_0(\theta^*)$$

so $\hat{\theta} \in \mathcal{N}$ wpa1. (if not $Q_0(\theta^*)$ would not be the sup).

Then using the definition of convergence in probability, since $\mathcal{N}$ was chosen arbitrarily
$$\hat{\theta}_n \xrightarrow{p} \theta_0$$

# Selectividad Muestral

**Walter Sosa-Escudero**  
Universidad de San Andres y CONICET  
12 de mayo de 2022

---

## Motivación

¿Qué pasa si 'borramos' datos? Ej: mujeres que no trabajan, compañeros que faltan a la reunión de egresados, etc. Muestra no aleatoria.

---

## Preliminares 1: Normal truncada

$X \sim f(x)$. $X|X < a$: $X$ truncada in $a$.

**Resultado:** si $X \sim N(\mu, \sigma^2)$,

$$E(X|X < a) = \mu - \sigma \frac{\phi(\alpha)}{\Phi(\alpha)},$$

con $\alpha \equiv (a - \mu)/\sigma$. $\phi(x)$, $\Phi(x)$, densidad y fda normal estándar.

- Truncada a la derecha: esperanza a la izquierda (general).
- Normal: desplazamiento aditivo.
- ¿Cuánto? Depende de $\alpha$ and $\sigma^2$
- $\lambda(z) \equiv \phi(z)/\Phi(z)$: inversa de la razón de Mills.

---

## Preliminares 2: probits y variables latentes

$$y^* = x'\beta^* + u, \quad u \sim N(0, \sigma^2)$$

- Si se observa $(y_i^*, x_i)$, $i = 1, \ldots, n$ es posible estimar $\beta$ y $\sigma^2$ consistentemente.

- ¿Qué es posible estimar si se observa $(y, x_i)$, $i = 1, \ldots, n$, con $y_i = 1[y_i^* > 0]$?

Si $y^* = x'\beta^* + u$:

$$P(y = 1|x) = P(y^* > 0|x)$$
$$= P(u > -x'\beta^*|x)$$
$$= P(u/\sigma < x'\beta^*/\sigma | x) \quad \text{(Simetría)}$$
$$= \Phi(x'\beta)$$

con, $\beta \equiv \beta^*/\sigma$ y $\Phi(z) = \int_{-\infty}^z \frac{1}{\sqrt{2\pi}} e^{-\frac{1}{2}z^2} dz$.

- $P(y = 1|x) = \Phi(x'\beta)$ es el modelo **probit**.
- Es posible estimar $\beta$ por MV en base a $(y_i, x_i)$, $i = 1, \ldots, n$.

$$y^* = x'\beta^* + u, \quad u \sim N(0, \sigma^2)$$

- Con $(y_i^*, x_i)$ es posible recuperar $\beta^*$ y $\sigma^2$.
- Con $(y_i, x_i)$ solo $\beta = \beta^*/\sigma^2$.
- $\sigma^2$ y $\beta^*$ no están identificados en una muestra $(y_i, x_i)$.
- **Ejemplo:** $\beta^* = 10$ y $\sigma^2 = 2$ producen los mismos $(y_i, x_i)$ que $\beta^* = 5$ y $\sigma^2 = 1$.

---

## Preliminares 3: Omisión de variables

Recordar que si en

$$Y = X_1\beta_1 + X_2\beta_2 + u$$

omitimos $X_2$, MCO de regresar $Y$ en $X_1$ es en general sesgado. Se arregla controlando por $X_2$.

---

## Selectividad muestral

$$y_i^* = x_i'\beta + u_i$$

$s_i$, variable de **selectividad**: $s_i = 1$ observado, $0$ si no.

- 'Super muestra' de tamaño $N$ de $(y_i^*, x_i, s_i)$, por solo observamos una 'sub muestra' $(y_i^*, x_i)$ solo cuando $s_i = 1$.

- **Ejemplo:** productividad de mujeres en el mercado laboral.

- **Ejemplo:** el efecto 'reunión de egresados'

**Resultado:** MCO bajo selectividad en general conduce a sesgos.

---

## MCO bajo selectividad

Con una muestra **aleatoria**, $(y_i^*, x_i)$, consistencia/insesgadez depende de

$$E(u_i|x_i) = 0,$$

que implica $E(y_i^*|x_i) = x_i'\beta$.

Con una muestra **no aleatoria** (condicionada en $s_i = 1$):

$$E(y_i|x_i, s_i = 1) = x_i'\beta + E(u_i|x_i, s_i = 1)$$

MCO bajo selectividad es inconsistente, a menos que $E(u_i|x_i, s_i = 1) = 0$.

---

## Discusión

$$E(y_i|x_i, s_i = 1) = x_i'\beta + \underbrace{E(u_i|x_i, s_i = 1)}_{=0?}$$

- No todo mecanismo de selectividad sesga a MCO.
- Si $u$ independiente de $s$, MCO insesgado (¿por qué?).
- Si $s = g(x)$, MCO insesgado.

**Cuatro ejemplos:** salarios y educación (hombres)
- DNI par
- Terminaron la primaria
- Pasaron un test de inteligencia
- Salarios, educación, inteligencia pero para personas que pasaron un test de inteligencia

El sesgo depende de la conformación del modelo

---

## Un modelo estimable bajo selectividad

$$\begin{cases}
y_{1i} = x_{1i}'\beta_1 + u_{1i} & \text{(regresión)} \\
y_{2i}^* = x_{2i}'\beta_2 + u_{2i} & \text{(selectividad)}
\end{cases}$$

$y_{2i} = 1[y_{2i}^* > 0]$.

**Ejemplo:** $y_{1i} =$ salarios. Regresión: salarios en base a productividad. Selectividad: decisión de trabajar ($y_{2i}^* =$ utilidad neta del trabajo). $x_1$, determinantes de la productividad, $x_{2i}$, determinantes de la decisión de trabajar.

---

## Supuestos:

1. $(y_{2i}, x_{2i})$ se observa para todos.
2. $(y_{1i}, x_{1i})$ se observa solo si $y_{2i} = 1$ (muestra bajo selectividad).
3. $(u_{1i}, u_{2i})$ independientes de $x_{2i}$, con esperanza nula.
4. $u_{2i} \sim N(0, \sigma_2^2)$.
5. $E(u_{1i}|u_{2i}) = \gamma u_2$. Los no observables **pueden** estar relacionados.

---

## Sesgo por selectividad

$$y_{1i} = x_{1i}'\beta_1 + u_{1i}$$

Notar que aquí $s_i \equiv y_{2i}$.

$$E(y_{1i}|x_{1i}, y_{2i} = 1) = x_{1i}'\beta_1 + E(u_{1i} | x_{1i}, y_{2i} = 1)$$
$$= x_{1i}'\beta_1 + E[E(u_{1i}|u_{2i}) | x_{1i}, y_{2i} = 1]$$
$$= x_{1i}'\beta_1 + E[\gamma u_{2i} | x_{1i}, y_{2i} = 1]$$
$$= x_{1i}'\beta_1 + \gamma E[u_{2i} | x_{1i}, y_{2i}^* > 0]$$
$$= x_{1i}'\beta_1 + \gamma E[u_{2i} | x_{1i}, u_{2i} < x_{2i}'\beta_2]$$
$$= x_{1i}'\beta_1 - \gamma\sigma_2 \lambda(x_{2i}'\beta_2/\sigma_2)$$
$$= x_{1i}'\beta_1 - \gamma\sigma_2 z_i \neq x_{1i}'\beta_1$$

con $z_i \equiv \lambda(x_{2i}'\beta_2/\sigma_2)$. MCO con la muestra seleccionada es inconsistente.

$$E(y_{1i}|x_{1i}, y_{2i} = 1) = x_{1i}'\beta_1 - \gamma\sigma_2 z_i \neq x_{1i}'\beta_1$$

- **Inconsistencia:** omisión de $z_i$. Heckman (1979): sesgo de selectividad como especificación incorrecta.

- **Fuente de inconsistencia:** correlation between $u_{1i}$ y $u_{2i}$ ($\gamma \neq 0$).

---

## Estimador de Heckman en dos etapas

Definamos $u_{1i}^* \equiv y_{1i} - x_{1i}'\beta_1 - \gamma^* z_i$, con $\gamma^* \equiv -\gamma\sigma_2$. Despejando:

$$y_{1i} = x_{1i}'\beta + \gamma^* z_i + \underbrace{u_{1i}^*}_{u_{1i}}$$

Por construcción $E(u_{1i}^*|x_{1i}, y_{2i} = 1) = 0$.

- Si $x_{1i}, z_i$ fuesen observables cuando $y_{2i} = 1$: MCO de $y_{1i}$ en $x_{1i}$ y $z_i$ usando la muestra seleccionada estima consistentemente a $\beta_1$ y $\gamma^*$.

- **Problema:** $z_i \equiv \lambda(x_{2i}'\beta_2/\sigma_2)$ no observable, depende de $\beta_2$ and $\sigma_2$.

Notar que $u_{2i} \sim N(0, \sigma_2^2)$, entonces:

$$P(y_{2i} = 1) = P(y_{2i}^* > 0) = P(u_{2i}/\sigma_2 < x_{2i}'\beta_2/\sigma_2) = \Phi(x_{2i}'\delta)$$

- $P(y_{2i} = 1)$ es un modelo **probit** con coeficiente desconocido $\delta$.

- $x_{2i}$ y $y_{2i}$ se observan para todos: $\delta$ se puede estimar por MV vía probit.

- **Importante:** no podemos identificar $\beta_{2i}$ y $\sigma_2$ por separado, pero no hace falta (tan solo $\delta = \beta_{2i}/\sigma_{2i}$).

---

## Método en dos etapas (Heckman):

- **Etapa 1:** Estimar $\hat{\delta}$ vía probit $P(y_{2i} = 1) = \Phi(x_{2i}'\delta)$ usando toda la muestra. Obtener $\hat{z}_i = \lambda(x_{2i}'\hat{\delta})$.

- **Etapa 2:** Regresar $y_{2i}$ en $x_{1i}$ y $\hat{z}_i$ usando la muestra seleccionada. Esto estima consistentemente a $\beta_1$ y $\gamma^*$.

---

## En la práctica

- Consistente y asintóticamente normal (método de momentos)

- Cuidado con la varianza asintótica. La segunda etapa requiere una corrección (usar software específico).

- Test de $H_0 : \gamma = 0$ como test de selectividad.

- Muy baja potencia cuando $x_1$ es muy similar a $x_2$.

- ¿MV? Requiere normalidad bivariada, verosimilitud muy inestable.