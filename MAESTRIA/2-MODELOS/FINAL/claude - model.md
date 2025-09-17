## **I. ENVIRONMENT**

### **General Setup:**

- Small open economy producing one final good
- Foreign bonds $B_t$ available (denominated in foreign currency)
- Exchange rate $e_t$ (domestic currency per unit of foreign currency)
- Foreign price level $P_t^*$ follows stochastic process
- Domestic price level $P_t$
- Country risk premium on foreign interest rate
- Purchasing power parity: $e_t = \frac{P_t}{P_t^*}$

### **Country Risk Rule:**

$$r_t^f = r^* - a\frac{B_t}{P_t^*}$$

where $r_t^f$ is the foreign interest rate, $r^*$ is base international rate, $a > 0$ is sensitivity parameter, and $B_t$ is foreign bonds (negative means debt).

### **Foreign Price Shock (your assigned shock):**

$$P_t^* = (1-\gamma^*)P_{ss}^* + \gamma^* P_{t-1}^* + \varepsilon_t^*$$

where $\varepsilon_t^*$ is the positive shock to foreign price level.

## **II. HOUSEHOLDS**

### **Household Problem:**

A unit mass of identical households maximizes:

$$E_t \sum_{j=0}^{\infty} \beta^j \left[ \ln c_{t+j}^i + Bh_{t+j}^i \right]$$

where $B = \frac{A\ln(1-h_0)}{h_0}$ with indivisible labor.

### **Budget Constraint:**

$$c_t^i + k_{t+1}^i + \frac{m_t^i}{P_t} + \frac{e_t b_t^i}{P_t} + \frac{N_t^i}{P_t} = w_t h_t^i + r_t k_t^i + (1-\delta)k_t^i + \frac{e_t(1+r_{t-1}^f)b_{t-1}^i}{P_t} + \frac{m_{t-1}^i}{P_t} + \frac{r_t^N N_{t-1}^i}{P_t}$$

where:

- $c_t^i$ = consumption
- $k_{t+1}^i$ = capital for next period
- $m_t^i$ = money holdings
- $b_t^i$ = foreign bonds (in foreign currency)
- $N_t^i$ = deposits in domestic banks
- $w_t$ = real wage
- $r_t$ = real return on capital
- $\delta$ = depreciation rate
- $r_t^N$ = gross interest rate on deposits

### **Cash-in-Advance Constraint:**

$$P_t c_t^i \leq m_{t-1}^i - N_t^i$$

Money from previous period must cover consumption and deposits to banks.

### **Household First-Order Conditions:**

**FOC w.r.t. $c_t^i$:** $$\frac{1}{c_t^i} = \lambda_t + \mu_t P_t$$

**FOC w.r.t. $h_t^i$:** $$B = \lambda_t w_t$$

**FOC w.r.t. $k_{t+1}^i$:** $$\lambda_t = \beta E_t \lambda_{t+1}[r_{t+1} + (1-\delta)]$$

**FOC w.r.t. $m_t^i$:** $$\frac{\lambda_t}{P_t} = \beta E_t \left[\frac{\lambda_{t+1}}{P_{t+1}} + \frac{\mu_{t+1}}{P_{t+1}}\right]$$

**FOC w.r.t. $b_t^i$:** $$\frac{\lambda_t e_t}{P_t} = \beta E_t \left[\frac{\lambda_{t+1} e_{t+1}(1+r_t^f)}{P_{t+1}}\right]$$

**FOC w.r.t. $N_t^i$:** $$\frac{\lambda_t}{P_t} + \frac{\mu_t}{P_t} = \beta E_t \left[\frac{\lambda_{t+1} r_t^N}{P_{t+1}}\right]$$

where $\lambda_t$ is Lagrange multiplier on budget constraint and $\mu_t$ is multiplier on CIA constraint.

## **III. FIRMS**

### **Firm Problem:**

Competitive firms produce using Cobb-Douglas technology: $$Y_t = \lambda_t K_t^{\theta} H_t^{1-\theta}$$

where $\lambda_t$ follows: $\ln \lambda_t = \gamma \ln \lambda_{t-1} + \varepsilon_t^{\lambda}$

### **Working Capital Constraint:**

Firms must borrow to pay wage bill: $$P_t w_t H_t = L_t^f$$

where $L_t^f$ is loan from banks at gross interest rate $r_t^f$.

### **Firm's Budget Constraint:**

$$P_t Y_t = r_t^f L_t^f + P_t r_t K_t$$

Substituting working capital constraint: $$P_t Y_t = r_t^f P_t w_t H_t + P_t r_t K_t$$

### **Firm First-Order Conditions:**

Since firms are competitive and markets are perfect:

**FOC w.r.t. $H_t$:** $$r_t^f w_t = (1-\theta)\lambda_t K_t^{\theta} H_t^{-\theta} = \frac{(1-\theta)Y_t}{H_t}$$

**FOC w.r.t. $K_t$:** $$r_t = \theta \lambda_t K_t^{\theta-1} H_t^{1-\theta} = \frac{\theta Y_t}{K_t}$$

## **IV. BANKS (FINANCIAL INTERMEDIARIES)**

### **Bank's Problem:**

Competitive banks with zero profits take deposits from households and lend to firms.

### **Bank's Budget Constraint (Zero Profit Condition):**

$$r_t^N N_t + (g_t^M - 1)M_{t-1} = r_t^f L_t$$

where $(g_t^M - 1)M_{t-1}$ is monetary injection from central bank to banks.

### **Equilibrium Condition for Financial Market:**

$$N_t + (g_t^M - 1)M_{t-1} = P_t w_t H_t$$

Total funds available to banks equals total working capital demand.

## **V. CENTRAL BANK**

### **Taylor Rule:**

$$r_t^f = a(Y_t - \bar{Y}) + b(\pi_t - \bar{\pi}) + \bar{r}^f$$

where:

- $a = 0.5$ (output gap coefficient)
- $b = 0.5$ (inflation gap coefficient)
- $\pi_t = \frac{P_t - P_{t-1}}{P_{t-1}}$ (inflation rate)
- $\bar{Y}$, $\bar{\pi}$, $\bar{r}^f$ are steady-state values

### **Money Supply Adjustment:**

Central bank adjusts money growth $g_t^M$ to achieve target interest rate from Taylor rule.

## **VI. MARKET CLEARING CONDITIONS**

### **Goods Market:**

$$Y_t = C_t + K_{t+1} - (1-\delta)K_t + X_t$$

where $X_t$ is net exports.

### **Balance of Payments:**

$$B_t - (1+r_{t-1}^f)B_{t-1} = P_t^* X_t$$

### **Money Market:**

$$M_t = m_t$$

### **Labor Market:**

$$H_t = h_t$$

### **Capital Market:**

$$K_t = k_t$$

## **VII. AGGREGATE RELATIONSHIPS**

Combining consumption and labor FOCs: $$B = -\frac{w_t}{c_t}$$
Euler Equation for Capital:

$$\frac{1}{\beta} = E_t \left[\frac{c_t}{c_{t+1}}(r_{t+1} + 1 - \delta)\right]$$

Euler Equation for Foreign Bonds:

$$\frac{1}{\beta} = E_t \left[\frac{c_t}{c_{t+1}} \frac{P_t}{P_{t+1}} \frac{e_{t+1}}{e_t}(1+r_t^f)\right]$$

Using PPP ($e_t = P_t/P_t^*$): $$\frac{1}{\beta} = E_t \left[\frac{c_t}{c_{t+1}} \frac{P_t^*}{P_{t+1}^*}(1+r^* - a\frac{B_t}{P_t^*})\right]$$

Interest Rate on Deposits:

From household FOCs for money and deposits: $$r_t^N = 1 + \frac{1}{\beta E_t\left[\frac{P_t c_t}{P_{t+1} c_{t+1}}\right]}$$

## **VIII. COMPLETE SYSTEM OF EQUATIONS**

The model consists of:

1. **Production:** $Y_t = \lambda_t K_t^{\theta} H_t^{1-\theta}$
    
2. **Labor Demand:** $r_t^f w_t = \frac{(1-\theta)Y_t}{H_t}$
    
3. **Capital Demand:** $r_t = \frac{\theta Y_t}{K_t}$
    
4. **Labor Supply:** $B = -\frac{w_t}{c_t}$
    
5. **Euler (Capital):** $\frac{1}{\beta} = E_t\left[\frac{c_t}{c_{t+1}}(r_{t+1} + 1-\delta)\right]$
    
6. **Euler (Bonds):** $\frac{1}{\beta} = E_t\left[\frac{c_t}{c_{t+1}}\frac{P_t^*}{P_{t+1}^*}(1+r^* - a\frac{B_t}{P_t^*})\right]$
    
7. **Resource Constraint:** $Y_t = C_t + K_{t+1} - (1-\delta)K_t + X_t$
    
8. **Balance of Payments:** $B_t - (1+r_{t-1}^f)B_{t-1} = P_t^* X_t$
    
9. **CIA Constraint:** $P_t C_t = M_{t-1} - N_t$
    
10. **Working Capital:** $N_t + (g_t^M - 1)M_{t-1} = P_t w_t H_t$
    
11. **Taylor Rule:** $r_t^f = 0.5(Y_t - \bar{Y}) + 0.5(\pi_t - \bar{\pi}) + \bar{r}^f$
    
12. **PPP:** $e_t = \frac{P_t}{P_t^*}$
    
13. **Foreign Price Process:** $P_t^* = (1-\gamma^*)P_{ss}^* + \gamma^* P_{t-1}^* + \varepsilon_t^*$
    
14. **Technology Process:** $\ln \lambda_t = \gamma \ln \lambda_{t-1} + \varepsilon_t^{\lambda}$
    
15. **Country Risk:** $r_t^f = r^* - a\frac{B_t}{P_t^*}$
    

This complete system of $15$ equations determines the $15$ endogenous variables: $\{Y_t, C_t, K_{t+1}, H_t, B_t, w_t, r_t, r_t^f, r_t^N, P_t, e_t, M_t, N_t, X_t, \pi_t\}$ given the exogenous shocks ${\varepsilon_t^*, \varepsilon_t^{\lambda}}$ and predetermined variables.

## STEADY STATES

The model consists of:


$$\bar{Y} = \bar{\lambda} \bar{K}^{\theta} \bar{H}^{1-\theta}$$

$$\bar{r}^f \bar{w} = \frac{(1-\theta)\bar{Y}}{\bar{H}}$$

$$\bar{r} = \frac{\theta \bar{Y}}{\bar{K}}$$
$$\bar{B} = -\frac{\bar{w}}{\bar{c}}$$

$$\frac{1}{\beta} = \frac{\bar{c}}{\bar{c}}(\bar{r} + 1-\delta)$$

$$\frac{1}{\beta} = \frac{\bar{c}}{\bar{c}}\frac{\bar{P}^*}{\bar{P}^*}(1+r^* - a\frac{\bar{B}}{\bar{P}^*})$$

$$\bar{Y} = \bar{C} + \bar{K} - (1-\delta)\bar{K} + \bar{X}$$

$$\bar{B} - (1+\bar{r}^f)\bar{B} = \bar{P}^* \bar{X}$$

$$\bar{P}\,\bar{C} = \bar{M} - \bar{N}$$

$$\bar{N} + (g^M - 1)\bar{M} = \bar{P}\,\bar{w}\,\bar{H}$$

$$\bar{r}^f = 0.5(\bar{Y} - \bar{Y}) + 0.5(\bar{\pi} - \bar{\pi}) + \bar{r}^f$$

$$\bar{e} = \frac{\bar{P}}{\bar{P}^*}$$

$$\bar{P}^* = (1-\gamma^*)\bar{P}_{ss}^* + \gamma^* \bar{P}^* + \bar{\varepsilon}^*$$

$$\ln \bar{\lambda} = \gamma \ln \bar{\lambda} + \bar{\varepsilon}^{\lambda}$$

$$\bar{r}^f = r^* - a\frac{\bar{B}}{\bar{P}^*}$$

## LOG LINEAR SYSTEM

The log linear version of the model equations in terms of $\tilde{X}_{t}=\ln X_{t}-\ln \tilde{X}$ and using $X_{t}=\bar{X}e^{\tilde{X}} \approx\bar{X} (1+\tilde{X}_{t})$



1. **Production:** $Y_t = \lambda_t K_t^{\theta} H_t^{1-\theta}$
$$
\bar{Y}e^{\tilde{Y}_{t}}=(\bar{K}e^{\tilde{K}_{t}})^{\theta} (\bar{H}e^{\tilde{H}_{t}})^{1-\theta}
$$
2. **Labor Demand:** $r_t^f w_t = \frac{(1-\theta)Y_t}{H_t}$
    
3. **Capital Demand:** $r_t = \frac{\theta Y_t}{K_t}$
    
4. **Labor Supply:** $B = -\frac{w_t}{c_t}$
    
5. **Euler (Capital):** $\frac{1}{\beta} = E_t\left[\frac{c_t}{c_{t+1}}(r_{t+1} + 1-\delta)\right]$
    
6. **Euler (Bonds):** $\frac{1}{\beta} = E_t\left[\frac{c_t}{c_{t+1}}\frac{P_t^*}{P_{t+1}^*}(1+r^* - a\frac{B_t}{P_t^*})\right]$
    
7. **Resource Constraint:** $Y_t = C_t + K_{t+1} - (1-\delta)K_t + X_t$
    
8. **Balance of Payments:** $B_t - (1+r_{t-1}^f)B_{t-1} = P_t^* X_t$
    
9. **CIA Constraint:** $P_t C_t = M_{t-1} - N_t$
    
10. **Working Capital:** $N_t + (g_t^M - 1)M_{t-1} = P_t w_t H_t$
    
11. **Taylor Rule:** $r_t^f = 0.5(Y_t - \bar{Y}) + 0.5(\pi_t - \bar{\pi}) + \bar{r}^f$
    
12. **PPP:** $e_t = \frac{P_t}{P_t^*}$
    
13. **Foreign Price Process:** $P_t^* = (1-\gamma^*)P_{ss}^* + \gamma^* P_{t-1}^* + \varepsilon_t^*$
    
14. **Technology Process:** $\ln \lambda_t = \gamma \ln \lambda_{t-1} + \varepsilon_t^{\lambda}$
    
15. **Country Risk:** $r_t^f = r^* - a\frac{B_t}{P_t^*}$
    
