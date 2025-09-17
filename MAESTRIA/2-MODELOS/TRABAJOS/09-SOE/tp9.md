# Model
## The Household

Maximization problem

$$\max_{\{c_t,h_t,k_{t+1},b_t\}} E_t \sum_{t=0}^{\infty} \beta^t [\ln c_t + Bh_t]$$

where

$$B = \frac{A\ln(1-h_0)}{h_0}$$

Budget constraint with $b_t$ = holdings of risk free international bonds measured in real terms. $r^*_{t}$ is foreign interest rate
$$b_t + k_{t+1} + \frac{\kappa}{2}(k_{t+1} - k_t)^2 + c_t = w_t h_t + r_t k_t + (1-\delta)k_t + (1+r^{f}_{t-1})b_{t-1}$$

$$\lim_{t\to\infty} \frac{b_t}{\Pi_{t=0}^{\infty}(1+r^*_{t})} = \lim_{t\to\infty} \beta^t b_t = 0$$

we will assume that the foreign interest rate follow a random process:
In order for the model to close, (Uribe SG), we will asume the interest rate faced by the country includes some country risk, therefore:
$$
r^{f}_{t} = r^*_{t} - aB_{t}
$$
Here, we assume the foreign interest rate $r^*_{t}$ is not constant (as we did in class). Instead it follows this random process:

$$
r^{*}_{t} = \phi r^{*}+(1-\phi)r_{t-1}^{*} + \varepsilon_{t}^{r} 
$$

### Solving the households problem

$$
\mathcal{L} = E_{0} \sum_{t=0}^{\infty} \beta ^{t} [\ln c_t + Bh_t] + \beta ^{t} \lambda _{t} [w_t h_t + r_t k_t + (1-\delta)k_t + (1+r^{f}_{t-1})b_{t-1} - b_t - k_{t+1} - \frac{\kappa}{2}(k_{t+1} - k_t)^2 - c_t  ]
$$

$$
\frac{ \partial \mathcal{L} }{ \partial c_{t} } = \frac{1}{c_{t}} - \lambda _{t} = 0 \implies \boxed{\frac{1}{c_{t}} = \lambda _{t} }
$$
$$
\frac{ \partial \mathcal{L} }{ \partial h_{t} }  = B+\lambda _{t}w_{t} = 0  \implies B = -\lambda _{t}w_{t}
$$
Using $\frac{1}{c_{t}} = \lambda _{t}$, we obtain:
$$
\boxed{B = -\frac{w_t}{c_t}}
$$
Then, for capital:

$$
\frac{ \partial \mathcal{L} }{ \partial k_{t+1} }  = \beta ^{t}\left[ -\lambda _{t}  -\lambda _{t} \kappa \left( k_{t+1}-k_{t} \right)   \right]  + \beta ^{t+1} \mathbb{E}_{0}\left[ \lambda_{t+1} (r_{t+1}+1-\delta) +\lambda _{t+1} \kappa \left( k_{t+2}-k_{t+1} \right) ] \right]  = 0
$$
$$
\beta  \mathbb{E}_{0}\left[ \lambda_{t+1} (r_{t+1}+1-\delta) +\lambda _{t+1} \kappa \left( k_{t+2}-k_{t+1} \right) ] \right]  =\lambda _{t} \left[ 1  + \kappa \left( k_{t+1}-k_{t} \right)   \right] 
$$
Using $\frac{1}{c_{t}} = \lambda _{t}$, we obtain:
$$
\boxed{\beta  \mathbb{E}_{0}\left[ \frac{1}{c_{t+1}} (r_{t+1}+1-\delta) +\frac{1}{c_{t+1}} \kappa \left( k_{t+2}-k_{t+1} \right) ] \right]  =\frac{1}{c_{t}} \left[ 1  + \kappa \left( k_{t+1}-k_{t} \right)   \right] }
$$

For bonds:
$$
\frac{ \partial \mathcal{L} }{ \partial b_{t} }  = \mathbb{E}_{0}[\beta ^{t+1}\lambda _{t+1}(1+r_{t}^{f}) ]- \beta ^{t}\lambda _{t} =0
$$
$$
\beta\mathbb{E}_{0}[\lambda _{t+1}(1+r_{t}^{f}) ]=\lambda _{t}
$$
Using $\frac{1}{c_{t}} = \lambda _{t}$, we obtain:
$$
\boxed{\beta\mathbb{E}_{0}[\frac{1}{c_{t+1}}(1+r_{t}^{f}) ]= \frac{1}{c_{t}}}
$$




## The domestic firms

The production function

$$f(\lambda_t, k_t, h_t) = \lambda_t k_t^{\theta} h_t^{1-\theta}$$

where

$$\lambda_{t+1} = \gamma\lambda_t + \varepsilon_{t+1}$$

with $0 < \gamma < 1$ and $E_t\varepsilon_{t+1} = 1 - \gamma$.

Conditions for real wages and rentals (factor market equilibrium)

$$r_t = \theta\lambda_t k_t^{\theta-1} h_t^{1-\theta}$$

and

$$w_t = (1-\theta) \lambda_t k_t^{\theta} h_t^{-\theta}$$


## All the equilibrium conditions
We aggregate: $C_{t}=c_{t} \quad K_{t}=k_{t}\quad H_{t}=h_{t} \quad B_{t}=b_{t}$
Households conditions
$$
\begin{flalign}
&B = -\frac{w_t}{C_t} \\
&\beta\mathbb{E}_{0}[\frac{1}{C_{t+1}}(1+r_{t}^{f}) ]= \frac{1}{C_{t}} \\
&\beta  \mathbb{E}_{0}\left[ \frac{1}{C_{t+1}} (r_{t+1}+1-\delta) +\frac{1}{C_{t+1}} \kappa \left( K_{t+2}-K_{t+1} \right) ] \right]  =\frac{1}{C_{t}} \left[ 1  + \kappa \left( K_{t+1}-K_{t} \right)   \right] \\
&B_t + K_{t+1} + \frac{\kappa}{2}(K_{t+1} - K_t)^2 + C_t = w_t H_t + r_t K_t + (1-\delta)K_t + (1+r^{f}_{t-1})B_{t-1} \\
\end{flalign}
$$
and
$$\lim_{t\to\infty} \frac{B_t}{\Pi_{t=0}^{\infty}(1+r^f_{t})} = 0 \qquad  r^{f}_{t} = r^*_{t} - aB_{t} \qquad$$
Firm Conditions
$$
\begin{flalign}
&r_t = \theta\lambda_t K_t^{\theta-1} H_t^{1-\theta} \\
&w_t = (1-\theta) \lambda_t K_t^{\theta} H_t^{-\theta} \\
\end{flalign}
$$
And these stochastic processes:
$$
\lambda_{t} = \gamma \lambda _{t-1} + \varepsilon_{t}
$$
$$
 r^{*}_{t} = \phi r^{*}+(1-\phi)r_{t-1}^{*} + \varepsilon_{t}^{r} 
$$

## Steady States
We find the steady state value of the foreign interest rate:
$$
\bar{r}^{*}= \phi r^{*}+(1-\phi)\bar{r}^{*}
$$
$$
\bar{r}^{*}=r^{*}
$$
Therefore, the steady state value of the random process is $r^*$. Replacing into $\bar{r}^{f}$ we get:
$$
\bar{r}^{f} = r^* - a \bar{B}
$$
Which is the familiar formula from class. Now we replace into the equilibrium equations, also setting $X_{s}=\bar{X}$ for every $s$. The system of equation becomes:
$$
\begin{flalign}
&B = -\frac{\bar{w}}{\bar{C}} \\
& (1+\bar{r}^{f})= \frac{1}{\beta} \\
&  (\bar{r}+1-\delta)  =\frac{1}{\beta} \\
&  \bar{C}= \bar{w} \bar{H} + (\bar{r}-\delta) \bar{K} + \bar{r}^{f}\bar{B} \\
&\bar{r} = \theta\bar{K}^{\theta-1} \bar{H}^{1-\theta} \\
&\bar{w} = (1-\theta)  \bar{K}^{\theta} \bar{H}^{-\theta} \\
&\bar{r}^{f} = r^* - a \bar{B} \\
&\bar{r}^{*}=r^{*}
\end{flalign}
$$
Now we can solve for the values in steady state:
$$
\bar{r}^{f}= \frac{1}{\beta} -1 
$$
$$
 \bar{r}  =\frac{1}{\beta}  - (1-\delta)
$$
Now, we can use:
$$
\frac{1}{\beta} -1  = r^* - a \bar{B}
$$
$$
\bar{B} = \frac{\left( 1 - \frac{1}{\beta} + r^*  \right)}{a}
$$
We define the ratio:
$$
\frac{\bar{w}}{\bar{r} } = \frac{(1-\theta)  \bar{K}^{\theta} \bar{H}^{-\theta}}{ \theta\bar{K}^{\theta-1} \bar{H}^{1-\theta}} 
$$
Which we can rewrite as:
$$
\frac{ \bar{K} } {\bar{H}} = \frac{\theta}{1-\theta} \frac{\bar{w}}{ \bar{r} } 
$$
We replace that into the labor market equilibrium:
$$
\bar{w} = (1-\theta) \left[ \frac{\theta}{1-\theta} \frac{\bar{w}}{ \bar{r} }  \right] ^{\theta}
$$
$$
\bar{w}^{1-\theta} = (1-\theta)^{1-\theta}  \left( \frac{\theta}{ \bar{r} } \right)^{\theta}
$$
$$
\bar{w}= (1-\theta) \left( \frac{\theta}{\bar{r}} \right)^{\frac{\theta}{1-\theta}}
$$
With this, we know the value for $\bar{C}$
$$
\bar{C} = - \frac{\bar{w}}{B}
$$

Now, using the budget constraint:
$$
\bar{C}= \bar{w} \bar{H} + (\bar{r}-\delta) \bar{K} + \bar{r}^{f}\bar{B}
$$
We knew $\frac{ \bar{K} } {\bar{H}} = \frac{\theta}{1-\theta} \frac{\bar{w}}{ \bar{r} }$. So we can replace that $\bar{H}$ into the budget constraint
$$
\bar{C}= \bar{w} \frac{ 1-\theta }{\theta} \frac{\bar{r}}{\bar{w}} \bar{K}+ (\bar{r}-\delta) \bar{K} + \bar{r}^{f}\bar{B}
$$
And the only value we needed to know was $\bar{K}$:
$$
\bar{K} = \frac{\bar{C}-\bar{r}^{f}\bar{B}}{\frac{\bar{r}}{\theta}-\delta}
$$
Which is the familiar definition of steady state capital stock that is determined by the holding of international assets. Similarly for $H$, we get:
$$
\bar{H} = \frac{(1-\theta)\bar{r}}{\theta\bar{w}}\bar{K}
$$

1. $\boxed{\bar{r}^* = r^*}$
2. $\boxed{\bar{B} = \frac{r^* + 1 - \frac{1}{\beta}}{a}}$
3. $\boxed{\bar{r}^f = \frac{1}{\beta} - 1}$
4. $\boxed{\bar{r} = \frac{1}{\beta} - (1-\delta)}$
5. $\boxed{\bar{w} = (1-\theta)\left(\frac{\theta}{\bar{r}}\right)^{\frac{\theta}{1-\theta}}}$
6. $\boxed{\bar{C} = -\frac{\bar{w}}{B}}$
7. $\boxed{\bar{K} = \frac{\bar{C} - \bar{r}^{f}\bar{B}}{\frac{\bar{r}}{\theta} - \delta}}$
8. $\boxed{\bar{H} = \frac{(1-\theta)\bar{r}}{\theta\bar{w}}\bar{K}}$



# Log-linear version

The log linear version of the model equations in terms of $\tilde{X}_{t}=\ln X_{t}-\ln \tilde{X}$ and using $X_{t}=\bar{X}e^{\tilde{X}} \approx\bar{X} (1+\tilde{X})$

$$
\begin{flalign}
&B = -\frac{w_t}{C_t} \\
&\beta\mathbb{E}_{0}[\frac{1}{C_{t+1}}(1+r_{t}^{f}) ]= \frac{1}{C_{t}} \\
&\beta  \mathbb{E}_{0}\left[ \frac{1}{C_{t+1}} (r_{t+1}+1-\delta) +\frac{1}{C_{t+1}} \kappa \left( K_{t+2}-K_{t+1} \right) ] \right]  =\frac{1}{C_{t}} \left[ 1  + \kappa \left( K_{t+1}-K_{t} \right)   \right] \\
&B_t + K_{t+1} + \frac{\kappa}{2}(K_{t+1} - K_t)^2 + C_t = w_t H_t + r_t K_t + (1-\delta)K_t + (1+r^{f}_{t-1})B_{t-1} \\
&r_t = \theta\lambda_t K_t^{\theta-1} H_t^{1-\theta} \\
&w_t = (1-\theta) \lambda_t K_t^{\theta} H_t^{-\theta} \\
\end{flalign}
$$

$$
\begin{flalign} 
&B = -\frac{\bar{w}e^{\tilde{w}_{t}}}{\bar{C}e^{\tilde{C}_{t}}} \\
&\beta\mathbb{E}_{0}\left[\frac{1}{\bar{C}e^{\tilde{c}_{t+1}}}(1+\bar{r}^f e^{\tilde{r}_t^f}) \right]= \frac{1}{\bar{C}e^{\tilde{c}_{t}}} \\

&\beta \mathbb{E}_{0}\left[ \frac{1}{\bar{C}e^{\tilde{c}_{t+1}}} (\bar{r}e^{\tilde{r}_{t+1}}+1-\delta) +\frac{1}{\bar{C}e^{\tilde{c}_{t+1}}} \kappa \left( \bar{K}e^{\tilde{k}_{t+2}}-\bar{K}e^{\tilde{k}_{t+1}} \right) \right] =\frac{1}{\bar{C}e^{\tilde{c}_{t}}} \left[ 1 + \kappa \left( \bar{K}e^{\tilde{k}_{t+1}}-\bar{K}e^{\tilde{k}_{t}} \right) \right] \\

&\bar{B}e^{\tilde{b}_{t}} + \bar{K}e^{\tilde{k}_{t+1}} + \frac{\kappa}{2}(\bar{K}e^{\tilde{k}_{t+1}} - \bar{K}e^{\tilde{k}_{t}})^2 + \bar{C}e^{\tilde{c}_{t}} = \\
&\qquad  \qquad (\bar{w}e^{\tilde{w}_{t}})(\bar{H}e^{\tilde{h}_{t}}) + (\bar{r}e^{\tilde{r}_{t}})(\bar{K}e^{\tilde{k}_{t}}) + (1-\delta)\bar{K}e^{\tilde{k}_{t}} + (1+\bar{r}^{f}e^{\tilde{r}_{t-1}^{f}})\bar{B}e^{\tilde{b}_{t-1}} \\

&\bar{r}e^{\tilde{r}_{t}} = \theta (\bar{\lambda}e^{\tilde{\lambda}_{t}}) (\bar{K}e^{\tilde{k}_{t}})^{\theta-1} (\bar{H}e^{\tilde{h}_{t}})^{1-\theta} \\

&\bar{w}e^{\tilde{w}_{t}} = (1-\theta) (\bar{\lambda}e^{\tilde{\lambda}_{t}}) (\bar{K}e^{\tilde{k}_{t}})^{\theta} (\bar{H}e^{\tilde{h}_{t}})^{-\theta} \\
\end{flalign} $$


For the first equation, we get:
$$
B = -\frac{\bar{w}}{\bar{C}}  e^{\tilde{w}_{t}-\tilde{C}_{t}}
$$
Replacing with the steady state value of $\bar{C}$
$$
1=e^{\tilde{w}_{t}-\tilde{C}_{t}}
$$
Which is approximately:
$$
1=(1+\tilde{w}_{t}-\tilde{C}_{t})
$$
$$0 = \tilde{C}_t - \tilde{w}_t$$

For the second equation
$$
\beta\mathbb{E}_{0}\left[\frac{1}{e^{\tilde{c}_{t+1}}}(1+( r^{*}e^{\tilde{r}^{*}_{t}} -a \bar{B} e^{\tilde{B}_{t}} ) ) \right]= \frac{1}{e^{\tilde{c}_{t}}}
$$
$$
\beta (1+\tilde{C}_{t}) (1+( r^{*}(1+\tilde{r}^{*}_{t}) -a \bar{B} (1+\tilde{B}_{t}) ) )=1+ \mathbb{E} (\tilde{C}_{t+1})
$$
Replacing with the steady state value of $\bar{B}$, we can simplify:
$$
(1+ \tilde{C}_{t}) (1+  \beta(  r^{*}\tilde{r}_{t} -a\bar{B}\tilde{B}_{t} ) )=1+ \mathbb{E} (\tilde{C}_{t+1})
$$
$$
1+\tilde{C}_{t} + \beta(  r^{*}\tilde{r}^{*}_{t} -a\bar{B}\tilde{B}_{t} ) + \tilde{C}_{t} \beta(  r^{*}\tilde{r}_{t} -a\bar{B}\tilde{B}_{t} )=1+ \mathbb{E} (\tilde{C}_{t+1})
$$
The term $\tilde{C}_{t} \beta(  r^{*}\tilde{r}_{t} -a\bar{B}\tilde{B}_{t} )$ is approximately 0. We therefore end up with:
$$0 = \tilde{C}_t - E_t\tilde{C}_{t+1} - \beta a\bar{B}\tilde{B}_t +\beta r^{*}\tilde{r}^{*}_{t}$$





For the third equatiion we had the euler equation of capital:
$$\beta  \mathbb{E}_{0}\left[ \frac{1}{C_{t+1}} (r_{t+1}+1-\delta) +\frac{1}{C_{t+1}} \kappa \left( K_{t+2}-K_{t+1} \right) ] \right]  =\frac{1}{C_{t}} \left[ 1  + \kappa \left( K_{t+1}-K_{t} \right)   \right]$$

Substituting the log-linearized variables
$$\beta \mathbb{E}_{0}\left[ \frac{1}{\bar{C}e^{\tilde{C}_{t+1}}} (\bar{r}e^{\tilde{r}_{t+1}}+1-\delta) +\frac{1}{\bar{C}e^{\tilde{C}_{t+1}}} \kappa \bar{K}\left( e^{\tilde{K}_{t+2}}-e^{\tilde{K}_{t+1}} \right) \right] =\frac{1}{\bar{C}e^{\tilde{C}_{t}}} \left[ 1 + \kappa \bar{K}\left( e^{\tilde{K}_{t+1}}-e^{\tilde{K}_{t}} \right) \right]$$

Use the steady state condition $\frac{1}{\beta} = \bar{r} + 1 - \delta$ and approximate $e^{\tilde{X}} \approx 1 + \tilde{X}$
$$\beta \mathbb{E}_{0}\left[ \frac{1}{\bar{C}(1+\tilde{C}_{t+1})} \left(\frac{1}{\beta}(1+\tilde{r}_{t+1}) + \kappa \bar{K}(\tilde{K}_{t+2}-\tilde{K}_{t+1}) \right) \right] =\frac{1}{\bar{C}(1+\tilde{C}_{t})} \left[ 1 + \kappa \bar{K}(\tilde{K}_{t+1}-\tilde{K}_{t}) \right]$$

Multiply both sides by $\bar{C}$ and use $(1+\tilde{X})^{-1} \approx 1-\tilde{X}$
$$\beta (1-\tilde{C}_{t+1})\left[\frac{1}{\beta}(1+\tilde{r}_{t+1}) + \kappa \bar{K}(\tilde{K}_{t+2}-\tilde{K}_{t+1}) \right] =(1-\tilde{C}_{t}) \left[ 1 + \kappa \bar{K}(\tilde{K}_{t+1}-\tilde{K}_{t}) \right]$$

Expand and keep only first-order terms
$$(1-\tilde{C}_{t+1})(1+\tilde{r}_{t+1}) + \beta \kappa \bar{K}(1-\tilde{C}_{t+1})(\tilde{K}_{t+2}-\tilde{K}_{t+1}) = (1-\tilde{C}_{t}) + \kappa \bar{K}(1-\tilde{C}_{t})(\tilde{K}_{t+1}-\tilde{K}_{t})$$

Simplifying we get this:
$$1 - \tilde{C}_{t+1} + \tilde{r}_{t+1} + \beta \kappa \bar{K}(\tilde{K}_{t+2}-\tilde{K}_{t+1}) = 1 - \tilde{C}_{t} + \kappa \bar{K}(\tilde{K}_{t+1}-\tilde{K}_{t})$$

$$\boxed{0 = \tilde{C}_t - E_t\tilde{C}_{t+1} + \beta\bar{r}E_t\tilde{r}_{t+1} + \beta\kappa\bar{K} E_t\tilde{K}_{t+2} - (1+\beta) \kappa\bar{K}\tilde{K}_{t+1} + \kappa\bar{K}\tilde{K}_t}$$

Now on to equation4, we had:
$$B_t + K_{t+1} + \frac{\kappa}{2}(K_{t+1} - K_t)^2 + C_t = w_t H_t + r_t K_t + (1-\delta)K_t + (1+r^{f}_{t-1})B_{t-1}$$

where $r^f_{t-1} = r^*_{t-1} - aB_{t-1}$
Using the foreign interest rate relationship
$$B_t + K_{t+1} + \frac{\kappa}{2}(K_{t+1} - K_t)^2 + C_t = w_t H_t + r_t K_t + (1-\delta)K_t + (1+r^{*}_{t-1} - aB_{t-1})B_{t-1}$$

Substituting the log-linearized variables and note that $r^*_{t-1} = \bar{r}^* e^{\tilde{r}^*_{t-1}} = r^* e^{\tilde{r}^*_{t-1}}$
$$\bar{B}e^{\tilde{B}_{t}} + \bar{K}e^{\tilde{K}_{t+1}} + \bar{C}e^{\tilde{C}_{t}} = \bar{w}\bar{H}e^{\tilde{w}_{t}+\tilde{H}_{t}} + \bar{r}\bar{K}e^{\tilde{r}_{t}+\tilde{K}_{t}} + (1-\delta)\bar{K}e^{\tilde{K}_{t}} + (1+r^{*}e^{\tilde{r}^{*}_{t-1}} - a\bar{B}e^{\tilde{B}_{t-1}})\bar{B}e^{\tilde{B}_{t-1}}$$

Expanding the last term and use $e^{\tilde{X}} \approx 1 + \tilde{X}$
$$\bar{B}(1+\tilde{B}_{t}) + \bar{K}(1+\tilde{K}_{t+1}) + \bar{C}(1+\tilde{C}_{t}) = \bar{w}\bar{H}(1+\tilde{w}_{t}+\tilde{H}_{t}) + \bar{r}\bar{K}(1+\tilde{r}_{t}+\tilde{K}_{t}) + (1-\delta)\bar{K}(1+\tilde{K}_{t}) + \bar{B}(1+\tilde{B}_{t-1})[1+r^{*}(1+\tilde{r}^{*}_{t-1}) - a\bar{B}(1+\tilde{B}_{t-1})]$$

Expanding the last term keeping only first-order terms
$$... + \bar{B}(1+\tilde{B}_{t-1})[1+r^{*} + r^{*}\tilde{r}^{*}_{t-1} - a\bar{B} - a\bar{B}\tilde{B}_{t-1}]$$
$$= \bar{B}[1+r^{*} - a\bar{B}] + \bar{B}\tilde{B}_{t-1}[1+r^{*} - a\bar{B}] + \bar{B}r^{*}\tilde{r}^{*}_{t-1} - a\bar{B}^2\tilde{B}_{t-1}$$

Using the steady state condition $\bar{r}^f = r^* - a\bar{B} = \frac{1}{\beta} - 1$:
$$= \bar{B}(1+\bar{r}^f) + \bar{B}(1+\bar{r}^f)\tilde{B}_{t-1} + \bar{B}r^{*}\tilde{r}^{*}_{t-1} - a\bar{B}^2\tilde{B}_{t-1}$$
$$= \bar{B}(1+\bar{r}^f)(1 + \tilde{B}_{t-1}) + \bar{B}r^{*}\tilde{r}^{*}_{t-1} - a\bar{B}^2\tilde{B}_{t-1}$$

Subtracting the steady state equation and rearrange
$$\bar{B}\tilde{B}_{t} + \bar{K}\tilde{K}_{t+1} + \bar{C}\tilde{C}_{t} = \bar{w}\bar{H}(\tilde{w}_{t}+\tilde{H}_{t}) + \bar{r}\bar{K}(\tilde{r}_{t}+\tilde{K}_{t}) + (1-\delta)\bar{K}\tilde{K}_{t} + \bar{B}(1+\bar{r}^{f})\tilde{B}_{t-1} + \bar{B}r^{*}\tilde{r}^{*}_{t-1} - a\bar{B}^2\tilde{B}_{t-1}$$

Noting that $(1+\bar{r}^f) - a\bar{B} = (1+r^* - a\bar{B}) - a\bar{B} = 1 + r^* - 2a\bar{B}$:
$$\boxed{0 = \bar{B}\tilde{B}_t + \bar{K}\tilde{K}_{t+1} + \bar{C}\tilde{C}_t - \bar{w}\bar{H}\tilde{w}_t - \bar{w}\bar{H}\tilde{H}_t - \bar{r}\bar{K}\tilde{r}_t - [\bar{r} + (1-\delta)] \bar{K}\tilde{K}_t - (1+r^{*} - 2a\bar{B})\bar{B}\tilde{B}_{t-1} - \bar{B}r^{*}\tilde{r}^{*}_{t-1}}$$

Since $(1+r^* - 2a\bar{B}) = (1+\bar{r}^f) - a\bar{B}$:
$$\boxed{0 = \bar{B}\tilde{B}_t + \bar{K}\tilde{K}_{t+1} + \bar{C}\tilde{C}_t - \bar{w}\bar{H}\tilde{w}_t - \bar{w}\bar{H}\tilde{H}_t - \bar{r}\bar{K}\tilde{r}_t - [\bar{r} + (1-\delta)] \bar{K}\tilde{K}_t - [(1+\bar{r}^{f}) - a\bar{B}]\bar{B}\tilde{B}_{t-1} - \bar{B}r^{*}\tilde{r}^{*}_{t-1}}$$
Next, the fifth equation of the rental rate:
$$r_t = \theta\lambda_t K_t^{\theta-1} H_t^{1-\theta}$$

Using log-linearized variables
$$\bar{r}e^{\tilde{r}_{t}} = \theta \bar{\lambda}e^{\tilde{\lambda}_{t}} (\bar{K}e^{\tilde{K}_{t}})^{\theta-1} (\bar{H}e^{\tilde{H}_{t}})^{1-\theta}$$

Steady state condition $\bar{r} = \theta\bar{\lambda} \bar{K}^{\theta-1} \bar{H}^{1-\theta}$ (with $\bar{\lambda}=1$)
$$\bar{r}e^{\tilde{r}_{t}} = \bar{r} e^{\tilde{\lambda}_{t}} e^{(\theta-1)\tilde{K}_{t}} e^{(1-\theta)\tilde{H}_{t}}$$

$$\tilde{r}_{t} = \tilde{\lambda}_{t} + (\theta-1)\tilde{K}_{t} + (1-\theta)\tilde{H}_{t}$$

$$\boxed{0 = \tilde{r}_t - \tilde{\lambda}_t - (\theta-1)\tilde{K}_t - (1-\theta)\tilde{H}_t}$$


Then we had wages:
$$w_t = (1-\theta) \lambda_t K_t^{\theta} H_t^{-\theta}$$

$$\bar{w}e^{\tilde{w}_{t}} = (1-\theta) \bar{\lambda}e^{\tilde{\lambda}_{t}} (\bar{K}e^{\tilde{K}_{t}})^{\theta} (\bar{H}e^{\tilde{H}_{t}})^{-\theta}$$

Steady state condition $\bar{w} = (1-\theta)\bar{\lambda} \bar{K}^{\theta} \bar{H}^{-\theta}$ (with $\bar{\lambda}=1$)
$$\bar{w}e^{\tilde{w}_{t}} = \bar{w} e^{\tilde{\lambda}_{t}} e^{\theta\tilde{K}_{t}} e^{-\theta\tilde{H}_{t}}$$

$$\tilde{w}_{t} = \tilde{\lambda}_{t} + \theta\tilde{K}_{t} - \theta\tilde{H}_{t}$$

$$\boxed{0 = \tilde{w}_t - \tilde{\lambda}_t - \theta\tilde{K}_t + \theta\tilde{H}_t}$$


The complete log-linear system is:

1. $0 = \tilde{C}_t - \tilde{w}_t$
2. $0 = \tilde{C}_t - E_t\tilde{C}_{t+1} - \beta a\bar{B}\tilde{B}_t +\beta r^{*}\tilde{r}_{t}^{*}$
3. $0 = \tilde{C}_t - E_t\tilde{C}_{t+1} + \beta\bar{r}E_t\tilde{r}_{t+1} + \beta\kappa\bar{K} E_t\tilde{K}_{t+2} - (1+\beta) \kappa\bar{K}\tilde{K}_{t+1} + \kappa\bar{K}\tilde{K}_t$
4. $0 = \bar{B}\tilde{B}_t + \bar{K}\tilde{K}_{t+1} + \bar{C}\tilde{C}_t - \bar{w}\bar{H}\tilde{w}_t - \bar{w}\bar{H}\tilde{H}_t - \bar{r}\bar{K}\tilde{r}_t - [\bar{r} + (1-\delta)] \bar{K}\tilde{K}_t - (1+\bar{r}^{f})\bar{B}\tilde{B}_{t-1} - \bar{r}^{f}\bar{B}\tilde{r}_{t-1}^{*}$
5. $0 = \tilde{r}_t - \tilde{\lambda}_t - (\theta-1)\tilde{K}_t - (1-\theta)\tilde{H}_t$
6. $0 = \tilde{w}_t - \tilde{\lambda}_t - \theta\tilde{K}_t + \theta\tilde{H}_t$

And the stochastic processes:
- $\tilde{\lambda}_t = \gamma\tilde{\lambda}_{t-1} + \varepsilon_t$
- $\tilde{r}^{*}_t = (1-\phi)\tilde{r}^{*}_{t-1} + \varepsilon_t^r$







---
## Closing the open economy: Log-linear version

Let $x_t = [\tilde{K}_{t+1}, \tilde{B}_t]'$ be the vector of state variables

$y_t = [\tilde{C}_t, \tilde{r}_t, \tilde{w}_t, \tilde{H}_t]'$ be the vector of jump variables

$z_t = [\tilde{\lambda}_t \quad \tilde{r}^{*}_{t}]'$ be the stochastic variables

We can write the system as

$$0 = Ax_t + Bx_{t-1} + Cy_t + Dz_t,$$

$$0 = E_t [Fx_{t+1} + Gx_t + Hx_{t-1} + Jy_{t+1} + Ky_t + Lz_{t+1} + Mz_t] ,$$

$$z_{t+1} = Nz_t + \varepsilon_{t+1}.$$
