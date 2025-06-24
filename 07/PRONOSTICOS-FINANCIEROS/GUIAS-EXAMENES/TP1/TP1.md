
# EJERCICIO 1

## (a) Suponga que usted mezcla una variable aleatoria normal estándar con otra variable aleatoria normal con media 0 y varianza 2, con el mismo peso (es decir, peso 0.5 para cada una). Grafique en Excel las funciones de densidad (pdf) de las dos normales y la de la normal mixture. Use colores distintos para cada densidad. (Deberá entregar el Excel.)


|     | N(0,1)                                    | N(0,2)                                    | Mixture     | N(0,1.5)                                  |
| --- | ----------------------------------------- | ----------------------------------------- | ----------- | ----------------------------------------- |
| -5  | =+(1/SQRT(2 * PI())) \* EXP(-(($A2)^2)/2) | =+(1/SQRT(4 * PI())) \* EXP(-(($A2)^2)/4) | =+(B2+C2)/2 | =+(1/SQRT(3 * PI())) \* EXP(-(($A2)^2)/3) |

![[Pasted image 20240426144402.png|300]]

## (b) Se puede demostrar que si uno mezcla dos o más normales con la misma media, pero diferente varianza, la mezcla de normales (es decir, la normal mixture) será simétrica y tendrá un coeficiente de curtosis mayor al de una normal con la misma varianza que la varianza de la normal mixture. Calcule la curtosis de la normal mixture que graficó en el punto anterior y confirme que es leptocúrtica.
Para calcular la curtosis, se procede a usar el link en donde explicitamos
qué integral queremos calcular. Primero, notemos que las normales que
mezclamos tienen media cero y consecuentemente la normal mixture
tendrá media cero. Esto facilita las cuentas, porque los momentos que
calculemos ya van a estar centrados.
El cuarto momento centrado de la normal mixture es 7.5.

https://www.wolframalpha.com/input?i2d=true&i=0.5Integrate%5BPower%5Bx%2C4%5DPower%5B%5C%2840%29Divide%5B1%2C2%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-0.5Power%5B%5C%2840%29x%5C%2841%29%2C2%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D%2B0.5Integrate%5BPower%5Bx%2C4%5DPower%5B%5C%2840%29Divide%5B1%2C4%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%5C%2841%29%2C2%5D%2C4%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D&lang=es

El segundo momento centrado, es decir, la varianza (entra en el
denominador de la definición de curtosis) es 1.5:

https://www.wolframalpha.com/input?i2d=true&i=0.5Integrate%5BPower%5Bx%2C2%5DPower%5B%5C%2840%29Divide%5B1%2C2%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-0.5Power%5B%5C%2840%29x%5C%2841%29%2C2%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D%2B0.5Integrate%5BPower%5Bx%2C2%5DPower%5B%5C%2840%29Divide%5B1%2C4%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%5C%2841%29%2C2%5D%2C4%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D&lang=es

La curtosis de la normal mixture es entonces $\frac{\mu_{2}}{\mu_{4}^2}=\frac{7.5}{1.5^2}=3.33$

La curtosis en exceso sería entonces 1/3. Como la curtosis es mayor a 3
(que es equivalente a decir que la curtosis en exceso es positiva), la
normal mixture es leptocúrtica.

## c) Como en finanzas la distribución de retornos de las acciones suele presentar asimetría negativa y leptocurtosis, proporcione un ejemplo de dos variables aleatorias normales, cuya mezcla sea una variable aleatoria que presenta asimetría negativa y leptocurtosis. Es decir, indique la media y la varianza de cada una de las dos normales, y los pesos con los que las mezcló. Explique su razonamiento. No hace falta que calcule el coeficiente de asimetría y de curtosis de la normal mixture. Con un gráfico de la normal mixture es suficiente.
