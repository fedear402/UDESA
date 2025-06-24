Below is a summary of many of the possible cases when you compose a function $f(x)$ with a transformation function $g(t)$ to form 
$$
h(x)=g(f(x)).
$$ 
We denote the properties as follows:

- **Concave:** For any $x,y$ and any $\lambda \in [0,1]$, 
$$
f(\lambda x + (1-\lambda)y) \ge \lambda f(x) + (1-\lambda)f(y).
$$

- **Convex:** For any $x,y$ and any $\lambda \in [0,1]$, 
$$
f(\lambda x + (1-\lambda)y) \le \lambda f(x) + (1-\lambda)f(y).
$$

- **Quasiconcave:** $f(x)$ is quasiconcave if for any $x,y$ and any $\lambda \in [0,1]$, 
$$
f(\lambda x + (1-\lambda)y) \ge \min\{f(x),f(y)\},
$$ 
or equivalently, if all the upper contour sets 
$$
\{x : f(x) \ge \alpha\}
$$ 
are convex.

- **Quasiconvex:** $f(x)$ is quasiconvex if all the lower contour sets 
$$
\{x : f(x) \le \alpha\}
$$ 
are convex.

For the transformation function $g(t)$ we consider its monotonicity and curvature:
- **Strictly Increasing:** preserves order; i.e., for any $t_1 < t_2$, $g(t_1) < g(t_2)$.
- **Strictly Decreasing:** reverses order.
- **Linear:** is both convex and concave.
- **Concave/Convex/Quasiconcave/Quasiconvex:** are defined in the usual one‐dimensional sense.

The composition 
$$
h(x)=g(f(x))
$$ 
can have different properties depending on the combination.

---

### 1. When $g$ Is Strictly Increasing

Since a strictly increasing function preserves order, the *quasi* properties are invariant:
- If $f$ is **quasiconcave**, then $h$ is **quasiconcave**.
- If $f$ is **quasiconvex**, then $h$ is **quasiconvex**.

For **concavity/convexity**, the situation is more delicate:
- **If $f$ is concave:**
  - **Increasing & concave (or linear) $g$:**  
    $$
    h(x)=g(f(x))
    $$ 
    is concave.
  - **Increasing & convex $g$:**  
    $$
    h(x)=g(f(x))
    $$ 
    may fail to be concave.  
    *Example:* Let 
    $$
    f(x)=\sqrt{x} \quad \text{(concave)}
    $$ 
    and 
    $$
    g(t)=e^t \quad \text{(increasing convex)}.
    $$ 
    Then,
    $$
    h(x)=e^{\sqrt{x}},
    $$
    which is not globally concave.
- **If $f$ is convex:**
  - **Increasing & convex (or linear) $g$:**  
    $$
    h(x)=g(f(x))
    $$ 
    is convex.
  - **Increasing & concave $g$:**  
    $$
    h(x)=g(f(x))
    $$ 
    may fail to be convex.

---

### 2. When $g$ Is Strictly Decreasing

A strictly decreasing transformation reverses the order, so it swaps the quasi properties:
- If $f$ is **quasiconcave**, then 
$$
h(x)=g(f(x))
$$ 
becomes **quasiconvex**.
- If $f$ is **quasiconvex**, then 
$$
h(x)=g(f(x))
$$ 
becomes **quasiconcave**.

For **concavity/convexity**, consider:
- **If $f$ is concave:**
  - **Decreasing & linear $g$:**  
    A linear decreasing function is equivalent to a negative scaling, so 
    $$
    h(x)=-f(x),
    $$
    which is convex.
  - More generally, if $g$ is decreasing and convex, under suitable conditions $h$ can be convex.
  - If $g$ is decreasing and concave, under appropriate conditions $h$ may be concave.
- **If $f$ is convex:**
  - **Decreasing & linear $g$:**  
    $$
    h(x)=-f(x)
    $$ 
    is concave.
  - More generally, if $g$ is decreasing and concave, under suitable conditions $h$ can be concave.
  - If $g$ is decreasing and convex, under appropriate conditions $h$ may be convex.

*Note:* In these cases the precise result often depends on additional regularity conditions. Standard composition rules provide, for example:
- If $f$ is convex and $g$ is convex and non-decreasing, then $g\circ f$ is convex.
- If $f$ is convex and $g$ is convex and non-increasing, then $g\circ f$ is concave.
- Similar “reversal” rules hold when $f$ is concave.

---

### 3. Some Illustrative Examples

- **Example A (Quasiconcavity Preservation):**  
  Let $f(x)$ be quasiconcave and let $g(t)$ be any strictly increasing function (whether linear, concave, convex, quasiconcave, or quasiconvex). Then
  $$
  h(x)=g(f(x))
  $$ 
  is quasiconcave.

- **Example B (Order Reversal for Quasi Properties):**  
  Let $f(x)$ be quasiconcave and let $g(t)$ be strictly decreasing (e.g., a decreasing linear function). Then
  $$
  h(x)=g(f(x))
  $$ 
  is quasiconvex.

- **Example C (Concavity Preservation):**  
  Let 
  $$
  f(x)=\sqrt{x} \quad \text{(concave)}
  $$ 
  and choose
  $$
  g(t)=\ln(t) \quad \text{for } t>0 \quad \text{(increasing concave)}.
  $$ 
  Then,
  $$
  h(x)=\ln(\sqrt{x})=\frac{1}{2}\ln(x)
  $$  
  is concave.

- **Example D (Failure of Concavity):**  
  With 
  $$
  f(x)=\sqrt{x} \quad \text{(concave)}
  $$ 
  and
  $$
  g(t)=e^t \quad \text{(increasing convex)},
  $$ 
  we get
  $$
  h(x)=e^{\sqrt{x}},
  $$  
  which is not globally concave.

- **Example E (Linear Decreasing Transformation):**  
  If $f(x)$ is concave and you use a decreasing linear function 
  $$
  g(t)=-t,
  $$  
  then
  $$
  h(x)=-f(x)
  $$  
  is convex.

---

### 4. Summary Table

**For $g$ strictly increasing:**

| $f$ property | $g$ property (with $g$ strictly increasing)                                  | Resulting $h(x)=g(f(x))$ property |
| ------------ | ---------------------------------------------------------------------------- | --------------------------------- |
| Concave      | Linear or concave                                                            | Concave                           |
| Concave      | Convex                                                                       | Generally not concave             |
| Convex       | Linear or convex                                                             | Convex                            |
| Convex       | Concave                                                                      | Generally not convex              |
| Quasiconcave | Any strictly increasing (linear, concave, convex, quasiconcave, quasiconvex) | Quasiconcave                      |
| Quasiconvex  | Any strictly increasing                                                      | Quasiconvex                       |

**For $g$ strictly decreasing:**

| $f$ property   | $g$ property (with $g$ strictly decreasing)                                     | Resulting $h(x)=g(f(x))$ property         |
|----------------|----------------------------------------------------------------------------------|-------------------------------------------|
| Concave        | Linear                                                                           | Convex (since $h(x)=-f(x)$)                 |
| Convex         | Linear                                                                           | Concave (since $h(x)=-f(x)$)                 |
| Quasiconcave   | Any strictly decreasing                                                          | Quasiconvex                               |
| Quasiconvex    | Any strictly decreasing                                                          | Quasiconcave                              |

*Note:* When using non‐linear transformations (convex/concave) that are decreasing, the resulting curvature (convexity/concavity) of the composition depends on additional conditions. The above table reflects the typical outcomes under standard composition rules.
