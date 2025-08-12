## Issues to Address in Your Current Work

1. **Indexing correction**: In your production function, you have both foreign goods indexed by k and domestic goods indexed by j, but your integrals should reflect that foreign goods span [0, η] and domestic goods span [η, 1].

2. **Price bundler derivation**: Your final step for the price bundler needs a small correction.

## Corrected Final Goods Price Bundler

From your demand functions:
$$Y_{t}^{m}(k) = \left( \frac{P_{t}}{P_{t}(k)} \right) ^{\psi} Y_{t}$$
$$Y_{t}^{l}(j) = \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi} Y_{t}$$

Substituting into the production function and simplifying:
$$1 = \left[ \int_{0} ^{ \eta} \left( \frac{P_{t}}{P_{t}(k)} \right) ^{\psi-1} dk+ \int_{\eta}^{1} \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi-1} dj\right]^{\frac{\psi}{\psi-1}}$$

Taking this to the power of $\frac{\psi-1}{\psi}$:
$$1 = \int_{0} ^{ \eta} \left( \frac{P_{t}}{P_{t}(k)} \right) ^{\psi-1} dk+ \int_{\eta}^{1} \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi-1} dj$$

Rearranging:
$$P_{t}^{\psi-1} = \int_{0} ^{ \eta} P_{t}(k)^{1-\psi} dk+ \int_{\eta}^{1} P_{t}(j)^{1-\psi} dj$$

Therefore, the **price bundler** is:
$$P_{t} = \left[ \int_{0} ^{ \eta} P_{t}(k)^{1-\psi} dk+ \int_{\eta}^{1} P_{t}(j)^{1-\psi} dj\right]^{\frac{1}{1-\psi}}$$

## Continuing with Intermediate Firms

Now let's set up the intermediate firms. You mentioned that all firms can adjust every period, which simplifies things significantly compared to the standard Calvo model.

### Foreign Firms (indexed by k ∈ [0, η])

These firms are located abroad and their prices P_t(k) are determined by foreign factors. In your homework, you mentioned that "foreign price is real, not worrying about exchange rates" and "you gotta pay for those foreign goods in your final good."

So we can treat P_t(k) as exogenous for k ∈ [0, η]. The foreign price can be written as:
$$P_t(k) = P_t^* \cdot S_t$$

where P_t^* is the foreign price level and S_t is some stochastic world price component.

### Domestic Intermediate Firms (indexed by j ∈ [η, 1])

Each domestic firm j produces with technology:
$$Y_{t}^{l}(j) = \lambda_{t} K_{t}(j)^{\theta} H_{t}(j)^{1-\theta}$$

where λ_t is a technology shock.

Since they can adjust prices every period, they solve a static profit maximization problem:
$$\max_{P_{t}(j)} P_{t}(j)Y_{t}^{l}(j) - P_{t}[r_{t}K_{t}(j) + w_{t}H_{t}(j)]$$

subject to demand: 
$$Y_{t}^{l}(j) = \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi} Y_{t}$$

and production technology:
$$Y_{t}^{l}(j) = \lambda_{t} K_{t}(j)^{\theta} H_{t}(j)^{1-\theta}$$
## Domestic Intermediate Firms: Profit Maximization

### Step 1: Cost Minimization

First, let's solve the cost minimization problem for firm j:
$$\min_{K_{t}(j), H_{t}(j)} r_{t}K_{t}(j) + w_{t}H_{t}(j)$$

subject to:
$$Y_{t}^{l}(j) = \lambda_{t} K_{t}(j)^{\theta} H_{t}(j)^{1-\theta}$$

Setting up the Lagrangian:
$$\mathcal{L} = r_{t}K_{t}(j) + w_{t}H_{t}(j) + \mu_t \left[Y_{t}^{l}(j) - \lambda_{t} K_{t}(j)^{\theta} H_{t}(j)^{1-\theta}\right]$$

First-order conditions:
$$\frac{\partial \mathcal{L}}{\partial K_{t}(j)} = r_t - \mu_t \lambda_t \theta K_{t}(j)^{\theta-1} H_{t}(j)^{1-\theta} = 0$$
$$\frac{\partial \mathcal{L}}{\partial H_{t}(j)} = w_t - \mu_t \lambda_t (1-\theta) K_{t}(j)^{\theta} H_{t}(j)^{-\theta} = 0$$

From these FOCs:
$$\frac{r_t}{w_t} = \frac{\theta}{1-\theta} \frac{H_{t}(j)}{K_{t}(j)}$$

This gives us the factor demand ratio. Substituting back into the production function and solving:

$$K_{t}(j) = \frac{Y_{t}^{l}(j)}{\lambda_t} \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta-1}$$

$$H_{t}(j) = \frac{Y_{t}^{l}(j)}{\lambda_t} \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta}$$

### Step 2: Total Cost Function

Substituting factor demands into the cost function:
$$TC_t(j) = r_t K_{t}(j) + w_t H_{t}(j)$$

$$TC_t(j) = \frac{Y_{t}^{l}(j)}{\lambda_t} \left[r_t \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta-1} + w_t \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta}\right]$$

After simplifying:
$$TC_t(j) = \frac{w_t Y_{t}^{l}(j)}{(1-\theta)\lambda_t} \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta}$$

Therefore, marginal cost is:
$$MC_t = \frac{w_t}{(1-\theta)\lambda_t} \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta}$$

### Step 3: Profit Maximization

Each domestic firm j maximizes:
$$\max_{P_{t}(j)} P_{t}(j)Y_{t}^{l}(j) - P_t \cdot MC_t \cdot Y_{t}^{l}(j)$$

subject to demand:
$$Y_{t}^{l}(j) = \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi} Y_{t}$$

Substituting demand into profits:
$$\pi_t(j) = P_{t}(j) \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi} Y_{t} - P_t \cdot MC_t \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi} Y_{t}$$

$$\pi_t(j) = Y_t P_t^{\psi} P_{t}(j)^{1-\psi} - P_t MC_t Y_t P_t^{\psi} P_{t}(j)^{-\psi}$$

### Step 4: First-Order Condition

Taking derivative with respect to P_t(j):
$$\frac{\partial \pi_t(j)}{\partial P_{t}(j)} = Y_t P_t^{\psi} (1-\psi) P_{t}(j)^{-\psi} + P_t MC_t Y_t P_t^{\psi} \psi P_{t}(j)^{-\psi-1} = 0$$

Factoring out common terms:
$$Y_t P_t^{\psi} P_{t}(j)^{-\psi-1} [(1-\psi) P_{t}(j) + \psi P_t MC_t] = 0$$

Since Y_t > 0, P_t > 0, and P_t(j) > 0:
$$(1-\psi) P_{t}(j) + \psi P_t MC_t = 0$$

Solving for P_t(j):
$$P_{t}(j) = \frac{\psi P_t MC_t}{\psi - 1}$$

Since all domestic firms face the same marginal cost, they all choose the same price:
$$P_t^{domestic} = \frac{\psi}{\psi - 1} P_t MC_t$$

where:
$$MC_t = \frac{w_t}{(1-\theta)\lambda_t} \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta}$$
---
## Step 10: Households

Unit mass of households maximize:
$$E_0 \sum_{t=0}^{\infty} \beta^t \left[\ln C_t^i + B H_t^i\right]$$

subject to:
- **Cash-in-advance constraint:** $P_t C_t^i = M_{t-1}^i + (g_t - 1)M_{t-1}$
- **Budget constraint:** $K_{t+1}^i + \frac{M_t^i}{P_t} = w_t H_t^i + r_t K_t^i + \xi_t^i + (1-\delta)K_t^i$

where $\xi_t^i$ are profits from domestic intermediate firms.

### Household First-Order Conditions:

**Labor-leisure choice:**
$$\frac{B}{w_t} = E_t \left[\frac{B\beta}{w_{t+1}}(r_{t+1} + (1-\delta))\right]$$

**Consumption-saving choice:**
$$E_t \left[\frac{\beta}{C_{t+1}^i P_{t+1}}\right] = \frac{B}{w_t P_t}$$

## Step 11: Market Clearing and Equilibrium Conditions

### Aggregation across households:
$$C_t = C_t^i, \quad K_t = K_t^i, \quad H_t = H_t^i, \quad M_t = M_t^i$$

### Labor market clearing:
Total labor demand from domestic firms:
$$H_t = \int_{\eta}^{1} H_t(j) dj = \frac{(1-\eta)}{\lambda_t} \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta} Y_t^{domestic}$$

where $Y_t^{domestic} = (1-\eta) \left(\frac{P_t}{P_t^{domestic}}\right)^{\psi} Y_t$

### Capital market clearing:
$$K_t = \int_{\eta}^{1} K_t(j) dj = \frac{(1-\eta)}{\lambda_t} \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta-1} Y_t^{domestic}$$

### Resource constraint:
$$Y_t = C_t + I_t$$
where $I_t = K_{t+1} - (1-\delta)K_t$

### Profits distributed to households:
$$\xi_t = \left(\frac{\psi-1}{\psi}\right) P_t^{domestic} Y_t^{domestic}$$

### Money supply process:
$$M_t = g_t M_{t-1}$$

## Step 12: Complete System of Equations

**1. Domestic firm pricing:**
$$P_t^{domestic} = \frac{\psi}{\psi - 1} P_t MC_t$$

**2. Marginal cost:**
$$MC_t = \frac{w_t}{(1-\theta)\lambda_t} \left(\frac{r_t(1-\theta)}{w_t\theta}\right)^{\theta}$$

**3. Price bundler:**
$$P_{t}^{1-\psi} = \eta S_t^{1-\psi} + (1-\eta) (P_t^{domestic})^{1-\psi}$$

**4. Factor price ratio:**
$$\frac{r_t}{w_t} = \frac{\theta}{1-\theta} \frac{H_t}{K_t}$$

**5. Aggregate domestic production:**
$$Y_t^{domestic} = \lambda_t H_t^{1-\theta} K_t^{\theta}$$

**6. Household Euler equation (simplified):**
$$\frac{1}{w_t} = E_t \left[\frac{\beta}{w_{t+1}}(r_{t+1} + (1-\delta))\right]$$

**7. Cash-in-advance:**
$$P_t C_t = g_t M_{t-1}$$

**8. Budget constraint:**
$$K_{t+1} + \frac{M_t}{P_t} = w_t H_t + r_t K_t + \xi_t + (1-\delta)K_t$$

**9. Resource constraint:**
$$Y_t = C_t + K_{t+1} - (1-\delta)K_t$$

**10. Money supply:**
$$M_t = g_t M_{t-1}$$

**11. Stochastic processes:**
$$\log \lambda_t = \rho_\lambda \log \lambda_{t-1} + \varepsilon_t^\lambda$$
$$\log S_t = \rho_s \log S_{t-1} + \varepsilon_t^s$$
$$\log g_t = \rho_g \log g_{t-1} + \varepsilon_t^g$$




## Step 13: Log-Linearization Setup

Let's denote steady-state values with bars and log-deviations with tildes:
$$X_t = \bar{X} e^{\tilde{X}_t} \approx \bar{X}(1 + \tilde{X}_t)$$

### Key steady-state relationships:

From Euler equation: $\bar{r} = \frac{1}{\beta} - (1-\delta)$

From factor ratio: $\frac{\bar{r}}{\bar{w}} = \frac{\theta}{1-\theta} \frac{\bar{H}}{\bar{K}}$

From domestic pricing: $\bar{P}^{domestic} = \frac{\psi}{\psi-1} \bar{P} \overline{MC}$

From price bundler: $\bar{P}^{1-\psi} = \eta \bar{S}^{1-\psi} + (1-\eta) (\bar{P}^{domestic})^{1-\psi}$

From CIA: $\bar{P}\bar{C} = \bar{g}\bar{M}$

## Step 14: Key Log-Linearized Equations

**Price bundler (log-linearized):**
$$\tilde{P}_t = s_s \tilde{S}_t + s_d \tilde{P}_t^{domestic}$$

where:
- $s_s = \frac{\eta \bar{S}^{1-\psi}}{\bar{P}^{1-\psi}}$ (share of foreign goods in price index)
- $s_d = \frac{(1-\eta) (\bar{P}^{domestic})^{1-\psi}}{\bar{P}^{1-\psi}}$ (share of domestic goods in price index)

**Domestic pricing (log-linearized):**
$$\tilde{P}_t^{domestic} = \tilde{P}_t + \widetilde{MC}_t$$

**Marginal cost (log-linearized):**
$$\widetilde{MC}_t = \tilde{w}_t - \tilde{\lambda}_t + \theta(\tilde{r}_t - \tilde{w}_t)$$

**Combining these:**
$$\tilde{P}_t^{domestic} = \tilde{P}_t + \tilde{w}_t - \tilde{\lambda}_t + \theta(\tilde{r}_t - \tilde{w}_t)$$

**Substituting into price bundler:**
$$\tilde{P}_t = s_s \tilde{S}_t + s_d [\tilde{P}_t + \tilde{w}_t - \tilde{\lambda}_t + \theta(\tilde{r}_t - \tilde{w}_t)]$$

**Solving for price level:**
$$(1 - s_d)\tilde{P}_t = s_s \tilde{S}_t + s_d [\tilde{w}_t - \tilde{\lambda}_t + \theta(\tilde{r}_t - \tilde{w}_t)]$$

Since $s_s + s_d = 1$, we have $1 - s_d = s_s$:
$$\tilde{P}_t = \tilde{S}_t + \frac{s_d}{s_s} [\tilde{w}_t - \tilde{\lambda}_t + \theta(\tilde{r}_t - \tilde{w}_t)]$$

This is our **key pricing equation** showing how foreign price shocks affect domestic prices!