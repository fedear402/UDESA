"Assessing the Macroeconomic Forecasting Performance of Boosting" Buchen & Wohlrabe
https://www.cesifo.org/en/publications/2013/working-paper/assessing-macroeconomic-forecasting-performance-boosting-evidence

Pregunta
- El propósito del paper es ver si usar boosting para pronósticos de variables macroeconómicas tiene buenos resultados. Les interesa saber si con bases de datos macro con dimensionalidad muy grande se puede usar boosting con mejores resultados que los usuales modelos autoregresivos (en particular comparan contra un AR(p)).  

Datos
- Usan datos de Estados Unidos, el área económica europea y además específicamente de Alemania. Es una mejora sobre otros trabajos que quieren hacer lo mismo pero lo hacen con datos de USA nada más. Agarran todas las variables que encuentran para esos países: producción, salarios, commodities, precios mayoristas y varias mas.

Resultados
- Hacen un pronóstico de todas las variables que tienen y comparan qué tan acertado es un AR(p) al lado de Boosting. Para comparar usan mean squared forecast error (MSFE) y cross-validation. En promedio encuentran que Boosting es mejor casi todas las veces y en especial para predecir en periodos más lejanos. También dicen que cross-validation es el método más robusto de elegir un stopping-criterion, el numero de iteraciones (contra BIC).