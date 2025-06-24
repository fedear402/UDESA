Federico Ariel Lopez

# EJERCICIO 1
### a)
![[Pasted image 20240426180602.png|600]]
### b)

La media es -0,1 [calculado en Wolfram](https://www.wolframalpha.com/input?i2d=true&i=0.9Integrate%5BxPower%5B%5C%2840%29Divide%5B1%2C8%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%5C%2841%29%2C2%5D%2C8%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D%2B0.1Integrate%5BxPower%5B%5C%2840%29Divide%5B1%2C0.5%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C0.5%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D&lang=es)

$$
0.9  \int_{-\infty}^{\infty} (x) \left( \frac{1}{8\pi} \right)^{0.5} \exp\left( \frac{(x+1)^2}{8} \right)  \, dx 

+ 0.1
\int_{-\infty}^{\infty} (x) \left( \frac{1}{0.5\pi} \right)^{0.5} \exp\left( \frac{x^2}{0.5} \right) \, dx 
$$

Varianza = 3,625 [calculado en Wolfram](https://www.wolframalpha.com/input?i2d=true&i=0.9Integrate%5BPower%5Bx%2C2%5DPower%5B%5C%2840%29Divide%5B1%2C8%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%5C%2841%29%2C2%5D%2C8%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D%2B0.1Integrate%5BPower%5Bx%2B1%2C2%5DPower%5B%5C%2840%29Divide%5B1%2C0.5%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C0.5%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D&lang=es)

$$
0.9  \int_{-\infty}^{\infty} (x+1)^2 \left( \frac{1}{8\pi} \right)^{0.5} \exp\left( \frac{(x+1)^2}{8} \right)  \, dx 

+ 0.1
\int_{-\infty}^{\infty} (x)^2 \left( \frac{1}{0.5\pi} \right)^{0.5} \exp\left( \frac{x^2}{0.5} \right) \, dx 
$$

sd = sqrt(3.625)=1.9039432764659770714
![[Pasted image 20240426183508.png|600]]



### c)

Tercer momento centrado = 0 [Calculado en Wolfram](https://www.wolframalpha.com/input?i2d=true&i=0.9Integrate%5BPower%5Bx%2B1%2C3%5DPower%5B%5C%2840%29Divide%5B1%2C8%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C8%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D%2B0.1Integrate%5BPower%5Bx%2C3%5DPower%5B%5C%2840%29Divide%5B1%2C0.5%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%5C%2841%29%2C2%5D%2C0.5%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D&lang=es)
$$
0.9  \int_{-\infty}^{\infty} (x+1)^3 \left( \frac{1}{8\pi} \right)^{0.5} \exp\left( \frac{(x+1)^2}{8} \right)  \, dx 

+ 0.1
\int_{-\infty}^{\infty} (x)^3 \left( \frac{1}{0.5\pi} \right)^{0.5} \exp\left( \frac{x^2}{0.5} \right) \, dx 
$$
Cuarto momento centrado = 43.2187 [Calculado en Wolfram](https://www.wolframalpha.com/input?i2d=true&i=0.9Integrate%5BPower%5Bx%2B1%2C4%5DPower%5B%5C%2840%29Divide%5B1%2C8%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%2B1%5C%2841%29%2C2%5D%2C8%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D%2B0.1Integrate%5BPower%5Bx%2C4%5DPower%5B%5C%2840%29Divide%5B1%2C0.5%CF%80%5D%5C%2841%29%2C0.5%5DPower%5Be%2C-Divide%5BPower%5B%5C%2840%29x%5C%2841%29%2C2%5D%2C0.5%5D%5D%2C%7Bx%2C-%E2%88%9E%2C%E2%88%9E%7D%5D&lang=es)
$$
0.9  \int_{-\infty}^{\infty} (x+1)^4 \left( \frac{1}{8\pi} \right)^{0.5} \exp\left( \frac{(x+1)^2}{8} \right)  \, dx 

+ 0.1
\int_{-\infty}^{\infty} (x)^4 \left( \frac{1}{0.5\pi} \right)^{0.5} \exp\left( \frac{x^2}{0.5} \right) \, dx 
$$

 
Asimetría = 0 (tercer momento centrado)
Kurtosis = $\frac{\mu_{4}}{\mu_{2}^2}$ =  43.2187/3.625^2=3.2889

Una kurtosis en exceso (0.28...) positiva (mayor a 3) implica que es leptocúrtica 

# EJERCICIO 2
Es estacionaria si las raíces del polinomio característico están fuera del circulo unitario. Primero notamos que el proceso

$$
y_{t}=2y_{t-1}-y_{t-2}+\epsilon_{t}
$$
Se puede expresar como
$$
y_{t}(1-2L+1L^2)=\epsilon_{t}$$
Es estacionario si las raíces de $1-2z+1z^2=0$
Notamos que se puede factorizar $1-2z+1z^2=(z-1)^2$
Entonces tiene dos raíces reales que ambas son 1 (tiene multiplicidad)
Como no cumplen que $|z|>1$ , entonces NO es estacionaria

Para ver el orden de integración, tenemos que ver si la primer diferencia es estacionaria
$$
\Delta y_{t}=y_{t}-y_{t-1}=2y_{t-1}-y_{t-2}+\epsilon_{t}-y_{t-1}
$$
$$
\Delta y_{t}=(2-1)y_{t-1}-y_{t-2}+\epsilon_{t}
$$
$$
\Delta y_{t}=y_{t-1}-y_{t-2}+\epsilon_{t}
$$
El polinomio es $1-1z+1z^2=0$
Las raíces son complejas y también [son iguales a 1 en módulo](https://www.wolframalpha.com/input?i2d=true&i=1-1z%2B1Power%5Bz%2C2%5D%3D0&lang=es)
|1/2 - (i * sqrt(3))/2| = 1
|1/2 + (i * sqrt(3))/2| = 1
La primer diferencia no es estacionaria
Tomamos la segunda diferencia
$$
\Delta^2 y_{t}=\Delta y_{t} - \Delta y_{t-1} =y_{t-1}-y_{t-2}+\epsilon_{t} - (y_{t-1}-y_{t-2})
$$
$$
\Delta^2 y_{t}=\epsilon_{t}
$$
Por ende esta integrado de orden 2
Es  I(2)

# EJERCICIO 3

### a)
`tsline alum_price`
![[Pasted image 20240426185306.png|600]]

### b)
```
. gen log_price = log(alum_price)

. 
. dfgls log_price 
 
DF-GLS for log_price                                     Number of obs =   228
Maxlag = 14 chosen by Schwert criterion
 
               DF-GLS tau      1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    14           -2.370           -3.480            -2.813            -2.534
    13           -2.269           -3.480            -2.823            -2.543
    12           -2.235           -3.480            -2.833            -2.552
    11           -2.433           -3.480            -2.842            -2.560
    10           -2.450           -3.480            -2.851            -2.569
    9            -2.395           -3.480            -2.860            -2.577
    8            -2.329           -3.480            -2.868            -2.585
    7            -2.445           -3.480            -2.877            -2.592
    6            -2.578           -3.480            -2.885            -2.599
    5            -2.993           -3.480            -2.892            -2.606
    4            -3.079           -3.480            -2.899            -2.613
    3            -2.876           -3.480            -2.906            -2.619
    2            -2.681           -3.480            -2.913            -2.625
    1            -2.583           -3.480            -2.919            -2.630
 
Opt Lag (Ng-Perron seq t) =  6 with RMSE   .048119
Min SC   =  -5.98486 at lag  1 with RMSE  .0489849
Min MAIC = -5.963795 at lag  1 with RMSE  .0489849

. // Criterio SC recomienda 1 lag en el ADF de log_price con tendencia
. 
. dfuller log_price, lags(1) trend regress 

Augmented Dickey-Fuller test for unit root         Number of obs   =       241

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -2.974            -3.993            -3.431            -3.131
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.1395

------------------------------------------------------------------------------
D.log_price  |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
   log_price |
         L1. |  -.0491961   .0165428    -2.97   0.003    -.0817859   -.0166063
         LD. |     .32585   .0611613     5.33   0.000     .2053607    .4463392
      _trend |  -6.43e-06   .0000451    -0.14   0.887    -.0000952    .0000823
       _cons |   .3766038   .1262946     2.98   0.003     .1278005    .6254072
------------------------------------------------------------------------------

. // Este test ADF sugiere que trend no es significativa
. 
. dfgls log_price, notrend
 
DF-GLS for log_price                                     Number of obs =   228
Maxlag = 14 chosen by Schwert criterion
 
               DF-GLS mu       1% Critical       5% Critical      10% Critical
  [lags]     Test Statistic        Value             Value             Value
------------------------------------------------------------------------------
    14           -1.592           -2.581            -1.958            -1.648
    13           -1.512           -2.581            -1.964            -1.653
    12           -1.490           -2.581            -1.969            -1.658
    11           -1.664           -2.581            -1.975            -1.663
    10           -1.688           -2.581            -1.980            -1.668
    9            -1.653           -2.581            -1.985            -1.673
    8            -1.608           -2.581            -1.990            -1.677
    7            -1.712           -2.581            -1.995            -1.682
    6            -1.829           -2.581            -2.000            -1.686
    5            -2.177           -2.581            -2.004            -1.690
    4            -2.265           -2.581            -2.009            -1.694
    3            -2.119           -2.581            -2.013            -1.698
    2            -1.974           -2.581            -2.017            -1.702
    1            -1.905           -2.581            -2.021            -1.705
 
Opt Lag (Ng-Perron seq t) =  6 with RMSE  .0484704
Min SC   = -5.971772 at lag  1 with RMSE  .0493065
Min MAIC = -5.978145 at lag  1 with RMSE  .0493065

. // Criterio SC recomienda 1 lag en el ADF de log_price sin tendencia
. 
. dfuller log_price, lags(1) regress 

Augmented Dickey-Fuller test for unit root         Number of obs   =       241

                               ---------- Interpolated Dickey-Fuller ---------
                  Test         1% Critical       5% Critical      10% Critical
               Statistic           Value             Value             Value
------------------------------------------------------------------------------
 Z(t)             -2.979            -3.463            -2.881            -2.571
------------------------------------------------------------------------------
MacKinnon approximate p-value for Z(t) = 0.0369

------------------------------------------------------------------------------
 D.log_price |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
   log_price |
         L1. |  -.0491873   .0165086    -2.98   0.003     -.081709   -.0166656
         LD. |   .3260608   .0610175     5.34   0.000     .2058575    .4462641
             |
       _cons |   .3757523   .1258935     2.98   0.003     .1277444    .6237602
------------------------------------------------------------------------------

. // ADF sin trend. a nivel 5% podriamos rechazar la H0 (no estacionariedad)
. // porque el estadístico nos da menor que el valor critico a ese nivel
. // -2.881 >  -2.979
. // Entonce es I(0)

```
### c)
```
. gen log_r = log(D.alum_price / L.alum_price)
(115 missing values generated)

. // generamos la variable de retornos logaritmicos
. 
. su log_r, detail

                            log_r
-------------------------------------------------------------
      Percentiles      Smallest
 1%    -6.390263      -6.943044
 5%    -5.423625      -6.390263
10%     -5.22297      -6.372292       Obs                 128
25%    -3.927234      -5.668993       Sum of Wgt.         128

50%    -3.421481                      Mean          -3.582556
                        Largest       Std. Dev.      .9776449
75%    -2.873164      -2.133625
90%    -2.537896      -2.132556       Variance       .9557895
95%    -2.389174      -1.998657       Skewness      -.9954262
99%    -1.998657       -1.83665       Kurtosis       3.871859

. // obtenemos la asimetria y curtosis
. // Skewness      -.9954262
. // Kurtosis       3.871859
. 
. disp 128/6*( -0.9954262^2+ 3.871859^2/4)
58.814927

. // manualmente nos da 58.81, mayor al valor crítico de 6
. // se rechaza H0 de normalidad
. 
. qnorm log_r
```
### d)
![[Pasted image 20240426191517.png|600]]
No sugiere normalidad en las colas (no se ajustan a lo cuantiles de la normal)

# EJERCICIO 4

Como estamos realizando el análisis sobre una serie estacionaria, de orden I(0) (no le tomamos diferencias). Tenemos entonces un $ARMA(p,q)$.
AC=
![[Pasted image 20240426192417.png|600]]
PAC=
![[Pasted image 20240426192353.png|600]]
Dados el grafico de AC, no parece tener un proceso MA, sino que parcería un proceso AR
ARMA(1,0) o ARMA(2,0) y probamos ARMA(1,1)

| Criterio | AR(2)     | AR(1)         | ARMA(1,1)     | ARMA(2,1)     | ARMA(1,2) | ARMA(2,2)     | Mejor |
| -------- | --------- | ------------- | ------------- | ------------- | --------- | ------------- | ----- |
| loglik   | 376.5795  | 390.2648      | 387.8734      | **391.8188**  | 389.5796  | **392.2276**  | AR(1) |
| AIC      | -747.159  | **-772.5295** | -767.7468     | **-773.6377** | -769.1591 | **-772.4552** | AR(1) |
| BIC      | -736.6798 | **-758.5573** | **-753.7746** | **-756.1723** | -751.6938 | -751.4968     | AR(1) |


DIAGNOSTICO:
Chequeamos que los residuos sean ruido blanco con el test de Portmanteau 
Con el test de Portmanteau llegamos a que los residuos en el modelo AR(1) no son estacionarios. Pasamos al segundo mejor modelo ARMA(1,1), para el cual si rechazamos la hipótesis nula
Para el AR(1)
```
Portmanteau test for white noise
---------------------------------------
 Portmanteau (Q) statistic =    84.1757
 Prob > chi2(40)           =     0.0001
```
Para el ARMA(1,1)
```
Portmanteau test for white noise
---------------------------------------
 Portmanteau (Q) statistic =    46.1891
 Prob > chi2(40)           =     0.2318
```

Chequeamos que sea estacionario: inversa de raíces dentro del círculo unitario
Las raices están dentro del circulo unitario
![[Pasted image 20240426195601.png|600]]
