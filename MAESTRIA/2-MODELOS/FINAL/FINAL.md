# The Model
This is a small open economy model with only a final good production (there is only one good) and where the only foreign asset available is a foreign bond. 
## Households

Households own capital, deposits in the domestic banking system, and foreign bonds (which could be positive or negative).  They supply labor to the local firms and rent out their capital.  Households have a cash in advance constraint, using only money brought over from the previous period, the cash in advance constraint includes deposits in the bank.

Utility function:
$$\max E_t \sum_{j=0}^{\infty} \beta^j \left[ \ln c_{t+j}^i + B h_{t+j}^i \right]$$
Cash-in-advance constraint: 
$$P_t c_t^i = m_{t-1}^i - n_{t}^i  $$

There, $n_{t}^i$ are deposits in the bank brought from previous period. Flow budget constraint: 
$$
\begin{aligned}
& \frac{e_t b_t^i}{P_t} + k_{t+1}^i +\frac{m_{t}^{i}}{P_{t}} + \frac{\kappa}{2}(k_{t+1}^i - k_t^i)^2 = \dots \\
& \qquad  \dots w_t h_t^i + r_t k_t^i + (1-\delta)k_t^i + \frac{e_t(1+r_{t-1}^f)b_{t-1}^i}{P_t} + r_t^n \frac{n_{t}^i}{P_t} 
\end{aligned}
$$

The household $i$ choose sequences of $\{c_{t}^{i},h_{t}^{i},k_{t+1}^{i},m_{t}^{i},n_{t}^{i},b_{t} ^{i} \}$.
$$
\begin{aligned}
& \mathcal{L} = \mathbb{E} \sum ^{\infty}_{t=0} \beta ^{t} \left\{ \ln c_{t}^{i} + B h_{t}^{i} + \lambda _{t} \left[  w_t h_t^i + r_t k_t^i + (1-\delta)k_t^i + \frac{e_t(1+r_{t-1}^f)b_{t-1}^i}{P_t} + r_t^n \frac{n_{t}^i}{P_t}  \right. \right. \dots \\
& \qquad  \dots \left. \left. -\frac{e_t b_t^i}{P_t} - k_{t+1}^i -\frac{m_{t}^{i}}{P_{t}} - \frac{\kappa}{2}(k_{t+1}^i - k_t^i)^2 \right] + \mu _{t} \left[  m_{t-1}^i - n_{t}^i - P_{t}c_{t}^{i} \right]  \right\} 
\end{aligned}
$$

### First-order conditions:
Dropping the superscript $i$ to make notation simpler.
$$
\frac{ \partial \mathcal{L} }{ \partial c_{t} } = \beta ^{t} \frac{1}{c_{t}} -\beta ^{t} \mu _{t} P_{t} = 0
$$
$$
\implies \mu _{t} = \frac{1}{P_{t}c_{t}}
$$
$$
\frac{ \partial \mathcal{L} }{ \partial h_{t} } = \beta ^{t} B + \beta ^{t} \lambda _{t} w_{t} =0
$$
$$
\implies \lambda _{t}w_{t} + B =0 
$$
$$
\frac{ \partial \mathcal{L} }{ \partial k_{t+1} } = \beta ^{t} \lambda _{t} (-1) - \beta ^{t} \lambda _{t} \kappa (k_{t+1}-k_{t})  +  \beta ^{t+1} \mathbb{E}_{t}[ \lambda _{t+1} \left( r_{t+1} + (1-\delta) + \kappa(k_{t+2} - k_{t+1})\right)  ]=0 
$$
$$
\implies  \beta  \mathbb{E}_{t}[ \lambda _{t+1} \left( r_{t+1} + (1-\delta) + \kappa(k_{t+2} - k_{t+1})\right)  ] =  \lambda _{t} (1+ \kappa (k_{t+1}-k_{t})  )
$$

$$
\frac{ \partial \mathcal{L} }{ \partial b_{t} } =- \beta ^{t} \lambda _{t} \frac{e_{t}}{P_{t}} + \beta ^{t+1} \mathbb{E} \left( \lambda_{t+1} (1+r_{t}^{f} ) \frac{e_{t+1}}{P_{t+1}}  \right)=0
$$
$$
\implies \lambda _{t} \frac{e_{t}}{P_{t}}  = \beta \mathbb{E} \left( \lambda_{t+1} (1+r_{t}^{f} ) \frac{e_{t+1}}{P_{t+1}}  \right) 
$$
$$
\frac{ \partial \mathcal{L} }{ \partial m_{t} }  = \beta ^{t} \lambda _{t} (-1) \frac{1}{P_{t}} + \beta ^{t+1} \mathbb{E}_{t}\mu_{t+1} = 0
$$
$$
\implies \lambda_{t} \frac{1}{P_{t}} = \beta \mathbb{E}_{t} [\mu_{t+1}]
$$
$$
\frac{ \partial \mathcal{L} }{ \partial n_{t} } = \beta ^{t} \lambda _{t} r_{t}^{n} \frac{1}{P_{t}} - \beta ^{t} \mu _{t} =0
$$
$$\implies  \lambda _{t} r_{t}^{n} \frac{1}{P_{t}} = \mu _{t} \tag{6}$$
We have this system of equations
$$
\begin{aligned}
(1) \quad  & \mu _{t} = \frac{1}{c_{t}P_{t} }  \\
(2) \quad  & \lambda _{t} = -  \frac{B}{w_{t}} \\
(3) \quad  & \lambda _{t} (1+ \kappa (k_{t+1}-k_{t})  ) = \beta  \mathbb{E}_{t}[ \lambda _{t+1} \left( r_{t+1} + (1-\delta) + \kappa(k_{t+2} - k_{t+1})\right)  ] \\
(4) \quad  & \lambda _{t} = \beta \mathbb{E}_{t}  \left[ \lambda_{t+1} (1+r_{t}^{f} ) \frac{e_{t+1}}{e_{t}} \frac{P_{t}}{P_{t+1}}   \right] \\
(5) \quad  & \lambda_{t} = P_{t} \beta \mathbb{E}_{t} [\mu_{t+1}] \\
(6) \quad  & \lambda _{t} = P_{t} \frac{1}{r_{t}^{n}} \mu _{t}
\end{aligned}
$$
Plus the flow budget and CIA constraints. Replacing $\mu _{t}$ from (1) into (5) amd (6), we get $\lambda_{t} = P_{t} \beta \mathbb{E}_{t} \left[ \frac{1}{c_{t+1}P_{t+1}} \right]$ and $\lambda _{t}=\frac{1}{c_{t}r_{t}^{n}}$. This implies a relation between terms in (1), (2) (5) and (6):
$$
\frac{1}{r_{t}^{n}c_{t}} = - \frac{B}{w_{t}} =P_{t} \beta \mathbb{E}_{t} \left[ \frac{1}{c_{t+1}P_{t+1}} \right]
$$
We get to these four First Order Conditions:
$$
\boxed{ 
0 = \frac{B}{w_{t}} + \beta  \mathbb{E}_{t} \left[ \frac{P_{t}}{c_{t+1}P_{t+1}} \right] 
}
$$
$$
\boxed{ 0 = \frac{1}{c_{t}r_{t}^{n}} - \beta  \mathbb{E}_{t} \left[ \frac{P_{t}}{c_{t+1}P_{t+1}} \right]   }
$$
Now, we replace (5): $\frac{\lambda_{t}}{P_{t}} =  \beta \mathbb{E}_{t} \left[ \frac{1}{c_{t+1}P_{t+1}} \right]$ into (4), and get:
$$
\boxed{
0=\mathbb{E}_{t} \left[ \frac{e_{t}}{P_{t+1}c_{t+1} } \right]  - \beta \mathbb{E}_{t} \left[  \frac{e_{t+1}}{P_{t+2}c_{t+2} } (1+r_{t}^{f})  \right] 
}
$$
And replacing into (5) into (3) we get:
$$
\boxed{
\begin{aligned}
&0=\mathbb{E}_{t} \left[ \frac{P_{t}}{c_{t+1}P_{t+1}} \right]  (1+ \kappa (k_{t+1}-k_{t})  ) \dots \\
&\quad \dots-\beta  \mathbb{E}_{t} \left[ \frac{P_{t+1}}{P_{t+2}c_{t+2}} \left( r_{t+1} + (1-\delta) + \kappa(k_{t+2} - k_{t+1})\right) \right] 
\end{aligned}
}
$$
Along with the budget constraints and the corresponding transversality condition, those are all our household equations.
## Firms

Firms borrow working capital from the bank to cover their wage bill and pay interest to the banks for using the capital. They rent physical capital from the households. Firms are competitive.

$$
Y_{t} =  K_{t} ^{\theta} H_{t}^{1-\theta} \qquad \text{subject to} \quad  Y_{t} = r_{t}^{w} w_{t}H_{t} + r_{t} K_{t}
$$
$r_{t}^{w}$ is a gross interest rate on borrowed working capital. Perfect competition means these equations will hold:
$$r_t^w w_t = (1 - \theta)  K_t^\theta H_t^{-\theta}$$

$$r_t = \theta  K_t^{\theta-1} H_t^{1-\theta}.$$
Productivity is ignored because we only care about foreign price shocks, but even if it follows a random process $\ln \lambda_t = \gamma \ln \lambda_{t-1} + \varepsilon_t^{\lambda}$, in steady state it would all have been the same with or without it. This way it makes sense for firms to borrow in the same period when the amount sold is known. No uncertainty and no risk in the working capital financing.

## Banks
Banks take deposits from the households and lend to the firms money for working capital that is used to cover their wage bill. They pay back their loans at the end of the period. Banks are competitive. They have this budget constraint:

$$
N_t + \left(g_t^M - 1\right) M_{t-1} = P_t w_t H_t
$$
The central bank makes money injections $\left(g_t^M - 1\right) M_{t-1}$ into the financial sectors, following a taylor rule. Perfect competitions means that the cost of deposits equals the returns from lending to firms:
$$
r_{t}^{n}N_t = r_{t}^{w}  P_t w_t H_t
$$
Replacing the constraint, we get:
$$
g_t^M = \frac{\left(r_t^n - r_t^w\right)}{r_t^w} \frac{N_t}{M_{t-1}} + 1.
$$

For that to hold the bank follows a Taylor rule with a=.5 and b=.5 using current output and current inflation in the Taylor rule.
$$
r_t^w = 0.5\left(Y_t - \bar{Y}\right) + 0.5\left(\pi_t - \bar{\pi}\right) + \bar{r}^w.
$$
defining:
$$
\pi_{t}=\frac{P_{t}}{P_{t-1}}
$$
It also holds that
$$
M_t = g_t^M  M_{t-1}.
$$

# Equilibrium and the full model
Foreign market clearing
$$
B_t - (1 + r_{t-1}^f) B_{t-1} = P_t^* X_t,
$$
Foreign interest rate (for the model to close)
$$
r_t^f = r^* - a \frac{B_t}{P_t^*}.
$$
With a foreign price process:
$$
P_t^* = 1 - \gamma^* + \gamma^* P_{t-1}^* + \varepsilon_t^*,
$$
And there is purchasing power parity:
$$
e_t = \frac{P_t}{P_t^*}
$$
We also say that all households are identical so we define $Z_{t}=z^{i}_{t}$ for each individual variable $z$.
The full model has 15 variables, $C_t$, $K_{t+1}$, $H_t$, $M_t$, $N_{t}$, $B_t$, $P_t$, $e_t$, $r_t$, $w_t$, $r^{n}$, $r^{w}$, $r_t^f$, $g_t^M$ and $X_t$. There is one stochastic shock variable $P^{*}_{t}$. These are all the equations
$$
\begin{aligned}
(1)\qquad & 0 = \frac{B}{w_{t}} + \beta  \mathbb{E}_{t} \left[ \frac{P_{t}}{C_{t+1}P_{t+1}} \right] \\
(2)\qquad & 0 = \frac{1}{C_{t}r_{t}^{n}} - \beta  \mathbb{E}_{t} \left[ \frac{P_{t}}{C_{t+1}P_{t+1}} \right] \\
(3)\qquad & 0=\mathbb{E}_{t} \left[ \frac{e_{t}}{P_{t+1}C_{t+1} } \right]  - \beta \mathbb{E}_{t} \left[  \frac{e_{t+1}}{P_{t+2}C_{t+2} } (1+r_{t}^{f})  \right] \\
(4)\qquad &0=\mathbb{E}_{t} \left[ \frac{P_{t}}{C_{t+1}P_{t+1}} \right]  (1+ \kappa (K_{t+1}-K_{t})  ) \dots \\
&\qquad \dots-\beta  \mathbb{E}_{t} \left[ \frac{P_{t+1}}{P_{t+2}C_{t+2}} \left( r_{t+1} + (1-\delta) + \kappa(K_{t+2} - K_{t+1})\right) \right] \\
(5)\qquad &  0=P_t C_{t} - M_{t-1} + N_{t} \\
(6)\qquad &0 = \frac{M_t}{P_t} + \frac{e_t B_t}{P_t} + K_{t+1} + \frac{\kappa}{2}(K_{t+1} - K_t)^2 \dots\\
& \qquad \dots - w_t H_t - r_t K_t - (1 - \delta) K_t - \frac{e_t(1 + r_{t-1}^f) B_{t-1}}{P_t} -r_t^n \frac{N_{t}}{P_t}  \\
(7)\qquad &0 = r_{t}^{w}w_t - (1 - \theta)  K_t^{\theta} H_t^{-\theta} \\
(8)\qquad &0 = r_t - \theta K_t^{\theta-1} H_t^{1-\theta} \\
(9)\qquad &0 = B_t - (1 + r_{t-1}^f) B_{t-1} - P_t^* X_t \\
(10)\qquad &0 = r_t^f - r^* + a \frac{B_t}{P_t^*} \\
(11)\qquad &0 = e_t - \frac{P_t}{P_t^*}\\
(12)\qquad & 0=r_t^n N_t  - r_t^w P_t w_t H_t \\
(13)\qquad &  0=N_t + (g_t^M - 1)M_{t-1} - P_t w_t H_t\\
(14)\qquad &0= 0.5(K_{t}^{\theta} H_{t}^{1-\theta} - \bar{Y}) + 0.5(\pi_t - \bar{\pi}) + \bar{r}^w -  r_t^w \\
(15)\qquad &0=M_t - g_t^M M_{t-1}
\end{aligned}
$$

# Steady States
Replacing that system with steady state values:
$$
\begin{aligned}
(1) \quad & 0 = \frac{B}{\bar{w}} + \beta  \frac{P_{t}}{\bar{C}P_{t+1}} \\
(2) \quad & 0 = \frac{1}{\bar{C}\bar{r}^{n}} - \beta  \frac{P_{t}}{\bar{C}P_{t+1}} \\
(3) \quad & 0= \frac{e_{t}}{P_{t+1}\bar{C} }  - \beta \frac{e_{t+1}}{P_{t+2}\bar{C} } (1+\bar{r}^{f}) \\
(4) \quad &0= \frac{P_{t}}{\bar{C}P_{t+1}} (1+ \kappa (\bar{K}-\bar{K})  ) \dots \\
&\qquad \dots-\beta  \frac{P_{t+1}}{P_{t+2}\bar{C}} \left( \bar{r} + (1-\delta) + \kappa(\bar{K} - \bar{K})\right) \\
(5) \quad &  0=\bar{C} - \overline{M/P} +\overline{N/P} \\
(6) \quad &0 = \overline{M/P}  + \frac{e_{t} \bar{B}}{P_t} + \bar{K} + \frac{\kappa}{2}(\bar{K} - \bar{K})^2 \dots\\
& \qquad \dots - \bar{w} \bar{H} - \bar{r} \bar{K} - (1 - \delta) \bar{K} - \frac{e_{t}(1 + \bar{r}^f) \bar{B}}{P_t} -\bar{r}^n \overline{N/P} \\
(7) \quad &0 = \bar{r}^{w} \bar{w} - (1 - \theta)  \bar{K}^{\theta} \bar{H}^{-\theta} \\
(8) \quad &0 = \bar{r} - \theta \bar{K}^{\theta-1} \bar{H}^{1-\theta} \\
(9) \quad &0 = \bar{B} - (1 + \bar{r}^f) \bar{B} - \bar{P}^* \bar{X} \\
(10) \quad &0 = \bar{r}^f - r^* + a \frac{\bar{B}}{\bar{P}^*} \\
(11) \quad &0 = e_t - \frac{P_t}{\bar{P}^*}\\
(12) \quad & 0=\bar{r}^n \overline{N/P}  - \bar{r}^w  \bar{w} \bar{H} \\
(13) \quad &  0=\overline{N/P} + \overline{M/P} - \frac{1}{\bar{g}^{M}}\overline{M/P}  -\bar{w} \bar{H}\\
(14) \quad &0= 0.5(\bar{K}^{\theta} \bar{H}^{1-\theta} - \bar{Y}) + 0.5(\pi_t - \bar{\pi}) + \bar{r}^w -  \bar{r}^w \\
(15) \quad &0=M_{t} - \bar{g}^M M_{t-1}
\end{aligned}
$$

Now we start simplifying. We define $\bar{\pi}=\frac{P_{t+1+j}}{P_{t+j}}$ for all $j$ as the steady state inflation rate.We know the policy interest rate will equal $\bar{r}^{w}$, a number decided by de central bank for their rule. We also know $\bar{P}^{*}=1$ from the way we defined the stochastic process. With that in mind, from equation (11) it follows that $e_{t}=P_{t}$. From equations (3) and (4) we get the usual steady state values $\bar{r}^{f}=\frac{1}{\beta}-1$ and $\bar{r}=\frac{1}{\beta}-(1-\delta)$. Also, from (10) we get $\bar{B}= \frac{r^{*}-\bar{r}^{f}}{a}$. From that it follows in (9) that $\bar{X}=\bar{r}^{f}\bar{B}$.
We can also derive that $\bar{g}^{M}=\bar{\pi}$. This follows from equation (15), $0=M_{t} - \bar{g}^M M_{t-1} \implies \frac{M_{t}}{P_{t}}=\bar{g}^{M} \frac{M_{t-1}}{P_{t-1}} \frac{P_{t}}{P_{t-1}}$ $\implies$ $\overline{M/P}=\frac{\bar{g}^{M}\overline{M/P}}{\bar{\pi}}$ $\implies$ $\bar{g}^{M}=\bar{\pi}$. 
We are still left with 8 equations:
$$
\begin{aligned}
(1) \quad &  \beta \bar{w} = -B\bar{C} \bar{\pi}\\
(2) \quad & \bar{\pi} = \beta \bar{r}^{n} \\
(3) \quad & \bar{C} = \overline{M/P}  - \overline{N/P}  \\
(4) \quad & \overline{M/P} - \bar{B}\bar{r}^{f} - \bar{K}(\bar{r}-\delta) -\bar{r}^{n}\overline{N/P} - \bar{w}\bar{H} \\
(5) \quad &\bar{r}^{w} \bar{w} =  (1 - \theta)  \bar{K}^{\theta} \bar{H}^{-\theta} \\
(6) \quad &\bar{r} =  \theta \bar{K}^{\theta-1} \bar{H}^{1-\theta} \\
(7) \quad &  \bar{r}^w  \bar{w} \bar{H}=\bar{r}^n \overline{N/P}   \\
(8) \quad &  \frac{1}{\bar{\pi}}\overline{M/P} + \bar{w} \bar{H}=\overline{N/P} + \overline{M/P} \\
\end{aligned}
$$
and 8 variables whose steady state values we want to know: $\bar{w}$, $\bar{C}$, $\bar{r}^{n}$, $\bar{\pi}$, $\bar{K}$, $\overline{N/P}$, $\overline{M/P}$, $\bar{H}$. This is a pretty complicated and nonlinear system. We solved for thise steady states in OCTAVE using `fsolve`. 
### Values
```

\begin{table}[htbp]
\centering
\caption{Model Parameters}
\begin{tabular}{cccccccc}
\toprule
$\beta$ & $\theta$ & $\delta$ & $B$ & $r^*$ & $a$ & $\bar{\pi}$ & $\kappa$ \\
\midrule
0.99 & 0.36 & 0.025 & $-2.5805$ & 0.03 & 0.01 & 1.02 & 2 \\
\bottomrule
\end{tabular}
\end{table}
\begin{table}[htbp]
\centering
\caption{Steady states}
\footnotesize
\begin{tabular}{ccccccccc}
\toprule
$\bar{\pi}$ & $\bar{r}^w$ & $\bar{w}$ & $\bar{C}$ & $\bar{r}^n$ & $\bar{K}$ & $\overline{N/P}$ & $\overline{M/P}$ & $\bar{H}$ \\
\midrule
1.0300 & 0.9546 & 2.4834 & 0.9250 & 1.0404 & 7.3896 & 0.4432 & 1.3682 & 0.1945 \\
\bottomrule
\end{tabular}

\vspace{0.5em}

\begin{table}[htbp]
\centering
\caption{Steady State}
\footnotesize
\begin{tabular}{ccccccccc}
\toprule
$\bar{\pi}$ & $\bar{r}^w$ & $\bar{w}$ & $\bar{C}$ & $\bar{r}^n$ & $\bar{K}$ & $\overline{N/P}$ & $\overline{M/P}$ & $\bar{H}$ \\
\midrule
1.0300 & 0.9750 & 2.4314 & 0.9056 & 1.0404 & 11.5706 & 0.6940 & 1.5997 & 0.3046 \\
\bottomrule
\end{tabular}
\vspace{0.5em}
\begin{tabular}{cccccccc}
\toprule
$\bar{Y}$ & $\bar{P}^*$ & $\bar{e}$ & $\bar{g}^M$ & $\bar{X}$ & $\bar{r}^f$ & $\bar{r}$ & $\bar{B}$ \\
\midrule
1.1282 & 1.0000 & 1.0300 & 1.0300 & 0.0201 & 0.0101 & 0.0351 & 1.9899 \\
\bottomrule
\end{tabular}
\end{table}
\newpage
\section{Log linear version}
```

### Code
```
function ss()
    params = set_parameters();
    x0 = [0.3; 0.8; 1.02; 1; 0.5; 0.3; 0.3; 1.02];
    [x_sol, ~] = fsolve(@(x) steady_state_system(x, params), x0);
    [w_bar, C_bar, rn_bar, K_bar, NP_bar, MP_bar, H_bar, rw_bar] = deal(x_sol(1), x_sol(2), x_sol(3), x_sol(4), x_sol(5), x_sol(6), x_sol(7), x_sol(8));
    pi_bar = params.pi; P_star_bar = 1; e_bar = params.pi; gM_bar = params.pi;
    X_bar = params.rf * params.B_foreign;
    Y_bar = K_bar^params.theta * H_bar^(1-params.theta);
    fprintf('Steady State Values:\n');
    fprintf('pi_bar = %.6f\nrw_bar = %.6f\nw_bar = %.6f\nC_bar = %.6f\n', pi_bar, rw_bar, w_bar, C_bar);
    fprintf('rn_bar = %.6f\nK_bar = %.6f\nNP_bar = %.6f\nMP_bar = %.6f\n', rn_bar, K_bar, NP_bar, MP_bar);
    fprintf('H_bar = %.6f\nY_bar = %.6f\nP_star_bar = %.6f\ne_bar = %.6f\n', H_bar, Y_bar, P_star_bar, e_bar);
    fprintf('gM_bar = %.6f\nX_bar = %.6f\nr_foreign_bar = %.6f\nr_capital_bar = %.6f\nB_foreign_bar = %.6f\n', gM_bar, X_bar, params.rf, params.r, params.B_foreign);
end

function F = steady_state_system(x, params)
    [w, C, rn, K, NP, MP, H, rw] = deal(x(1), x(2), x(3), x(4), x(5), x(6), x(7), x(8));
    p = params;
    F = [p.beta * w + p.B_coeff * C * p.pi;
         p.pi - p.beta * rn;
         C - MP + NP;
         MP + p.B_foreign * p.rf - K * (p.r - p.delta) - rn * NP - w * H;
         rw * w - (1 - p.theta) * K^p.theta * H^(-p.theta);
         p.r - p.theta * K^(p.theta-1) * H^(1-p.theta);
         rw * w * H - rn * NP;
         (1/p.pi) * MP + w * H - NP - MP];
end

function params = set_parameters()
    params = struct('beta', 0.99, 'theta', 0.36, 'delta', 0.025, 'B_coeff', -2.5805, 'r_star', 0.03, 'a', 0.01, 'pi', 1.03);
    params.rf = 1/params.beta - 1;
    params.r = 1/params.beta - (1-params.delta);
    params.B_foreign = (params.r_star - params.rf) / params.a;
    params.P_star = 1;
    params.X = params.rf * params.B_foreign;
end
```


# Log Linear version
We now use Uhlig's method to express the system of 15 equations in log-linear form.  For each variable $Z_t$, we define: $\tilde{Z}_t = \ln Z_t - \ln \bar{Z}$. This means: $Z_t = \bar{Z}e^{\tilde{Z}_t}$. We will be using these properties: $e^{\tilde{X}_t + a\tilde{Y}_t} \approx 1 + \tilde{X}_t + a\tilde{Y}_t$;  $\tilde{X}_t \tilde{Y}_t \approx 0$ ; $E_t[ae^{\tilde{X}_{t+1}}] \approx a + aE_t[\tilde{X}_{t+1}]$. 


---
#### First
With this in mind, first equation becomes: 
$$
0 = \frac{B}{w_{t}} + \beta  \mathbb{E}_{t} \left[ \frac{P_{t}}{C_{t+1}P_{t+1}} \right] 
$$
$$0 = \frac{B}{\bar{w}}e^{-\tilde{w}_t} + \beta \frac{1}{\bar{C}}E_t\left[e^{\tilde{P}_t - \tilde{C}_{t+1} - \tilde{P}_{t+1}}\right]$$
 $$0 = \frac{B}{\bar{w}}(1 - \tilde{w}_t) + \beta \frac{1}{\bar{C}}E_t[1 + \tilde{P}_t - \tilde{C}_{t+1} - \tilde{P}_{t+1}]$$
Since $\tilde{P}_t$ is known at time $t$: $$0 = \frac{B}{\bar{w}}(1 - \tilde{w}_t) + \frac{\beta}{\bar{C}}(1 + \tilde{P}_t - E_t[\tilde{C}_{t+1}] - E_t[\tilde{P}_{t+1}])$$
Multiplying through by $\bar{w}\bar{C}$: 
$$0 = B\bar{C}(1 - \tilde{w}_t) + \beta\bar{w}(1 + \tilde{P}_t - E_t[\tilde{C}_{t+1}] - E_t[\tilde{P}_{t+1}])$$

In steady state: $0 = B\bar{C} + \beta\bar{w}$, so $B\bar{C} = -\beta\bar{w}$ Subtracting the steady state:
$$0 = -B\bar{C}\tilde{w}_t + \beta\bar{w}(\tilde{P}_t - E_t[\tilde{C}_{t+1}] - E_t[\tilde{P}_{t+1}])$$
Dividing by $\beta\bar{w}$ and using $B\bar{C} = -\beta\bar{w}$: 
$$\boxed{
0 = \tilde{w}_t + \tilde{P}_t - E_t[\tilde{P}_{t+1}] - E_t[\tilde{C}_{t+1}]
}$$

---

#### Second
For the second equation we have:
$$
 0 = \frac{1}{C_{t}r_{t}^{n}} - \beta  \mathbb{E}_{t} \left[ \frac{P_{t}}{C_{t+1}P_{t+1}} \right] 
$$
$$
0 = \frac{1}{\bar{C}\bar{r}^n}e^{-\tilde{C}_t - \tilde{r}_t^n} - \frac{\beta}{\bar{C}}E_t[e^{\tilde{P}_t - \tilde{C}_{t+1} - \tilde{P}_{t+1}}]
$$
Using $\frac{1}{\bar{C}\bar{r}^n} = \frac{\beta}{\bar{C}\bar{\pi}}$ and the steady state balance:

$$0 = \frac{\beta}{\bar{C}\bar{\pi}}(1 - \tilde{C}_t - \tilde{r}_t^n) - \frac{\beta}{\bar{C}} \mathbb{E}_{t} \left[ 1 + \tilde{P}_t - \tilde{C}_{t+1} - \tilde{P}_{t+1} \right]$$
$$
\boxed{
0 = -\tilde{C}_t - \tilde{r}_t^n - \bar{\pi}\tilde{P}_t + \bar{\pi}\mathbb{E}_{t}\tilde{C}_{t+1} + \bar{\pi}\mathbb{E}_{t}\tilde{P}_{t+1}
}
$$
---

#### Third
Third equation:
$$
0=\mathbb{E}_{t} \left[ \frac{e_{t}}{P_{t+1}C_{t+1} } \right]  - \beta \mathbb{E}_{t} \left[  \frac{e_{t+1}}{P_{t+2}C_{t+2} } (1+r_{t}^{f})  \right] 
$$
$$0=\mathbb{E}_{t} \left[ \frac{\bar{e}e^{\tilde{e}_{t}}}{\bar{P}e^{\tilde{P}_{t+1}}\bar{C}e^{\tilde{C}_{t+1}} } \right] - \beta \mathbb{E}_{t} \left[ \frac{\bar{e}e^{\tilde{e}_{t+1}}}{\bar{P}e^{\tilde{P}_{t+2}}\bar{C}e^{\tilde{C}_{t+2}} } (1+\bar{r}^f e^{\tilde{r}_t^{f}}) \right]$$
$$
\begin{aligned}
&0=\frac{\bar{e}}{\bar{P}\bar{C}}\mathbb{E}_{t} \left[ 1 + \tilde{e}_{t} - \tilde{P}_{t+1} - \tilde{C}_{t+1} \right]\dots \\
&\dots\beta \frac{\bar{e}}{\bar{P}\bar{C}}\mathbb{E}_{t} \left[ (1 + \tilde{e}_{t+1} - \tilde{P}_{t+2} - \tilde{C}_{t+2}) [(1+\bar{r}^f) + (1+\bar{r}^f)\tilde{r}_t^{f}] \right]\\
\end{aligned}
$$
$$
\begin{aligned}
&0=\frac{\bar{e}}{\bar{P}\bar{C}}\mathbb{E}_{t} \left[ 1 + \tilde{e}_{t} - \tilde{P}_{t+1} - \tilde{C}_{t+1} \right]\dots \\
&\dots- \beta \frac{\bar{e}}{\bar{P}\bar{C}}\mathbb{E}_{t} \left[ (1+\bar{r}^f) + (1+\bar{r}^f)(\tilde{e}_{t+1} - \tilde{P}_{t+2} - \tilde{C}_{t+2}) + (1+\bar{r}^f)\tilde{r}_t^{f} \right] \\
\end{aligned}
$$
Factoring out $\frac{\bar{e}}{\bar{P}\bar{C}}$ and using the steady state condition $1 = \beta(1+\bar{r}^f)$ we get:
$$
\boxed{
0 = \tilde{e}_t - E_t[\tilde{e}_{t+1}] - E_t[\tilde{P}_{t+1}] + E_t[\tilde{P}_{t+2}] - E_t[\tilde{C}_{t+1}] + E_t[\tilde{C}_{t+2}] - \beta\bar{r}^f\tilde{r}_t^f
}
$$
---

#### Fourth
For the fourth equation, we can analyze the first term first and then the second. We had this:
$$
\begin{aligned}
&0=\mathbb{E}_{t} \left[ \frac{P_{t}}{C_{t+1}P_{t+1}} \right]  (1+ \kappa (K_{t+1}-K_{t})  ) \dots \\
&\qquad \dots-\beta  \mathbb{E}_{t} \left[ \frac{P_{t+1}}{P_{t+2}C_{t+2}} \left( r_{t+1} + (1-\delta) + \kappa(K_{t+2} - K_{t+1})\right) \right] \\
\end{aligned}
$$
First part looks like this:
$$
\mathbb{E}_{t} \left[ \frac{\bar{P}e^{\tilde{P}_t}}{\bar{C}e^{\tilde{C}_{t+1}}\bar{P}e^{\tilde{P}_{t+1}}} \right] (1+ \kappa \bar{K}(\tilde{K}_{t+1}-\tilde{K}_{t}) )
$$
$$
= \frac{1}{\bar{C}}\mathbb{E}_{t} \left[ 1 + \tilde{P}_t - \tilde{C}_{t+1} - \tilde{P}_{t+1} \right] (1+ \kappa \bar{K}(\tilde{K}_{t+1}-\tilde{K}_{t}) )
$$
$$
= \frac{1}{\bar{C}}\mathbb{E}_{t} \left[ 1 + \tilde{P}_t - \tilde{C}_{t+1} - \tilde{P}_{t+1} \right] + \frac{\kappa \bar{K}}{\bar{C}}(\tilde{K}_{t+1}-\tilde{K}_{t})
$$
The second part
$$\beta \mathbb{E}_{t} \left[ \frac{\bar{P}e^{\tilde{P}_{t+1}}}{\bar{P}e^{\tilde{P}_{t+2}}\bar{C}e^{\tilde{C}_{t+2}}} \left( \bar{r}e^{\tilde{r}_{t+1}} + (1-\delta) + \kappa\bar{K}(\tilde{K}_{t+2} - \tilde{K}_{t+1})\right) \right]$$
$$
= \frac{\beta}{\bar{C}} \mathbb{E}_{t} \left[ (1 + \tilde{P}_{t+1} - \tilde{P}_{t+2} - \tilde{C}_{t+2}) \left( \bar{r} + \bar{r}\tilde{r}_{t+1} + (1-\delta) + \kappa\bar{K}(\tilde{K}_{t+2} - \tilde{K}_{t+1})\right) \right]
$$
$$
= \frac{\beta}{\bar{C}} \mathbb{E}_{t} \left[ (\bar{r} + 1-\delta)(1 + \tilde{P}_{t+1} - \tilde{P}_{t+2} - \tilde{C}_{t+2}) + \bar{r}\tilde{r}_{t+1} + \kappa\bar{K}(\tilde{K}_{t+2} - \tilde{K}_{t+1}) \right]
$$

Joining them back, using steady state condition $1 = \beta(\bar{r} + 1-\delta)$ and muliplying $\bar{C}$:  
$$
\begin{aligned}
& 0 = \tilde{P}_t - \mathbb{E}_{t}\tilde{C}_{t+1} - \mathbb{E}_{t}\tilde{P}_{t+1} + \kappa \bar{K}(\tilde{K}_{t+1}-\tilde{K}_{t}) \dots\\
&\dots- \mathbb{E}_{t}\tilde{P}_{t+1} + \mathbb{E}_{t}\tilde{P}_{t+2} + \mathbb{E}_{t}\tilde{C}_{t+2} - \beta\bar{r}\mathbb{E}_{t}\tilde{r}_{t+1} - \beta\kappa\bar{K}\mathbb{E}_{t}(\tilde{K}_{t+2} - \tilde{K}_{t+1})
\end{aligned}
$$
$$
\boxed{
\begin{aligned}
&0 = \tilde{P}_t - 2\mathbb{E}_{t}[\tilde{P}_{t+1}] + \mathbb{E}_{t}[\tilde{P}_{t+2} ]- \mathbb{E}_{t}[\tilde{C}_{t+1}] + \mathbb{E}_{t}[\tilde{C}_{t+2}] \dots \\
&- \kappa \bar{K}\tilde{K}_{t} + (1+\beta)\kappa \bar{K}\tilde{K}_{t+1} - \beta\kappa\bar{K}\mathbb{E}_{t}[\tilde{K}_{t+2} ]- \beta\bar{r}\mathbb{E}_{t}[\tilde{r}_{t+1}] \\
\end{aligned}
}
$$
---

#### Fifth
Fifth equation (The CIA constraint):
$$
 0=P_t C_{t} - M_{t-1} + N_{t} 
$$
$$
0 = \bar{P}\bar{C}(1 + \tilde{P}_t + \tilde{C}_t) - \bar{M}(1 + \tilde{M}_{t-1}) + \bar{N}(1 + \tilde{N}_t)
$$
In steady state: $\bar{P}\bar{C} = \bar{M} - \bar{N}$, which means $\bar{M} = \bar{P}\bar{C} + \bar{N}$. Since $\overline{M/P} = \bar{M}/\bar{P}$ and $\overline{N/P} = \bar{N}/\bar{P}$, we have $\bar{C} = \overline{M/P} - \overline{N/P}$. Subtracting steady state and simplifying: 
$$0 = \bar{P}\bar{C}\tilde{P}_t + \bar{P}\bar{C}\tilde{C}_t - \bar{M}\tilde{M}_{t-1} + \bar{N}\tilde{N}_t$$

Dividing by $\bar{P}$: 
$$\boxed{
0 = \bar{C}\tilde{P}_t + \bar{C}\tilde{C}_t - \overline{M/P}\tilde{M}_{t-1} + \overline{N/P}\tilde{N}_t
}$$
---

#### Sixth
Sixth equation (budget constraint), starting with: $$
\begin{aligned}
&0 = \frac{M_t}{P_t} + \frac{e_t B_t}{P_t} + K_{t+1} + \frac{\kappa}{2}(K_{t+1} - K_t)^2 \dots\\
& \qquad \dots - w_t H_t - r_t K_t - (1 - \delta) K_t - \frac{e_t(1 + r_{t-1}^f) B_{t-1}}{P_t} -r_t^n \frac{N_{t}}{P_t}  \\
\end{aligned}
$$
Linearizing each term:

- $\frac{M_t}{P_t} = \overline{M/P}e^{\tilde{M}_t - \tilde{P}_t} \approx \overline{M/P}(1 + \tilde{M}_t - \tilde{P}_t)$

- $\frac{e_t B_t}{P_t} = \bar{B}e^{\tilde{B}_t} \approx \bar{B}(1 + \tilde{B}_t)$ (since $\bar{e} = \bar{P}$)

- $K_{t+1} = \bar{K}e^{\tilde{K}_{t+1}} \approx \bar{K}(1 + \tilde{K}_{t+1})$

- Adjustment cost: $\frac{\kappa}{2}(K_{t+1} - K_t)^2 \approx \kappa\bar{K}^2(\tilde{K}_{t+1} - \tilde{K}_t)^2 \approx 0$ (second order)

- $w_t H_t = \bar{w}\bar{H}e^{\tilde{w}_t + \tilde{H}_t} \approx \bar{w}\bar{H}(1 + \tilde{w}_t + \tilde{H}_t)$

- $r_t K_t = \bar{r}\bar{K}e^{\tilde{r}_t + \tilde{K}_t} \approx \bar{r}\bar{K}(1 + \tilde{r}_t + \tilde{K}_t)$

- $(1-\delta)K_t = (1-\delta)\bar{K}(1 + \tilde{K}_t)$

- $\frac{e_t(1 + r_{t-1}^f) B_{t-1}}{P_t} = \bar{B}(1 + \bar{r}^f)(1 + \tilde{r}_{t-1}^f + \tilde{B}_{t-1})$

- $r_t^n \frac{N_t}{P_t} = \bar{r}^n\overline{N/P}(1 + \tilde{r}_t^n + \tilde{N}_t - \tilde{P}_t)$

Substituting and canceling steady state terms:
$$\boxed{
\begin{aligned}
&0 = \overline{M/P}\tilde{M}_t - [\overline{M/P} - \bar{B}\bar{r}^f]\tilde{P}_t + \bar{B}\tilde{B}_t + \bar{K}\tilde{K}_{t+1} - \bar{w}\bar{H}\tilde{w}_t - \bar{w}\bar{H}\tilde{H}_t\\
&- \bar{r}\bar{K}\tilde{r}_t - [\bar{r} + (1-\delta)]\bar{K}\tilde{K}_t - \bar{B}\bar{r}^f\tilde{e}_t - \bar{B}\bar{r}^f\tilde{r}_{t-1}^f - \bar{B}(1 + \bar{r}^f)\tilde{B}_{t-1} \\
&- \bar{r}^n\overline{N/P}\tilde{r}_t^n - \bar{r}^n\overline{N/P}\tilde{N}_t + \bar{r}^n\overline{N/P}\tilde{P}_t\\
\end{aligned}
}$$

---

#### Seventh
For the seventh:

$$0 = r_t^w w_t - (1 - \theta)K_t^{\theta} H_t^{-\theta}$$

$$0 = \bar{r}^w\bar{w}e^{\tilde{r}_t^w + \tilde{w}_t} - (1 - \theta)\bar{K}^{\theta}\bar{H}^{-\theta}e^{\theta\tilde{K}_t - \theta\tilde{H}_t}$$
Since $\bar{r}^w\bar{w} = (1 - \theta)\bar{K}^{\theta}\bar{H}^{-\theta}$ in steady state:
$$\boxed{
0 = \tilde{r}_t^w + \tilde{w}_t - \theta\tilde{K}_t + \theta\tilde{H}_t
}$$
---

#### Eighth
Eighth: 
$$0 = r_t - \theta K_t^{\theta-1} H_t^{1-\theta}$$
We get:
$$\boxed{
0 = \tilde{r}_t - (\theta-1)\tilde{K}_t - (1-\theta)\tilde{H}_t
}$$

---

#### Ninth
The ninth equation was:
$$
0 = B_t - (1 + r_{t-1}^f) B_{t-1} - P_t^* X_t
$$
$$
0 = \bar{B}e^{\tilde{B}_{t}} - (1 + \bar{r}^{f}e^{\tilde{r}_{t-1}^f}) \bar{B}e^{\tilde{B}_{t-1}} - \bar{P}^{*}e^{\tilde{P}^{*}_{t}} \bar{X}e^{\tilde{X}_{t}}
$$
Since $\bar{P}^* = 1$ and steady state gives $0 = \bar{B} - (1 + \bar{r}^f)\bar{B} - \bar{X}$, so $\bar{X} = -\bar{r}^f\bar{B}$:
$$0 = \bar{B}(1 + \tilde{B}_t) - (1 + \bar{r}^f)\bar{B}\left( 1 + \frac{\tilde{r}_{t-1}^f}{(1 + \bar{r}^f)} + \tilde{B}_{t-1} \right) - \bar{X}(1 + \tilde{P}_t^* + \tilde{X}_t)$$

$$\boxed{
0 = \bar{B}\tilde{B}_t - (1 + \bar{r}^f)\bar{B}\tilde{B}_{t-1} - \bar{r}^f\bar{B}\tilde{r}_{t-1}^f - \bar{X}\tilde{P}_t^* - \bar{X}\tilde{X}_t
}$$
#### Tenth
$$0 = r_t^f - r^* + a\frac{B_t}{P_t^*}$$
$$0 = \bar{r}^f + \bar{r}^f\tilde{r}_t^f - r^* + a\bar{B}(1 + \tilde{B}_t - \tilde{P}_t^*)$$

Since $\bar{r}^f = r^* - a\bar{B}$:

$$\boxed{
0 = \bar{r}^f\tilde{r}_t^f + a\bar{B}\tilde{B}_t - a\bar{B}\tilde{P}_t^*
}$$
#### Eleventh:
$$0 = e_t - \frac{P_t}{P_t^*}$$

$$0 = \bar{e}e^{\tilde{e}_t} - \frac{\bar{P}e^{\tilde{P}_t}}{\bar{P}^*e^{\tilde{P}_t^*}}$$
Since $\bar{e} = \bar{P}$ and $\bar{P}^* = 1$:

$$\boxed{
0 = \tilde{e}_t - \tilde{P}_t + \tilde{P}_t^*
}$$
#### Twelfth
$$0 = r_t^n N_t - r_t^w P_t w_t H_t$$

$$0 = \bar{r}^n\bar{N}e^{\tilde{r}_t^n + \tilde{N}_t} - \bar{r}^w\bar{P}\bar{w}\bar{H}e^{\tilde{r}_t^w + \tilde{P}_t + \tilde{w}_t + \tilde{H}_t}$$

Since $\bar{r}^n\bar{N} = \bar{r}^w\bar{P}\bar{w}\bar{H}$:

$$\boxed{
0 = \tilde{r}_t^n + \tilde{N}_t - \tilde{r}_t^w - \tilde{P}_t - \tilde{w}_t - \tilde{H}_t
}$$
#### Thirteenth
$$0 = N_t + (g_t^M - 1)M_{t-1} - P_t w_t H_t$$

$$0 = \bar{N}e^{\tilde{N}_t} + (\bar{g}^M e^{\tilde{g}_t^M} - 1)\bar{M}e^{\tilde{M}_{t-1}} - \bar{P}\bar{w}\bar{H}e^{\tilde{P}_t + \tilde{w}_t + \tilde{H}_t}$$

Since $\bar{g}^M = \bar{\pi}$ and in steady state $\bar{N} + (\bar{g}^M - 1)\bar{M} = \bar{P}\bar{w}\bar{H}$:

$$0 = \bar{N}\tilde{N}_t + \bar{M}(\bar{g}^M - 1)\tilde{g}_t^M + \bar{M}(\bar{g}^M - 1)\tilde{M}_{t-1} - \bar{P}\bar{w}\bar{H}(\tilde{P}_t + \tilde{w}_t + \tilde{H}_t)$$

Dividing by $\bar{P}$ and using $\overline{N/P} = \bar{N}/\bar{P}$, $\overline{M/P} = \bar{M}/\bar{P}$:
$$
\boxed{
0 = \overline{N/P}\tilde{N}_t + (\bar{\pi} - 1)\overline{M/P}\tilde{g}_t^M + (\bar{\pi} - 1)\overline{M/P}\tilde{M}_{t-1} - \bar{w}\bar{H}(\tilde{P}_t + \tilde{w}_t + \tilde{H}_t)
}
$$
#### Fourteen
$$0 = 0.5(K_t^{\theta} H_t^{1-\theta} - \bar{Y}) + 0.5(\pi_t - \bar{\pi}) + \bar{r}^w - r_t^w$$

Where $\pi_t = P_t/P_{t-1}$ and $\bar{Y} = \bar{K}^{\theta}\bar{H}^{1-\theta}$. For output: $Y_t = K_t^{\theta} H_t^{1-\theta} = \bar{Y}e^{\theta\tilde{K}_t + (1-\theta)\tilde{H}_t}$. For inflation: $\pi_t = \bar{\pi}e^{\tilde{P}_t - \tilde{P}_{t-1}}$

$$0 = 0.5\bar{Y}[\theta\tilde{K}_t + (1-\theta)\tilde{H}_t] + 0.5\bar{\pi}(\tilde{P}_t - \tilde{P}_{t-1}) - \bar{r}^w\tilde{r}_t^w$$

$$\boxed{
0 = \frac{0.5\bar{Y}}{\bar{r}^w}[\theta\tilde{K}_t + (1-\theta)\tilde{H}_t] + \frac{0.5\bar{\pi}}{\bar{r}^w}(\tilde{P}_t - \tilde{P}_{t-1}) - \tilde{r}_t^w
}$$
#### Last
$$0 = M_t - g_t^M M_{t-1}$$

$$0 = \bar{M}e^{\tilde{M}_t} - \bar{g}^M e^{\tilde{g}_t^M}\bar{M}e^{\tilde{M}_{t-1}}$$

Since $\bar{M} = \bar{g}^M\bar{M}$:

$$\boxed{
0 = \tilde{M}_t - \tilde{g}_t^M - \tilde{M}_{t-1}
}$$




#### THird and
To remove to period leads, we can use equation (2) $0 = -\tilde{C}_t - \tilde{r}_t^n - \bar{\pi}\tilde{P}_t + \bar{\pi}\mathbb{E}_{t}\tilde{C}_{t+1} + \bar{\pi}\mathbb{E}_{t}\tilde{P}_{t+1}$, it implies that:
$$
 E_t[\tilde{P}_{t+2}] + E_t[\tilde{C}_{t+2}] = \frac{1}{\bar{\pi}} \left( \tilde{C}_{t+1} +\tilde{r}^{n}_{t+1} \right) +  \tilde{P}_{t+1}
$$
We replace that into equations (3) and (4). They are therefore
$$
\begin{aligned}
(3) \quad & 0 = \tilde{e}_t - E_t[\tilde{e}_{t+1}] - E_t[\tilde{P}_{t+1}] + \frac{1}{\bar{\pi}} \left( \tilde{C}_{t+1} +\tilde{r}^{n}_{t+1} \right) +  \tilde{P}_{t+1} - E_t[\tilde{C}_{t+1}]  - \beta\bar{r}^f\tilde{r}_t^f \\
(4) \quad &0 = \tilde{P}_t - 2\mathbb{E}_{t}[\tilde{P}_{t+1}] + \frac{1}{\bar{\pi}} \left( \tilde{C}_{t+1} +\tilde{r}^{n}_{t+1} \right) +  \tilde{P}_{t+1} - \mathbb{E}_{t}[\tilde{C}_{t+1}]  \dots \\
&- \kappa \bar{K}\tilde{K}_{t} + (1+\beta)\kappa \bar{K}\tilde{K}_{t+1} - \beta\kappa\bar{K}\mathbb{E}_{t}[\tilde{K}_{t+2} ]- \beta\bar{r}\mathbb{E}_{t}[\tilde{r}_{t+1}] \\
\end{aligned}
$$

### Full system of log-linear equations
We get a system for the variables of the model (16 here because I added the equation for $Y_{t}$): 
$\{\tilde{K}_{t+1}, \tilde{M}_t, \tilde{P}_t, \tilde{r}_t, \tilde{w}_t, \tilde{Y}_t, \tilde{C}_t, \tilde{H}_t, \tilde{N}_t, \tilde{r}_t^n, \tilde{r}_t^f, \tilde{g}_t^M,\tilde{r}_t^w,\tilde{e}_t,\tilde{B}_t,\tilde{X}_{t}\}$. Meanwhile $\tilde{P}_t^*$ follows and independent stochastic processes.

$$
\begin{aligned}
(1) \quad & 0 = \tilde{w}_t + \tilde{P}_t - E_t[\tilde{P}_{t+1}] - E_t[\tilde{C}_{t+1}] \\
(2) \quad & 0 = -\tilde{C}_t - \tilde{r}_t^n - \bar{\pi}\tilde{P}_t + \bar{\pi}\mathbb{E}_{t}\tilde{C}_{t+1} + \bar{\pi}\mathbb{E}_{t}\tilde{P}_{t+1} \\
(3) \quad & 0 = \tilde{e}_t - E_t[\tilde{e}_{t+1}] - E_t[\tilde{P}_{t+1}] + E_t[\tilde{P}_{t+2}] + E_t[\tilde{C}_{t+2}] - E_t[\tilde{C}_{t+1}]  - \beta\bar{r}^f\tilde{r}_t^f \\
(4) \quad &0 = \tilde{P}_t - 2\mathbb{E}_{t}[\tilde{P}_{t+1}] + \mathbb{E}_{t}[\tilde{P}_{t+2} ]- \mathbb{E}_{t}[\tilde{C}_{t+1}] + \mathbb{E}_{t}[\tilde{C}_{t+2}] \dots \\
&- \kappa \bar{K}\tilde{K}_{t} + (1+\beta)\kappa \bar{K}\tilde{K}_{t+1} - \beta\kappa\bar{K}\mathbb{E}_{t}[\tilde{K}_{t+2} ]- \beta\bar{r}\mathbb{E}_{t}[\tilde{r}_{t+1}] \\
(5) \quad &0 = \bar{C}\tilde{P}_t + \bar{C}\tilde{C}_t - \overline{M/P}\tilde{M}_{t-1} + \overline{N/P}\tilde{N}_t \\
(6) \quad &0 = \overline{M/P}\tilde{M}_t - [\overline{M/P} - \bar{B}\bar{r}^f]\tilde{P}_t + \bar{B}\tilde{B}_t + \bar{K}\tilde{K}_{t+1} - \bar{w}\bar{H}\tilde{w}_t - \bar{w}\bar{H}\tilde{H}_t\dots\\
&\dots- \bar{r}\bar{K}\tilde{r}_t - [\bar{r} + (1-\delta)]\bar{K}\tilde{K}_t - \bar{B}\bar{r}^f\tilde{e}_t - \bar{B}\bar{r}^f\tilde{r}_{t-1}^f - \bar{B}(1 + \bar{r}^f)\tilde{B}_{t-1}\dots \\
&\dots- \bar{r}^n\overline{N/P}\tilde{r}_t^n - \bar{r}^n\overline{N/P}\tilde{N}_t + \bar{r}^n\overline{N/P}\tilde{P}_t\\
(7) \quad &0 = \tilde{r}_t^w + \tilde{w}_t - \theta\tilde{K}_t + \theta\tilde{H}_t \\
(8) \quad &0 = \tilde{r}_t - (\theta-1)\tilde{K}_t - (1-\theta)\tilde{H}_t \\
(9) \quad &0 = \bar{B}\tilde{B}_t - (1 + \bar{r}^f)\bar{B}\tilde{B}_{t-1} - \bar{r}^f\bar{B}\tilde{r}_{t-1}^f - \bar{X}\tilde{P}_t^* - \bar{X}\tilde{X}_t\\
(10) \quad &0 = \bar{r}^f\tilde{r}_t^f + a\bar{B}\tilde{B}_t - a\bar{B}\tilde{P}_t^* \\
(11) \quad &0 = 0 = \tilde{e}_t - \tilde{P}_t + \tilde{P}_t^*\\
(12) \quad &0 = \tilde{r}_t^n + \tilde{N}_t - \tilde{r}_t^w - \tilde{P}_t - \tilde{w}_t - \tilde{H}_t \\
(13) \quad &0 = \overline{N/P}\tilde{N}_t + (\bar{\pi} - 1)\overline{M/P}\tilde{g}_t^M + (\bar{\pi} - 1)\overline{M/P}\tilde{M}_{t-1} - \bar{w}\bar{H}(\tilde{P}_t + \tilde{w}_t + \tilde{H}_t)\\
(14) \quad &0 = \frac{0.5\bar{Y}}{\bar{r}^w}\tilde{Y}_t + \frac{0.5\bar{\pi}}{\bar{r}^w}(\tilde{P}_t - \tilde{P}_{t-1}) - \tilde{r}_t^w\\
(15) \quad &0 = \tilde{M}_t - \tilde{g}_t^M - \tilde{M}_{t-1} \\
(16) \quad &0 = \tilde{Y}_t  - \theta \tilde{K}_t - (1 - \theta) \tilde{H}_t,

\end{aligned}
$$


### In matrix form


Let $x_t = [\tilde{K}_{t+1}, \tilde{M}_t, \tilde{P}_t, \tilde{B}_t, \tilde{r}_t^f]'$ be the vector of the five state variables, $y_t = [\tilde{C}_t, \tilde{H}_t, \tilde{w}_t, \tilde{r}_t, \tilde{Y}_t, \tilde{N}_t, \tilde{r}_t^n, \tilde{r}_t^w, \tilde{g}_t^M, \tilde{e}_t, \tilde{X}_t]'$ be the vector of the six jump variables, and $z_t = [\tilde{P}_t^*]'$ be the three stochastic variables. We can write the system as
$$0 = Ax_t + Bx_{t-1} + Cy_t + Dz_t,$$
$$0 = E_t [Fx_{t+1} + Gx_t + Hx_{t-1} + Jy_{t+1} + Ky_t + Lz_{t+1} + Mz_t],$$
$$z_{t+1} = Nz_t + \varepsilon_{t+1}.$$
 