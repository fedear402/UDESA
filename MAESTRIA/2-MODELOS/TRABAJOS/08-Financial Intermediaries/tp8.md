In this excercise we 
### **Households**
$$\max E_t \sum_{i=0}^{\infty} \beta^i u(c_t^i, 1 - h_t^i),$$
$$u(c_t^i, 1 - h_t^i) = \ln(c_t^i) + h_t^i B, \quad B = \frac{\ln(1 - h_0)}{h_0}.$$
$$\text{Cash-in-advance:} \quad P_t c_t^i \leq m_{t-1}^i - N_t^i.$$
$$\text{Budget constraint:} \quad \frac{m_t^i}{P_t} + k_{t+1}^i = w_t h_t^i + r_t k_t^i + (1 - \delta) k_t^i + \frac{r_t^n N_t^i}{P_t}.$$

### **Firms**
$$Y_t = \lambda_t K_t^\theta H_t^{1 - \theta},$$
$$Y_t = r_t^f w_t H_t + r_t K_t.$$

### **Financial Intermediaries with Laboral Cost of holding real loans ($\Gamma$)**
$$r_t^f \left( N_t + (g_t - 1) M_{t-1} \right) - \Gamma \left( \frac{N_t}{P_t} \right) = r_t^n N_t.$$

### **Market Clearing**
$$N_t = \int_0^1 N_t^i \, di, \quad M_t = g_t M_{t-1}, \quad Y_t = C_t + I_t.$$

### **Model Equations**
$$\frac{B}{w_{t}} = -\beta E_{t}\frac{P_{t}}{P_{t+1}C_{t+1}}$$
$$\frac{1}{w_{t}} = \beta E_{t}\frac{r_{t+1} + 1 - \delta}{w_{t+1}}$$
$$r_{t}^{n} = -\frac{w_{t}}{B C_{t}} = \frac{1}{E_{t}\frac{\beta P_{t}C_{t}}{P_{t+1}C_{t+1}}}$$
$$P_{t}C_{t} = M_{t-1} - N_{t}$$
$$\frac{M_{t}}{P_{t}} + K_{t+1} = w_{t}H_{t} + r_{t}K_{t} + (1-\delta)K_{t} + \frac{r_{t}^{n}N_{t}}{P_{t}}$$
$$r_{t}^{f} w_{t} = (1-\theta) \lambda_{t} K_{t}^{\theta} H_{t}^{-\theta}$$
$$r_{t} = \theta \lambda_{t} K_{t}^{\theta-1} H_{t}^{1-\theta}$$
$$Y_{t} = \lambda_{t} K_{t}^{\theta} H_{t}^{1-\theta}$$
$$r_{t}^{f} \left(N_{t} + (g_{t} - 1) M_{t-1}\right) - \Gamma \left(N_{t}\right) = r_{t}^{n} N_{t}$$
$$N_{t} + (g_{t} - 1) M_{t-1} = P_{t} w_{t} H_{t} - \Gamma \left(N_{t}\right)$$
All funds that households have lent to the financial intermediary, plus net injections of money, are lent to firms to pay workers and cover the costs of maintaining loans.

### **Monetary Policy**
$$M_{t} = g_{t} M_{t-1}$$
$$\ln g_{t} = \pi \ln g_{t-1} + e^{g}_{t}, \quad E_{t-1} e^{g}_{t} = 0$$

### **Steady State**
$$\bar{r} = \frac{1}{\beta} - 1 + \delta$$
$$\bar{r}^n = \frac{\bar{g}}{\beta}$$
$$\bar{C} = -\frac{\bar{w}\beta}{\bar{g}B}$$
$$\bar{r}^{f}\bar{w} = (1-\theta)\left(\frac{\theta}{\bar{r}}\right)^{\frac{\theta}{1-\theta}}$$
$$\overline{K} = \overline{H}\left(\frac{\theta}{\bar{r}}\right)^{\frac{1}{1-\theta}}$$
$$\overline{Y} = \overline{H}\left(\frac{\theta}{\bar{r}}\right)^{\frac{\theta}{1-\theta}}$$

### **Derivations**

To solve equation:
$$r_t^f \left(N_t + (g_t - 1) M_{t-1}\right) - \Gamma \left({N_t}\right) = r_t^n N_t$$
We proceed as follows:
1.  **In Steady State (SS):**
    * $\frac{N_t}{P_t} = \overline{N/P}$, $\frac{M_t}{P_t} = \overline{M/P}$
    * $g_t = \bar{g}$, $M_t = \bar{g} M_{t-1}$
    * $\frac{P_{t+1}}{P_t} = \bar{g}$
2.  **Substitute into the equation:**
    $$
    \bar{r}^f \left(\overline{N/P} \cdot P_t + (\bar{g} - 1) \overline{M/P} \cdot P_t\right) - \Gamma \overline{N/P} \cdot P_t = \bar{r}^n \overline{N/P} \cdot P_t
    $$
3.  **Divide by $P_t$:**
    $$
    \bar{r}^f \left(\overline{N/P} + (\bar{g} - 1) \overline{M/P}\right) - \Gamma \overline{N/P} = \bar{r}^n \overline{N/P}
    $$
4.  **Reorganize:**
    $$
    \bar{r}^f (\bar{g} - 1) \overline{M/P} = \left(\bar{r}^n - \bar{r}^f + \Gamma\right) \overline{N/P}
    $$
5.  **Final form:**
    $$
    \left[\bar{r}^n - \bar{r}^f + \Gamma\right] \overline{N/P} = \bar{r}^f \left(1 - \frac{1}{\bar{g}}\right) \overline{M/P}
    $$

---

**Let's take equation (12.12):**
$$N_t + (g_t - 1) M_{t-1} = P_t w_t H_t + \Gamma \left({N_t}\right)$$
1.  **Apply SS assumptions:**
    $$
    \overline{N/P} \cdot P_t + (\bar{g} - 1) \overline{M/P} \cdot P_t = \bar{w} \overline{H} \cdot P_t + \Gamma \overline{N/P} \cdot P_t
    $$
2.  **Divide by $P_t$:**
    $$
    \overline{N/P} + (\bar{g} - 1) \overline{M/P} = \bar{w} \overline{H} + \Gamma \overline{N/P}
    $$
3.  **Regroup:**
    $$
    \overline{N/P} (1 - \Gamma) + \left(1 - \frac{1}{\bar{g}}\right) \overline{M/P} = \bar{w} \overline{H}
    $$   $$
    -\frac{\overline{C} \bar{g} B}{\beta} \overline{H} = \overline{N/P} (1 - \Gamma) + \left[ 1 - \frac{1}{\bar{g}} \right] \overline{M/P}
    $$

---

**Let's work with Equation (12.6):**
$$P_t C_t = M_{t-1} - N_t$$
1.  **Apply SS and divide by $P_t$:**
    $$
    \overline{C} = \frac{M_{t-1}}{P_t} - \overline{N/P}
    $$
2.  **Using $M_{t-1} = M_t / \bar{g}$ and $\frac{M_t}{P_t} = \overline{M/P}$:**
    $$
    \overline{C} = \frac{\overline{M/P}}{\bar{g}} - \overline{N/P}
    $$

---

Finally, take **(12.7) in SS:**
$$\frac{\overline{M/P}}{\bar{g}} + \overline{K} = \bar{w} \overline{H} + \bar{r} \overline{K} + (1-\delta) \overline{K} + \frac{\bar{r}^n \overline{N/P}}{\bar{g}}$$
1.  **Substitute $\bar{w}$ and $\overline{K}$:**
    $$
    \bar{w} = \frac{(1-\theta)}{\bar{r}^f} \left(\frac{\theta}{\bar{r}}\right)^{\frac{\theta}{1-\theta}}
    $$   $$
    \overline{K} = \overline{H} \left(\frac{\theta}{\bar{r}}\right)^{\frac{1}{1-\theta}}
    $$
2.  **Using $\bar{C} = -\frac{\bar{w} \beta}{\bar{g} B}$:**
    $$
    \overline{M/P} = \frac{\bar{g}}{\beta} \overline{N/P} + \left[(\bar{r} - \delta) \left(\frac{\theta}{\bar{r}}\right)^{\frac{1}{1-\theta}} - \frac{\overline{C} \bar{g} B}{\beta}\right] \overline{H}
    $$

---

**We have five SS equations:**
$$\bar{r}^{f}\bar{w} = (1-\theta)\left(\frac{\theta}{\bar{r}}\right)^{\frac{\theta}{1-\theta}}$$
$$\left[\bar{r}^n - \bar{r}^f + \Gamma\right] \overline{N/P} = \bar{r}^f \left(1 - \frac{1}{\bar{g}}\right) \overline{M/P}$$
$$-\frac{\overline{C} \bar{g} B}{\beta} \overline{H} = \overline{N/P} (1 - \Gamma) + \left[ 1 - \frac{1}{\bar{g}} \right] \overline{M/P}$$
$$\overline{C} = \frac{\overline{M/P}}{\bar{g}} - \overline{N/P}$$
$$\overline{M/P} = \frac{\bar{g}}{\beta} \overline{N/P} + \left[(\bar{r} - \delta) \left(\frac{\theta}{\bar{r}}\right)^{\frac{1}{1-\theta}} - \frac{\overline{C} \bar{g} B}{\beta}\right] \overline{H}$$