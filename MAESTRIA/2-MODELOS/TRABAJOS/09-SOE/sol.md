
## 2. Log-Linear Version

The complete log-linear system is:

1. $0 = \tilde{C}_t - \tilde{w}_t$
    
2. $0 = \tilde{C}_t - E_t\tilde{C}_{t+1} - \beta a\bar{B}\tilde{B}_t + \beta \bar{r}^*\tilde{r}_{t}^{*}$
    
3. $0 = \tilde{C}_t - E_t\tilde{C}_{t+1} + \beta\bar{r}E_t\tilde{r}_{t+1} + \beta\kappa\bar{K} E_t\tilde{K}_{t+2} - (1+\beta) \kappa\bar{K}\tilde{K}_{t+1} + \kappa\bar{K}\tilde{K}_t$
    
4. $0 = \bar{B}\tilde{B}_t + \bar{K}\tilde{K}_{t+1} + \bar{C}\tilde{C}_t - \bar{w}\bar{H}\tilde{w}_t - \bar{w}\bar{H}\tilde{H}_t - \bar{r}\bar{K}\tilde{r}_t - [\bar{r} + (1-\delta)] \bar{K}\tilde{K}_t - (1+\bar{r}^{f})\bar{B}\tilde{B}_{t-1} - \bar{r}^{f}\bar{B}\tilde{r}_{t-1}^{*}$
    
5. $0 = \tilde{r}_t - \tilde{\lambda}_t - (\theta-1)\tilde{K}_t - (1-\theta)\tilde{H}_t$
    
6. $0 = \tilde{w}_t - \tilde{\lambda}_t - \theta\tilde{K}_t + \theta\tilde{H}_t$
    

**Stochastic processes:**

- $\tilde{\lambda}_t = \gamma\tilde{\lambda}_{t-1} + \varepsilon_t$
- $\tilde{r}^{*}_t = (1-\phi)\tilde{r}^{*}_{t-1} + \varepsilon_t^r$

Where $\bar{r}^f = \bar{r}^* - a\bar{B} = 1/\beta - 1$ in steady state.

## 3. Matrix Setup

Let:

- $x_t = [\tilde{K}_{t+1}, \tilde{B}_t]'$ be the predetermined state variables
- $y_t = [\tilde{C}_t, \tilde{r}_t, \tilde{w}_t, \tilde{H}_t]'$ be the jump variables
- $z_t = [\tilde{\lambda}_t, \tilde{r}^*_t]'$ be the stochastic variables

The system can be written as: $$0 = Ax_t + Bx_{t-1} + Cy_t + Dz_t$$ $$0 = E_t [Fx_{t+1} + Gx_t + Hx_{t-1} + Jy_{t+1} + Ky_t + Lz_{t+1} + Mz_t]$$

**Non-expectational equations (1, 4, 5, 6):**

Matrix **A** (coefficients on $x_t = [\tilde{K}_{t+1}, \tilde{B}_t]$): 
$$A = \begin{bmatrix} 0 & 0 \\ \bar{K} & \bar{B} \\ 0 & 0 \\ 0 & 0 \end{bmatrix}$$

Matrix **B** (coefficients on $x_{t-1} = [\tilde{K}_t, \tilde{B}_{t-1}]$): 

$$B = \begin{bmatrix} 0 & 0 \\ -[\bar{r} + (1-\delta)] \bar{K} & -(1+\bar{r}^{f})\bar{B} \\ -(\theta-1) & 0 \\ -\theta & 0 \end{bmatrix}$$

Matrix **C** (coefficients on $y_t = [\tilde{C}_t, \tilde{r}_t, \tilde{w}_t, \tilde{H}_t]$): $$C = \begin{bmatrix} 1 & 0 & -1 & 0 \\ \bar{C} & -\bar{r}\bar{K} & -\bar{w}\bar{H} & -\bar{w}\bar{H} \\ 0 & 1 & 0 & -(1-\theta) \\ 0 & 0 & 1 & \theta \end{bmatrix}$$

Matrix **D** (coefficients on $z_t = [\tilde{\lambda}_t, \tilde{r}^*_t]$): 
$$D = \begin{bmatrix} 0 & 0 \\ 0 & -\bar{r}^{f}\bar{B} \\ -1 & 0 \\ -1 & 0 \end{bmatrix}$$

**Expectational equations (2, 3):**

These require the **F, G, H, J, K, L, M** matrices. The key additions from the foreign interest rate shock appear in:

- Equation 2: $+\beta \bar{r}^* \tilde{r}_{t}^*$ term
- Equation 4: $-\bar{r}^{f}\bar{B}\tilde{r}_{t-1}^{*}$ term

**Stochastic process evolution:** $$z_{t+1} = Nz_t + \varepsilon_{t+1}$$

Where: 
$$N = \begin{bmatrix} \gamma & 0 \\ 0 & 1-\phi \end{bmatrix}$$


---




- $x_t = [\tilde{K}_{t+1}, \tilde{B}_t]'$ (state variables)
- $y_t = [\tilde{C}_t, \tilde{r}_t, \tilde{w}_t, \tilde{H}_t]'$ (jump variables)
- $z_t = [\tilde{\lambda}_t, \tilde{r}^*_t]'$ (stochastic variables)

The system is: $$0 = Ax_t + Bx_{t-1} + Cy_t + Dz_t$$ $$0 = E_t [Fx_{t+1} + Gx_t + Hx_{t-1} + Jy_{t+1} + Ky_t + Lz_{t+1} + Mz_t]$$

**Non-expectational equations (1, 4, 5, 6):**

**Matrix A** (coefficients on $x_t = [\tilde{K}_{t+1}, \tilde{B}_t]$): $$A = \begin{bmatrix} 0 & 0 \\ \bar{K} & \bar{B} \\ 0 & 0 \\ 0 & 0 \end{bmatrix}$$

**Matrix B** (coefficients on $x_{t-1} = [\tilde{K}_t, \tilde{B}_{t-1}]$): $$B = \begin{bmatrix} 0 & 0 \\ -[\bar{r} + (1-\delta)] \bar{K} & -(1+\bar{r}^{f})\bar{B} \\ -(\theta-1) & 0 \\ -\theta & 0 \end{bmatrix}$$

**Matrix C** (coefficients on $y_t = [\tilde{C}_t, \tilde{r}_t, \tilde{w}_t, \tilde{H}_t]$): $$C = \begin{bmatrix} 1 & 0 & -1 & 0 \\ \bar{C} & -\bar{r}\bar{K} & -\bar{w}\bar{H} & -\bar{w}\bar{H} \\ 0 & 1 & 0 & -(1-\theta) \\ 0 & 0 & 1 & \theta \end{bmatrix}$$

**Matrix D** (coefficients on $z_t = [\tilde{\lambda}_t, \tilde{r}^* _t]$): $$D = \begin{bmatrix} 0 & 0 \\ 0 & 0 \\ -1 & 0 \\ -1 & 0 \end{bmatrix}$$

_Note: The foreign rate term appears as $\tilde{r}^*_{t-1}$ in the budget constraint, which creates a timing issue with this setup._

**Expectational equations (2, 3):**

**Matrix F** (coefficients on $x_{t+1} = [\tilde{K}_{t+2}, \tilde{B}_{t+1}]$): 

$$F = \begin{bmatrix} 0 & 0 \\ \beta\kappa\bar{K} & 0 \end{bmatrix}$$

**Matrix G** (coefficients on $x_t = [\tilde{K}_{t+1}, \tilde{B}_t]$): 

$$G = \begin{bmatrix} 0 & -\beta a\bar{B} \\ -(1+\beta)\kappa\bar{K} & 0 \end{bmatrix}$$

**Matrix H** (coefficients on $x_{t-1} = [\tilde{K}_t, \tilde{B}_{t-1}]$): 
$$H = \begin{bmatrix} 0 & 0 \\ \kappa\bar{K} & 0 \end{bmatrix}$$

**Matrix J** (coefficients on $y_{t+1} = [\tilde{C}_{t+1}, \tilde{r}_{t+1}, \tilde{w}_{t+1}, \tilde{H}_{t+1}]$): 

$$J = \begin{bmatrix} -1 & 0 & 0 & 0 \\ -1 & -\beta\bar{r} & 0 & 0 \end{bmatrix}$$

**Matrix K** (coefficients on $y_t = [\tilde{C}_t, \tilde{r}_t, \tilde{w}_t, \tilde{H}_t]$): 

$$K = \begin{bmatrix} 1 & 0 & 0 & 0 \\ 1 & 0 & 0 & 0 \end{bmatrix}$$

**Matrix L** (coefficients on $z_{t+1} = [\tilde{\lambda}_{t+1}, \tilde{r}^*_{t+1}]$): 
$$L = \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}$$

**Matrix M** (coefficients on $z_t = [\tilde{\lambda}_t, \tilde{r}^*_t]$): 

$$M = \begin{bmatrix} 0 & \beta\bar{r}^* \\ 0 & 0 \end{bmatrix}$$

**Matrix N** (stochastic process evolution): 
$$N = \begin{bmatrix} \gamma & 0 \\ 0 & 1-\phi \end{bmatrix}$$

**Important Note:** There's a timing issue with the foreign interest rate term $\tilde{r}^*_{t-1}$ in the budget constraint that doesn't fit neatly into this matrix structure. You may need to either:

1. Include $\tilde{r}^*_t$ as a third state variable in $x_t$, or
2. Handle the lagged foreign rate term separately in the solution algorithm.