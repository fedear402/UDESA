## 15 de Agosto
Es necesaria una fuente de variabilidad exógena $\to E(X\epsilon)=0$. Sólo puedo decir que hay causalidad en el caso *ceteris paribus* de que la variable de interés no está correlacionada con el error. Tiene que haber exposición potencial; cada $i$ tiene que tener las mismas posibilidades de ser expuesto a las causas que todos los otros. Es algo que no cumple por ejemplo el género o la raza.
$$
D_{i} \begin{cases}
1 \qquad \ \text{tratado}  \\
0 \qquad \ \text{control}
\end{cases}
$$
Todas las variables observadas tienen la forma: $y_{i}=y_{ci} + (y_{ti} + y_{ci})D_{i}$ con $y_{ci}$ el valor del individuo $i$ si hubiera sido tratado y $y_{ci}$ el valor del individuo $i$ si no hubiera sido tratado. Lo que quisiéramos saber es esto:
$$
\text{ITE = Individual Treatment Effect} =y_{ti}-y_{ci}
$$
ITE es el impacto causal de ser tratado para el individuo $i$, o sea quisiéramos saber ese valor para cada individuo, pero es inobservable -un individuo hace una cosa o hace otra. Además tiene que cumplirse lo de outcomes potenciales. Si todos tienen los mismos outcomes potenciales (de nuevo: cada $i$ tiene las mismas chances de ser expuesto al tratamiento que cualquier otro), entonces se pueden tomar esperanzas.
$$
\text{ATE = Average Treatement Effect} = E(Y^T) - E(Y^C)
$$
Esas sob variables poblacionales inobservables, porque los contrafacticos no los podemos saber. Lo que se observa es
$$
\text{Observado:} \qquad E(Y^T | T) - E(Y^C | C)
$$
Solo podemos tomar el promedio de outcomes de tratamiento de la población tratada (condicional en que fue tratada). Lo mismo para los controles -solo tenemos el promedio de outcomes de control de los no tratados. Es decir, no sabemos cuál es $E(Y^C | T)$, que sería el promedio de outcomes si no hubieran sido tratados de los que fueron efectivamente tratados. Esto genera sesgo de selección al interpretar el valor observado. Si resto y sumo $E(Y^C | T)$ en el medio de la fórmula de los observados:
$$
\underbrace{E(Y^T | T) - E(Y^C | T)}_{\text{TOT: Treatment Effect on the Treated}}+  \underbrace{E(Y^C | T) - E(Y^C | C)}_{\text{Sesgo de Selección}}
$$
Lo que se observa está contaminado por sesgo de selección. Quiere decir que quizás los tratados hubieran tenido un valor muy alto o muy bajo si no hubieran sido tratados aunque fueron tratados. Por ejemplo si quisieras ver el efecto de contratar seguro medico (tratamiento) en la salud (outcome $Y$), los del grupo de tratados probablemente hubieran tenido un valor mas alto de salud de cualquier manera, aún si no hubieran sido tratados con seguro medico, porque tienen mayores ingresos, viven en mejores condiciones, etc. Entonces cuando observas $E(Y^T | T) - E(Y^C | C)$ el efecto de interés $E(Y^T | T) - E(Y^C | T)$ está tirado para arriba porque $E(Y^C | T)$ es muy alto relativo a $E(Y^C | C)$. Para hacer esto se hace un supuesto llamado Stable Unit Treatment Value Assumption (SUTVA). Implica que i) no hay spillovers ii) no hay variaciones en el tratamiento.

Con promedios, por la ley de grandes números, se puede aproximar a esos valores poblacionales consistentemente. Pero no se puede probar que no hubiera sesgo si $E(Y^C | T)$ es inobservable. Solo se puede ver si antes de aplicar el tratamiento los individuos tenían las mismas características. 


## 22 de Agosto

# PARTE 2
## Papers: 
### 6- Experimentos de campo
Ernesto Dal Bó, Fred Finan, and Martín Rossi (2013). “Strengthening State Capabilities: The Role of Financial Incentives in the Call to Public Service.” Quarterly Journal of Economics 128 (3), 1169-1218. 

Florencia López Bóo, Martín Rossi, and Sergio Urzúa (2013). “The Labor Market Return to an Attractive Face: Evidence from a Field Experiment.” Economics Letters 118 (1), 170-172. 

### 7- Experimentos naturales Bibliografía 
Ernesto Dal Bó and Martín Rossi (2011). “Term Length and the Effort of Politicians.” Review of Economic Studies 78 (4), 1237-1263. 
Martín Rossi (2017). “Self-Perpetuation of Political Power: Evidence from a Natural Experiment in Argentina.” Economic Journal 127 (605), F455-F473. 
Guillermo Cruces, Martín Rossi, and Ernesto Schargrodsky (2022). “Once a Cheater, always a Cheater? Dishonesty and Public Employment.” Working Paper. 

### 8- Variables instrumentales
Sebastián Galiani, Martín Rossi, and Ernesto Schargrodsky (2011). “Conscription and Crime: Evidence from the Argentine Draft Lottery.” American Economic Journal: Applied Economics 3, 119- 136.  Tommy Murphy and Martín Rossi (2020). “Following the Poppy Trail: Causes and Consequences of Mexican Drug Cartels.” Journal of Development Economics 143.  Martín Rossi (2014). “The Impact of Individual Wealth on Posterior Political Power.” Journal of Economic Behavior & Organization 106, 469-480. 9- Diferencias en diferencias Bibliografía  Ignacio Munyo and Martín Rossi (2020). “Police-Monitored Cameras and Crime.” Scandinavian Journal of Economics 122 (3), 1027-1044.  Martín Rossi and Christian Ruzzier (2018). “Career Choices and the College Gender Gap.” World Bank Economic Review 32 (2), 307- 333. 10- Control sintético Bibliografía  Ezequiel García Lembergman, Martín Rossi, and Rodolfo Stucchi (2018). “The Impact of Restrictions to Export on Production: A Synthetic Controls Approach.” Economia (Journal of the Latin American and Caribbean Economic Association), 18 (2), 147-173. 11- Regresión discontinua Bibliografía  Ernesto Dal Bó, Pedro Dal Bó, and Jason Snyder (2009). “Political Dynasties.” Review of Economic Studies 76 (1), 115-142. 12- Datos provenientes de encuestas Bibliografía  Gabriela Ertola Navajas, Paula Lopez Villalba, Martín Rossi, and Antonia Vazquez (2022). “The Long-Term Effect of Military Conscription on Personality and Beliefs.” Review of Economics and Statistics 104 (1), 133-141.  M. Amelia Gibbons, Tommy Murphy, and Martín Rossi (2021). “Confinement and Intimate Partner Violence.” Kyklos 74 (3), 349- 361. 13- Estudio de eventos Bibliografía  Ignacio Munyo and Martín Rossi (2013). “Frustration, Euphoria, and Violent Crime.” Journal of Economic Behavior & Organization 89, 136-142. 14- Series de tiempo Bibliografía  Ignacio Munyo and Martín Rossi (2015). “First-Day Criminal Recidivism.” Journal of Public Economics 124, 81-90

## 17 de Octubre

### Difference in Difference


### Spillover Design


### Synthetic Design