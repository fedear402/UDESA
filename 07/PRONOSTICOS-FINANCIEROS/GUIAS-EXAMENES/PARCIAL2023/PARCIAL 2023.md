# EJERCICIO 1
Sean 𝑋𝑖 ~𝑁(𝜇𝑖, 𝜎𝑖2), 𝑖 = 1,2, donde 𝑋1~𝑁(−1 , 9) 𝑦 𝑋2~𝑁(−1 , 4) son dos variables aleatorias con distribución normal. Usted decide mezclarlas con pesos 0.25 y 0.75 respectivamente. De modo que la función de densidad (pdf) de la mixtura será 𝑓(𝑥) =

## a)Usando Excel, grafique la pdf de la mixtura para valores del soporte de la variable aleatoria entre -10 y 10 con deltas de 0,1.



|      | N(-1,9)                                      | N(-1,4)                                    | Mixture               | N(-1,5.25)                                        |
| ---- | -------------------------------------------- | ------------------------------------------ | --------------------- | ------------------------------------------------- |
| -10  | +(1/SQRT(18 * PI())) \* EXP(-(($A2+1)^2)/18) | +(1/SQRT(8 * PI())) \* EXP(-(($A2+1)^2)/8) | =0,25 * B2+0,75 \* C2 | =+(1/SQRT(10,5 * PI())) \* EXP(-(($A2+1)^2)/10,5) |
| -9,9 |                                              |                                            |                       |                                                   |
![[Pasted image 20240426142116.png|300]]
## b) Solamente observando el gráfico, ¿puede afirmar si esta mixtura es asimétrica? Explique.

b) Es claramente Simétrica, ya que estamos mezclando dos normales con la misma media (=  - 1). La simetría podemos verificarla con la columna D: 
![[Pasted image 20240426142824.png|100]]
por ejemplo, sea "a" un número cualquiera, la pdf de la mixtura va a tomar el mismo valor en (-1 + a ) que en (-1 - a). O sea, me muevo en "a" a la derecha y a la izquierda de la media.

## c) Calcule la media, la varianza, el coeficiente de asimetría y el de curtosis de la mixtura. Recuerde que esto requiere calcular varios momentos de la variable aleatoria, que en definitiva, son integrales.

|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| c) La media es -1                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| https://www.wolframalpha.com/input?i2d=true&i=0.25Integrate%5BxPower%5B%5C%2840%29Divide%5B1%2C18%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C18%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D%2B0.75Integrate%5BxPower%5B%5C%2840%29Divide%5B1%2C8%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C8%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D&lang=es                                       |
| La varianza es 5.25                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| https://www.wolframalpha.com/input?i2d=true&i=0.25Integrate%5BPower%5Bx%2B1%2C2%5DPower%5B%5C%2840%29Divide%5B1%2C18%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C18%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D%2B0.75Integrate%5BPower%5Bx%2B1%2C2%5DPower%5B%5C%2840%29Divide%5B1%2C8%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C8%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D&lang=es |
| Tercer momento Centrado es 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| https://www.wolframalpha.com/input?i2d=true&i=0.25Integrate%5BPower%5Bx%2B1%2C3%5DPower%5B%5C%2840%29Divide%5B1%2C18%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C18%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D%2B0.75Integrate%5BPower%5Bx%2B1%2C3%5DPower%5B%5C%2840%29Divide%5B1%2C8%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C8%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D&lang=es |
| Cuarto Momento Centrado es 96.75                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
Coeficiente de asimetría =0
Kurtosis = $\frac{\mu_{4}}{\mu_{2}^2}$ = 96.75/5.25^2 = 3.51


## d)¿Es la mixtura leptocúrtica? Responda en función al valor que obtuvo en el inciso anterior y además muestre en un gráfico en Excel la pdf de la mixtura del gráfico anterior y la pdf de una normal con la misma media y varianza que la mixtura.
La mixtura es leptocúrtica, ya que la curtosis es mayor a 3.
d) Ambas pdf integran a 1. Cuesta verlo en el gráfico, pero en las colas, la mixtura está por arriba de la normal. Esto puede verificarse en las columnas D y E en la parte amarilla (las colas). Esta mixtura tiene colas más pesadas que la normal. En general, si mezclamos normales con la misma media, la mixtura resultante será simétrica y leptocúrtica (siempre).A este caso particular se lo llama "normal variance mixture". 
 


# EJERCICIO 2
La base de datos “Datos_Ejercicio_2”, disponible en Excel y Stata, contiene datos mensuales del precio del gas natural en Europa para el período enero 2015 a diciembre 2020 medido en dólares estadounidenses
```
cd "/Users/federicolopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/07/PRONOSTICOS/GUIAS-EXAMENES/PARCIAL2024"

capture log close
log using PF_Parcial_2024.log, replace
// Ejercicio 2
use Datos_Ejer_2.dta, clear
```

## a) Grafique la serie de tiempo del precio del gas natural en Europa
```
tsline price
```

## b) Utilizando el estadístico de Dickey Fuller Aumentado (ADF), testee y encuentre el orden de integración de la serie del precio del gas. Utilice una tendencia determinística si corresponde. Muestre claramente su procedimiento, indicando cuál es la hipótesis nula y cuál es la hipótesis alternativa. Como número de rezagos utilice la cantidad óptima según el criterio de Ng-Perron. En todos los tests de hipótesis use una probabilidad de error tipo I del 5%. En su respuesta, indique el valor que obtenga del estadístico ADF y el p-value que indique el software y muestre cada una de las regresiones.

```
dfgls price
```
Acá encontramos que según Ng Perron corresponde usar 3 lags en el ADF de price con tendencia deterministica
```
 
DF-GLS for price                                         Number of obs =    60
Maxlag = 11 chosen by Schwert criterion
 
               DF-GLS tau      1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    11           -2.153           -3.686            -2.708            -2.431
    10           -1.992           -3.686            -2.753            -2.476
    9            -1.764           -3.686            -2.798            -2.521
    8            -1.527           -3.686            -2.844            -2.566
    7            -1.739           -3.686            -2.890            -2.610
    6            -1.795           -3.686            -2.935            -2.652
    5            -1.825           -3.686            -2.978            -2.692
    4            -2.325           -3.686            -3.018            -2.730
    3            -2.522           -3.686            -3.056            -2.764
    2            -2.021           -3.686            -3.089            -2.795
    1            -2.075           -3.686            -3.118            -2.821
 
Opt Lag (Ng-Perron seq t) =  3 with RMSE  .4892051
Min SC   = -1.213759 at lag  1 with RMSE  .5090961
Min MAIC = -1.163008 at lag  1 with RMSE  .5090961

```

```dfuller price, lags(3) trend regress```
Corro el ADF con trend deterministico y encuentro que el trend deterministico es no significativo
```
Augmented Dickey-Fuller test for unit root         Number of obs   =        68

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -2.465            -4.110            -3.482            -3.169
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.3456

------------------------------------------------------------------------------
D.price      |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
       price |
         L1. |  -.1010452   .0409892    -2.47   0.016    -.1829813    -.019109
         LD. |   .4454348   .1164888     3.82   0.000     .2125769    .6782927
        L2D. |  -.0333462   .1281773    -0.26   0.796     -.289569    .2228765
        L3D. |    .206275   .1202593     1.72   0.091      -.03412      .44667
      _trend |  -.0021794    .003379    -0.64   0.521     -.008934    .0045752
       _cons |   .6435956   .3022283     2.13   0.037     .0394497    1.247741
------------------------------------------------------------------------------

```


```dfgls price, notrend```
Aca encontramos que segun Ng Perron corresponde usar 5 lags en el ADF de price sin tendencia deterministica
```
DF-GLS for price                                         Number of obs =    60
Maxlag = 11 chosen by Schwert criterion
 
               DF-GLS mu       1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    11           -1.226           -2.611            -1.996            -1.697
    10           -1.118           -2.611            -2.013            -1.716
    9            -0.878           -2.611            -2.033            -1.737
    8            -0.622           -2.611            -2.054            -1.758
    7            -0.885           -2.611            -2.076            -1.781
    6            -0.954           -2.611            -2.099            -1.803
    5            -0.991           -2.611            -2.122            -1.824
    4            -1.568           -2.611            -2.144            -1.845
    3            -1.774           -2.611            -2.165            -1.865
    2            -1.389           -2.611            -2.184            -1.883
    1            -1.458           -2.611            -2.202            -1.899
 
Opt Lag (Ng-Perron seq t) =  5 with RMSE  .4852979
Min SC   = -1.185492 at lag  1 with RMSE  .5163425
Min MAIC = -1.231983 at lag  5 with RMSE  .4852979

```

`dfuller price, lags(5)  regress`
Corro el ADF sin trend deterministico. No rechazo H0. Concluyo que price no es I(0)
```
Augmented Dickey-Fuller test for unit root         Number of obs   =        66

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -2.126            -3.558            -2.917            -2.594
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.2343

------------------------------------------------------------------------------
     D.price |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
       price |
         L1. |  -.0867318   .0407988    -2.13   0.038    -.1683701   -.0050936
         LD. |   .4971448   .1240366     4.01   0.000     .2489481    .7453416
        L2D. |  -.0620127   .1411272    -0.44   0.662    -.3444076    .2203822
        L3D. |   .2195826   .1303041     1.69   0.097    -.0411554    .4803206
        L4D. |   .1002836   .1298819     0.77   0.443    -.1596096    .3601768
        L5D. |  -.2254184   .1225042    -1.84   0.071    -.4705488     .019712
             |
       _cons |   .4553988   .2312679     1.97   0.054    -.0073672    .9181649
------------------------------------------------------------------------------

```

`dfgls D.price`
Aca encontramos que segun Ng Perron corresponde usar 2 lags en el ADF de D.price (serie price en primeras diferencias)
```
DF-GLS for D.price                                       Number of obs =    59
Maxlag = 11 chosen by Schwert criterion
 
               DF-GLS tau      1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    11           -0.943           -3.690            -2.704            -2.427
    10           -1.158           -3.690            -2.749            -2.472
    9            -1.272           -3.690            -2.796            -2.518
    8            -1.612           -3.690            -2.843            -2.564
    7            -2.029           -3.690            -2.889            -2.609
    6            -2.007           -3.690            -2.935            -2.652
    5            -2.272           -3.690            -2.979            -2.693
    4            -2.712           -3.690            -3.020            -2.732
    3            -2.383           -3.690            -3.058            -2.767
    2            -2.396           -3.690            -3.093            -2.798
    1            -3.545           -3.690            -3.122            -2.825
 
Opt Lag (Ng-Perron seq t) =  2 with RMSE  .5236899
Min SC   = -1.086379 at lag  2 with RMSE  .5236899
Min MAIC = -.9561142 at lag 11 with RMSE  .4842662

```


`dfuller D.price, lags(2) trend regress`
Corro el ADF con trend deterministico y encuentro que el trend deterministico es no significativo
```
Augmented Dickey-Fuller test for unit root         Number of obs   =        68

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -3.453            -4.110            -3.482            -3.169
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.0447

------------------------------------------------------------------------------
D2.price     |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
     D.price |
         L1. |  -.5148269   .1490935    -3.45   0.001    -.8127665   -.2168874
         LD. |  -.0487952     .13994    -0.35   0.728    -.3284429    .2308525
        L2D. |  -.1355344   .1214001    -1.12   0.268     -.378133    .1070643
      _trend |   .0010845   .0032317     0.34   0.738    -.0053735    .0075426
       _cons |  -.0247039   .1350847    -0.18   0.855     -.294649    .2452413
------------------------------------------------------------------------------

```


`dfgls D.price, notrend`
También 2 rezagos sin tendencia deterministica
```
DF-GLS for D.price                                       Number of obs =    59
Maxlag = 11 chosen by Schwert criterion
 
               DF-GLS mu       1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    11           -0.004           -2.612            -1.997            -1.698
    10           -0.150           -2.612            -2.014            -1.717
    9            -0.245           -2.612            -2.034            -1.738
    8            -0.550           -2.612            -2.055            -1.760
    7            -0.909           -2.612            -2.078            -1.782
    6            -0.919           -2.612            -2.101            -1.805
    5            -1.196           -2.612            -2.124            -1.827
    4            -1.640           -2.612            -2.146            -1.848
    3            -1.352           -2.612            -2.168            -1.868
    2            -1.398           -2.612            -2.188            -1.887
    1            -2.479           -2.612            -2.205            -1.903
 
Opt Lag (Ng-Perron seq t) =  2 with RMSE  .5418779
Min SC   = -1.018097 at lag  2 with RMSE  .5418779
Min MAIC = -1.070551 at lag  9 with RMSE  .5011249

```

`dfuller D.price, lags(2) regress`
Corro el ADF sin trend deterministico. Rechazo H0. Concluyo que price es I(1) sin tendencia deterministica
```
Augmented Dickey-Fuller test for unit root         Number of obs   =        68

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -3.464            -3.555            -2.916            -2.593
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.0090

------------------------------------------------------------------------------
    D2.price |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
       price |
         LD. |  -.5078206   .1465975    -3.46   0.001    -.8006828   -.2149584
        LD2. |  -.0529619   .1384184    -0.38   0.703    -.3294844    .2235606
       L2D2. |  -.1381274   .1203111    -1.15   0.255    -.3784764    .1022215
             |
       _cons |   .0153049   .0630774     0.24   0.809    -.1107068    .1413165
------------------------------------------------------------------------------

```

lternativamente, siguiendo Ng Perron, partiendo de 11 lags llegan a que al usar 4 lags el estadistico t del ultimo rezago da arriba de 1.64. Se llega a la misma conclusion respecto al ADF



## c) Calcule los retornos simples mensuales del precio del gas en Europa y encuentre el orden de integración de esta serie de retornos corriendo el test ADF como se mencionó en el inciso anterior.
`gen returns = D.price / L.price`
Genero la serie de retornos simples 

`dfgls returns` 
// Aca encontramos que segun Ng Perron corresponde usar 9 lags en el ADF de returns con tendencia determistica
```
DF-GLS for returns                                       Number of obs =    59
Maxlag = 11 chosen by Schwert criterion
 
               DF-GLS tau      1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    11           -1.014           -3.690            -2.704            -2.427
    10           -1.075           -3.690            -2.749            -2.472
    9            -1.272           -3.690            -2.796            -2.518
    8            -2.042           -3.690            -2.843            -2.564
    7            -2.512           -3.690            -2.889            -2.609
    6            -2.805           -3.690            -2.935            -2.652
    5            -2.823           -3.690            -2.979            -2.693
    4            -3.364           -3.690            -3.020            -2.732
    3            -3.096           -3.690            -3.058            -2.767
    2            -3.410           -3.690            -3.093            -2.798
    1            -3.753           -3.690            -3.122            -2.825
 
Opt Lag (Ng-Perron seq t) =  9 with RMSE  .1125212
Min SC   = -4.011238 at lag  1 with RMSE  .1255904
Min MAIC = -3.748204 at lag 10 with RMSE  .1118278

```

`dfuller returns, lags(9) trend regress`
Corro el ADF con trend deterministico y encuentro que el trend deterministico es no significativo
```
Augmented Dickey-Fuller test for unit root         Number of obs   =        61

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -2.023            -4.126            -3.489            -3.173
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.5890

------------------------------------------------------------------------------
D.returns    |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
     returns |
         L1. |  -.8993484   .4446062    -2.02   0.049    -1.792818   -.0058787
         LD. |   .2920567   .4075902     0.72   0.477    -.5270265     1.11114
        L2D. |   .3064299    .382612     0.80   0.427    -.4624576    1.075317
        L3D. |   .2414531   .3572851     0.68   0.502    -.4765383    .9594444
        L4D. |   .3398873   .3347496     1.02   0.315    -.3328173    1.012592
        L5D. |   .0317874   .3088988     0.10   0.918     -.588968    .6525428
        L6D. |   .1033805   .2860643     0.36   0.719    -.4714871    .6782482
        L7D. |  -.2584398   .2677926    -0.97   0.339    -.7965892    .2797095
        L8D. |  -.2735055   .2240401    -1.22   0.228    -.7237309    .1767199
        L9D. |  -.4354832   .1963649    -2.22   0.031    -.8300933   -.0408731
      _trend |  -.0000905   .0009305    -0.10   0.923    -.0019604    .0017794
       _cons |   .0060306    .039612     0.15   0.880    -.0735727    .0856339
------------------------------------------------------------------------------
```

`dfgls returns, notrend`
Aca encontramos que segun Ng Perron corresponde usar 9 lags en el ADF de returns sin tendencia determistica
```
DF-GLS for returns                                       Number of obs =    59
Maxlag = 11 chosen by Schwert criterion
 
               DF-GLS mu       1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    11           -0.677           -2.612            -1.997            -1.698
    10           -0.727           -2.612            -2.014            -1.717
    9            -0.915           -2.612            -2.034            -1.738
    8            -1.734           -2.612            -2.055            -1.760
    7            -2.246           -2.612            -2.078            -1.782
    6            -2.545           -2.612            -2.101            -1.805
    5            -2.473           -2.612            -2.124            -1.827
    4            -3.057           -2.612            -2.146            -1.848
    3            -2.613           -2.612            -2.168            -1.868
    2            -2.949           -2.612            -2.188            -1.887
    1            -3.319           -2.612            -2.205            -1.903
 
Opt Lag (Ng-Perron seq t) =  9 with RMSE  .1140779
Min SC   = -3.965644 at lag  1 with RMSE  .1284863
Min MAIC = -3.807838 at lag 10 with RMSE   .113239
```

`dfuller returns, lags(9)  regress`
Corro el ADF sin trend deterministico. No rechazo H0. Concluyo que price no es I(0)
```
Augmented Dickey-Fuller test for unit root         Number of obs   =        61

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -2.054            -3.565            -2.921            -2.596
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.2636

------------------------------------------------------------------------------
   D.returns |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
     returns |
         L1. |  -.8924893   .4346035    -2.05   0.045    -1.765416   -.0195624
         LD. |   .2859184   .3986624     0.72   0.477    -.5148185    1.086655
        L2D. |   .2997925   .3727245     0.80   0.425    -.4488467    1.048432
        L3D. |     .23494   .3474553     0.68   0.502    -.4629445    .9328245
        L4D. |   .3328076   .3234812     1.03   0.309    -.3169236    .9825388
        L5D. |    .027822   .3031463     0.09   0.927    -.5810653    .6367093
        L6D. |   .0994094   .2803148     0.35   0.724    -.4636195    .6624383
        L7D. |   -.258499    .265126    -0.98   0.334    -.7910203    .2740223
        L8D. |  -.2746775   .2214885    -1.24   0.221    -.7195502    .1701953
        L9D. |   -.435434   .1944095    -2.24   0.030    -.8259169    -.044951
             |
       _cons |   .0025226   .0161853     0.16   0.877    -.0299866    .0350318
------------------------------------------------------------------------------
```


`dfgls D.returns`
Aca encontramos que segun Ng Perron corresponde usar 10 lags en el ADF de D.price (serie price en primeras diferencias)
```
DF-GLS for D.returns                                     Number of obs =    59
Maxlag = 10 chosen by Schwert criterion
 
               DF-GLS tau      1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    10           -1.557           -3.694            -2.749            -2.472
    9            -2.015           -3.694            -2.796            -2.518
    8            -2.652           -3.694            -2.843            -2.564
    7            -2.553           -3.694            -2.889            -2.609
    6            -2.698           -3.694            -2.935            -2.652
    5            -3.151           -3.694            -2.979            -2.693
    4            -3.796           -3.694            -3.020            -2.732
    3            -3.900           -3.694            -3.058            -2.767
    2            -5.228           -3.694            -3.093            -2.798
    1            -6.429           -3.694            -3.122            -2.825
 
Opt Lag (Ng-Perron seq t) = 10 with RMSE  .1282189
Min SC   = -3.745862 at lag  1 with RMSE  .1434108
Min MAIC = -2.123478 at lag 10 with RMSE  .1282189
```


`dfuller D.returns, lags(10) trend regress`
Corro el ADF con trend deterministico y encuentro que el trend deterministico es no significativo
```
Augmented Dickey-Fuller test for unit root         Number of obs   =        59

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -3.951            -4.130            -3.491            -3.175
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.0103

------------------------------------------------------------------------------
D2.returns   |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
   D.returns |
         L1. |  -6.479676   1.639838    -3.95   0.000    -9.780499   -3.178853
         LD. |   4.904095   1.547894     3.17   0.003     1.788345    8.019844
        L2D. |    4.39843   1.430303     3.08   0.004     1.519379     7.27748
        L3D. |   3.887831   1.321856     2.94   0.005     1.227073    6.548589
        L4D. |   3.540735   1.223179     2.89   0.006     1.078605    6.002866
        L5D. |   2.918133   1.083349     2.69   0.010     .7374646    5.098801
        L6D. |   2.498884   .9391702     2.66   0.011      .608432    4.389335
        L7D. |   1.756418   .7749749     2.27   0.028     .1964741    3.316361
        L8D. |    1.12234   .6013722     1.87   0.068    -.0881591     2.33284
        L9D. |   .3379886    .398658     0.85   0.401    -.4644684    1.140446
       L10D. |   .0792609   .2212521     0.36   0.722    -.3660965    .5246183
      _trend |  -.0000486   .0010169    -0.05   0.962    -.0020956    .0019984
       _cons |   .0151011   .0436656     0.35   0.731    -.0727931    .1029953
------------------------------------------------------------------------------

```

`dfgls D.returns, notrend`
```
F-GLS for D.returns                                     Number of obs =    59
Maxlag = 10 chosen by Schwert criterion
 
               DF-GLS mu       1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    10           -0.927           -2.612            -2.014            -1.717
    9            -1.156           -2.612            -2.034            -1.738
    8            -1.445           -2.612            -2.055            -1.760
    7            -1.453           -2.612            -2.078            -1.782
    6            -1.564           -2.612            -2.101            -1.805
    5            -1.825           -2.612            -2.124            -1.827
    4            -2.287           -2.612            -2.146            -1.848
    3            -2.506           -2.612            -2.168            -1.868
    2            -3.714           -2.612            -2.188            -1.887
    1            -5.008           -2.612            -2.205            -1.903
 
Opt Lag (Ng-Perron seq t) = 10 with RMSE  .1299829
Min SC   = -3.565361 at lag  1 with RMSE  .1569558
Min MAIC =  -3.55764 at lag 10 with RMSE  .1299829

```

`dfuller D.returns, lags(10) regress`
Corro el ADF sin trend deterministico. Rechazo H0. Concluyo que price es I(1) sin tendencia deterministica
```
Augmented Dickey-Fuller test for unit root         Number of obs   =        59

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -4.012            -3.567            -2.923            -2.596
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.0014

------------------------------------------------------------------------------
  D2.returns |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
     returns |
         LD. |  -6.471328   1.613114    -4.01   0.000    -9.716495   -3.226162
        LD2. |   4.896093   1.522397     3.22   0.002     1.833425    7.958762
       L2D2. |     4.3906   1.405731     3.12   0.003     1.562635    7.218565
       L3D2. |   3.879862   1.297309     2.99   0.004     1.270013    6.489711
       L4D2. |    3.53212   1.196916     2.95   0.005     1.124234    5.940005
       L5D2. |   2.910207   1.059161     2.75   0.008     .7794495    5.040964
       L6D2. |    2.49133   .9159022     2.72   0.009     .6487723    4.333887
       L7D2. |   1.750616    .757245     2.31   0.025     .2272357    3.273997
       L8D2. |   1.117725   .5872365     1.90   0.063    -.0636426    2.299092
       L9D2. |   .3352963   .3904483     0.86   0.395    -.4501844    1.120777
      L10D2. |   .0778888   .2170413     0.36   0.721     -.358742    .5145197
             |
       _cons |   .0131761   .0167035     0.79   0.434     -.020427    .0467792
------------------------------------------------------------------------------
```
## d) ¿Es la mixtura leptocúrtica? Responda en función al valor que obtuvo en el inciso anterior y además muestre en un gráfico en Excel la pdf de la mixtura del gráfico anterior y la pdf de una normal con la misma media y varianza que la mixtura.
`summarize returns, detail`

alterantiva
EN EXCEL : Data analisis -> descriptive statistics

| Column1            |              |
|--------------------|--------------|
|                    |              |
| Mean               | 0,002208062  |
| Standard Error     | 0,016319986  |
| Median             | -0,002976188 |
| Mode               | #N/A         |
| Standard Deviation | 0,13751465   |
| Sample Variance    | 0,018910279  |
| Kurtosis           | 4,203759776  |
| Skewness           | 1,323834485  |
| Range              | 0,843605793  |
| Minimum            | -0,254716921 |
| Maximum            | 0,588888873  |
| Sum                | 0,156772369  |
| Count              | 71           |
## e) ¿La serie de retornos simples se distribuye normalmente? Responda utilizando el estadístico de Jarque-Bera. Indique cuál es la hipótesis nula y la alternativa. Use una probabilidad de error tipo I de 5%.
JB=`=+(B15/6)*(B10^2+B9^2/4)`
Jarque Bera da 73, que es mayor al valor crítico de 6 (que deja 5% en la cola derecha
en una chi-cuadrado con 2 grados de libertad). El QQ Plot se encuentra en el Excel.
Algo interesante que podemos notar es que esos valores extremos, es decir, en las
colas, si tratamos de identificar a qué momento de la serie pertenecen, podemos notar
que en su mayoría pertenecen a 2020, el año de la pandemia. Puede ser un ejercicio
interesante ver si excluyendo el 2020 el estadístico de Jarque Bera da menor a 6.


## f) Construya el QQ Plot para esta serie de retornos mensuales. A partir de lo que observa en el QQ plot, ¿puede decir algo más acerca de la normalidad o no normalidad de estos retornos? Explique con claridad.

El QQ Plot se encuentra en el Excel.
Algo interesante que podemos notar es que esos valores extremos, es decir, en las
colas, si tratamos de identificar a qué momento de la serie pertenecen, podemos notar
que en su mayoría pertenecen a 2020, el año de la pandemia. Puede ser un ejercicio
interesante ver si excluyendo el 2020 el estadístico de Jarque-Bera da menor a 6.

# EJERCICIO 3
Ejercicio 3: sea 𝑦𝑡 = 1.1𝑦𝑡−1 − 0.18𝑦𝑡−2 + 𝜀𝑡, donde 𝜀𝑡 es un proceso de ruido blanco con 𝐸(𝜀𝑡 ) = 0 y 𝑉𝑎𝑟(𝜀𝑡) = 𝜎𝜀 2 < ∞. ¿Es este proceso autorregresivo de orden 2 débilmente estacionario?

$$
y_{t}(1-1.1L-0.18L^2)=\epsilon_{t}$$
Es estacionario si las raices de $1-1.1L-0.18L^2=0$ están fuera del circulo unitario
$a=0.18$ $b=-1.1$ $c=1$

$$
L_{1,2}=\frac{11\pm 0.7}{0.36}
$$
$L_{1}=5$ $L_{2}=\frac{10}{9}$ . Ambas son mayores a 1 en valor absoluto entonces es débilmente estacionario

# EJERCICIO 4
La base de datos “Datos_Ejercicio_4”, disponible en Excel y Stata, contiene datos mensuales del IPC y de la oferta monetaria M2 de Argentina desde diciembre de 2016 a marzo de 2023.

## a) Genere las series de inflación mensual inflación, como la tasa de crecimiento del IPC, y genere la serie de crecimiento de la oferta monetaria, crec_mt como la tasa de crecimiento del M2. Muestre, usando el test de Dickey Fuller Aumentado, que ambas son integradas de orden 1. Use una probabilidad de error tipo I del 5% en todos los casos.




## c) Calcule el estadístico de Durbin Watson e indique qué se puede decir de su valor.
respecto al Durbin-Watson si queremos decir algo, debemos mirar la tabla y buscar los dos valores críticos
para ver en qué región cae el estadístico.