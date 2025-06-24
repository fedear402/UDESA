## Solve the model in terms of growth rates. How would you get a log linear approximate version of this model?

$$
y_{t}= A_{t}k_{t}^{\theta}h_{t}^{1-\theta} K_{t}^{1-\theta}
$$
Here, $k$ is capital per worker and $h$ is workers. That model is Romer's learning by doing model (1987). Instead, we will consider only the case $K_{t}=k_{t}$, so no externalities. That is like the AK model from Romer (1986) but in a simple Solow context, without endogenous saving. We therfore get: 
$$
y_{t}= A_{t}k_{t}h_{t}^{1-\theta}
$$
---

Usual equation of movement of capital

$$
(1+\lambda)k_{t+1}= (1-\delta )k_{t} + i_{t}
$$
If $i_{t}=s_{t}=s y_{t}$ and $A_{t}=A_{0}(1+\alpha)^{t}$, but $\alpha=0$. Then we get the Solow first difference equation:

$$
(1+\lambda)k_{t+1}= (1-\delta ) k_{t} + s  A_{0}k_{t}h_{t}^{1-\theta}
$$
Stationary state will be given by:
$$
k= \frac{1-\delta}{(1+\lambda)} k+ \frac{sA_{0}}{(1+\lambda)} kh^{1-\theta}
$$
There is only one solution where $k=0$. 

### Stochastic Technology Shocks
Using this stochastic process for technology:
$$
A_{t} = (1-\gamma) \bar{A} + \gamma A_{t-1} + \varepsilon _{t}
$$

...complete...
### Logs
Growth rate of the model:
$$
\gamma _{t} = \frac{k_{t+1}}{k_{t}}= \left( \frac{1-\delta }{(1+\lambda)}  + \frac{sA_{t}}{(1+\lambda)}h_{t}^{1-\theta} \right)
$$
Taking logs 

...complete...