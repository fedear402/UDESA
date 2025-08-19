## Reformulation to Eliminate Two-Period Lead

### Step 1: Eliminate jump variables

From equations 1 and 6:
- Eq 1: $\tilde{C}_t = \tilde{w}_t$
- Eq 6: $\tilde{w}_t = \tilde{\lambda}_t + \theta\tilde{K}_t - \theta\tilde{H}_t$

Therefore: $\tilde{C}_t = \tilde{\lambda}_t + \theta\tilde{K}_t - \theta\tilde{H}_t$

From equations 5 and 6, we can solve for $\tilde{H}_t$:
- Eq 5: $\tilde{r}_t = \tilde{\lambda}_t + (\theta-1)\tilde{K}_t + (1-\theta)\tilde{H}_t$
- Eq 6: $\tilde{w}_t = \tilde{\lambda}_t + \theta\tilde{K}_t - \theta\tilde{H}_t$

Combining: $\tilde{H}_t = \tilde{K}_t + \tilde{r}_t - \tilde{w}_t$

And: $\tilde{w}_t - \theta\tilde{r}_t = (1-\theta)\tilde{\lambda}_t$

### Step 2: Express expectations

From equation 2:
$$\tilde{C}_t - E_t\tilde{C}_{t+1} = \beta a\bar{B}\tilde{B}_t - \beta r^{*}\tilde{r}^{*}_{t}$$

Since $\tilde{C}_t = \tilde{w}_t$ and $\tilde{w}_t - \theta\tilde{r}_t = (1-\theta)\tilde{\lambda}_t$:
$$\tilde{w}_t = (1-\theta)\tilde{\lambda}_t + \theta\tilde{r}_t$$

In expectations:
$$E_t\tilde{w}_{t+1} = (1-\theta)E_t\tilde{\lambda}_{t+1} + \theta E_t\tilde{r}_{t+1} = (1-\theta)\gamma\tilde{\lambda}_t + \theta E_t\tilde{r}_{t+1}$$

From equation 3 with $\tilde{C}_t = \tilde{w}_t$:
$$\beta\bar{r}E_t\tilde{r}_{t+1} = -\beta\kappa\bar{K} E_t\tilde{K}_{t+2} + (1+\beta) \kappa\bar{K}\tilde{K}_{t+1} - \kappa\bar{K}\tilde{K}_t$$


Define $\tilde{Q}_t = \tilde{K}_{t+1} - \tilde{K}_t$ (growth rate of capital)

Then:
- $\tilde{K}_{t+1} = \tilde{K}_t + \tilde{Q}_t$
- $\tilde{K}_{t+2} = \tilde{K}_{t+1} + \tilde{Q}_{t+1} = \tilde{K}_t + \tilde{Q}_t + \tilde{Q}_{t+1}$
- $E_t\tilde{K}_{t+2} = \tilde{K}_t + \tilde{Q}_t + E_t\tilde{Q}_{t+1}$

Substituting into equation 3:
$$\beta\bar{r}E_t\tilde{r}_{t+1} = -\beta\kappa\bar{K}(\tilde{K}_t + \tilde{Q}_t + E_t\tilde{Q}_{t+1}) + (1+\beta)\kappa\bar{K}(\tilde{K}_t + \tilde{Q}_t) - \kappa\bar{K}\tilde{K}_t$$

Simplifying:
$$\beta\bar{r}E_t\tilde{r}_{t+1} = \beta\kappa\bar{K}\tilde{Q}_t - \beta\kappa\bar{K}E_t\tilde{Q}_{t+1}$$


Now we have state variables:
$$x_t = \begin{bmatrix} \tilde{K}_t \\ \tilde{Q}_t \\ \tilde{B}_t \end{bmatrix}$$

Where $\tilde{Q}_t = \tilde{K}_{t+1} - \tilde{K}_t$ is the capital growth rate.

The system becomes:
1. Definition: $\tilde{K}_{t+1} = \tilde{K}_t + \tilde{Q}_t$
2. Capital dynamics: $\beta\kappa\bar{K}E_t\tilde{Q}_{t+1} = \beta\kappa\bar{K}\tilde{Q}_t - \beta\bar{r}E_t\tilde{r}_{t+1}$
3. Bond dynamics from equation 2 and budget constraint

### Alternative Approach: Iterative Solution

Actually, the cleanest approach follows the textbook method where we recognize the system is hierarchical:

1. First, solve for $\tilde{K}_{t+1}$ as a function of $\tilde{K}_t$ and $\tilde{\lambda}_t$ (ignoring bonds and foreign interest rate)
2. Then, solve for $\tilde{B}_t$ using the solution for capital

The key insight is that capital dynamics can be solved independently when we have adjustment costs.

Let me write the reduced two-equation system:

**Equation for Capital** (combining equations 3, 5, 6):
$$\frac{\gamma(1-\gamma)}{(1-\theta)}\tilde{\lambda}_t + \xi[\beta E_t\tilde{K}_{t+3} - (1+2\beta)E_t\tilde{K}_{t+2} + (2+\beta)\tilde{K}_{t+1} - \tilde{K}_t] = 0$$

where $\xi = \frac{\theta\kappa\bar{K}}{\beta\bar{r}(1-\theta)}$

**Equation for Bonds** (from budget constraint and equation 2):
$$\bar{B}\tilde{B}_t + \bar{K}\tilde{K}_{t+1} = f(\tilde{K}_t, \tilde{B}_{t-1}, \tilde{\lambda}_t, \tilde{r}^*_t, \tilde{r}^*_{t-1})$$

For the capital equation, we assume a solution of the form:
$$\tilde{K}_{t+1} = P_{11}\tilde{K}_t + Q_{11}\tilde{\lambda}_t + Q_{12}\tilde{r}^*_t$$

Then:
$$E_t\tilde{K}_{t+2} = P_{11}\tilde{K}_{t+1} + Q_{11}\gamma\tilde{\lambda}_t + Q_{12}(1-\phi)\tilde{r}^*_t$$
$$E_t\tilde{K}_{t+3} = P_{11}^2\tilde{K}_{t+1} + P_{11}Q_{11}\gamma\tilde{\lambda}_t + P_{11}Q_{12}(1-\phi)\tilde{r}^*_t + Q_{11}\gamma^2\tilde{\lambda}_t + Q_{12}(1-\phi)^2\tilde{r}^*_t$$

This allows us to solve for $P_{11}$, $Q_{11}$, and $Q_{12}$ by substituting back and matching coefficients.