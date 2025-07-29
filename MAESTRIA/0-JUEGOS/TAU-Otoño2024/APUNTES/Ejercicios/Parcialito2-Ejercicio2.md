
| 1\ 2 | A   | B   |
| ---- | --- | --- |
| X    | 2,2 | 0,3 |
| Y    | 3,0 | 1,1 |

El mismo es jugado por el jugador 1 e "infinitos" jugadores 2 (que llamaremos $2_1, 2_2, 2_3$ y así sucesivamente). Consideremos que el juego se repite infinitas veces y los jugadores desean cooperar jugando el perfil $(X, A)$ aplicando un castigo **Trigger.** En la primera repetición, el jugador 1 se enfrenta al jugador $2_1$. Después, el jugador 1 sigue en todas las repeticiones, pero el jugador $2_1$, tras jugar, retiene el derecho a jugar en futuros períodos, aunque no puede ejercerlo (es decir, no puede volver a participar, pero puede impedir que otros jugadores lo hagan en períodos posteriores). De esta manera, si el jugador $2_2$ desea participar en el juego en la segunda repetición, primero debe pagarle al jugador $2_1$ un monto para que este le ceda el derecho a jugar. Entonces tenemos que el jugador $2_1$ inicia el juego en el período 1 y, si se realiza el intercambio, el jugador $2_2$ participa en el juego en el período 2 y luego conserva este el derecho a jugar en futuros períodos aunque tampoco podrá ejercerlo, entonces el jugador $2_3$ le puede pagar para jugar en la tercera repetición, y así este proceso se repite indefinidamente. Suponga que el precio que debe pagar un jugador 2 sigue en cooperación es $\tau_i$ (siendo $\tau_1$ en la primera repetición, $\tau_2$ en la segunda, y así sucesivamente), mientras que si el juego ya está en castigo el monto a pagar es sí o sí de 1.

### (a) Encuentre qué condiciones debe cumplir el factor de descuento del Jugador 1 para que este individuo considere óptimo cooperar.

$$
U_{1}^{coop} = 2 \frac{1}{1-\delta}
$$
$$
U_{1}^{desvío} = 3 + \frac{\delta}{1-\delta}
$$
Debe cumplir
$$
2 \frac{1}{1-\delta}  \geq 3 + \frac{\delta}{1-\delta} 
$$
$$
2\geq3(1-\delta)+\delta
$$
$$
-1\geq-2\delta
$$
$$
\frac{1}{2}\leq\delta
$$

### (b) Explique con sus palabras cómo relacionaría esta situación descrita a la idea de tener una buena reputación cooperando en este juego siendo alguno de los jugadores 2.
En este juego, la reputación funciona como un activo transferible. Cuando un jugador 2 coopera, no solo obtiene su pago inmediato sino que construye una "buena reputación" que genera confianza en el jugador 1. Esta reputación tiene valor porque:

- Genera confianza: Si el jugador 2_i cooperó, el jugador 1 sabe que el juego puede continuar en cooperación, lo que beneficia a ambos.
- Es transferible: El derecho a jugar (con la reputación asociada) puede venderse al siguiente jugador.
- Induce cooperación: Los jugadores 2 tienen incentivos para mantener la cooperación porque una buena reputación hace que su "derecho a jugar" sea más valioso y puedan venderlo a un precio mayor.

### (c) Encuentre para qué valores de $\tau_1$ el jugador $2_1$ estaría dispuesto a cooperar y explique qué rol tiene este precio en la decisión que haría un jugador racional (Esto puede ser una extensión de la explicación realizada en el inciso anterior).

$$
U_{2_{1}}^{coop} = 
\begin{cases}
2 + \delta \tau_{1}  &   \text{ si le compran el derecho} \\
2   &   \text{ si no}
\end{cases}
$$

$$
U_{2_{1}}^{desvío} = 3 + 1
$$
(Asumiendo que si o si le compran despues)
Debe cumplir
$$
2 + \delta \tau_{1}  \geq 4
$$
$$
\tau_{1} \geq \frac{2}{\delta}
$$
Para cooperar tiene que vender. El precio que quiere cobrar es por lo menos $\frac{2}{\delta}$. Si es menos, prefiere desviarse y ganar 4. 
El precio τ₁ juega un rol fundamental como mecanismo de incentivos:

- **Monetización de la reputación**: El precio permite que la buena reputación se convierta en un beneficio tangible. Al cooperar, el jugador 2₁ no solo gana 2 en el período actual, sino que puede vender su "buena reputación" por τ₁.
- **Incentivo para cooperar**: Como la reputación se puede vender, hay un incentivo adicional para "hacer bien las cosas". Si desvía, destruye el valor de venta.
- **Extracción de valor**: Un jugador racional querrá maximizar el precio al que vende su reputación. Mantener la cooperación hace que este derecho sea más valioso, permitiendo "sacar más tajada" en la venta.
### (d) Encuentre para qué valores de $\tau_t$ con $t = \{2; 3; 4; ...\}$ (osea, todos los que no son $\tau_1$) los jugadores 2 estarían cada uno dispuestos a continuar la cooperación.
$$
U_{2_{t}}^{coop} = \begin{cases}
2 + \tau_{t}\delta - \tau_{t-1} \\
0
\end{cases}
$$
$$
U_{2_{t}}^{desvio} = \begin{cases}
3 + 1 - \tau_{t-1} \\
0
\end{cases}
$$
Es el mismo problema que el $2_{1}$. Entonces cooperan si $\tau_{t} \geq \frac{2}{\delta}$

### (e) Vuelva a resolver el ejercicio, pero considerando ahora que los jugadores emplean una estrategia toma y daca. ¿Son todos los desvíos posibles que tienen los jugadores 2 óptimos? Explique.
Con estrategia toma y daca, el análisis cambia significativamente:

**Para J2₁**:

- Si coopera (juega A): J1 juega X en el período siguiente
- Si desvía (juega B): J1 juega Y en el período siguiente
- U₂₁^coop = 2 + δτ₁ (si vende)
- U₂₁^desvío = 3 + 1 = 4 (asumiendo que vende después)
- Condición: τ₁ ≥ 2/δ (igual que con trigger)

**Para J2₂ en adelante (aquí aparece la diferencia clave)**:

El jugador J2₂ puede enfrentar dos escenarios iniciales:

1. Si J2₁ cooperó → J1 juega X (cooperación)
2. Si J2₁ desvió → J1 juega Y (castigo por un período)
#### Si antes era cooperacion
$$
U_{2_{1}}^{coop} = 
\begin{cases}
2 + \delta \tau_{1}  &   \text{ si le compran el derecho} \\
2   &   \text{ si no}
\end{cases}
$$

$$
U_{2_{1}}^{desvío} = 3 + 1
$$

$$
2 + \delta \tau_{1}  \geq 4
$$
$$
\tau_{1} \geq \frac{2}{\delta}
$$

 -
#### Si antes era desvio
$$
U_{2_{t}}^{coop} = 0 + \tau_{t}\delta - \tau_{t-1}
$$
$$
U_{2_{t}}^{desvio} = 1 + 1\delta - \tau_{t-1}
$$
$$
\tau_{t}\delta  \geq 1 + 1\delta
$$
$$
\tau_{t} \geq \frac{1}{\delta} +1
$$
#### Optimalidad
**¿Son todos los desvíos óptimos?**

No, con toma y daca **no todos los desvíos son igualmente óptimos**. Hay que distinguir entre diferentes situaciones:

**1. Desvío durante cooperación (cuando J1 juega X):**

- Ganancia inmediata: 3 en lugar de 2 (gana 1 extra)
- Costo: En el siguiente período J1 jugará Y (castigo)
- Este desvío puede ser óptimo si el jugador valora mucho el presente (δ bajo)

**2. Desvío durante castigo (cuando J1 juega Y):**

- Ganancia inmediata: 1 en lugar de 0 (gana 1 extra)
- Costo: Prolonga el castigo un período más
- Este desvío es **menos atractivo** porque:
    - La ganancia es la misma (1 extra) pero partiendo de una base menor
    - Retrasa el retorno a la cooperación
    - El derecho a jugar vale menos en castigo (1 vs τ)

**3. "Cooperar" durante castigo (jugar A cuando J1 juega Y):**

- Sacrificio inmediato: gana 0 en lugar de 1
- Beneficio: Restaura la cooperación para el siguiente período
- Es una inversión en reputación futura

**Conclusión clave**: Con toma y daca, desviarse cuando ya estás en castigo es **subóptimo** en la mayoría de los casos porque:

- Obtienes la misma ganancia marginal (1) pero desde una posición peor
- Prolongas tu período de castigo
- Reduces el valor de venta de tu derecho a jugar
- Es mejor "tragarse" el castigo un período y volver a cooperar

Esto contrasta con trigger, donde una vez que alguien desvía, el castigo es permanente, así que da igual seguir desviando. En toma y daca, hay incentivos para "redimirse" y volver a cooperar, lo que hace que la estrategia sea más indulgente y potencialmente más sostenible.