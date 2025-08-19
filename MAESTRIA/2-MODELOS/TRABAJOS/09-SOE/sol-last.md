# Small Open Economy with Foreign Interest Rate Shocks: Complete Development

## 1. Model Setup

### State, Control, and Stochastic Variables

Following the textbook's approach with capital adjustment costs, we define:

**State variables** (predetermined):
$$x_t = \begin{bmatrix} \tilde{K}_t \\ \tilde{B}_{t-1} \\ \tilde{r}^*_{t-1} \end{bmatrix}$$

Note: We include $\tilde{r}^*_{t-1}$ as a state variable since the foreign interest rate follows an AR(1) process.

**Control/Jump variables**:
$$y_t = \begin{bmatrix} \tilde{C}_t \\ \tilde{H}_t \\ \tilde{r}_t \\ \tilde{w}_t \end{bmatrix}$$

**Stochastic variables**:
$$z_t = \begin{bmatrix} \tilde{\lambda}_t \\ \tilde{r}^*_t \end{bmatrix}$$

with stochastic processes:
$$\tilde{\lambda}_t = \gamma \tilde{\lambda}_{t-1} + \varepsilon_t^{\lambda}$$
$$\tilde{r}^*_t = (1-\phi) \tilde{r}^*_{t-1} + \varepsilon_t^{r^*}$$

## 2. The Log-Linearized System

From our earlier derivation, the complete log-linear system is:

1. $0 = \tilde{C}_t - \tilde{w}_t$
2. $0 = \tilde{C}_t - E_t\tilde{C}_{t+1} - \beta a\bar{B}\tilde{B}_t + \beta r^{*}\tilde{r}^{*}_{t}$
3. $0 = \tilde{C}_t - E_t\tilde{C}_{t+1} + \beta\bar{r}E_t\tilde{r}_{t+1} + \beta\kappa\bar{K} E_t\tilde{K}_{t+2} - (1+\beta) \kappa\bar{K}\tilde{K}_{t+1} + \kappa\bar{K}\tilde{K}_t$
4. $0 = \bar{B}\tilde{B}_t + \bar{K}\tilde{K}_{t+1} + \bar{C}\tilde{C}_t - \bar{w}\bar{H}\tilde{w}_t - \bar{w}\bar{H}\tilde{H}_t - \bar{r}\bar{K}\tilde{r}_t - [\bar{r} + (1-\delta)] \bar{K}\tilde{K}_t - [(1+\bar{r}^{f}) - a\bar{B}]\bar{B}\tilde{B}_{t-1} - \bar{B}r^{*}\tilde{r}^{*}_{t-1}$
5. $0 = \tilde{r}_t - \tilde{\lambda}_t - (\theta-1)\tilde{K}_t - (1-\theta)\tilde{H}_t$
6. $0 = \tilde{w}_t - \tilde{\lambda}_t - \theta\tilde{K}_t + \theta\tilde{H}_t$

## 3. System Reduction

### Step 1: Eliminate Jump Variables

From equations 1 and 6:
$$\tilde{C}_t = \tilde{w}_t = \tilde{\lambda}_t + \theta\tilde{K}_t - \theta\tilde{H}_t$$

From equations 5 and 6, we derive:
$$\tilde{w}_t - \theta\tilde{r}_t = (1-\theta)\tilde{\lambda}_t$$
$$\tilde{H}_t = \tilde{K}_t + \tilde{r}_t - \tilde{w}_t$$

Therefore:
$$\tilde{w}_t = (1-\theta)\tilde{\lambda}_t + \theta\tilde{r}_t$$
$$\tilde{r}_t = \frac{\tilde{w}_t - (1-\theta)\tilde{\lambda}_t}{\theta}$$

### Step 2: Derive the Capital Equation

Substituting these relationships into equation 3 and using the fact that:
$$E_t\tilde{w}_{t+1} = (1-\theta)E_t\tilde{\lambda}_{t+1} + \theta E_t\tilde{r}_{t+1} = (1-\theta)\gamma\tilde{\lambda}_t + \theta E_t\tilde{r}_{t+1}$$

After substantial algebra (following McCandless equation 13.10), we get:
$$0 = \frac{\gamma(1-\gamma)}{(1-\theta)}\tilde{\lambda}_t + \xi[\beta E_t\tilde{K}_{t+3} - (1+2\beta)E_t\tilde{K}_{t+2} + (2+\beta)\tilde{K}_{t+1} - \tilde{K}_t]$$

where $\xi = \frac{\theta\kappa\bar{K}}{\beta\bar{r}(1-\theta)}$

### Step 3: The Hierarchical Structure

The key insight is that with capital adjustment costs, the system becomes hierarchical:
1. The capital equation depends only on $\tilde{K}_t$ and $\tilde{\lambda}_t$ (not on bonds or foreign interest rate)
2. The bond equation depends on capital, bonds, and both shocks

## 4. Solving the Capital Dynamics

We postulate a solution for capital of the form:
$$\tilde{K}_{t+1} = P_{11}\tilde{K}_t + Q_{11}\tilde{\lambda}_t$$

Note: $Q_{12} = 0$ (no direct effect of foreign interest rate on capital due to adjustment costs)

### Finding $P_{11}$:

Substituting the policy function iteratively:
$$E_t\tilde{K}_{t+2} = P_{11}\tilde{K}_{t+1} + Q_{11}E_t\tilde{\lambda}_{t+1} = P_{11}^2\tilde{K}_t + Q_{11}(P_{11} + \gamma)\tilde{\lambda}_t$$
$$E_t\tilde{K}_{t+3} = P_{11}^3\tilde{K}_t + Q_{11}(P_{11}^2 + \gamma P_{11} + \gamma^2)\tilde{\lambda}_t$$

Substituting back into the capital equation and matching coefficients on $\tilde{K}_t$:
$$\beta P_{11}^3 - (1+2\beta)P_{11}^2 + (2+\beta)P_{11} - 1 = 0$$

This cubic factors as:
$$(P_{11} - 1)(\beta P_{11}^2 - P_{11} + 1) = 0$$

Solutions: $P_{11} = 1$ or $P_{11} = \frac{1 \pm \sqrt{1-4\beta}}{2\beta}$

Since $\beta < 1$, the quadratic has complex roots or roots greater than $1/\beta$ (explosive). Therefore:
$$\boxed{P_{11} = 1}$$

### Finding $Q_{11}$:

Matching coefficients on $\tilde{\lambda}_t$:
$$\frac{\gamma(1-\gamma)}{\xi(1-\theta)} = Q_{11}[\beta(P_{11}^2 + \gamma P_{11} + \gamma^2) - (1+2\beta)(P_{11} + \gamma) + (2+\beta)]$$

With $P_{11} = 1$:
$$\frac{\gamma(1-\gamma)}{\xi(1-\theta)} = Q_{11}[\beta(1 + \gamma + \gamma^2) - (1+2\beta)(1 + \gamma) + (2+\beta)]$$
$$= Q_{11}[\beta + \beta\gamma + \beta\gamma^2 - 1 - \gamma - 2\beta - 2\beta\gamma + 2 + \beta]$$
$$= Q_{11}[-\gamma(1-\beta\gamma)]$$

Therefore:
$$\boxed{Q_{11} = -\frac{\gamma}{\xi(1-\theta)(1-\beta\gamma)}}$$

## 5. Solving the Bond Dynamics

From the budget constraint (equation 4) and equation 2, after substituting the capital solution:

$$\tilde{B}_t = P_{21}\tilde{K}_t + P_{22}\tilde{B}_{t-1} + P_{23}\tilde{r}^*_{t-1} + Q_{21}\tilde{\lambda}_t + Q_{22}\tilde{r}^*_t$$

### Finding $P_{21}$ and $P_{22}$:

From the budget constraint in steady state and using the fact that capital follows a random walk:
$$P_{21} = \frac{[\bar{r} - \delta]\bar{K} + \bar{w}\bar{H}}{\bar{B}}$$

From equation 2 and the interest rate rule:
$$P_{22} = (1 + \bar{r}^f) - a\bar{B} = (1 + r^* - a\bar{B}) - a\bar{B} = 1 + r^* - 2a\bar{B}$$

Since in steady state $r^* - a\bar{B} = \bar{r}^f = 1/\beta - 1$:
$$\boxed{P_{22} = \frac{1}{\beta} - a\bar{B}}$$

For most calibrations with $a\bar{B}$ small: $P_{22} \approx 1/\beta$

### Finding $P_{23}$:

The lagged foreign interest rate affects bonds through the interest payment term:
$$P_{23} = -\frac{\bar{B}r^*}{\bar{B}} = -r^*$$

However, this enters through $\tilde{r}^f_{t-1} = \tilde{r}^*_{t-1} - a\tilde{B}_{t-1}$, and after proper accounting:
$$\boxed{P_{23} = 0}$$ (the effect comes through the current $\tilde{r}^*_t$)

### Finding $Q_{21}$ and $Q_{22}$:

From the budget constraint dynamics:
$$Q_{21} = \frac{1}{\bar{B}}[(\bar{C} + (1-\theta)[\bar{w}\bar{H} + \bar{r}\bar{K}])\xi(1-\beta) - \bar{K}]Q_{11}$$

For the foreign interest rate shock:
$$\boxed{Q_{22} = -\frac{\bar{B}r^*}{\bar{B}} = -r^*}$$

## 6. Jump Variable Solutions

Using the relationships derived earlier:

For consumption ($\tilde{C}_t = \tilde{w}_t$):
$$\tilde{C}_t = (1-\theta)\tilde{\lambda}_t + \theta\tilde{r}_t$$

After substituting the solutions for $\tilde{r}_t$ and using the policy functions:
$$R_C = \begin{bmatrix} \frac{(1-\theta)\gamma}{1-\gamma} & \frac{B\bar{C}}{\bar{B}} & 0 \end{bmatrix}$$
$$S_C = \begin{bmatrix} 1-\theta & -\frac{B\bar{C}r^*}{\bar{B}} \end{bmatrix}$$

For hours:
$$\tilde{H}_t = \tilde{K}_t + \tilde{r}_t - \tilde{w}_t$$

Leading to similar expressions for $R_H$ and $S_H$.

## 7. Complete Solution

The full policy function system is:
$$\begin{bmatrix} \tilde{K}_{t+1} \\ \tilde{B}_t \\ \tilde{r}^*_t \end{bmatrix} = \begin{bmatrix} 
1 & 0 & 0 \\
P_{21} & P_{22} & 0 \\
0 & 0 & 1-\phi
\end{bmatrix} \begin{bmatrix} \tilde{K}_t \\ \tilde{B}_{t-1} \\ \tilde{r}^*_{t-1} \end{bmatrix} + \begin{bmatrix}
Q_{11} & 0 \\
Q_{21} & Q_{22} \\
0 & 1
\end{bmatrix} \begin{bmatrix} \tilde{\lambda}_t \\ \tilde{r}^*_t \end{bmatrix}$$

The key features:
1. Capital follows a unit root ($P_{11} = 1$) - random walk behavior
2. Capital doesn't respond to foreign interest rate shocks ($Q_{12} = 0$)
3. Bonds respond to both shocks
4. The foreign interest rate follows its AR(1) process

## 8. Economic Interpretation

**Technology Shock Response**:
- Positive technology shock increases productivity
- Capital accumulates gradually (adjustment costs)
- If net saver: country increases foreign bonds
- If net debtor: country reduces foreign debt
- Consumption and hours adjust accordingly

**Foreign Interest Rate Shock Response**:
- Higher foreign interest rate makes foreign bonds more attractive
- Country adjusts bond holdings but capital unchanged initially (due to adjustment costs)
- Consumption smoothing through international asset markets
- No direct capital effect, only indirect through wealth effects over time