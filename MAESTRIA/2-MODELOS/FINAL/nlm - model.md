Here is the model, drawing on the various sources provided, which combines elements of a small open economy with a financial sector, working capital, a cash-in-advance constraint, and a central bank following a Taylor rule.

Model Description

This model describes a small open economy where households, firms, financial intermediaries (banks), and a central bank interact. There is a single final good produced domestically. Households hold physical capital, deposits in domestic banks, and foreign bonds. Firms use capital and labor to produce output, borrowing working capital from banks to finance their wage bill. Banks are competitive, taking deposits from households and lending to firms. The central bank manages monetary policy through a Taylor rule, while the foreign interest rate is subject to a country risk premium. The economy is subject to fiscal money shocks, technology shocks, and foreign price level shocks.

Parameters (Standard Values as in the Sources)

- $\beta$: Discount factor (e.g., 0.99)
- $\delta$: Depreciation rate on capital (e.g., 0.025)
- $\theta$: Capital share in the Cobb-Douglas production function (e.g., 0.36)
- $A$: Parameter for the utility of leisure in the indivisible labor formulation (e.g., 1.72)
- $h_0$: Fixed hours of indivisible labor a working household supplies (e.g., 0.583).
    - This implies $B = \frac{A \ln(1-h_0)}{h_0}$ (e.g., -2.5805).
- $\kappa$: Capital adjustment cost parameter (a small positive value, not explicitly given a standard value in sources for this combined model type, but introduced to address indeterminacy in open economy models).
- $a_T$: Taylor rule coefficient for output gap (specified as 0.5).
- $b_T$: Taylor rule coefficient for inflation gap (specified as 0.5).
- $\bar{Y}$: Stationary state output (used in Taylor rule).
- $\bar{\pi}$: Stationary state gross inflation rate (used in Taylor rule).
- $\bar{r}^f$: Stationary state borrowing interest rate for firms (used in Taylor rule).
- $a_{CR}$: Country risk premium parameter (e.g., 0.01).
- $r^*$: Base foreign interest rate (e.g., 0.03 or 0.00).
- $\pi^f$: Persistence parameter for fiscal money growth shocks (e.g., 0 for i.i.d. shocks, or 0.95 for persistence).
- $\gamma$: Persistence parameter for technology shocks (e.g., 0.95).
- $\gamma^*$: Persistence parameter for foreign price level shocks (e.g., 0.95).

Variables

- $C_t$: Aggregate real consumption
- $H_t$: Aggregate labor supply
- $K_{t+1}$: Aggregate capital stock at the beginning of period $t+1$
- $M_t$: Aggregate nominal money supply at the end of period $t$
- $P_t$: Domestic price level in period $t$
- $N_t$: Aggregate nominal deposits in domestic financial intermediaries
- $B_t^f$: Aggregate nominal foreign bonds held by domestic residents (denominated in foreign currency)
- $W_t$: Aggregate real wage rate
- $r_t$: Aggregate real rental rate on capital
- $r_t^n$: Gross nominal interest rate paid by financial intermediaries to depositors
- $r_t^f$: Gross interest rate paid by firms on working capital loans from banks
- $r_t^{f,*}$: Foreign real interest rate on international bonds
- $g_t^M$: Gross money growth rate from central bank monetary policy
- $e_t$: Nominal exchange rate (domestic currency per unit of foreign currency)
- $X_t$: Aggregate real net exports
- $Y_t$: Aggregate real output
- $\pi_t$: Gross domestic inflation rate, $P_t/P_{t-1}$
- $g_t^f$: Gross money growth rate from fiscal policy (exogenous shock)
- $\lambda_t$: Technology level (exogenous shock)
- $P_t^*$: Foreign price level (exogenous shock)

---

Model Equations

Assuming identical households and firms, individual decision problems can be aggregated. Logarithmic utility and Cobb-Douglas production functions are used as standard in the sources.

1. Households

- Utility Function: Households maximize the expected discounted sum of utility from consumption and leisure (or disutility of labor). $$ \max E_t \sum_{j=0}^{\infty} \beta^j \left[ \ln C_{t+j} + B H_{t+j} \right] $$ where $B = \frac{A \ln(1-h_0)}{h_0}$ captures the disutility of indivisible labor.
    
- Cash-in-Advance (CIA) Constraint: Consumption expenditures ($P_t C_t$) must be covered by money held from the previous period ($M_{t-1}$), plus any fiscal transfers ($(g_t^f - 1)M_{t-1}$), minus deposits made into the banking system ($N_t$). $$ P_t C_t = g_t^f M_{t-1} - N_t $$
    
- Real Budget Constraint: Funds available for the next period (new capital $K_{t+1}$, new money holdings $M_t/P_t$, new foreign bond holdings $e_t B_t^f/P_t$) and capital adjustment costs ($\frac{\kappa}{2}(K_{t+1}-K_t)^2$) must equal current income. Current income includes real wages ($W_t H_t$), real rental income on capital ($r_t K_t$), undepreciated capital ($(1-\delta)K_t$), real interest income from domestic bank deposits ($\frac{r_t^n N_t}{P_t}$), and real income from foreign bonds ($\frac{e_t (1+r_{t-1}^{f*})B_{t-1}^f}{P_t}$). Note that the initial money balances $g_t^f M_{t-1}$ are entirely allocated to consumption or deposits as per the CIA, so they are not treated as income in this flow budget constraint. $$ K_{t+1} + \frac{M_t}{P_t} + \frac{e_t B_t^f}{P_t} + \frac{\kappa}{2} (K_{t+1} - K_t)^2 = W_t H_t + r_t K_t + (1-\delta) K_t + \frac{r_t^n N_t}{P_t} + \frac{e_t (1+r_{t-1}^{f*})B_{t-1}^f}{P_t} $$
    
- Household First-Order Conditions (FOCs): These describe the optimal choices of households.
    
    - Labor-Consumption Trade-off: $$ \frac{B}{W_t} = -\beta E_t \frac{P_t}{P_{t+1}C_{t+1}} $$
    - Capital Accumulation (Euler Equation): $$ \frac{1}{W_t} = \beta E_t \frac{r_{t+1}+1-\delta+\kappa(K_{t+2}-K_{t+1}) - \kappa(K_{t+1}-K_t)}{W_{t+1}} $$ (The capital adjustment costs $\kappa(K_{t+2}-K_{t+1}) - \kappa(K_{t+1}-K_t)$ are included based on general recursive methods for capital with adjustment costs).
    - Domestic Deposit-Consumption Trade-off: $$ r_t^n = \frac{1}{E_t \frac{\beta P_t C_t}{P_{t+1}C_{t+1}}} $$
    - Foreign Bond Holdings: $$ \frac{e_t}{P_t C_t} = \beta E_t \left[\frac{e_{t+1}(1 + r_t^{f,*})}{P_{t+1}C_{t+1}}\right] $$
- Transversality Condition: Prevents households from accumulating infinite debt. $$ \lim_{t\to\infty} \frac{B_t^f}{(1+r_f^{f,*})^t} = 0 $$
    

2. Firms

- Production Function: Firms use capital ($K_t$) and labor ($H_t$) to produce output ($Y_t$). $$ Y_t = \lambda_t K_t^\theta H_t^{1-\theta} $$
    
- Factor Market Conditions: Firms are competitive and pay factors their marginal products. Working capital is needed to finance wages.
    
    - Labor Demand: The real wage paid to labor (adjusted for working capital costs) equals the marginal product of labor. $$ r_t^f W_t = (1-\theta) \lambda_t K_t^\theta H_t^{-\theta} $$
    - Capital Demand: The real rental rate on capital equals the marginal product of capital. $$ r_t = \theta \lambda_t K_t^{\theta-1} H_t^{1-\theta} $$

3. Financial Intermediaries (Banks)

- Zero Profit Condition: Banks are competitive and make zero profits. Their earnings from lending to firms equal their payments to depositors. $$ r_t^f (N_t + (g_t^M - 1)M_{t-1}) = r_t^n N_t $$
    
- Credit Market Clearing: The total funds available to financial intermediaries (deposits from households plus central bank injections) are lent to firms to cover their wage bill. $$ N_t + (g_t^M - 1)M_{t-1} = P_t W_t H_t $$
    

4. Central Bank / Monetary Policy

- Taylor Rule: The central bank sets the interest rate firms pay on working capital ($r_t^f$) based on deviations of output ($Y_t$) and inflation ($\pi_t = P_t/P_{t-1}$) from their stationary state values ($\bar{Y}$, $\bar{\pi}$, $\bar{r}^f$). The problem specifies $a_T = 0.5$ and $b_T = 0.5$ using current output and inflation. $$ r_t^f = a_T(Y_t - \bar{Y}) + b_T(\pi_t - \bar{\pi}) + \bar{r}^f $$
    
- Central Bank Money Growth: The central bank adjusts its money injections/withdrawals ($g_t^M$) to achieve the target interest rate ($r_t^f$) determined by the Taylor rule. $$ g_t^M = \frac{(r_t^n - r_t^f)}{r_t^f} \frac{N_t}{M_{t-1}} + 1 $$
    
- Total Money Supply Growth: The aggregate money supply ($M_t$) evolves based on fiscal policy transfers ($g_t^f$) and central bank actions ($g_t^M$). $$ M_t = (g_t^f + g_t^M - 1) M_{t-1} $$
    

5. Open Economy Conditions

- Country Risk Rule: The foreign real interest rate ($r_t^{f*}$) charged or received by the country is an increasing function of its total real foreign debt (or decreasing with real foreign savings). $$ r_t^{f*} = r^* - a_{CR} \frac{B_t^f}{P_t^*} $$
    
- Balance of Payments (BOP): The change in nominal foreign bonds ($B_t^f - (1+r_{t-1}^{f*})B_{t-1}^f$) is equal to real net exports ($X_t$) valued in foreign currency ($P_t^* X_t$). $$ B_t^f - (1 + r_{t-1}^{f*}) B_{t-1}^f = P_t^* X_t $$
    
- Purchasing Power Parity (PPP): The exchange rate ($e_t$) is determined by the ratio of domestic ($P_t$) and foreign ($P_t^*$) price levels. $$ e_t = \frac{P_t}{P_t^*} $$
    

6. Aggregate Resource Constraint

- Goods Market Clearing: Total output ($Y_t$) is allocated to domestic consumption ($C_t$), net domestic capital accumulation ($K_{t+1} - (1-\delta)K_t$), real net exports ($X_t$), and capital adjustment costs ($\frac{\kappa}{2}(K_{t+1}-K_t)^2$). $$ Y_t = C_t + K_{t+1} - (1-\delta)K_t + X_t + \frac{\kappa}{2} (K_{t+1} - K_t)^2 $$

7. Stochastic Processes

- Fiscal Money Growth Shock: ($g_t^f$) This serves as the independent monetary shock when the central bank follows a rule. $$ \ln g_t^f = \pi^f \ln g_{t-1}^f + \varepsilon_t^f $$
    
- Technology Shock: ($\lambda_t$) $$ \ln \lambda_t = \gamma \ln \lambda_{t-1} + \varepsilon_t^\lambda $$
    
- Foreign Price Level Shock: ($P_t^*$) This is the specific shock for this problem. $$ P_t^* = 1 - \gamma^* + \gamma^* P_{t-1}^* + \varepsilon_t^* $$ In the stationary state, $\bar{P}^* = 1$.