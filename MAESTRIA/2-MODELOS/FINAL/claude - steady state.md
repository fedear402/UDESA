
I'll set up the steady-state system and solve for each variable in terms of parameters. Let me first search for more specific information about steady states and parameter values in your materials.Based on your book and class notes, I'll now set up the steady-state system and solve for each variable rigorously. Let me be detailed and show all mathematical steps.

## **STEADY-STATE SYSTEM**

In steady state, all real variables are constant, shocks equal their mean values ($\lambda = 1$, $\varepsilon^* = 0$, $g^M = \bar{g}$), and time subscripts drop. Denote steady-state values with bars.

### **I. From Household Optimization**

**1. Labor Supply (from FOCs for consumption and labor):** $$B = -\frac{\bar{w}}{\bar{C}}$$

Since $$B = \frac{A\ln(1-h_0)}{h_0}$$ with indivisible labor, and given the parameters we'll use, $$B = -2.5805$$.

**2. Euler Equation for Capital:** 
$$\frac{1}{\beta} = \bar{r} + (1-\delta)$$

Solving for $\bar{r}$: $$\bar{r} = \frac{1}{\beta} - (1-\delta) = \frac{1}{\beta} - 1 + \delta$$

**3. Euler Equation for Foreign Bonds:** $$\frac{1}{\beta} = (1 + \bar{r}^f)$$

where the country risk rule gives: $$\bar{r}^f = r^* - a\frac{\bar{B}}{\bar{P}^*}$$

Combining these: $$\frac{1}{\beta} = 1 + r^* - a\frac{\bar{B}}{\bar{P}^*}$$

Solving for $$\bar{B}$$: $$\frac{1}{\beta} - 1 = r^* - a\frac{\bar{B}}{\bar{P}^*}$$ $$a\frac{\bar{B}}{\bar{P}^*} = r^* - \left(\frac{1}{\beta} - 1\right) = r^* - \frac{1-\beta}{\beta}$$ $$\bar{B} = \frac{\bar{P}^*}{a}\left(r^* - \frac{1-\beta}{\beta}\right)$$

Since $$\bar{P}^* = 1$$ in steady state (normalizing): 
$$\bar{B} = \frac{1}{a}\left(r^* + 1 - \frac{1}{\beta}\right)$$

### **II. From Firms' Optimization**

**4. Capital Demand:** $$\bar{r} = \theta\bar{\lambda}\bar{K}^{\theta-1}\bar{H}^{1-\theta} = \theta\frac{\bar{Y}}{\bar{K}}$$

Since $$\bar{\lambda} = 1$$: $$\bar{K} = \bar{H}\left(\frac{\theta}{\bar{r}}\right)^{\frac{1}{1-\theta}}$$

**5. Labor Demand with Working Capital:** $$\bar{r}^f\bar{w} = (1-\theta)\frac{\bar{Y}}{\bar{H}}$$

where $\bar{r}^f$ is the interest rate on working capital loans.

### **III. From Banks' Zero-Profit Condition**

**6. Interest Rate on Working Capital:** Since banks are competitive with zero profits and the central bank follows Taylor rule in steady state: $$\bar{r}^f = \bar{r}^{Taylor} = \bar{r}^f$$

In steady state, Taylor rule gives: $$\bar{r}^f = 0.5(\bar{Y} - \bar{Y}) + 0.5(\bar{\pi} - \bar{\pi}) + \bar{r}^f = \bar{r}^f$$

### **IV. From Market Clearing**

**7. Resource Constraint:** $$\bar{Y} = \bar{C} + \bar{K}_{+1} - (1-\delta)\bar{K} + \bar{X}$$

In steady state, $$\bar{K}_{+1} = \bar{K}$$, so: $$\bar{Y} = \bar{C} + \delta\bar{K} + \bar{X}$$

**8. Balance of Payments:** 
$$\bar{B} - (1+\bar{r}^f)\bar{B} = \bar{P}^*\bar{X}$$ $$-\bar{r}^f\bar{B} = \bar{P}^*\bar{X}$$ $$\bar{X} = -\frac{\bar{r}^f\bar{B}}{\bar{P}^*}$$

### **V. From Money Market**

**9. Cash-in-Advance:** $$\bar{P}\bar{C} = \bar{M} - \bar{N}$$

**10. Working Capital Equilibrium:** $$\bar{N} = \bar{P}\bar{w}\bar{H}$$

In steady state with money growth $$\bar{g}$$: $$\bar{\pi} = \bar{g}$$ (steady-state inflation equals money growth)

## **SOLVING THE SYSTEM**

### **Step 1: Solve for $\bar{r}$**

$$\bar{r} = \frac{1}{\beta} - 1 + \delta = \frac{1}{0.99} - 1 + 0.025 = 0.0351$$

### **Step 2: Solve for $\bar{w}$**

From competitive factor markets: $$\frac{\bar{w}}{\bar{r}^f} = \frac{(1-\theta)}{\theta}\frac{\bar{K}}{\bar{H}}$$

Using $$\bar{K} = \bar{H}\left(\frac{\theta}{\bar{r}}\right)^{\frac{1}{1-\theta}}$$: $$\bar{w} = \bar{r}^f(1-\theta)\left(\frac{\theta}{\bar{r}}\right)^{\frac{\theta}{1-\theta}}$$

With $$\bar{r}^f = \frac{1}{\beta} - 1 = 0.0101$$: $$\bar{w} = 1.0101 \times 0.64 \times \left(\frac{0.36}{0.0351}\right)^{\frac{0.36}{0.64}}$$ $$\bar{w} = 1.0101 \times 0.64 \times (10.256)^{0.5625} = 2.3706$$

### **Step 3: Solve for $$\bar{C}$$**

$$\bar{C} = -\frac{\bar{w}}{B} = -\frac{2.3706}{-2.5805} = 0.9186$$

### **Step 4: Solve for $$\bar{B}$$ (foreign bonds)**

With $$a = 0.01$$ and $$r^* = 0.03$$: $$\bar{B} = \frac{1}{0.01}\left(0.03 + 1 - \frac{1}{0.99}\right) = 100(0.03 - 0.0101) = 1.99$$

With $$r^* = 0$$: $$\bar{B} = \frac{1}{0.01}\left(0 + 1 - \frac{1}{0.99}\right) = 100(-0.0101) = -1.01$$

### **Step 5: Solve for $$\bar{X}$$ (net exports)**

$$\bar{X} = -\bar{r}^f\bar{B} = -0.0101 \times 1.99 = -0.0201$$ (for $$r^* = 0.03$$) $$\bar{X} = -0.0101 \times (-1.01) = 0.0102$$ (for $$r^* = 0$$)

### **Step 6: Solve for $$\bar{K}$$ and $$\bar{H}$$**

From resource constraint and other conditions: $$\bar{Y} = \bar{C} + \delta\bar{K} + \bar{X}$$

Using production function $$\bar{Y} = \bar{K}^{\theta}\bar{H}^{1-\theta}$$ and $$\bar{H} = \frac{(1-\theta)\bar{r}}{\theta\bar{w}}\bar{K}$$:

$$\bar{K}^{\theta}\left(\frac{(1-\theta)\bar{r}}{\theta\bar{w}}\bar{K}\right)^{1-\theta} = \bar{C} + \delta\bar{K} + \bar{X}$$

Let $$\Omega = \frac{(1-\theta)\bar{r}}{\theta\bar{w}} = \frac{0.64 \times 0.0351}{0.36 \times 2.3706} = 0.0263$$

$$\bar{K}^{\theta}\Omega^{1-\theta}\bar{K}^{1-\theta} = \bar{C} + \delta\bar{K} + \bar{X}$$ $$\Omega^{1-\theta}\bar{K} = \bar{C} + \delta\bar{K} + \bar{X}$$ $$\bar{K}(\Omega^{1-\theta} - \delta) = \bar{C} + \bar{X}$$

For $$r^* = 0.03$$: $$\bar{K} = \frac{0.9186 - 0.0201}{0.0263^{0.64} - 0.025} = \frac{0.8985}{0.0734} = 12.39$$ $$\bar{H} = 0.0263 \times 12.39 = 0.326$$

For $$r^* = 0$$: $$\bar{K} = \frac{0.9186 + 0.0102}{0.0734} = 12.81$$ $$\bar{H} = 0.0263 \times 12.81 = 0.337$$

### **Step 7: Solve for $$\bar{Y}$$**

$$\bar{Y} = \bar{K}^{0.36}\bar{H}^{0.64}$$

For $$r^* = 0.03$$: $$\bar{Y} = 12.39^{0.36} \times 0.326^{0.64} = 1.208$$ For $$r^* = 0$$: $$\bar{Y} = 12.81^{0.36} \times 0.337^{0.64} = 1.249$$

## **PARAMETER VALUES FROM YOUR MATERIALS**

Based on the book and slides, the standard parameter values used in class are:

**Deep Parameters (Quarterly Calibration):**

- $$\beta = 0.99$$ (discount factor)
- $$\delta = 0.025$$ (depreciation rate)
- $$\theta = 0.36$$ (capital share in production)
- $$A = 1.72$$ (utility parameter for leisure)
- $$h_0 = 0.583$$ (hours worked if employed, indivisible labor)
- $$B = -2.5805$$ (derived from $$A$$ and $$h_0$$)

**Technology Process:**

- $$\gamma = 0.95$$ (AR(1) persistence for technology)
- $$\sigma_{\lambda} \approx 0.007$$ (standard deviation of technology shock)

**Foreign Price Process:**

- $$\gamma^* = 0.9$$ to $$0.95$$ (persistence of foreign price)
- $$\sigma^* \approx 0.01$$ (standard deviation of foreign price shock)

**Country Risk:**

- $$a = 0.01$$ (sensitivity of interest rate to debt)
- $$r^* = 0.03$$ or $$0$$ (base international interest rate)

**Taylor Rule:**

- $$a = 0.5$$ (output gap coefficient)
- $$b = 0.5$$ (inflation gap coefficient)

**Money Growth (if applicable):**

- $$\bar{g} = 1$$ (no growth) or $$1.019$$ (2% quarterly inflation)
