# Problema 13: Juego de Corridas Bancarias como Profecías Autovalidadas

Este juego intenta mostrar que las corridas bancarias pueden surgir como profecías autovalidadas. Dos inversores han depositado cada uno de ellos una cantidad $D$ en un banco. El banco ha invertido estos depósitos en un proyecto a largo plazo. En el período $t$ su tamaño es $2t$, con $t = 1, 2, ..., T$. Cada período, los inversores deciden simultáneamente si reclamar o no el monto acumulado. Si sólo una persona lo reclama, esa persona obtiene todo el dinero y el juego termina. Si ambos lo reclaman, dividen el dinero en partes iguales; y si nadie lo reclama, el juego continúa por otro período en el que ocurre exactamente lo mismo. Si nadie reclama el dinero en el período $T$, cada persona obtiene $T$. A cada persona sólo le interesa la cantidad de dinero que obtiene. Modele esta situación como un juego en forma extensiva y encuentre los equilibrios subjuego perfecto para $T = 1$, $T = 2$ y $T = 3$. ¿Qué ocurre en $n$ períodos?

## Análisis del Juego

### Descripción del juego:
- Dos inversores, cada uno ha depositado $D$ en un banco
- El proyecto crece: en período $t$, el valor total es $2t$
- Cada período, los inversores deciden simultáneamente: Reclamar (R) o No Reclamar (N)
- Reglas de pago:
 - Si solo uno reclama: obtiene todo el dinero disponible ($2t$), el otro obtiene 0
 - Si ambos reclaman: dividen el dinero por igual ($t$ cada uno)
 - Si ninguno reclama: el juego continúa al siguiente período
 - Si nadie reclama en período $T$: cada uno obtiene $T$

### Caso $T = 1$:

**Estructura del juego:**
- Período 1: Valor del proyecto = $2 \times 1 = 2$
- Si nadie reclama, cada uno obtiene $T = 1$

**Matriz de pagos en período 1:**

|          | Jugador 2: R | Jugador 2: N |
|----------|--------------|--------------|
| Jugador 1: R | (1, 1)       | (2, 0)       |
| Jugador 1: N | (0, 2)       | (1, 1)       |

**Análisis:**
- Si ambos reclamaran: $(1, 1)$
- Si solo uno reclama: $(2, 0)$ o $(0, 2)$
- Si ninguno reclama: $(1, 1)$

**Equilibrios de Nash:**
- $(R, R)$: cada jugador obtiene 1
- No hay equilibrios en estrategias puras donde solo uno reclame
- $(N, N)$: cada jugador obtiene 1

**Equilibrio subjuego perfecto:** Ambos equilibrios $(R, R)$ y $(N, N)$ son subjuego perfectos, ya que el juego tiene un solo período.

### Caso $T = 2$:

**Análisis por inducción hacia atrás:**

**Período 2:** Si se llega a este período, el valor es $2 \times 2 = 4$
- Si nadie reclama: cada uno obtiene $T = 2$

**Matriz de pagos en período 2:**

|          | Jugador 2: R | Jugador 2: N |
|----------|--------------|--------------|
| Jugador 1: R | (2, 2)       | (4, 0)       |
| Jugador 1: N | (0, 4)       | (2, 2)       |

En el período 2, tanto $(R, R)$ como $(N, N)$ son equilibrios de Nash, ambos dando $(2, 2)$.

**Período 1:** Valor = $2 \times 1 = 2$
- Si ambos reclaman: $(1, 1)$
- Si solo uno reclama: $(2, 0)$ o $(0, 2)$
- Si ninguno reclama: van al período 2 donde obtendrán $(2, 2)$

**Matriz de pagos en período 1 (considerando continuación óptima):**

|          | Jugador 2: R | Jugador 2: N |
|----------|--------------|--------------|
| Jugador 1: R | (1, 1)       | (2, 0)       |
| Jugador 1: N | (0, 2)       | (2, 2)       |

**Equilibrio subjuego perfecto:** $(N, N)$ en período 1, luego cualquiera de los equilibrios en período 2. El pago es $(2, 2)$.

### Caso $T = 3$:

**Análisis por inducción hacia atrás:**

**Período 3:** Valor = $2 \times 3 = 6$
- Si nadie reclama: cada uno obtiene $T = 3$

**Matriz de pagos en período 3:**

|          | Jugador 2: R | Jugador 2: N |
|----------|--------------|--------------|
| Jugador 1: R | (3, 3)       | (6, 0)       |
| Jugador 1: N | (0, 6)       | (3, 3)       |

Equilibrios: $(R, R)$ y $(N, N)$, ambos dan $(3, 3)$.

**Período 2:** Valor = $4$
- Si ninguno reclama: van al período 3 donde obtendrán $(3, 3)$

**Matriz de pagos en período 2:**

|          | Jugador 2: R | Jugador 2: N |
|----------|--------------|--------------|
| Jugador 1: R | (2, 2)       | (4, 0)       |
| Jugador 1: N | (0, 4)       | (3, 3)       |

Mejor respuesta: $(N, N)$ da $(3, 3) > (2, 2)$

**Período 1:** Valor = $2$
- Si ninguno reclama: van al período 2 donde obtendrán $(3, 3)$

**Matriz de pagos en período 1:**

|          | Jugador 2: R | Jugador 2: N |
|----------|--------------|--------------|
| Jugador 1: R | (1, 1)       | (2, 0)       |
| Jugador 1: N | (0, 2)       | (3, 3)       |

**Equilibrio subjuego perfecto:** $(N, N)$ en todos los períodos hasta llegar al final. Pago: $(3, 3)$.

### Caso general para $n$ períodos:

**Proposición:** En el equilibrio subjuego perfecto, ningún jugador reclama en ningún período $t < T$, y cada jugador obtiene un pago final de $T$.

**Demostración por inducción hacia atrás:**

1. **Período $T$:** El valor es $2T$. Los equilibrios son $(R, R)$ y $(N, N)$, ambos dando pago $(T, T)$.

2. **Período $t < T$:** Supongamos que en todos los períodos $s > t$ el equilibrio es no reclamar hasta obtener $(T, T)$.
  - Valor en período $t$: $2t$
  - Si ambos reclaman: $(t, t)$
  - Si ninguno reclama: continúan y obtienen $(T, T)$
  - Como $T > t$, tenemos $(T, T) > (t, t)$
  - Por tanto, $(N, N)$ es la estrategia óptima en período $t$.

**Conclusión:** El único equilibrio subjuego perfecto es que ambos jugadores esperen hasta el período $T$ y obtengan el pago máximo de $T$ cada uno.

**Interpretación sobre las corridas bancarias:**
- Aunque existe un equilibrio "malo" donde ambos retiran temprano (corrida bancaria)
- El equilibrio subjuego perfecto muestra que es óptimo esperar
- Sin embargo, la existencia de múltiples equilibrios sugiere que las corridas pueden ocurrir como profecías autovalidadas si hay coordinación en el equilibrio "malo"
- La clave está en las expectativas: si un jugador cree que el otro retirará, es mejor retirar también