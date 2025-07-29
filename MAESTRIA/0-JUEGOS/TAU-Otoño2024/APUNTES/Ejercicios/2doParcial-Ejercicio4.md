```
              Naturaleza
                /    \
            B 1/2   M 1/2
              |       |
        ┌─────┴──┐  ┌─┴─────┐
        │Agustín │  │Agustín│
        │  (BC)  │  │  (MC) │
        └──┬───┬─┘  └─┬───┬─┘
           │   │       │  │
           I  NI       I  NI
           │   │       │   │
           │  (0,0)    │  (0,0)
           │           │
      ┌────┴──┐    ┌───┴────┐
      │Camila │    │ Camila │     (mismo conjunto de info)
      └─┬───┬─┘    └─┬───┬─┘
        │   │        │   │
        A   NA       A   NA
      (2,2)(-1,-1) (1,1)(-1,3)


```

---

### Estrategias puras de Agustín  

Usamos la notación  

$$
I/NI \quad\text{(decisión de invitar o no)} \;;\; 
G/F \quad\text{(jugar G si es bueno, F si es malo)}
$$

$$
\begin{aligned}
S_A = \Bigl\{ &
I\,I\,G\,G,\; I\,I\,G\,F,\; I\,I\,F\,G,\; I\,I\,F\,F,\\
& I\,NI\,G\,G,\; I\,NI\,G\,F,\; I\,NI\,F\,G,\; I\,NI\,F\,F,\\
& NI\,I\,G\,G,\; NI\,I\,G\,F,\; NI\,I\,F\,G,\; NI\,I\,F\,F,\\
& NI\,NI\,G\,G,\; NI\,NI\,G\,F,\; NI\,NI\,F\,G,\; NI\,NI\,F\,F
\Bigr\}.
\end{aligned}
$$

En los sub-árboles finales la única elección óptima es  

$$
\boxed{\,G \text{ si es BC},\; F \text{ si es MC}\,}.
$$
Por lo tanto sólo cuatro estrategias de Agustín sobreviven:

$$
S_A^{\ast} = \Bigl\{ I\,I\,G\,F,\; I\,NI\,G\,F,\; NI\,I\,G\,F,\; NI\,NI\,G\,F \Bigr\}.
$$
Sea $\mu$ la probabilidad (en su conjunto de información) de que Agustín sea bueno (BC) después de observar $I$.

$$
\begin{aligned}
U_C(A \mid \mu)   &= 2\mu + 1(1-\mu) \;=\; 1 + \mu,\\[4pt]
U_C(NA \mid \mu) &= (-1)\mu + 3(1-\mu) \;=\; 3 - 4\mu.
\end{aligned}
$$

Camila prefiere $A$ si $\mu \ge 0.4$ y $NA$ si $\mu < 0.4$. 
$(U_A,\,U_C)$ para las cuatro estrategias relevantes
$$
\begin{array}{c|cc}
 & A & NA \\ \hline
I\,I\,G\,F      & \bigl(\tfrac{3}{2},\,\tfrac{3}{2}\bigr) & (-1,\,1)\\
I\,NI\,G\,F    & (1,\,1) & \bigl(-\tfrac{1}{2},\,-\tfrac{1}{2}\bigr)\\
NI\,I\,G\,F   & \bigl(\tfrac{1}{2},\,\tfrac{1}{2}\bigr) & \bigl(-\tfrac{1}{2},\,\tfrac{3}{2}\bigr)\\
NI\,NI\,G\,F & (0,\,0) & \bigl(\tfrac{3}{2},\,0\bigr)
\end{array}
$$
Equilibrios Bayesianos Perfectos (EBP)

| Nº | Estrategias | Creencias de Camila | Acción óptima | Comentario |
|----|-------------|--------------------|---------------|------------|
| **1** | Agustín: $I\,I\,G\,F$ (pooling en $I$)  <br> Camila: $A$ | Al ver $I$: $\mu = \tfrac{1}{2} > 0.4$ | $A$ | Nadie mejora desviando. |
| **2** | Agustín: $NI\,NI\,G\,F$ (pooling en $NI$) <br> Camila: $NA$ | Nodo no alcanzado $\Rightarrow$ cualquier $\mu < 0.4$ (p.e. $\mu = 0$) | $NA$ | Desvío de Agustín da $-1 < 0$. |

$$
\boxed{\text{Sólo existen los EBPs de pooling en }I\text{ y en }NI.}
$$

## Equilibrios Bayesianos de Nash
$$
\begin{array}{l|c c}
\text{Estrategia de Agustín} & A & NA \\ \hline
I\,I\,G\,G   & (1,0)                                   & (-1,\underline{1}) \\
I\,I\,G\,F   & \boxed{(\underline{\tfrac{3}{2}},\underline{\tfrac{3}{2}})} & (-1,1) \\
I\,I\,F\,G   & (\tfrac{1}{2},\tfrac{-1}{2})            & (-1,\underline{1}) \\
I\,I\,F\,F   & (1,\underline{1})                       & (-1,\underline{1}) \\ \hline
I\,NI\,G\,G  & (1,\underline{1})                       & (\tfrac{-1}{2},\tfrac{-1}{2}) \\
I\,NI\,G\,F  & (1,\underline{1})                       & (\tfrac{-1}{2},\tfrac{-1}{2}) \\
I\,NI\,F\,G  & (\tfrac{1}{2},\underline{\tfrac{1}{2}}) & (\tfrac{-1}{2},\tfrac{-1}{2}) \\
I\,NI\,F\,F  & (\tfrac{1}{2},\underline{\tfrac{1}{2}}) & (\tfrac{-1}{2},\tfrac{-1}{2}) \\ \hline
NI\,I\,G\,G  & (0,-1)                                  & (\tfrac{-1}{2},\underline{\tfrac{3}{2}}) \\
NI\,I\,G\,F  & (\tfrac{1}{2},\tfrac{1}{2})             & (\tfrac{-1}{2},\underline{\tfrac{3}{2}}) \\
NI\,I\,F\,G  & (0,-1)                                  & (\tfrac{-1}{2},\underline{\tfrac{3}{2}}) \\
NI\,I\,F\,F  & (\tfrac{1}{2},\tfrac{1}{2})             & (\tfrac{-1}{2},\underline{\tfrac{3}{2}}) \\ \hline
NI\,NI\,G\,G & (0,\underline{0})                       & \boxed{(\underline{0},\underline{0})} \\
NI\,NI\,G\,F & (0,\underline{0})                       & \boxed{(\underline{0},\underline{0})} \\
NI\,NI\,F\,G & (0,\underline{0})                       & \boxed{(\underline{0},\underline{0})} \\
NI\,NI\,F\,F & (0,\underline{0})                       & \boxed{(\underline{0},\underline{0})} \\
\end{array}
$$
# MODIFICADO

## Juego modificado  
Agustín **siempre** invita, por lo que el nodo `I/NI` desaparece.  
La secuencia es ahora:

1. **Naturaleza** elige el tipo de Agustín  
   - Bueno (BC) con probabilidad $p=\tfrac12$  
   - Malo (MC) con probabilidad $1-p=\tfrac12$
2. **Camila** —sin saber el tipo— decide  
   - $A$ (aceptar)  
   - $NA$ (rechazar)  
3. Si el juego continúa, los pagos son los mismos que antes (pues cada tipo de Agustín actuaría racionalmente $G/F$ en la fase final):  

| Tipo | Camila $A$ | Camila $NA$ |
|------|------------|-------------|
| BC   | $(2,2)$    | $(-1,-1)$   |
| MC   | $(1,1)$    | $(-1,3)$    |

---

## Utilidades esperadas de Camila  

Sea $p$ la creencia (ex-ante) de que Agustín es BC ($p=\tfrac12$):

$$
\begin{aligned}
\mathbb E[U_C(A)]   &= 2p + 1(1-p) \;=\; 1 + p,\\[4pt]
\mathbb E[U_C(NA)] &= (-1)p + 3(1-p) \;=\; 3 - 4p.
\end{aligned}
$$

Camila prefiere $A$ si  
$$1+p \;>\; 3-4p \quad\Longleftrightarrow\quad p \ge 0.4.$$

Con $p=\tfrac12$ se cumple la inecuación, de modo que su **mejor respuesta** es $A$.

---

## Equilibrio (Bayesian / Nash / Secuencial)

- **Estrategia de Camila:** $A$.  
- **No hay decisiones de Agustín** (invitación obligatoria).  
- **Creencias:** las priors $p=\tfrac12,\;1-p=\tfrac12$ se mantienen (no hay información nueva).  

Como el único jugador activo elige la acción óptima dadas sus creencias, esto constituye el **único equilibrio** del juego.

> **EBP (y BNE) único:**  
> $$\bigl[\,\text{Camila juega }A;\; p=\tfrac12\bigr]$$  

---

### Nota sobre posibles “equilibrios alternativos”

Si el parámetro $p$ fuera un dato distinto:

* Para **$p \ge 0.4$** Camila escogería **$A$**.  
* Para **$p < 0.4$** Camila escogería **$NA$**.  

En *este* juego, con $p=\tfrac12$, sólo existe el equilibrio en $A$. No hay mezcla creíble porque Camila es el único jugador con acción y cada acción pura estrictamente domina a la otra en su rango de $p$ correspondiente.
