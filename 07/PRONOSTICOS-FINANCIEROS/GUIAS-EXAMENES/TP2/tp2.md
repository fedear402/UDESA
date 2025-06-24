

# EJERCICIO 1

a)
Son tres procesos I(1) sin tendencia deterministica en diferencias y r3y el unico con tendencia deterministica en niveles

b)
Según el criterio HQ ajustamos un modelo VAR(3) que tiene esta forma:
$$
Y_{t} = V_{t} + A_{1}Y_{t-1} + A_{2}Y_{t-2} + A_{3}Y_{t-3} + \epsilon_{t}
$$
$$
\Delta Y_{t} = V_{t} + A_{1}Y_{t-1} + A_{2}Y_{t-2} + A_{3}Y_{t-3} + \epsilon_{t} - Y_{t-1}
$$
$$
\Delta Y_{t} = V_{t} + (A_{1}-I) Y_{t-1} + A_{2}Y_{t-2} + A_{3}Y_{t-3} + \epsilon_{t} 
$$
$$
\Delta Y_{t} = V_{t} + (A_{1}-I) Y_{t-1} + A_{2}Y_{t-2} + A_{3}Y_{t-3} + \epsilon_{t} 
$$
$$
\Delta Y_{t} = V_{t} + (A_{1}-I) Y_{t-1} + A_{2}(Y_{t-1}-Y_{t-2}-Y_{t-1}) + A_{3}(Y_{t-2}-Y_{t-3}-Y_{t-2}) + \epsilon_{t} 
$$
$$
\Delta Y_{t} = V_{t} + (A_{1}+A_{2}+A_{3}+I)Y_{t-1}-(A_{2}+A_{3})\Delta Y_{t-1} -A_{3} \Delta Y_{t-2}+ \epsilon_{t}
$$
$$
\Delta Y_{t} = _{t} + \Pi Y_{t-1}-\Gamma_{1}\Delta Y_{t-1} -\Gamma_{2} \Delta Y_{t-2} + \epsilon_{t}
$$
Ese es el modelo VEC correspondiente al VAR(3),

Sabemos que si hay cointegración el modelo VAR(3) no es válido y debemos especificar el VEC. Con el test de Johansen llegamos a que el rango de la matriz $\Pi$ es 2, por lo que hay 2 relaciones de cointegración.

Las ecuaciones de cointegración, los desequilibrios, son
$$
Z_{1}=y_{1}+\alpha_{12} y_{2} + \alpha_{13}y_{3}
$$
$$
Z_{2}=y_{2}+\alpha_{23}y_{3}
$$
Modelo VEC con tendencia tiene la forma

$$
\Delta Y_{t} = V_{t} + \Pi Y_{t-1}-\Gamma_{1}\Delta Y_{t-1} +\alpha \mu+\alpha \rho t-\Gamma_{2} \Delta Y_{t-2} + \gamma+\tau t+ \epsilon_{t}
$$

### trend(none) do not include a trend or a constant
si no restringimos ninguno de los parámetros de tendencia, entonces hay tendencia cuadrática en niveles y las ecuaciones de cointegración son estacionarias en tendencia

### trend(rtrend) include a restricted trend in model
si restringimos la tendencia trend(rtrend) $\tau =0$
estamos diciendo que hay tendencias lineales (y no cuadráticas) en niveles. De esta manera las ecuaciones de cointegración no tienen tendencia

### trend(constant) include an unrestricted constant in model; the default
si restringimos la tendencia pero no la constante ($\tau=0, \rho=0$)
asume que los datos en niveles no tienen tendencia cuadrática, restringe las ecuaciones de cointegración a que sean estacionarias

### trend(rconstant) include a restricted constant in model
Si se restringe la constante ($\tau=0, \rho=0, \gamma=0$)
no hay tendencia lineal en niveles: no puede haber tendencias en las ecuaciones de cointegración

### trend(trend) include a linear trend in the cointegrating equations and a quadratic trend in the undifferenced data

TENDENCIAS ESTOCASTICAS: $n-r$
3-2
Hay 1 tendencia estocástica


---
c)



---
d)
Hay causalidad de granger 


---
e)
Para responder a cómo el shock exógeno que aumenta `r3m` en un 1% afecta a `r1y` al día siguiente y a los 7 días, podemos usar los resultados del análisis de Función de Respuesta al Impulso (IRF) que se obtuvo del modelo VEC que estimaste en la sección (c). Los resultados de la IRF te indican el efecto de un shock unitario en `r3m` sobre `r1y` en diferentes momentos en el tiempo.

Basándonos en los datos que proporcionaste de la tabla IRF:

### Respuestas Basadas en la IRF

- **Al día siguiente (paso 1):** La respuesta de `r1y` a un aumento del 1% en `r3m` es aproximadamente `0.077652`. Esto significa que si `r3m` aumenta en un 1%, `r1y` aumentará en un 0.077652% al día siguiente, según el modelo.
    
- **A los 7 días (paso 7):** La respuesta de `r1y` a ese mismo shock de 1% en `r3m` es `0.016141` al séptimo día. Por lo tanto, el efecto del shock inicial disminuye con el tiempo, y a los 7 días, el incremento en `r1y` sería del 0.016141% en respuesta al aumento del 1% en `r3m`.
    

### Interpretación

Estos valores muestran que el impacto inicial del shock en `r3m` es relativamente más significativo al día siguiente y disminuye gradualmente en magnitud a lo largo de la semana. Esto es típico en modelos económicos donde los efectos de los shocks tienden a ser más pronunciados inicialmente y luego se atenúan con el tiempo a medida que el mercado se ajusta al nuevo equilibrio.

### Consideraciones Adicionales

- **Magnitud del Shock:** Los efectos exactos en porcentajes dependen de la magnitud del shock y de las elasticidades estimadas en el modelo VEC. Aquí, un shock del 1% es moderado, y los resultados se alinean con esa magnitud.
    
- **Estabilidad y Confiabilidad:** Estos resultados asumen que el modelo VEC adecuadamente captura las dinámicas y las relaciones a largo plazo entre `r3m` y `r1y`. Es crucial que el modelo esté bien especificado y que las pruebas de cointegración y las especificaciones del modelo confirmen que las relaciones subyacentes entre las variables son estables y confiables.
    

Este tipo de análisis es útil para los formuladores de políticas y los analistas financieros, ya que proporciona una base cuantitativa para prever cómo las fluctuaciones en los tipos de interés a corto plazo podrían afectar otros tipos de interés a corto y mediano plazo.




# EJERCICIO 2
a)

---
b)


---
c)
```

. var RBER_AR_detrended RBER_AR_sd6

Vector autoregression

Sample:  2010m3 - 2020m12                       Number of obs     =        130
Log likelihood =  -412.9304                     AIC               =   6.506622
FPE            =   2.295485                     HQIC              =   6.596251
Det(Sigma_ml)  =   1.968008                     SBIC              =   6.727202

Equation           Parms      RMSE     R-sq      chi2     P>chi2
----------------------------------------------------------------
RBER_AR_detren~d      5     2.35396   0.8478   724.2258   0.0000
RBER_AR_sd6           5     .687727   0.8742   903.0441   0.0000
----------------------------------------------------------------

-----------------------------------------------------------------------------------
                  |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
------------------+----------------------------------------------------------------
RBER_AR_detrended |
RBER_AR_detrended |
              L1. |   1.247988   .0918703    13.58   0.000     1.067925     1.42805
              L2. |  -.3869231   .0914275    -4.23   0.000    -.5661178   -.2077284
                  |
      RBER_AR_sd6 |
              L1. |   -.034965   .2558445    -0.14   0.891     -.536411     .466481
              L2. |  -.0278564   .2526389    -0.11   0.912    -.5230195    .4673066
                  |
            _cons |   47.87323   13.15463     3.64   0.000     22.09062    73.65583
------------------+----------------------------------------------------------------
RBER_AR_sd6       |
RBER_AR_detrended |
              L1. |  -.0644475   .0268406    -2.40   0.016    -.1170542   -.0118408
              L2. |   .0824222   .0267113     3.09   0.002     .0300691    .1347754
                  |
      RBER_AR_sd6 |
              L1. |   1.331047    .074747    17.81   0.000     1.184545    1.477548
              L2. |  -.5201569   .0738105    -7.05   0.000    -.6648227   -.3754911
                  |
            _cons |  -5.661511    3.84323    -1.47   0.141     -13.1941    1.871081
-----------------------------------------------------------------------------------

. 
end of do-file

```

Esto quiere decir que el var tiene la forma
$$
RBER_{t}=\alpha_{1t} + 1.24 \times RBER_{t-1}  -0.3 \times  RBER_{t-2} -0.03 \times RBERsd_{t-1} -0.02  \times RBERsd_{t-2} + \epsilon_{1t}
$$
$$
RBERsd_{t}=\alpha_{2t} - 0.06 \times RBER_{t-1}  -0.08 \times  RBER_{t-2} +1.33 \times RBERsd_{t-1} -0.52 \times RBERsd_{t-2} + \epsilon_{2t}
$$
CAUSALIDAD:

```

. vargranger

   Granger causality Wald tests
  +------------------------------------------------------------------+
  |          Equation           Excluded |   chi2     df Prob > chi2 |
  |--------------------------------------+---------------------------|
  | RBER_AR_detrended        RBER_AR_sd6 |  .27208     2    0.873    |
  | RBER_AR_detrended                ALL |  .27208     2    0.873    |
  |--------------------------------------+---------------------------|
  |       RBER_AR_sd6  RBER_AR_detrended |  10.596     2    0.005    |
  |       RBER_AR_sd6                ALL |  10.596     2    0.005    |
  +------------------------------------------------------------------+

. 
end of do-file

```
El resultado del test de causalidad nos indica que `RBER_AR_sd6`es causada por `RBER_AR`.


---
d)
```
. arch RBER_AR_detrended, arch(1) garch(1) 

(setting optimization to BHHH)
Iteration 0:   log likelihood = -396.14456  
Iteration 1:   log likelihood = -393.31087  
Iteration 2:   log likelihood = -390.07477  
Iteration 3:   log likelihood = -390.07426  
Iteration 4:   log likelihood = -389.99609  
(switching optimization to BFGS)
Iteration 5:   log likelihood = -389.99554  
Iteration 6:   log likelihood = -389.99122  
Iteration 7:   log likelihood = -389.99035  
Iteration 8:   log likelihood = -389.98976  
Iteration 9:   log likelihood = -389.98975  
Iteration 10:  log likelihood = -389.98975  

ARCH family regression

Sample: 2010m1 - 2020m12                          Number of obs   =        132
Distribution: Gaussian                            Wald chi2(.)    =          .
Log likelihood = -389.9898                        Prob > chi2     =          .

-----------------------------------------------------------------------------------
                  |                 OPG
RBER_AR_detrended |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
------------------+----------------------------------------------------------------
RBER_AR_detrended |
            _cons |   343.0812   .3245624  1057.06   0.000     342.4451    343.7174
------------------+----------------------------------------------------------------
ARCH              |
             arch |
              L1. |   .9732853   .2861599     3.40   0.001     .4124222    1.534148
                  |
            garch |
              L1. |  -.0369098    .071973    -0.51   0.608    -.1779743    .1041546
                  |
            _cons |   4.718932   2.241009     2.11   0.035     .3266348     9.11123
-----------------------------------------------------------------------------------

. 
end of do-file
```

- **Resultados del Modelo ARCH/GARCH:**
    
    - `_cons`: El coeficiente constante del modelo.
    - `arch L1.`: Coeficiente para el término ARCH. Un valor de 0.973 sugiere una alta persistencia en la volatilidad del período anterior.
    - `garch L1.`: Coeficiente para el término GARCH. El valor negativo de -0.036 indica una reducción en el impacto de la volatilidad condicional acumulada, pero es estadísticamente no significativo (p-valor de 0.608).
- **Problemas Identificados:**
    
    - **Violación de Requisitos de No Negatividad:** La presencia de un coeficiente negativo en el término GARCH es problemática, pues estos coeficientes deben ser no negativos para asegurar que la varianza condicional estimada sea siempre positiva. Un coeficiente negativo puede llevar a estimaciones de varianza negativas, lo cual no tiene sentido práctico o teórico.
- **Conclusión del Usuario:** El estimador del parámetro de persistencia negativo implica que el modelo no es adecuado para modelar la volatilidad del TCR, confirmando que la especificación del modelo podría necesitar revisión o enfoques alternativos para manejar correctamente la volatilidad en los datos.


4.718932/ (1-(0.9-0.03))=36.299476923076923077

--- OTRA RESPUESTA ---


Para estimar la volatilidad del tipo de cambio real en Argentina utilizando un modelo GARCH(1,1), se han seguido varios pasos como parte del procedimiento de estimación. Aquí se resume cómo se realizó y se discuten los resultados obtenidos:

### Procedimiento de Estimación con Modelo GARCH(1,1)

1. **Preparación de Datos**: Utilizar la serie de tiempo del tipo de cambio real desestacionalizado de Argentina (`RBER_AR_detrended`) desde enero de 2010 hasta diciembre de 2020, totalizando 132 observaciones.
2. **Modelo Especificado**: Un modelo GARCH(1,1) con la forma: 
$$
\sigma_{t}^2 = \omega +\alpha \epsilon_{t-1}^2 +\beta \sigma_{t-1}^2
$$

$\alpha$ es el coeficiente que vemos como ARCH
son los residuos del modelo, σt2\sigma_t^2σt2​ la varianza condicional, ω\omegaω, α\alphaα, y β\betaβ los parámetros a estimar, y ztz_tzt​ un término de error distribuido normalmente.
3. **Estimación**: Se utiliza el método de máxima verosimilitud, con inicialización mediante el método BHHH y refinamiento usando BFGS para asegurar convergencia y precisión en los parámetros estimados.
### Análisis de Resultados

- **Estimador del parámetro de persistencia de la varianza condicional (α+β\alpha + \betaα+β)**: 0.9732853−0.0369098=0.93637550.9732853 - 0.0369098 = 0.93637550.9732853−0.0369098=0.9363755. Este valor sugiere una alta persistencia en la volatilidad del tipo de cambio real, indicando que los choques tienen un efecto duradero en la volatilidad.
- **Varianza no condicional $(\frac{\omega}{1-\alpha-\beta}​)$: Dado que α+β\alpha + \betaα+β está muy cercano a 1, la varianza no condicional se aproxima a infinito o es muy elevada, lo cual es un indicativo de potenciales problemas de integración o no estacionariedad en la varianza.
- **Adecuación del modelo**: Aunque el modelo captura la persistencia en la volatilidad, el coeficiente GARCH negativo y no significativo puede indicar problemas con la especificación del modelo. Además, la aproximación a un proceso integrado en la varianza (I(1) en volatilidad) podría no ser adecuada para algunos propósitos analíticos, como la predicción a largo plazo.

### Conclusión

El modelo GARCH(1,1) ha proporcionado una estimación útil para evaluar la volatilidad condicional del tipo de cambio real en Argentina, aunque con ciertas limitaciones en términos de la posible no estacionariedad de la varianza. Sería prudente considerar modelos alternativos o revisiones de la especificación para confirmar estos hallazgos y asegurar una interpretación adecuada y robusta de la volatilidad del tipo de cambio real.
// El estimador del parametro de la persistencia es negativo, violando los requisitos de no negatividad. Consecuentemente, este no es un modelo adecuado de volatilidad del TCR. 


# EJERCICIO 3
