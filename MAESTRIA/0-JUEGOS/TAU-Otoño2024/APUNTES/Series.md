Diferencia de cuadrados: 
(1-δ²) = (1-δ)(1+δ)
eso sirve para despejar cuando te queda en el denominador (1-δ²)

---
 si la sumatoria es S = 1 + δ + δ² + δ³ + ...

   Sea S = 1 + δ + δ² + δ³ + ...
   
   Multiplicamos ambos lados por δ:
   δS = δ + δ² + δ³ + δ⁴ + ...
   
   Restamos la segunda ecuación de la primera:
   S - δS = 1
   S(1 - δ) = 1
   
   Por lo tanto: S = 1/(1-δ)

---
si la sumatoria es comenzando desde 1: S = δ + δ² + δ³ + ...

   Sea S = δ + δ² + δ³ + ...
   
   Multiplicamos ambos lados por δ:
   δS = δ² + δ³ + δ⁴ + ...
   
   Restamos:
   S - δS = δ
   S(1 - δ) = δ
   
   Por lo tanto: S = δ/(1-δ)

---
Potencias pares (el 5 es porque estaba en el ejemplo, puede se cualquier numero, sale como factor comun): S = 5 + 5δ² + 5δ⁴ + ...

   Factorizamos 5:
   S = 5(1 + δ² + δ⁴ + ...)
   
   Sea T = 1 + δ² + δ⁴ + ...
   
   Multiplicamos por δ²:
   δ²T = δ² + δ⁴ + δ⁶ + ...
   
   Restamos:
   T - δ²T = 1
   T(1 - δ²) = 1
   T = 1/(1-δ²)
   
   Por lo tanto: S = 5/(1-δ²)

---
Potencias impares: S = 5δ + 5δ³ + 5δ⁵ + ...

   Factorizamos 5δ:
   S = 5δ(1 + δ² + δ⁴ + ...)
   
   Del apartado 3, sabemos que: 1 + δ² + δ⁴ + ... = 1/(1-δ²)
   
   Por lo tanto: S = 5δ/(1-δ²)