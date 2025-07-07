From the equation
$$
C_{t}=Y_{t}+(1-\delta)K_{t}-K_{t+1}
$$
$$
\bar{C}e^{\tilde{C}_{t}} = \bar{Y}e^{\tilde{Y}_{t}} + (1-\delta) \bar{K}e^{\tilde{K}_{t}} - \bar{K}e^{\tilde{K}_{t+1}}
$$
Approximating:
$$
\bar{C}(1+\tilde{C}_{t}) = \bar{Y}(1+\tilde{Y}_{t}) + (1-\delta) \bar{K}(1+\tilde{K}_{t})- \bar{K}(1+\tilde{K}_{t+1})
$$
$$
\bar{C}+\bar{C}\tilde{C}_{t} = \bar{Y}+ \bar{Y}\tilde{Y}_{t} + (1-\delta)\bar{K}+(1-\delta)\bar{K}\tilde{K}_{t}- \bar{K}+\bar{K}\tilde{K}_{t+1}
$$
Using the steady state: $\bar{C}=\bar{Y}+(1-\delta)\bar{K}-\bar{K}$
$$
\cancel{\bar{C}} +\bar{C}\tilde{C}_{t} = \cancel{\bar{Y}+ (1-\delta)\bar{K} - \bar{K}}  + \bar{Y}\tilde{Y}_{t} +(1-\delta)\bar{K}\tilde{K}_{t}+\bar{K}\tilde{K}_{t+1}
$$
$$
0 =  \bar{Y}\tilde{Y}_{t} +(1-\delta)\bar{K}\tilde{K}_{t}+\bar{K}\tilde{K}_{t+1} - \bar{C}\tilde{C}_{t} 
$$
$$
\boxed{0 =  \bar{Y}\tilde{Y}_{t} - \bar{C}\tilde{C}_{t}  + \bar{K} \left[  (1-\delta)\tilde{K}_{t}+\tilde{K}_{t+1}  \right] }
$$
For the equation:
$$
Y_{t}= \lambda_{t} K_{t}^{\theta} H_{t}^{ 1-\theta}
$$
$$
\bar{Y}e^{\tilde{Y}_{t}} = \bar{\lambda} e^{\tilde{\lambda}_{t}} \bar{K}^{\theta} e^{\theta \tilde{K}_{t}} \bar{H}^{1-\theta} e^{(1-\theta)\tilde{H}_{t}}
$$
$$
\bar{Y}(1+\tilde{Y}_{t}) = \bar{\lambda} (1+\tilde{\lambda}_{t}) \bar{K}^{\theta} (1+\theta \tilde{K}_{t}) \bar{H}^{1-\theta} (1+(1-\theta)\tilde{H}_{t})
$$
Using the steady state $\bar{Y}=\bar{\lambda} \bar{K}^{\theta}\bar{H}^{1-\theta}$
$$
\cancel{\bar{Y}} (1+\tilde{Y}_{t}) = \cancel{\bar{\lambda} \bar{K}^{\theta}\bar{H}^{1-\theta}}  (1+\tilde{\lambda}_{t}) (1+\theta \tilde{K}_{t})  (1+(1-\theta)\tilde{H}_{t})
$$
$$
 (1+\tilde{Y}_{t}) =  (1+\theta \tilde{K}_{t}+\tilde{\lambda}_{t}+\theta \tilde{K}_{t}\tilde{\lambda}_{t})   (1+(1-\theta)\tilde{H}_{t})
$$
$$
(1+\tilde{Y}_{t}) = (1+\theta \tilde{K}_{t}+\tilde{\lambda}_{t}+ \underbrace{ \theta \tilde{K}_{t}\tilde{\lambda}_{t} }_{ =0  })   (1+(1-\theta)\tilde{H}_{t})
$$
$$
1+\tilde{Y}_{t}= 1+\theta \tilde{K}_{t}+\tilde{\lambda}_{t}+(1-\theta)\tilde{H}_{t}+\underbrace{ (1-\theta)\tilde{H}_{t}\theta \tilde{K}_{t} }_{   =0}+\underbrace{ (1-\theta)\tilde{H}_{t}\tilde{\lambda}_{t} }_{ =0 }
$$
$$
\boxed{\tilde{Y}_{t}=\theta \tilde{K}_{t}+\tilde{\lambda}_{t}+(1-\theta)\tilde{H}_{t} }
$$

Now for the equation
$$
r_{t} =\theta \frac{ Y_{t}}{K_{t}}
$$
We replace
$$
\bar{r}e^{\tilde{r}_{t}} =\theta\frac{ \bar{Y}e^{\tilde{Y}_{t}}}{\bar{K}e^{\tilde{K}_{t}}} 
$$
$$
\bar{r}e^{\tilde{r}_{t}} =\theta\frac{ \bar{Y}}{\bar{K}}  e^{\tilde{Y}_{t} - \tilde{K}_{t}}
$$
$$
\bar{r} (1+\tilde{r}_{t}) = \frac{\theta \bar{Y}}{\bar{K}} (1+\tilde{Y}_{t}-\tilde{K}_{t})
$$
Using the steady state condition $\bar{r}=\frac{\theta \bar{Y}}{\bar{K}}$
$$
\cancel{\bar{r}}  (1+\tilde{r}_{t}) = \cancel{\frac{\theta \bar{Y}}{\bar{K}}}  (1+\tilde{Y}_{t}-\tilde{K}_{t})
$$
$$
\boxed{\tilde{r}_{t} = \tilde{Y}_{t}-\tilde{K}_{t}}
$$
# Sistema de ecuaciones
We are left with this system of equations
$$
0= \tilde{C}_{t} - \mathbb{E}_{t}\tilde{C}_{t+1} + \beta \bar{r} \mathbb{E}_{t} \tilde{r}_{t+1}
$$
$$
0= \tilde{C}_{t} - \tilde{Y}_{t} + \frac{\tilde{H}_{t}}{1-\bar{H}}
$$
$$
0 =  \bar{Y}\tilde{Y}_{t} - \bar{C}\tilde{C}_{t}  + \bar{K} \left[  (1-\delta)\tilde{K}_{t}+\tilde{K}_{t+1}  \right] 
$$
$$
0=\theta \tilde{K}_{t}+\tilde{\lambda}_{t}+(1-\theta)\tilde{H}_{t} - \tilde{Y}_{t}
$$
$$
0 = \tilde{Y}_{t}-\tilde{K}_{t} - \tilde{r}_{t} 
$$
We define the vector of variables which we treat as state variables although most are controls:
$$
x_{t} = \begin{bmatrix}
\tilde{K}_{t+1} \\
\tilde{Y}_{t} \\
\tilde{C}_{t} \\
\tilde{H}_{t} \\
\tilde{r}_{t}
\end{bmatrix}
$$
Ant teh stochastic variables are: $z_{t} = [\lambda _{t}]$
And express it as the matrix equation:
$$
0=\mathbb{E}_{t}\left[ Fx_{t+1} + Gx_{t} + Hx_{t-1} + Lz_{t+1} + Mz_{t}  \right] 
$$
$$
z_{t+1} = Nz_{t} + \varepsilon_{t+1}
$$
With these matrices:
$$
F = 
\begin{bmatrix}
0 & 0 & -1 & 0 & \beta \bar{r}  \\
0 & 0 & 0 & 0 & 0  \\
0 & 0 & 0 & 0 & 0  \\
0 & 0 & 0 & 0 & 0  \\
0 & 0 & 0 & 0 & 0 
\end{bmatrix}
$$
$$
G=\begin{bmatrix}
0 & 0 & 1 & 0 & 0 \\
0 & -1 & 1 & \frac{1}{1-\bar{H}} & 0  \\
\bar{K} & \bar{Y} & -\bar{C} & 0 & 0  \\
0 & -1 & 0 & (1-\theta) & 0  \\
0 & 1 & 0 & 0 & -1  
\end{bmatrix}
$$
$$
H=\begin{bmatrix}
0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0   \\
\bar{K}(1-\theta) &0 & 0 & 0 &  0  \\
\theta & 0 & 0 & 0 & 0   \\
-1 & 0 & 0 & 0 & 0 
\end{bmatrix}
$$
$$
L= [0]
$$
$$
M= \begin{bmatrix}
0 \\
0 \\
0 \\
1 \\
0
\end{bmatrix}
$$
$$
N = 
\begin{bmatrix}
\gamma
\end{bmatrix}
$$