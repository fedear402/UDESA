

# Chapter 13 (open economy, no intermediaries or working capital) 
The above model adds an international asset to the economy and permits studying how international assets or debt can affect the dynamics. In addition, although we did not do it above, it is possible to make the foreign interest rate rule stochastic by simply adding some random noise to the international interest rate rule. Since there is neither money nor an exchange rate, one cannot use these models to study how monetary shocks affect an open economy and the exchange rate. In this section, we add domestic and foreign money to the open economy. This implies that there is an exchange rate, although only a simple purchasing power parity one, and that foreign price shocks and domestic monetary shocks can have dynamic effects.
Adding money to the open economy means that a number of additional variables and constraints need to be taken into account. If we have a domestic money, we need to assume a foreign money as well and an exchange rate between these two monies. We require conditions that will equalize the balance of payments and a rule to determine the exchange rate in each period. Since this is a "closed" open economy, we need to choose some restriction that will make foreign bond holdings defined in a stationary state. Note that in this model, we will only have monetary shocks that enter through transfers directly to households and that directly affect the household's cash-in-advance constraint.
Now we add money to the open economy with capital adjustment costs and an interest rate on foreign debt and bonds that depends on the country's foreign indebtedness or wealth. Domestic money is added using a domestic cash-in-advance constraint for consumption purchases and for purchasing foreign money to use for paying foreign debt or buying foreign goods. The foreign bond is denominated in the foreign currency and pays interest (or if the bond is negative, the interest on the debt is paid) in the foreign currency. The period $t$ exchange rate, measured in terms of units of domestic money per unit of foreign money, is $e_t$. There is a foreign market that in each period has a clearing condition of

$$B_t - (1 + r_{t-1}^f) B_{t-1} = P_t^* X_t,$$

where $X_t$ is total net exports of the single good, $B_t$ is the nominal quantity of foreign bonds, measured in the foreign currency, held at the end of period $t$, and $P_t^*$ is the foreign price of the one good. The foreign interest rate is a function of the real (foreign) value of the stock of nominal foreign bonds (debt) held by the home country,

$$r_t^f = r^* - a \frac{B_t}{P_t^*}.$$

To keep things from being too simple-minded, we assume that the foreign price level follows a stochastic process of

$$P_t^* = 1 - \gamma^* + \gamma^* P_{t-1}^* + \varepsilon_t^*,$$

where $E_{t-1}\varepsilon_t^* = 0$ and $\varepsilon_t^*$ is bounded below by $-(1 - \gamma^*)$ and bounded above. We assume purchasing power parity, so the exchange rate, $e_t$, is defined in terms of units of the local currency per unit of the foreign currency as

$$e_t = \frac{P_t}{P_t^*}$$

13.4.2 The Household

In an economy with indivisible labor and a cash-in-advance constraint, the household maximizes

$$E_t \sum_{j=0}^{\infty} \beta^j \left[ \ln c_{t+j}^i + Bh_{t+j}^i \right]$$

subject to its budget constraints. The cash-in-advance condition for domestic household $i$ in period $t$ is

$$P_t c_t^i = m_{t-1}^i + (g_t - 1) M_{t-1}.$$

Households can receive lump sum money transfers or pay lump sum money taxes. The flow budget constraint for household $i$ in period $t$ is

$$c_t^i + \frac{m_t^i}{P_t} + \frac{e_t b_t^{i}}{P_t} + k_{t+1}^i = w_t h_t^i + r_t k_t^i + (1-\delta) k_t^i - \frac{\kappa}{2} \left( k_{t+1}^i - k_t^i \right)^2$$

$$+ \frac{e_t (1 + r_{t-1}^{f}) b_{t-1}^{i}}{P_t} + \frac{m_{t-1}^i + (g_t - 1) M_{t-1}}{P_t},$$

which, after removing the elements from the cash-in-advance constraint, simplifies to

$$\frac{m_t^i}{P_t} + \frac{e_t b_t^{i}}{P_t} + k_{t+1}^i + \frac{\kappa}{2} \left( k_{t+1}^i - k_t^i \right)^2 = w_t h_t^i + r_t k_t^i + (1-\delta) k_t^i$$

$$+ \frac{e_t (1 + r_{t-1}^{f}) b_{t-1}^{i}}{P_t}.$$

The term $\kappa/2 (k_{t+1} - k_t)^2$ is the capital adjustment costs the family must pay for changing the level of capital holdings. At the end of each period, the household's holdings of wealth are comprised of domestic money, foreign bonds, and physical capital.

In each period $t$, the household chooses $c_t^i$, $k_{t+1}^i$, $b_t^{f,i}$, $m_t^i$, and $h_t^i$ to maximize its utility function subject to the budget constraints. The first-order conditions that come from this maximization are


Household CPO:
$$0 = E_t \frac{e_t}{P_{t+1}c_{t+1}} - \beta E_t \frac{e_{t+1}(1 + r^{f}_t)}{P_{t+ 2} c_{t+2}},$$

$$0 = E_t \frac{P_t}{P_{t+1} + c_{t+1}} \left[1 + \kappa \left(k_{t+1} - k_t\right)\right]- \beta E_t \frac{P_{t+1}}{P_{t + 2}c_{t+2}} \left(r_{t+1} + (1 - \delta) + \kappa \left(k_{t+2} - k_{t+1}\right)\right)$$


$$0 = \frac{B}{w_t} + \beta E_t \frac{P_t}{P_{t+1} + c_{t+1}},$$

and the budget constraints are

$$0 = P_t c_t - m_{t-1} - (g_t - 1) M_{t-1},$$

and

$$0 = \frac{m_t}{P_t} + \frac{e_t b_t}{P_t} + k_{t+1} + \frac{\kappa}{2} \left(k_{t+1} - k_t\right)^2- w_t h_t - r_t k_t - (1 - \delta) k_t - \frac{e_t (1 + r_{t-1}) b_{t-1}}{P_t}$$


**13.4.3   Firms**

Domestic firms are completely competitive and have the standard Cobb-Douglas production function

$$Y_t = \lambda_t K_t^{\theta} H_t^{1-\theta}.$$

The equilibrium condition for the labor market is

$$w_t = (1 - \theta) \lambda_t K_t^{\theta} H_t^{-\theta}$$

and for the capital market is

$$r_t = \theta \lambda_t K_t^{\theta-1} H_t^{1-\theta}.$$
**13.4.4   Equilibrium Conditions**

The aggregate resource constraint for the domestic economy is

$$\lambda_t K_t^{\theta} H_t^{1-\theta} = C_t + K_{t+1} - (1 - \delta) K_t + X_t.$$
Domestic output can be used as consumption, domestic net capital accumulation (investment), or net exports. This is not an additional restriction since it is already incorporated in the aggregated form of the budget constraint of the household, the cash-in-advance constraint, and the balance of payments. Since the unit mass of households are identical, we have the aggregation conditions

$$C_t = c_t^i,$$

$$M_t = m_t^i,$$

$$B_t = b_t^i,$$

$$H_t = h_t^i,$$

and

$$K_{t+1} = k_{t+1}^i.$$

In addition, the money supply follows the rule

$$M_t = g_t M_{t-1}.$$
**13.4.5 The Full Model**

The full model is in the 11 variables, $C_t$, $K_{t+1}$, $H_t$, $M_t$, $B_t$, $P_t$, $e_t$, $r_t$, $w_t$, $r_t^f$, and $X_t$, and the stochastic processes, $P_t^*$, $\lambda_t$, and $g_t$. The full set of 11 equations of the model, written in aggregate terms, is
ok
$$0 = E_t \frac{e_t}{P_{t+1}C_{t+1}} - \beta E_t \frac{e_{t+1}(1+r_t^f)}{P_{t+2}C_{t+2}}$$
ok
$$0 = E_t \frac{P_t}{P_{t+1}C_{t+1}} [1 + \kappa (K_{t+1} - K_t)]$$

$$- \beta E_t \frac{P_{t+1}}{P_{t+2}C_{t+2}} (r_{t+1} + (1-\delta) + \kappa (K_{t+2} - K_{t+1})),$$
ok
$$0 = \frac{B}{w_t} + \beta E_t \frac{P_t}{P_{t+1}C_{t+1}},$$

$$0 = P_t C_t - M_t,$$
$$0 = \frac{M_t}{P_t} + \frac{e_t B_t}{P_t} + K_{t+1} + \frac{\kappa}{2}(K_{t+1} - K_t)^2$$
$$- w_t H_t - r_t K_t - (1 - \delta) K_t - \frac{e_t(1 + r_{t-1}^f) B_{t-1}}{P_t},$$

$$0 = w_t - (1 - \theta) \lambda_t K_t^{\theta} H_t^{-\theta},$$

$$0 = r_t - \theta \lambda_t K_t^{\theta-1} H_t^{1-\theta},$$

$$0 = B_t - (1 + r_{t-1}^f) B_{t-1} - P_t^* X_t,$$

$$0 = r_t^f - r^* + a \frac{B_t}{P_t^*},$$

$$0 = e_t - \frac{P_t}{P_t^*},$$

$$0 = M_t - g_t M_{t-1}.$$
In addition, there are the three equations that define the stochastic processes for $P_t^*$, $X_t$, and $g_t$.

**13.4.6 The Stationary State**

Define $\pi = P_{t+1,t} / P_{t,t}$ as the stationary state rate of inflation. As usual, we assume a constant growth rate of money, $\hat{g}$, and look for a stationary state where the real variables of the economy are constant and ratios of nominal variables are constant. The foreign price level follows a stochastic process,

$$P_t^* = 1 - \gamma^* + \gamma^* P_{t-1}^* + \varepsilon_t^*,$$

so, in a stationary state, the foreign price level is $\bar{P}^* = 1$. Using the full model, some conditions for the stationary state are

$$\pi = \beta(1 + \bar{r}^f) \frac{e_{t+1}}{e_t},$$ 
 $$\frac{1}{\beta} = (\bar{r} + (1 - \delta)),$$

$$-\bar{B} \pi \bar{C} = \beta \bar{w},$$ 
$$\bar{C} = \overline{M/P} $$

$$ \overline{M/P}  \frac{e_t \bar{B}}{P_t} = \bar{w}\bar{H} + (\bar{r} - \delta)\bar{K} + \frac{e_t(1 + \bar{r}^f)\bar{B}}{P_t},$$
(13.18)

$$\bar{w} = (1 - \theta)\bar{K}^{\theta}\bar{H}^{-\theta},$$
(13.19)

$$\bar{r} = \theta \bar{K}^{\theta-1}\bar{H}^{1-\theta},$$
(13.20)

$$-\bar{r}^f \bar{B} = \bar{X},$$
(13.21)

$$\bar{r}^f = r^* - a \bar{B},$$
(13.22)

$$\frac{e_t}{P_t} = 1,$$
(13.23)

$$M_t = \bar{g}M_{t-1}.$$
(13.24)

These conditions can be further simplified to find stationary state values of all the variables of the model as functions of the model's parameters. Notice that since we are dealing with stationary states, the capital adjustment costs, which are based on the changes in capital, do not appear in the above equations.

Using equation 13.23, equation 13.16 becomes

$$\pi = \beta(1 + \bar{r}^f)\frac{P_{t+1}}{P_t} = \beta(1 + r^f)\pi,$$

so

$$\bar{r}^f = \frac{1}{\beta} - 1.$$

Equation 13.22 then determines the stationary state foreign bond (debt) holdings as

$$\bar{B} = \frac{r^* + 1 - \frac{1}{\beta}}{a},$$

and $\bar{X}$ can be found from equation 13.21 as

$$\bar{X} = -r^f\bar{B} = \frac{(1-\beta)^2 - (1-\beta)\beta r^*}{a\beta^2}$$

As with earlier stationary states, since $\bar{r}$ is given, the conditions for competitive factor markets (equations 13.19 and 13.20) imply that

$$\bar{w} = (1-\theta)\left(\frac{\theta}{\bar{r}}\right)^{\frac{\theta}{1-\theta}}.$$
and equation 13.17 gives us stationary state consumption as

$$\bar{C} = \frac{\bar{\beta}\bar{w}}{-B\pi}$$

where the condition for the stationary state gross inflation rate, $\pi = \bar{g}$, is found using equation 13.24 and the argument

$$M_t = \bar{g}M_{t-1},$$

$$\frac{M_t}{P_t} = \bar{g} \frac{M_{t-1} P_{t-1}}{P_t P_{t-1}} = \bar{g} \frac{M_{t-1}}{P_{t-1}} \frac{P_{t-1}}{P_t},$$

so

$$\overline{M/P} = \frac{\bar{g}\overline{M/P}}{\pi}.$$

To find $\bar{K}$, we use equation 13.18, to get

$$\overline{M/P} = \bar{w}\bar{H} + (\bar{r} - \delta)\bar{K} + \bar{r}^f\bar{B},$$

and substituting in the usual result (from the factor market conditions) that

$$\bar{H} = \frac{\bar{r}(1-\theta)}{\bar{w}\theta}\bar{K},$$

we get

$$\bar{K} = \frac{\theta\left(\overline{M/P} - \bar{r}^f\bar{B}\right)}{\bar{r} - \theta\delta}.$$

For the standard economy, the stationary state values are $\bar{r} = .0351$, $\bar{w} = 2.3706$, and $\bar{r}^f = .0101$ in all cases. The values for the other variables are shown in Table 13.3.

Notice that, as in the basic model with cash-in-advance money with transfers to the household, stationary states with higher money growth have lower stationary state consumption and production. Net foreign debt or savings does not change consumption in the stationary state but does change capital holding and the fraction of the population that is working in each period. Countries with foreign debt need to have higher production, capital, and employment to be able to meet interest rate payments and maintain consumption.

**13.4.7    Log-Linear Version of Full Model**

We use the now familiar method of Uhlig to find the log-linear version of the model around the stationary state found in the section above. We define the log difference variable $\tilde{Z}_t = \ln Z_t - \ln \bar{Z}$. The variables of the model are $\tilde{K}_{t+1}$, $\tilde{M}_t$, $\tilde{P}_t$, $\tilde{B}_t$, $\tilde{r}_t^f$, $\tilde{C}_t$, $\tilde{r}_t$, $\tilde{w}_t$, $\tilde{H}_t$, $\tilde{e}_t$, and $\tilde{X}_t$. The variables $\tilde{\lambda}_t$, $\tilde{g}_t$, and $\tilde{P}_t^*$ follow independent stochastic processes. The log-linear version of the full model is

$$0 = \tilde{e}_t - E_t\tilde{e}_{t+1} - E_t\tilde{P}_{t+1} + E_t\tilde{P}_{t+2} - E_t\tilde{C}_{t+1} + E_t\tilde{C}_{t+2} - \beta \bar{r}^{f} \tilde{r}_t^f,$$ (13.25)

$$0 = \tilde{P}_t - 2E_t\tilde{P}_{t+1} + E_t\tilde{P}_{t+2} - E_t\tilde{C}_{t+1} + E_t\tilde{C}_{t+2}$$ (13.26)

$$- \kappa\bar{K}\tilde{K}_t + (1 + \beta)\kappa\bar{K}\tilde{K}_{t+1} - \beta E_{t} \kappa \bar{K}\tilde{K}_{t+2} - \beta E_t \bar{r}^{f} \tilde{r}^{f}_{t+1},$$

$$0 = \tilde{w}_t + \tilde{P}_t - E_t\tilde{P}_{t+1} - E_t\tilde{C}_{t+1},$$

$$0 = \tilde{P}_t + \tilde{C}_t - \tilde{M}_t,$$ (13.27)

$$0 = \overline{M/P}  \tilde{M}_t - \left[\overline{M/P} - \bar{B}\bar{r}^{f}\right]\tilde{P}_t + \bar{B}\tilde{B}_t + \bar{K}\tilde{K}_{t+1} - \bar{w}\bar{H}\tilde{w}_t - \bar{w}\bar{H}\tilde{H}_t$$

$$- \bar{r}\bar{K}\tilde{r}_t - [\bar{r} + (1 - \delta)]\bar{K}\tilde{K}_t - \bar{B}\bar{r}^{f}\tilde{e}_t - \bar{B}\bar{r}^{f}\tilde{r}^f_{t-1} - \bar{B}\left(1 + \bar{r}^{f}\right)\tilde{B}_{t-1},$$

$$0 = \tilde{w}_t - \tilde{\lambda}_t -\theta\tilde{K}_t + \theta\tilde{H}_t,$$

$$0 = \tilde{r}_t - \tilde{\lambda}_t + (1 - \theta)\tilde{K}_t - (1 - \theta)\tilde{H}_t,$$

$$0 = \bar{B}\tilde{B}_t - \left(1 + \bar{r}^{f}\right)\bar{B}\tilde{B}_{t-1} - \bar{r}^{f}\bar{B}\tilde{r}^f_{t-1} - \bar{X}\tilde{P}_t^* - \bar{X}\tilde{X}_t,$$

$$0 = \bar{r}^{f}\tilde{r}_t^f + a\bar{B}\tilde{B}_t - a\bar{B}\tilde{P}_t^*,$$

$$0 = \tilde{e}_t - \tilde{P}_t + \tilde{P}_t^*,$$

$$0 = \tilde{M}_t - \tilde{g}_t - \tilde{M}_{t-1}.$$ (13.28)
**Table 13.3 Stationary state values for the open economy with money**

|           | $\bar{C}$  | $\bar{K}$   | $\bar{B}$    | $\bar{H}$  | $\bar{Y}$  | $\bar{X}$   |
|-----------|--------|---------|----------|--------|--------|---------|
| $r^* = .03$ | .9095  | 12.2667 | 1.9899   | .3229  | 1.1960 | -.0201  |
| $\bar{g} = 1$ |        |         |          |        |        |         |
| $r^* = .03$ | .7643  | 10.2639 | 1.9899   | .2702  | 1.0008 | -.0201  |
| $\bar{g} = 1.19$ |      |         |          |        |        |         |
| $r^* = .00$ | .9095  | 12.6847 | -1.0101  | .3339  | 1.2368 | .0102   |
| $\bar{g} = 1$ |        |         |          |        |        |         |
| $r^* = .00$ | .7643  | 10.6819 | -1.0101  | .2812  | 1.0415 | .0102   |
| $\bar{g} = 1.19$ |      |         |          |        |        |         |

The log-linear versions of the three stochastic processes are


$$\tilde{\lambda}_t = \gamma^\lambda \tilde{\lambda}_{t-1} + \varepsilon_t^{\lambda},$$

$$\tilde{g}_t = \gamma^g \tilde{g}_{t-1} + \varepsilon_t^g,$$

and

$$\tilde{P}_t^* = \gamma^* \tilde{P}_{t-1}^* + \varepsilon_t^*.$$

The first two equations (equations 13.25 and 13.26) present a problem for our solution technique. The method we use only allows one-period leads on variables, and these equations include the variables $E_t \tilde{P}_{t+2}$ and $E_t \tilde{C}_{t+2}$, although they always appear as a sum: $E_t \tilde{P}_{t+2} + E_t \tilde{C}_{t+2}$. Using equations 13.27 and 13.28, that sum can be written as

$$E_t \tilde{P}_{t+2} + E_t \tilde{C}_{t+2} = E_t \tilde{M}_{t+2} = E_t \tilde{g}_{t+2} + E_t \tilde{M}_{t+1}$$

$$= \gamma^g E_t \tilde{g}_{t+1} + E_t \tilde{M}_{t+1}.$$

Substituting in this result, equations 13.25 and 13.26 can be written as

$$0 = \tilde{e}_t - E_t \tilde{e}_{t+1} - E_t \tilde{P}_{t+1} - E_t \tilde{C}_{t+1} - \beta \bar{r}^{f} \tilde{r}_t^f$$

$$+\gamma^g E_t \tilde{g}_{t+1} + E_t \tilde{M}_{t+1},$$
(13.29)

$$0 = \tilde{P}_t - 2E_t \tilde{P}_{t+1} - E_t \tilde{C}_{t+1} + \gamma^g E_t \tilde{g}_{t+1} + E_t \tilde{M}_{t+1}$$ 
$$- \kappa \bar{K} \tilde{K}_t + (1 + \beta) \kappa \bar{K} \tilde{K}_{t+1} - \beta E_t \kappa \bar{K} \tilde{K}_{t+2} - \beta E_t \bar{r} \tilde{r}_{t+1}.$$


In this form, the model is now written entirely in terms of variables at dates $t - 1$, $t$, and $t + 1$, and our standard solution technique is applicable.

Let $x_t = [\tilde{K}_{t+1}, \tilde{M}_t, \tilde{P}_t, \tilde{B}_t, \tilde{r}_t^f]'$ be the vector of the five state variables, $y_t = [\tilde{C}_{t}, r_t, \tilde{w}_t, \tilde{P}_t, \tilde{e}_t, \tilde{X}_t]'$ be the vector of the six jump variables, and $z_t = [\tilde{\lambda}_t, \tilde{g}_t, \tilde{P}_t^*]'$ be the three stochastic variables. We can write the system as

$$0 = Ax_t + Bx_{t-1} + Cy_t + Dz_t,$$

$$0 = E_t [Fx_{t+1} + Gx_t + Hx_{t-1} + Jy_{t+1} + Ky_t + Lz_{t+1} + Mz_t],$$

$$z_{t+1} = Nz_t + \varepsilon_{t+1}.$$

where

$$A = \begin{bmatrix}
0 & -1 & 1 & 0 & 0 \\
\bar{K} & \overline{M/P}  & -\overline{M/P}  + \bar{B}\bar{r}^f & \bar{B} & 0 \\
0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & \bar{B} & 0 \\
0 & 0 & -1 & 0 & 0
\end{bmatrix},$$

$$B = \begin{bmatrix}
0 & 0 & 0 & 0 & 0 \\
-[\bar{r} + 1 - \delta]\bar{K} & 0 & 0 & -(1 + \bar{r}^f)\bar{B} & -\bar{B}\bar{r}^f \\
-\theta & 0 & 0 & 0 & 0 \\
1 - \theta & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & -(1 + \bar{r}^f)\bar{B} & -\bar{B}\bar{r}^f \\
0 & 0 & 0 & 0 & 0
\end{bmatrix},$$

$$C = \begin{bmatrix}
1 & 0 & 0 & 0 & 0 & 0 \\
0 & -\bar{r}\bar{K} & -\bar{w}\bar{H} & -\bar{w}\bar{H} & -\bar{B}\bar{r}^{f} & 0 \\
0 & 0 & 1 & \theta & 0 & 0 \\
0 & 1 & 0 & -(1-\theta) & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & -\bar{X} \\
0 & 0 & 0 & 0 & 1 & 0
\end{bmatrix},$$

$$D = \begin{bmatrix}
0 & 0 & 0 \\
0 & 0 & 0 \\
-1 & 0 & 0 \\
-1 & 0 & 0 \\
0 & 0 & -\bar{X} \\
0 & 0 & 1
\end{bmatrix},$$

$$F = \begin{bmatrix}
0 & 1 & -1 & 0 & 0 \\
-\beta \kappa\bar{K} & 1 & -2 & 0 & 0 \\
0 & 0 & -1 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0
\end{bmatrix}$$

$$G = \begin{bmatrix}
0 & 0 & 0 & 0 & -\beta \bar{r}^f \\
(1 + \beta) \kappa K & 0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 & 0 \\
0 & 0 & 0 & a\bar{B} & \bar{r}^f \\
0 & 1 & 0 & 0 & 0
\end{bmatrix},$$

$$H = \begin{bmatrix}
0 & 0 & 0 & 0 & 0 \\
-\kappa \bar{K} & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 \\
0 & -1 & 0 & 0 & 0
\end{bmatrix},$$

$$J = \begin{bmatrix}
-1 & 0 & 0 & 0 & -1 & 0 \\
-1 & -\beta \bar{r} & 0 & 0 & 0 & 0 \\
-1 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0
\end{bmatrix},$$

$$K = \begin{bmatrix}
0 & 0 & 0 & 0 & 1 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 1 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0
\end{bmatrix},$$

$$L = \begin{bmatrix}
0 & \gamma^g & 0 \\
0 & \gamma^g & 0 \\
0 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & 0
\end{bmatrix},$$

$$M = \begin{bmatrix}
0 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & -a B \\
0 & -1 & 0
\end{bmatrix}$$

and

$$N = \begin{bmatrix}
\gamma^\lambda & 0 & 0 \\
0 & \gamma^g & 0 \\
0 & 0 & \gamma^*
\end{bmatrix}.$$

The policy and jump functions are of the form

$$x_{t+1} = Px_t + Qz_t$$

and

$$y_t = Rx_t + Sz_t.$$

For the economy with $\hat{g} = 1$ and $r^* = .03$, the matrices of the policy and jump functions are

$$P = \begin{bmatrix}
0.9852 & 0 & 0 & 0.0102 & 0.0001 \\
0 & 1 & 0 & 0 & 0 \\
-0.3241 & 1 & 0 & -0.0919 & -0.0009 \\
0.0436 & 0 & 0 & 0.8068 & 0.0081 \\
-0.0859 & 0 & 0 & -1.5894 & -0.0159
\end{bmatrix},$$

$$Q = \begin{bmatrix}
0.0586 & 0.0031 & -0.0735 \\
0 & 1 & 0 \\
-0.7477 & 1.4201 & 0.4768 \\
0.1674 & 0.1408 & 1.1701 \\
-0.3299 & -0.2774 & -2.3052
\end{bmatrix},$$

$$R = \begin{bmatrix}
0.3241 & 0 & 0 & 0.0919 & 0.0009 \\
-0.5761 & 0 & 0 & -0.1634 & -0.0016 \\
0.3241 & 0 & 0 & 0.0919 & 0.0009 \\
0.0998 & 0 & 0 & -0.2552 & -0.0026 \\
-0.3241 & 1 & 0 & -0.0919 & -0.0009 \\
-4.3162 & 0 & 0 & 20.1257 & 0.2013
\end{bmatrix},$$

and

$$S = \begin{bmatrix}
0.7477 & -0.4201 & -0.4768 \\
1.4485 & -0.0532 & 0.8476 \\
0.7477 & -0.4201 & -0.4768 \\
0.7009 & -0.0832 & 1.3244 \\
-0.7477 & 1.4201 & -0.5232 \\
-16.5774 & -13.9891 & -116.8437
\end{bmatrix}.$$
The zeros in the columns for prices in $P$ and $R$ indicate that prices are not really a state variable. Money only affects itself, domestic prices, and the exchange rate. The coefficients on net exports (the last row of $R$ and $S$) are quite large and come from the relatively small stationary state values for net exports when compared to foreign savings or borrowing. Relatively small adjustments in foreign asset holdings can create relatively large changes in the log differences of net exports.

The policy and jump functions for the same economy with stationary state money growth and inflation of $\tilde{g} = 1.19$ are very similar to those shown above, except for the coefficient $S_{52}$—the coefficient in the $S$ matrix for the effect of a monetary shock on wages. That coefficient becomes 0.0279, implying that a monetary shock will have a small but positive effect on real wages.

The response functions to a technology impulse of .01 for the economy with $\tilde{g} = 1$ and $r^* = .03$ are shown in Figure 13.4. Compare these to the response functions in Figure 13.1 of the same model without money. Most interestingly, the response of capital is slower and smoother and that of foreign bond holdings is faster. The rest are similar.

Figure 13.5 shows the response functions to the technology impulse for an economy where $r^* = .00$. This figure is quite similar to Figure 13.4, except that the response function for foreign bonds is now identical to that for the foreign interest rate. These responses are identical only in the particular case

[THIS IS FIGURE: A graph showing response functions to a technology shock. The y-axis ranges from -0.015 to 0.015, and the x-axis shows periods from 0 to 100. Multiple lines represent different variables: K (capital), C and w (consumption and wages), B (bonds), H (human capital), M (money), P and e (prices and exchange rate), and r* (foreign interest rate). The graph shows various convergence patterns over time.]

**FIGURE 13.4** Response functions to a technology shock, $\tilde{g} = 1, r^* = .03$
where $r^* = .00$. The response functions for similar economies with higher stationary state inflation rates are not shown since they are quite similar to these.

The impulse response functions for a monetary shock are shown in Figure 13.6, for an economy that is a net foreign saver, and in Figure 13.7, for an economy that is a net foreign debtor. The money, price, and exchange rate impulses have been left out of the figures. These shocks all converge to the same positive value, with prices and the exchange converging faster than money. The response functions for economies with stationary state inflation rates of $\tilde{g} = 1.19$ are very similar. The shocks all decay faster, so only the first 50 periods after the shock are shown.

The final shock is the foreign price level. Figure 13.8 shows the responses of an economy that is a net foreign saver and Figure 13.9 shows them for an economy that is a net foreign debtor. The response functions for the same economies with stationary state money growth are not shown since they are very similar to these. The shocks decay rapidly and many of the response functions are close together, so for clarity only the first 25 periods are shown.

![Graph showing response functions to a technology shock with various economic variables (K, C and w, H, M, P and r, r' and B) plotted over 100 periods. The y-axis ranges from -0.015 to 0.015.]

FIGURE 13.5 Response functions to a technology shock, $\tilde{g} = 1$, $r^* = .00$



[This first graph shows what happens when a monetary shock occurs in a "normal" economic environment where the steady-state real interest rate is positive (3%). Real Interest Rates (r, r', and H):** The shock causes a sharp, immediate **increase** in the real interest rate. This makes borrowing more expensive and saving more attractive. The rates then slowly decline, returning to their original level over time. Wages (w) and Capital (K):** Wages and the capital stock both have a small, temporary increase before returning to their initial levels. Consumption (C):** Consumption **drops sharply** because the higher interest rate encourages people to save instead of spend. As the interest rate returns to normal, consumption gradually recovers. **Bonds (B):** The value of bonds increases, reflecting the higher return on savings.]
FIGURE 13.6:  Response functions to foreign price shock, $\bar{g} = 1$, $r^* = .03$

[This second graph illustrates the same monetary shock, but this time the economy is at the **zero lower bound**—the steady-state real interest rate is zero. This situation is often called a liquidity trap. **Real Interest Rates (r', and B):** The key difference here is that the real interest rate **does not respond significantly** to the shock. Because the rate cannot fall below zero, monetary policy is largely ineffective. **Consumption (C) and Wages (w):** Since the interest rate doesn't change much, the shock has a much smaller impact on consumption and wages. The drop in consumption is minimal, unlike in the first scenario. **Capital (K):** The capital stock shows almost no response at all. In short, when the economy is at the zero lower bound, monetary policy has a much weaker effect on economic variables like interest rates and consumption. The impulse response functions are significantly flatter, showing that the shock's effects are muted and short-lived.]

FIGURE 13.7: Response functions to monetary shock,  $\bar{g} = 1$, $r^* = .00$

[THIS IS FIGURE: Graph showing response functions to foreign price shock with multiple curves labeled B, H, P, K, w and C plotted against periods (0-25) on x-axis and values from -0.05 to 0.03 on y-axis]

FIGURE 13.8 Response functions to foreign price shock, $\bar{g} = 1$, $r^* = .03$

[THIS IS FIGURE: Similar graph showing response functions to foreign price shock with curves labeled H, P, K, w and C, and B plotted against periods (0-25) on x-axis and values from -0.05 to 0.02 on y-axis]

FIGURE 13.9 Response functions to foreign price shock, $\bar{g} = 1$, $r^* = .00$

### Reprise

Models of small open economies can suffer from indeterminacies since households have available two assets that offer the same rates of return. The indeterminacy was solved here by adding adjustment costs to capital formation and making the foreign interest rate that the country gets a function of net foreign asset (debt) holdings. This was necessary, in part, because the model has been made linear and the usual portfolio conditions that come from decisions with risky assets cannot be applied. One might expect that in an economy with very large technology shocks, for instance, portfolio diversification would lead the households to want to hold a lot of less risky foreign assets, especially if domestic and foreign shocks are uncorrelated. Models that do this are not yet well developed. Uribe [87] gives a number of other ways of closing the open economy models that the reader might find preferable to the one given here.

An open economy, with or without money, provides households with a way of better smoothing out their consumption in response to domestic shocks. The model here captures some of this effect. However, small open economies sometimes seem to suffer from the impacts that they receive from international price shocks and changes in international capital flows. The phenomenon of "sudden stops," as the rapid change in international capital flows into a country is called, now has a large literature. Some examples are Arellano and Mendoza [3], Calvo [20], Chari, Kehoe and McGratten [26], and Mendoza [64].

# Chapter 12 (financial intermediaries) Household FOC (Aggregated)

We begin with the Taylor rule, which is a bit more complicated than the Friedman rule. The basic model is the same for both rules.
**HOUSEHOLDS**

A unit mass of identical households each maximizes the expected utility function,

$$E_t \sum_{i=0}^{\infty} \beta^i \left( \ln \left( c_{t+i}^j \right) + Bh_{t+i}^j \right),$$

subject to the sequence of budget constraints,

$$c_t^j + k_{t+1}^j + \frac{m_t^j}{P_t} = w_t h_t^j + r_t k_t^j + (1-\delta) k_t^j$$

$$+ \left( r_t^n - 1 \right) \frac{N_t^j}{P_t} + \frac{m_{t-1}^j}{P_t} + \left( g_t^j - 1 \right) M_{t-1},$$

and the sequence of cash-in-advance constraints,

$$P_t c_t^j \leq m_{t-1}^j + \left( g_t^f - 1 \right) M_{t-1} - N_t^j,$$

where $c_t^j$ is time $t$ consumption of family $j$, $h_t^j$ is the labor it supplies, $k_t^j$ its beginning of period capital, $m_t^j$ its beginning of period money holdings, $N_t^j$ its deposits in the financial system, $β$ is discount rate, and $δ$ the depreciation rate on capital. The fiscal part of the government makes a lump sum transfer of money to each household equal to $(g_t^f - 1)M_{t-1}$. This transfer is of the nature of the transfers in the Cooley-Hansen model of Chapter 8 and can be positive or negative. The growth rate of money from a fiscal transfer follows the law of motion,

$$\ln g_t^f = π^f \ln g_{t-1}^f + ε_t^f.$$
The household takes as given time $s$ prices, $P_s$, wages, $w_s$, rental, $r_s$, the lump sum money transfer, $(g_s^f - 1)M_{s-1}$, and the gross interest rate on deposits in a financial intermediary, $r_s^{n}$.

This utility maximization problem (along with the aggregation conditions that $X_s=\int_0^1 x_s^j dj$) results in the aggregate version of the first-order condition as

$$\frac{B}{w_t} = -\beta E_t \frac{P_t}{P_{t+1}C_{t+1}},$$

$$\frac{1}{w_t} = \beta E_t \frac{r_{t+1} + 1 - \delta}{w_{t+1}},$$

$$r_t^d = -\frac{w_t}{\beta C_t} - \frac{1}{E_t \frac{\beta P_t C_t}{P_{t+1}C_{t+1}}},$$

an aggregate cash-in-advance constraint for household consumption,

$$P_t C_t = g_t^f M_{t-1} - N_t,$$

and an aggregate real flow budget constraint,

$$\frac{M_t}{P_t} + K_{t+1} = w_t H_t + r_t K_t + (1 - \delta)K_t + \frac{r_t^{n} N_t}{P_t}.$$
In addition, there is the law of motion for the growth rate of money from the fiscal transfer policy,

$$\ln g_t^f = \pi^f \ln g_{t-1}^f + \varepsilon_t^f.$$

We assume that $\varepsilon_t^f$ has a mean of zero, so that the stationary state value of $g^f = 1$.

**FIRMS**

Firms are competitive and face competitive factor markets. The Cobb-Douglas production function (in aggregate terms) in period $t$ is

$$Y_t = \lambda_t K_t^{\theta} H_t^{1-\theta},$$

where the stochastic process for technology, $\lambda_t$, follows

$$\ln \lambda_t = \gamma \ln \lambda_{t-1} + \varepsilon_t^{\lambda}.$$

The budget constraint for firms is

$$Y_t \geq r_t^f w_t H_t + r_t K_t,$$

where $r_t^f$ is the gross interest rate paid on the working capital borrowed from the financial institutions to finance the wage bill. The assumption of competitive factor markets means that

$$r_t^f w_t = (1 - \theta) \lambda_t K_t^\theta H_t^{-\theta}$$

and

$$r_t = \theta \lambda_t K_t^{\theta-1} H_t^{1-\theta}.$$

Firms borrow from the financial intermediary at the beginning of the period and pay off the loan at the end of the period when they have sold the goods that they produced. This means that there is no uncertainty related with the loans because the time $t$ value of the technology shock is known before the borrowing takes place.


**FINANCIAL INTERMEDIARIES AND THE TAYLOR RULE**

The financial intermediaries are competitive and make zero profits. They face a budget constraint of

$$N_t + \left(g_t^M - 1\right) M_{t-1} = P_t w_t H_t$$

and a zero profit condition of

$$r_t^n N_t = r_t^f P_t w_t H_t,$$

where $\left(g_t^M - 1\right) M_{t-1}$ is the money transfer to or tax on the financial system coming from the central bank's monetary policy. For the central bank to obtain the desired borrowing interest rate, $r_t^f$, the growth rate of money in period $t$ must be

$$g_t^M = \frac{\left(r_t^n - r_t^f\right)}{r_t^f} \frac{N_t}{M_{t-1}} + 1.$$

The central bank's choice for its growth rate of money is determined by the model and the choice of $r_t^f$ that comes from the Taylor rule,

$$r_t^f = a\left(Y_t - \bar{Y}\right) + b\left(\pi_t - \bar{\pi}\right) + \bar{r}^f.$$

The parameter pair of the Taylor rule, $(a, b)$, are the policy parameters determined by the central bank. The stock of money that the households carry over to the next period is equal to the sum of the two growth rates,

$$M_t = \left(g_t^f + g_t^M - 1\right) M_{t-1}.$$

The sum may seem a bit odd, but both growth rates are gross growth rates and the sum $g_t^f + g_t^M = \tilde{g}_t^f + 1 + \tilde{g}_t^M + 1 = \tilde{g}_t^f + \tilde{g}_t^M + 2$ when $\tilde{g}_t^f$ is a net growth rate.

In this model, the interest rate, $r_t^f$, that the central bank is setting is really a real interest rate and not a nominal interest rate. The loans are taken out at the beginning of the period and paid back at the end of the period. The model has discrete periods and during a period prices do not change; they change only between periods.⁸ Taylor recommended that central banks used (.5, 1.5) for the parameter pair $(a, b)$, but in the model given here, the values (.5, .5) capture the spirit of his recommendation.

**12.2.2 Stationary States**

Stationary states for this economy are found the same way as for a standard model with financial intermediaries with $\dot{g} = \bar{\pi}$. In a stationary state, the Taylor rule is simply

$$\bar{r}^f = a\left(\bar{Y} - \bar{Y}\right) + b(\bar{\pi} - \bar{\pi}) + \bar{r}^f$$
$$= \bar{r}^f$$

In this model the stationary state interest rate is a function of the target inflation rate. For a standard (U.S.) economy that we have been using, the relationship between the target inflation rate ($\bar{\pi}$) and the corresponding interest rate rule ($\bar{r}^r$) is shown in Figure 12.10.

---

8. The argument is straightforward. The Taylor rule in nominal terms is

$$r_t^f = a\left(Y_t - \tilde{Y}\right) + b(\pi_t - \pi) + \bar{r}^f.$$

The Fisher equation is

$$r_t^f = i_t^f + \pi_t$$

and in terms of the stationary state interest rate,

$$\bar{r}^f = \bar{i}^f + \bar{\pi}.$$

Putting the two Fisher equations into the Taylor rule gives

$$i_t^f + \pi_t = a\left(Y_t - \tilde{Y}\right) + b(\pi_t - \pi) + \bar{i}^f + \bar{\pi},$$

or

$$i_t^f = a\left(Y_t - \tilde{Y}\right) + (b - 1)(\pi_t - \pi) + \bar{i}^f.$$


---
For a quarterly version of the standard Hansen [48] type economy of the United States, the parameters frequently used are $\beta = .99$, $\delta = .025$, $\theta = .36$, and $B = -2.5805$. Here we choose $\bar{g} = 1.03$ so that the target inflation rate is 3 percent. The rest of the stationary state values of the variables for this economy are given in Table 12.4.

### 12.2.3 Log-Linear Version and Its Solution

The log-linear version of the model is comprised of the set of 12 variables $\{\tilde{K}_{t+1}, \tilde{M}_t, \tilde{P}_t, \tilde{\bar{r}}_t, \tilde{w}_t, \tilde{Y}_t, \tilde{C}_t, \tilde{H}_t, \tilde{N}_t, \tilde{r}_t^r, \tilde{r}_t^f, \tilde{g}_t^M\}$ and the 12 equations

![Figure 12.10 showing a downward sloping curve with $\bar{r}^r$ on y-axis (ranging from 0.65 to 1.05) and $\bar{\pi}$ on x-axis (ranging from -0.1 to 0.6). The curve shows the relationship between stationary state target $\bar{\pi}$ and associated $\bar{r}^r$]

**FIGURE 12.10** Stationary state target $\bar{\pi}$ and associated $\bar{r}^r$

**Table 12.4** Values in stationary state for g=1.03

| Variable | $\bar{K}$ | $\bar{Y}$ | $\bar{C}$ | $\bar{H}$ | $\overline{M/P}$ |
|----------|-----------|-----------|-----------|-----------|------------------|
| Stationary state value | 12.481 | 1.217 | .905 | .328 | 1.703 |

| Variable | $\overline{N/P}$ | $\bar{r}$ | $\bar{w}$ | $\bar{r}^n$ | $\bar{r}^f$ |
|----------|------------------|-----------|-----------|-------------|-------------|
| Stationary state value | .749 | 0.0351 | 2.439 | 1.0404 | .9757 |

$$0 = \tilde{w}_t + \tilde{P}_t - E_t \tilde{P}_{t+1} - E_t \tilde{C}_{t+1},$$

$$0 = \tilde{w}_t - E_t \tilde{w}_{t+1} + \beta \bar{r} E_t \tilde{r}_{t+1},$$

$$0 = \tilde{r}_t^n - \tilde{w}_t + \tilde{C}_t,$$

$$0 = \tilde{C}\tilde{C}_t - \frac{\bar{M/P}}{\tilde{g}^M} \tilde{g}_t^f - \frac{ \bar{M/P} }{\tilde{g}^M} M_{t-1} + \bar{N/P}\tilde{N}_t + \bar{C}P_t,$$

$$0 = \bar{M/P} \tilde{M}_t + \left[\bar{r}^n \bar{N/P} - \bar{M/P}\right] \tilde{P}_t + \bar{K} \tilde{K}_{t+1} - \bar{w}\bar{H}(\tilde{w}_t + \tilde{H}_t)$$

$$- \bar{r}\bar{K} \tilde{r}_t - (\bar{r} + 1 - \delta)  \bar{K} \tilde{K}_t - \bar{r}^n \bar{N/P}  \tilde{N}_t - \bar{r}^n \bar{N/P} \tilde{r}_t^n$$

$$0 = \tilde{w}_t + \tilde{r}_t^f - \tilde{\lambda}_t - \theta \tilde{K}_t + \theta \tilde{H}_t,$$

$$0 = \tilde{r}_t - \tilde{\lambda}_t - (\theta - 1) \tilde{K}_t - (1 - \theta) \tilde{H}_t,$$

$$0 = \tilde{Y}_t - \tilde{\lambda}_t - \theta \tilde{K}_t - (1 - \theta) \tilde{H}_t,$$

$$0 = \tilde{r}_t^n + \tilde{N}_t - \tilde{P}_t - \tilde{r}_t^f - \tilde{w}_t - \tilde{H}_t,$$

$$0 = \bar{N/P} \tilde{N}_t + \bar{M/P} \left(1 - \frac{1}{\tilde{g}^M}\right) \tilde{M}_{t-1} - \bar{w} \bar{H}\tilde{P}_t$$

$$+ \bar{M/P} \tilde{g}^M - \bar{w}\bar{H}\tilde{w}_t - \bar{w}\bar{H}\tilde{H}_t$$

$$0 = \tilde{M}_t - \frac{1}{\tilde{g}^M} \tilde{g}_t^f - \tilde{g}_t^M - M_{t-1}$$

$$0 = a\bar{Y}\tilde{Y}_t + b\bar{g}^M \tilde{P}_t - b\bar{g}^M \tilde{P}_{t-1} - \bar{r}^f \tilde{r}_t^f \quad\quad\quad\quad\quad\quad\quad\quad (12.19)$$

In addition, the two stochastic technology variables, $\tilde{\lambda}_t$ and $\tilde{g}_t^f$, are determined by the equations

$$\tilde{\lambda}_t = \gamma \tilde{\lambda}_{t-1} + \varepsilon_t^{\lambda}$$

and

$$\tilde{g}_t^f = \pi^f \tilde{g}_{t-1}^f + \varepsilon_t^f.$$

Defining the set of state variables as $x_t = [\tilde{K}_{t+1}, \tilde{M}_t, \tilde{P}_t]'$, the set of jump variables as $y_t = [\tilde{r}_t, \tilde{w}_t, \tilde{Y}_t, \tilde{C}_t, \tilde{H}_t, \tilde{N}_t, \tilde{r}_t^n, \tilde{r}_t^f, \tilde{g}_t^M]'$, and the stochastic variable as $z_t = [\tilde{P}_t, \tilde{g}_t^f]'$, the system can be written as

$$0 = Ax_t + Bx_{t-1} + Cy_t + Dz_t,$$

$$0 = E_t [Fx_{t+1} + Gx_t + Hx_{t-1} + Jy_{t+1} + Ky_t + Lz_{t+1} + Mz_t],$$

$$z_{t+1} = Nz_t + \varepsilon_{t+1},$$

$$0 = Ax_t + Bx_{t-1} + Cy_t + Dz_t,$$

$$0 = E_t [Fx_{t+1} + Gx_t + Hx_{t-1} + Jy_{t+1} + Ky_t + Lz_{t+1} + Mz_t],$$

$$z_{t+1} = Nz_t + \varepsilon_{t+1},$$

where

$$A = \begin{bmatrix}
0 & 0 & 0 \\
0 & 0 & C \\
\overline{K} & \overline{M/P} & \bar{r}^n \overline{N/P}  - \overline{M/P}  \\
0 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & -1 \\
0 & 0 & -\overline{w}H \\
0 & 0 & b\bar{g}^M
\end{bmatrix},$$

$$B = \begin{bmatrix}
0 & 0 & 0 \\
0 & \frac{\overline{M/P} }{\bar{g}^M} & 0 \\
-(r + 1 + \delta)\overline{K} & 0 & 0 \\
-\theta & 0 & 0 \\
-(\theta - 1) & 0 & 0 \\
-\theta & 0 & 0 \\
0 & 0 & 0 \\
0 & \overline{M/P}(1 - \frac{1}{\bar{g}^M}) & 0 \\
0 & 0 & -b\bar{g}^M
\end{bmatrix},$$

$$C = \begin{bmatrix}
0 & 1 & 0 & -1 & 0 & 0 & -1 & 0 & 0 \\
0 & 0 & 0 & \bar{C} & 0 & \overline{N/P}  & 0 & 0 & 0 \\
-\overline{r}\overline{K} & -\overline{w}H & 0 & 0 & -\overline{w}H & -\bar{r}^n \overline{N/P}  & -\bar{r}^n \overline{N/P}  & 0 & 0 \\
0 & 1 & 0 & 0 & \theta & 0 & 0 & 1 & 0 \\
1 & 0 & 0 & 0 & -(1 + \theta) & 0 & 0 & 0 & 0 \\
0 & 0 & 1 & 0 & -(1 + \theta) & 0 & 0 & 0 & 0 \\
0 & -1 & 0 & 0 & -1 & 1 & 1 & -1 & 0 \\
0 & -\overline{w}\bar{H} & 0 & 0 & -\overline{w}\bar{H} & \overline{N/P}  & 0 & 0 & \overline{M/P}  \\
0 & 0 & a\overline{Y} & 0 & 0 & 0 & 0 & -\overline{r} ^{f} & 0
\end{bmatrix}.$$

$$D = \begin{bmatrix}
0 & 0 \\
0 & -\frac{\overline{M/P} }{\bar{g}^{M}} \\
0 & 0 \\
-1 & 0 \\
-1 & 0 \\
-1 & 0 \\
0 & 0 \\
0 & 0 \\
0 & 0
\end{bmatrix},$$

$$F = \begin{bmatrix}
0 & 0 & -1 \\
0 & 0 & 0 \\
0 & 0 & 0
\end{bmatrix},$$

$$G = \begin{bmatrix}
0 & 0 & 1 \\
0 & 0 & 0 \\
0 & 1 & 0
\end{bmatrix},$$

$$H = \begin{bmatrix}
0 & 0 & 0 \\
0 & 0 & 0 \\
0 & -1 & 0
\end{bmatrix},$$

$$J = \begin{bmatrix}
0 & 0 & 0 & -1 & 0 & 0 & 0 & 0 & 0 \\
\beta \bar{r} & -1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0
\end{bmatrix},$$

$$K = \begin{bmatrix}
0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & -1
\end{bmatrix},$$

$$L = \begin{bmatrix}
0 & 0 \\
0 & 0 \\
0 & 0
\end{bmatrix},$$

$$M = \begin{bmatrix}
0 & 0 \\
0 & 0 \\
0 & -\frac{1}{\bar{g}^{M}}
\end{bmatrix}.$$

and

$$N = \begin{bmatrix} \gamma & 0 \\ 0 & \pi^f \end{bmatrix}.$$

We look for policy matrices that can be expressed in the form

$$x_{t+1} = Px_t + Qz_t$$

and

$$y_t = Rx_t + Sz_t,$$

using the solution techniques of Chapter 6. Using the values suggested above of $a = .5$ and $b = .5$, the four matrices of the policy functions are

$$P = \begin{bmatrix} 0.9588 & -0.0576 & 0.0576 \\ 0.0560 & 0.7025 & 0.2975 \\ -0.2667 & 0.7219 & 0.2781 \end{bmatrix},$$

$$Q = \begin{bmatrix} 0.1367 & -0.0501 \\ -0.2800 & 0.8878 \\ -0.9570 & 1.4391 \end{bmatrix},$$

$$R = \begin{bmatrix} -0.8450 & -0.2949 & 0.2949 \\ 0.5194 & -0.0312 & 0.0312 \\ 0.1550 & -0.2949 & 0.2949 \\ 0.4317 & 0.3975 & -0.3975 \\ -0.3203 & -0.4608 & 0.4608 \\ -0.1995 & 0.8557 & 0.1443 \\ 0.0877 & -0.4287 & 0.4287 \\ -0.0441 & 0.1971 & -0.1971 \\ 0.0560 & -0.2975 & 0.2975 \end{bmatrix},$$


and

$$S = \begin{bmatrix}
1.6184 & -0.6316 \\
0.1480 & -0.0104 \\
1.6184 & -0.6316 \\
0.2913 & -0.1579 \\
0.9663 & -0.9869 \\
0.8047 & 0.6601 \\
-0.1433 & 0.1475 \\
0.5041 & 0.3657 \\
-0.2800 & -0.0831
\end{bmatrix}.$$
