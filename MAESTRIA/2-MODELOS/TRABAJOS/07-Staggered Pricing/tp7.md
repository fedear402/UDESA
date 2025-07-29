Homework:
Set up a version of this model but with the final firms producing with one fraction foreign imported goods and another fraction local goods.
Imagine everybody can adjust every period. We have intermediate goods producers and final goods producers. Every intermediate goods producer can change their price every period. That makes it a lot simpler because there is no forward looking stuff ot solve for, you just optimize each period for these guys. 
Imagine some fraction of your goods are imported and they come in at a foreign price. Foreign price is real, not worrying about exchange rates. There is a real exchange of real goods. You gotta pay for those foreign goods in your final good. The cost is gonna be just the amount of that foreign good. TO think about: what the model looks like. 
Impulse response functions where world price (the real price of foreign goods is a stochastic variable). 
The model is much simpler than the one in class: all the domestic firms respond immediately. Dont have to worry about quasi differencing or any of that.



----
We will consider a model with a final goods firm that exist in perfect and demands a continuum (that sums to one) of firms producing goods each of which interacts in monopolistic cometition of their own variety. We will further assume there are two groups of intermediate firms: a portion $\eta \in(0,1)$ of imported goods from foreign firms and $1-\eta$ of locally sourced goods from domestic firms.



## Final Gooods Firm
We will say there is demand $Y_{t}^{m}(k)$ for each $k$ foreign good and there is demand of amount $Y_{t}^{l}(j)$ for each $j$ foreign good. The amount o final good is produced with a CES technology across imported and exported in this form:
$$
Y_{t} = \left[ \int_{0} ^{ \eta} Y_{t}^{m}(k)^{\frac{\psi-1}{\psi}} dk+ \int_{\eta}^{1} Y_{t}^{l}(j)^{\frac{\psi-1}{\psi}} dj\right]^{\frac{\psi}{\psi-1}}
$$
Therefore, the final goods firm maximizes:
$$
\max_{Y^{m}(k), Y^{l}(j)} P_{t}Y_{t} - \left[  \int_{0}^{\eta} P_{t}(k)Y_{t}^{m}(k) dk +\int_{\eta}^{1}P_{t}(j)Y_{t}^{l}(j) dj \right] 
$$
The derivatives are:
$$
\tag{ Y(k) } P_{t} Y_{t}^{\frac{1}{\psi}} Y^{m}_{t}(k) ^{-\frac{1}{\psi}} = P_{t}(k)
$$
$$
\tag{ Y(j) } P_{t} Y_{t}^{\frac{1}{\psi}} Y^{l}_{t}(j) ^{-\frac{1}{\psi}} = P_{t}(j)
$$
We can separate out the demands for each type of good:
$$
Y_{t}^{m}(k) = \left( \frac{P_{t}}{P_{t}(k)} \right) ^{\psi} Y_{t}
$$
$$
Y_{t}^{l}(j) = \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi} Y_{t}
$$
We replace them into the production function of the final goods firm: 
$$
Y_{t} = \left[ \int_{0} ^{ \eta} \left[ \left( \frac{P_{t}}{P_{t}(k)} \right) ^{\psi} Y_{t} \right] ^{\frac{\psi-1}{\psi}} dk+ \int_{\eta}^{1} \left[ \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi} Y_{t} \right] ^{\frac{\psi-1}{\psi}} dj\right]^{\frac{\psi}{\psi-1}}
$$
From that expression we can get the pricing rule of the final firm:
$$
Y_{t} = \left[ \int_{0} ^{ \eta} Y_{t}^{\frac{\psi-1}{\psi}}\left[ \left( \frac{P_{t}}{P_{t}(k)} \right) ^{\psi}  \right] ^{\frac{\psi-1}{\psi}} dk+ \int_{\eta}^{1}  Y_{t}^{\frac{\psi-1}{\psi}} \left[ \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi}  \right] ^{\frac{\psi-1}{\psi}} dj\right]^{\frac{\psi}{\psi-1}}
$$
$$
Y_{t} =Y_{t} \left[ \int_{0} ^{ \eta} \left( \frac{P_{t}}{P_{t}(k)} \right) ^{\psi-1} dk+ \int_{\eta}^{1} \left( \frac{P_{t}}{P_{t}(j)} \right) ^{\psi-1} dj\right]^{\frac{\psi}{\psi-1}}
$$
$$
P_{t}=Y_{t} \left[ \int_{0} ^{ \eta} \left( \frac{1}{P_{t}(k)} \right) ^{\psi-1} dk+ \int_{\eta}^{1} \left( \frac{1}{P_{t}(j)} \right) ^{\psi-1} dj\right]^{\frac{\psi}{1-\psi}}
$$

## Intermediate firms

These firms, in both sectors, have some monopoly power in the sense 





# Another interpretation
## Final goods firm
We propose this technology:
$$Y_t = \left[\alpha (Y_t^d)^{\frac{\sigma-1}{\sigma}} + (1-\alpha) (Y_t^f)^{\frac{\sigma-1}{\sigma}}\right]^{\frac{\sigma}{\sigma-1}}$$
Where domestic production comes from a CES aggregator of a continuum of locally produced goods:
$$Y_t^d = \left[\int_0^1 Y_t^d(k)^{\frac{\psi-1}{\psi}} dk\right]^{\frac{\psi}{\psi-1}}$$

Here $\alpha$ is the proportion of domestic goods used in production and $(1-\alpha)$ the proportion of foreign goods. $\sigma$ is the elasticity of substitution across foreign and domestic.   
Firms face this maximization problem:
$$\max_{\{Y_t^d(k), Y_t^f\}} \Pi_{t}= P_t Y_t - \int_0^1 P_t^d(k)Y_t^d(k)dk - P_t^f Y_t^f$$
We derive with respect to some good $\ell$ of the $k$ domestic goods:
$$
\frac{ \partial \Pi_{t} }{ \partial Y_{t}^{d}(\ell) }  = 0\implies P_{t}\frac{\sigma}{\sigma-1} Y_{t}^{\frac{1}{\sigma}} \frac{\sigma-1}{\sigma} \alpha (Y_{t}^{d} )^{-\frac{1}{\sigma}} \frac{\psi}{\psi-1} \left( Y_{t}^{d} \right)^{\frac{1}{\psi}} \frac{\psi-1}{\psi} (Y_{t}^{d}(\ell))^{-\frac{1}{\psi}} =P_{t}^{d}(\ell) 
$$

$$
 P_{t} Y_{t}^{\frac{1}{\sigma}}  \alpha (Y_{t}^{d} )^{-\frac{1}{\sigma}}  \left( Y_{t}^{d} \right)^{\frac{1}{\psi}}  (Y_{t}^{d}(\ell))^{-\frac{1}{\psi}} =P_{t}^{d}(l) 
$$

$$
 P_{t} Y_{t}^{\frac{1}{\sigma}}  \alpha (Y_{t}^{d} )^{\frac{1}{\psi}-\frac{1}{\sigma}}    (Y_{t}^{d}(\ell))^{-\frac{1}{\psi}} =P_{t}^{d}(l) 
$$

$$
 P_{t}^{-\psi} Y_{t}^{\frac{-\psi}{\sigma}}  \alpha^{-\psi}  (Y_{t}^{d} )^{-1+\frac{\psi}{\sigma}} Y_{t}^{d}(\ell) =P_{t}^{d}(l)^{-\psi}
$$
$$
 Y_{t}^{\frac{-\psi}{\sigma}}  \alpha^{-\psi}  (Y_{t}^{d} )^{\frac{\psi}{\sigma}-1}    Y_{t}^{d}(\ell) =\left( \frac{P_{t}}{P_{t}^{d}(l)} \right)^{\psi}
$$
$$
   Y_{t}^{d}(\ell) = (Y_{t}^{d} )^{1-\frac{\psi}{\sigma}}   \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha \frac{P_{t}}{P_{t}^{d}(l)} \right)^{\psi}
$$
We can replace that into the domestic goods aggregator:
$$
Y_t^d = \left[\int_0^1 \left[ (Y_{t}^{d} )^{1-\frac{\psi}{\sigma}}   \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi} \right] ^{\frac{\psi-1}{\psi}} dk\right]^{\frac{\psi}{\psi-1}}
$$
$$
Y_t^d = \left[\int_0^1 \left[ (Y_{t}^{d} )^{\left( 1-\frac{\psi}{\sigma} \right)\frac{\psi-1}{\psi}}   \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi-1} \right]  dk\right]^{\frac{\psi}{\psi-1}}
$$

$$
(Y_t^d)^{\frac{\psi}{\sigma}} =  \left[\int_0^1 \left[   \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi-1} \right]  dk\right]^{\frac{\psi}{\psi-1}}
$$
$$
Y_t^d =  \left[\int_0^1 \left[   \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi-1} \right]  dk\right]^{  \frac{\sigma}{\psi-1}}
$$

---
Optimal demand for the foreign good will be given by:
$$
\frac{ \partial \Pi_{t} }{ \partial Y_{t}^{f} } = 0 \implies P_{t} Y_{t} ^{ \frac{1}{\sigma}} (1-\alpha) (Y_{t}^{f})^{ -\frac{1}{\sigma}} =P_{t}^{f} 
$$
$$
Y_{t}^{F} = Y_{t} \left[ \frac{P_{t}}{P_{t}^{f}} (1-\alpha) \right] ^{\sigma}
$$
Using that expresion of optimal demand for foreign good $Y_{t}^{F}$ and the expression $Y_t^d$ we got from replacing into the aggregator, we have two demands as funcitons of $Y_{t}$ and prices that we can plug into the production technology:
$$
Y_t = \left[\alpha \left[ \left[\int_0^1 \left[   \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi-1} \right]  dk\right]^{  \frac{\sigma}{\psi-1}} \right] ^{\frac{\sigma-1}{\sigma}} + (1-\alpha) \left[  Y_{t} \left[ \frac{P_{t}}{P_{t}^{f}} (1-\alpha) \right] ^{\sigma} \right] ^{\frac{\sigma-1}{\sigma}}\right]^{\frac{\sigma}{\sigma-1}}
$$

$$
Y_t = \left[\alpha \left[ \left[ Y_{t} ^{\frac{\psi-1}{\sigma}} \int_0^1 \left(   \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi-1}  dk\right]^{  \frac{\sigma}{\psi-1}} \right] ^{\frac{\sigma-1}{\sigma}} + (1-\alpha) Y_{t}^{\frac{\sigma-1}{\sigma}} \left[ \frac{P_{t}}{P_{t}^{f}} (1-\alpha) \right] ^{\sigma-1}  \right]^{\frac{\sigma}{\sigma-1}}
$$

$$
Y_t = \left[\alpha Y_{t}^{\frac{\sigma-1}{\sigma}} \left[  \left[  \int_0^1 \left(   \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi-1}  dk\right]^{  \frac{\sigma}{\psi-1}} \right] ^{\frac{\sigma-1}{\sigma}} + (1-\alpha) Y_{t}^{\frac{\sigma-1}{\sigma}} \left[ \frac{P_{t}}{P_{t}^{f}} (1-\alpha) \right] ^{\sigma-1}  \right]^{\frac{\sigma}{\sigma-1}}
$$
$$
Y_t =\left[ Y_{t}^{\frac{\sigma-1}{\sigma}} \left( \alpha  \left[  \left[  \int_0^1 \left(   \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi-1}  dk\right]^{  \frac{\sigma}{\psi-1}} \right] ^{\frac{\sigma-1}{\sigma}} + (1-\alpha) \left[ \frac{P_{t}}{P_{t}^{f}} (1-\alpha) \right] ^{\sigma-1}  \right) \right]^{\frac{\sigma}{\sigma-1}}
$$
That clears $Y_{t}$ and we can find the price $P_{t}$.
$$
1 =\left[ \alpha  \left[  \left[  \int_0^1 \left(   \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi-1}  dk\right]^{  \frac{\sigma}{\psi-1}} \right] ^{\frac{\sigma-1}{\sigma}} + (1-\alpha) \left[ \frac{P_{t}}{P_{t}^{f}} (1-\alpha) \right] ^{\sigma-1}   \right]^{\frac{\sigma}{\sigma-1}}
$$

$$
1 =\left[P_{t}^{\sigma-1} \alpha  \left[  \left[  \int_0^1 \left(   \alpha \frac{1}{P_{t}^{d}(k)} \right)^{\psi-1}  dk\right]^{  \frac{\sigma}{\psi-1}} \right] ^{\frac{\sigma-1}{\sigma}} + P_{t}^{\sigma-1} (1-\alpha) \left[ \frac{1}{P_{t}^{f}} (1-\alpha) \right] ^{\sigma-1}   \right]^{\frac{\sigma}{\sigma-1}}
$$

$$
1 = P_{t}^{ \sigma} \left[\alpha ^{\sigma} \left[  \int_0^1 \left(   \frac{1}{P_{t}^{d}(k)} \right)^{\psi-1}  dk\right]^{  \frac{\sigma-1}{\psi-1}} +  (1-\alpha)^{\sigma} \left[ \frac{1}{P_{t}^{f}}  \right] ^{\sigma-1}   \right]^{\frac{\sigma}{\sigma-1}}
$$
$$
\boxed{P_{t} = \left[\alpha ^{\sigma} \left( \left[  \int_0^1 \left(   \frac{1}{P_{t}^{d}(k)} \right)^{\psi-1}  dk\right]^{  \frac{1}{\psi-1}} \right)^{\sigma-1} +  (1-\alpha)^{\sigma} \left[ \frac{1}{P_{t}^{f}}  \right] ^{\sigma-1}   \right]^{\frac{1}{1-\sigma}}}
$$



## Intermediate goods Firms
These firms have market power and choose a value for the price they want to charge. We will say they have Cobb Douglass technology. The firm producing good $k$ chooses its inputs in this way:
$$
\min_{K_{t}(k),H_{t}(k)} r_{t}K_{t}(k) + w_{t}H_{t}(k)
$$
$$
\text{subject to : }\qquad Y_{t}^{d}(k) = A_{t}K_{t}(k)^{\theta}H_{t}(k)^{1-\theta}
$$
The typical first order conditions:
$$\frac{r_t}{w_t} = \frac{\theta}{1-\theta} \frac{H_t(k)}{K_t(k)}$$
$$
K_t(k)  = \frac{w_{t}}{r_{t}}\frac{\theta}{1-\theta} H_t(k)
$$
We can get the conditional demands evaluating the production function constraint: 
$$
Y_{t}^{d}(k) = A_{t}\left[ \frac{w_{t}}{r_{t}}\frac{\theta}{1-\theta} H_t(k) \right] ^{\theta}H_{t}(k)^{1-\theta}
$$
$$
H_t(k) = Y_{t}^{d}(k)  \frac{1}{A_{t}} \left( \frac{\theta}{1-\theta} \frac{w_{t}}{r_{t}} \right)^{-\theta}
$$
Similarly for $K$:
$$
K_{t}(k) =  Y_{t}^{d}(k)  \frac{1}{A_{t}} \left( \frac{1-\theta}{\theta} \frac{r_{t}}{w_{t}} \right)^{\theta-1}
$$
Then, replacing into the cost function:
$$
C_{t} =r_{t} \left(   Y_{t}^{d}(k)  \frac{1}{A_{t}} \left( \frac{1-\theta}{\theta} \frac{r_{t}}{w_{t}} \right)^{\theta-1} \right)  + w_{t} \left( Y_{t}^{d}(k)  \frac{1}{A_{t}} \left( \frac{\theta}{1-\theta} \frac{w_{t}}{r_{t}} \right)^{-\theta} \right) 
$$
$$
C_{t} =Y_{t}^{d}(k) \frac{1}{A_{t}}  \left[ r_{t} \left(     \left( \frac{\theta}{1-\theta} \frac{w_{t}}{r_{t}} \right)^{1-\theta} \right)  + w_{t} \left(    \left( \frac{\theta}{1-\theta} \frac{w_{t}}{r_{t}} \right)^{-\theta} \right)  \right]
$$
$$
C_{t} =Y_{t}^{d}(k) \frac{1}{A_{t}}  \left[ r^{\theta} w^{1-\theta} \left[ \left( \frac{\theta}{1-\theta} \right) ^{1-\theta} +\left( \frac{\theta}{1-\theta} \right) ^{-\theta}   \right]  \right]
$$
$$
C_{t} =Y_{t}^{d}(k) \frac{1}{A_{t}}  \left[ r^{\theta} w^{1-\theta} \left( \frac{\theta}{1-\theta} \right) ^{-\theta}\left[ \left( \frac{\theta}{1-\theta} \right) +1   \right]  \right]
$$
$$
C_{t} =Y_{t}^{d}(k) \frac{1}{A_{t}}  \left[ r^{\theta} w^{1-\theta} (1-\theta)^{\theta-1} \theta ^{-\theta} \right]
$$

Marginal cost (same for all firms):
$$MC_t = \frac{1}{A_t} \left(\frac{r_t}{\theta}\right)^{\theta} \left(\frac{w_t}{1-\theta}\right)^{1-\theta}$$

Since firm $k$ can adjust its price $P_t^d(k)$ every period, The intermediate goods firm $k$ maximizes:
$$\max_{P_t^d(k)} \Pi_t(k) = P_t^d(k) Y_t^d(k) - MC_t \cdot Y_t^d(k)$$

Subject to the demand function we derived:
$$Y_{t}^{d}(k) = (Y_{t}^{d} )^{1-\frac{\psi}{\sigma}}   \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi}$$

Substituting the demand function into the profit function:
$$\Pi_t(k) = P_t^d(k) \cdot (Y_{t}^{d} )^{1-\frac{\psi}{\sigma}}   \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi} - MC_t \cdot (Y_{t}^{d} )^{1-\frac{\psi}{\sigma}}   \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha \frac{P_{t}}{P_{t}^{d}(k)} \right)^{\psi}$$

Factor out the common terms:
$$\Pi_t(k) = (Y_{t}^{d} )^{1-\frac{\psi}{\sigma}} \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha P_{t} \right)^{\psi} \left(P_{t}^{d}(k)\right)^{-\psi} \left[P_t^d(k) - MC_t\right]$$

Taking the first-order condition with respect to $P_t^d(k)$:
$$\frac{\partial \Pi_t(k)}{\partial P_t^d(k)} = (Y_{t}^{d} )^{1-\frac{\psi}{\sigma}} \left(  Y_{t} ^{\frac{1}{\sigma}} \alpha P_{t} \right)^{\psi} \left[(-\psi)(P_{t}^{d}(k))^{-\psi-1}(P_t^d(k) - MC_t) + (P_{t}^{d}(k))^{-\psi}\right] = 0$$

Simplifying:
$$(-\psi)(P_t^d(k) - MC_t) + P_t^d(k) = 0$$
$$-\psi P_t^d(k) + \psi MC_t + P_t^d(k) = 0$$
$$(1-\psi)P_t^d(k) + \psi MC_t = 0$$

Solving for the optimal price:
$$P_t^d(k) = \frac{\psi}{\psi-1} MC_t$$

Since all domestic intermediate goods firms face the same marginal cost, they all set the same price:
$$P_t^d(k) = P_t^d = \frac{\psi}{\psi-1} \frac{1}{A_t} \left(\frac{r_t}{\theta}\right)^{\theta} \left(\frac{w_t}{1-\theta}\right)^{1-\theta}$$

With this result, the price index for domestic goods becomes:
$$P_t^d = \left[\int_0^1 (P_t^d(k))^{1-\psi} dk\right]^{\frac{1}{1-\psi}} = P_t^d(k)$$

And the final good price simplifies to:
$$P_{t} = \left[\alpha ^{\sigma} \left( P_t^d \right)^{\sigma-1} +  (1-\alpha)^{\sigma} \left( P_{t}^{f} \right) ^{\sigma-1}   \right]^{\frac{1}{1-\sigma}}$$
## Households

Unit mass of households. 
We Max (note indivisible labor):
$$E_0 \sum_{t=0}^{\infty} \beta^t \left[ \ln c_t^i + B h_t^i \right]$$

subject to a Cash In Advance constraint (where today's transfer can be spent today):
$$P_t c_t^i = m_{t-1}^i + (g_t - 1) M_{t-1}$$

and a real budget constraint with the CIA constraint removed:
$$k_{t+1}^i + \frac{m_t^i}{P_t} = w_t h_t^i + r_t k_t^i + \xi_t^i + (1 - \delta) k_t^i$$

where $\xi_t^i$ are the share of intermediate goods profits that go to family $i$.

The first order conditions for family $i$ are:
$$\frac{B}{w_t} = E_t \left[ \frac{B \beta}{w_{t+1}} (r_{t+1} + (1 - \delta)) \right]$$

and
$$E_t \left[ \frac{\beta}{c_{t+1}^i P_{t+1}} \right] = \frac{B}{w_t P_t}$$

The two constraints are:

Budget constraint: 
$$k_{t+1}^i + \frac{m_t^i}{P_t} = w_t h_t^i + r_t k_t^i + \xi_t^i + (1 - \delta) k_t^i$$

CIA constraint: 
$$P_t c_t^i = m_{t-1}^i + (g_t - 1) M_{t-1}$$


## Equilibrium Conditions

Labor market equilibrium:
$$H_t = \int_0^1 H_t(k) dk = \frac{Y_t^d}{A_t} \left(\frac{r_t}{\theta}\right)^{\theta} \left(\frac{w_t}{1-\theta}\right)^{-(1-\theta)} \left(\frac{1}{A_t}\right)^{-1}$$

Capital market equilibrium:
$$K_t = \int_0^1 K_t(k) dk = \frac{Y_t^d}{A_t} \left(\frac{r_t}{\theta}\right)^{-(1-\theta)} \left(\frac{w_t}{1-\theta}\right)^{1-\theta} \left(\frac{1}{A_t}\right)^{-1}$$

Aggregate production:
$$Y_t^d = A_t H_t^{1-\theta} K_t^{\theta}$$

Resource constraint:
$$Y_t = C_t + I_t + P_t^f Y_t^f$$

where $I_t = K_{t+1} - (1-\delta)K_t$ is investment.

Profits distributed to households:
$$\xi_t = \left(\frac{\psi-1}{\psi}\right) P_t^d Y_t^d$$


## The Full Model

Household first order conditions:
$$\frac{1}{w_t} = E_t \left[\frac{\beta}{w_{t+1}}(r_{t+1} + (1-\delta))\right]$$

$$E_t \left[\frac{\beta}{C_{t+1}P_{t+1}}\right] = \frac{B}{w_t P_t}$$

Cash-in-advance constraint:
$$P_t C_t = g_t M_{t-1}$$

Household budget constraint:
$$K_{t+1} + \frac{M_t}{P_t} = w_t H_t + r_t K_t + \xi_t + (1-\delta)K_t$$

Domestic goods pricing (since all firms adjust every period):
$$P_t^d = \frac{\psi}{\psi-1} \frac{1}{A_t} \left(\frac{r_t}{\theta}\right)^{\theta} \left(\frac{w_t}{1-\theta}\right)^{1-\theta}$$

Final good price:
$$P_t = \left[\alpha (P_t^d)^{1-\sigma} + (1-\alpha) (P_t^f)^{1-\sigma}\right]^{\frac{1}{1-\sigma}}$$

Demand for domestic and foreign goods:
$$Y_t^d = \alpha \left(\frac{P_t^d}{P_t}\right)^{-\sigma} Y_t$$
$$Y_t^f = (1-\alpha) \left(\frac{P_t^f}{P_t}\right)^{-\sigma} Y_t$$

Factor demands:
$$\frac{r_t}{w_t} = \frac{\theta}{1-\theta} \frac{H_t}{K_t}$$

Aggregate production:
$$Y_t^d = A_t H_t^{1-\theta} K_t^{\theta}$$

Resource constraint:
$$Y_t = C_t + K_{t+1} - (1-\delta)K_t + P_t^f Y_t^f$$

Money supply:
$$M_t = g_t M_{t-1}$$

Stochastic processes:
$$\ln A_t = \gamma_A \ln A_{t-1} + \varepsilon_t^A$$
$$\ln g_t = \gamma_g \ln g_{t-1} + \varepsilon_t^g$$

$$\ln P_t^f = \gamma_f \ln P_{t-1}^f + \varepsilon_t^f$$



## Steady State Conditions

In steady state, all variables are constant and all expectations are realized. We denote steady state values with bars.

From the household first order conditions:
$$\frac{1}{\bar{w}} = \frac{\beta}{\bar{w}}(\bar{r} + (1-\delta))$$

This simplifies to:
$$\bar{r} = \frac{1}{\beta} - (1-\delta)$$

From the second household FOC:
$$\frac{\beta}{\bar{C}\bar{P}} = \frac{B}{\bar{w}\bar{P}}$$

This gives:
$$\bar{C} = \frac{\beta \bar{w}}{B}$$

From the cash-in-advance constraint:
$$\bar{P}\bar{C} = \bar{g}\bar{M}$$

From the domestic goods pricing:
$$\bar{P}^d = \frac{\psi}{\psi-1} \frac{1}{\bar{A}} \left(\frac{\bar{r}}{\theta}\right)^{\theta} \left(\frac{\bar{w}}{1-\theta}\right)^{1-\theta}$$

From the final good price:
$$\bar{P} = \left[\alpha (\bar{P}^d)^{1-\sigma} + (1-\alpha) (\bar{P}^f)^{1-\sigma}\right]^{\frac{1}{1-\sigma}}$$

From factor demands:
$$\frac{\bar{r}}{\bar{w}} = \frac{\theta}{1-\theta} \frac{\bar{H}}{\bar{K}}$$

From aggregate production:
$$\bar{Y}^d = \bar{A} \bar{H}^{1-\theta} \bar{K}^{\theta}$$

From demand for domestic and foreign goods:
$$\bar{Y}^d = \alpha \left(\frac{\bar{P}^d}{\bar{P}}\right)^{-\sigma} \bar{Y}$$
$$\bar{Y}^f = (1-\alpha) \left(\frac{\bar{P}^f}{\bar{P}}\right)^{-\sigma} \bar{Y}$$

From the resource constraint:
$$\bar{Y} = \bar{C} + \delta\bar{K} + \bar{P}^f \bar{Y}^f$$

From profits:
$$\bar{\xi} = \left(\frac{\psi-1}{\psi}\right) \bar{P}^d \bar{Y}^d$$

From the household budget constraint:
$$\frac{\bar{M}}{\bar{P}} = \bar{w}\bar{H} + \bar{r}\bar{K} + \bar{\xi} - \bar{C}$$

## Log Linearization

We log-linearize around the steady state using Uhlig's method. For any variable $X_t$, we use:
$$X_t = e^{\tilde{X}_t}\bar{X}$$

where $\tilde{X}_t$ is the log deviation from steady state and we use the approximation $e^{\tilde{X}_t} \approx 1 + \tilde{X}_t$.


Final good price:
$$\tilde{P}_t = s^d \tilde{P}_t^d + s^f \tilde{P}_t^f$$

with $s^d = \frac{\alpha (\bar{P}^d)^{1-\sigma}}{\bar{P}^{1-\sigma}}$ and $s^f = \frac{(1-\alpha)(\bar{P}^f)^{1-\sigma}}{\bar{P}^{1-\sigma}}$

Household first order condition (Euler equation):
$$\frac{1}{w_t} = E_t \left[\frac{\beta}{w_{t+1}}(r_{t+1} + (1-\delta))\right]$$

Loglinearizing:
$$\frac{1}{\bar{w}}e^{-\tilde{w}_t} = E_t \left[\frac{\beta}{\bar{w}}e^{-\tilde{w}_{t+1}}(\bar{r} + (1-\delta))(1 + \tilde{r}_{t+1})\right]$$

Using $e^{-x} \approx 1 - x$ and the steady state condition $\frac{1}{\bar{w}} = \frac{\beta}{\bar{w}}(\bar{r} + (1-\delta))$:
$$-\tilde{w}_t = E_t[-\tilde{w}_{t+1}] + \frac{\beta(\bar{r} + (1-\delta))}{\frac{1}{\bar{w}}}E_t[\tilde{r}_{t+1}]$$

Since $\beta(\bar{r} + (1-\delta)) = 1$:
$$\tilde{w}_t = E_t[\tilde{w}_{t+1}] - \bar{r}E_t[\tilde{r}_{t+1}]$$

Second household FOC:
$$E_t \left[\frac{\beta}{C_{t+1}P_{t+1}}\right] = \frac{B}{w_t P_t}$$

Loglinearizing:
$$E_t[\tilde{C}_{t+1} + \tilde{P}_{t+1}] = \tilde{w}_t + \tilde{P}_t$$

Cash-in-advance constraint:
$$P_t C_t = g_t M_{t-1}$$

Loglinearizing:
$$\tilde{P}_t + \tilde{C}_t = \tilde{g}_t + \tilde{M}_{t-1}$$

Household budget constraint:
$$K_{t+1} + \frac{M_t}{P_t} = w_t H_t + r_t K_t + \xi_t + (1-\delta)K_t$$

Loglinearizing around steady state:
$$\bar{K}\tilde{K}_{t+1} + \frac{\bar{M}}{\bar{P}}(\tilde{M}_t - \tilde{P}_t) = \bar{w}\bar{H}(\tilde{w}_t + \tilde{H}_t) + \bar{r}\bar{K}(\tilde{r}_t + \tilde{K}_t) + \bar{\xi}\tilde{\xi}_t + (1-\delta)\bar{K}\tilde{K}_t$$

Dividing by $\bar{K}$ and using steady state relations:
$$\tilde{K}_{t+1} = \frac{\bar{w}\bar{H}}{\bar{K}}(\tilde{w}_t + \tilde{H}_t) + \bar{r}(\tilde{r}_t + \tilde{K}_t) + \frac{\bar{\xi}}{\bar{K}}\tilde{\xi}_t + (1-\delta)\tilde{K}_t - \frac{\bar{M}}{\bar{P}\bar{K}}(\tilde{M}_t - \tilde{P}_t)$$

Domestic goods pricing:
$$P_t^d = \frac{\psi}{\psi-1} \frac{1}{A_t} \left(\frac{r_t}{\theta}\right)^{\theta} \left(\frac{w_t}{1-\theta}\right)^{1-\theta}$$

Loglinearizing:
$$\tilde{P}_t^d = -\tilde{A}_t + \theta\tilde{r}_t + (1-\theta)\tilde{w}_t$$

Demand for domestic and foreign goods:
$$Y_t^d = \alpha \left(\frac{P_t^d}{P_t}\right)^{-\sigma} Y_t$$

Loglinearizing:
$$\tilde{Y}_t^d = -\sigma(\tilde{P}_t^d - \tilde{P}_t) + \tilde{Y}_t$$

$$Y_t^f = (1-\alpha) \left(\frac{P_t^f}{P_t}\right)^{-\sigma} Y_t$$

Loglinearizing:
$$\tilde{Y}_t^f = -\sigma(\tilde{P}_t^f - \tilde{P}_t) + \tilde{Y}_t$$

Factor demands:
$$\frac{r_t}{w_t} = \frac{\theta}{1-\theta} \frac{H_t}{K_t}$$

Loglinearizing:
$$\tilde{r}_t - \tilde{w}_t = \tilde{H}_t - \tilde{K}_t$$

Aggregate production:
$$Y_t^d = A_t H_t^{1-\theta} K_t^{\theta}$$

Loglinearizing:
$$\tilde{Y}_t^d = \tilde{A}_t + (1-\theta)\tilde{H}_t + \theta\tilde{K}_t$$

Resource constraint:
$$Y_t = C_t + K_{t+1} - (1-\delta)K_t + P_t^f Y_t^f$$

Loglinearizing:
$$\bar{Y}\tilde{Y}_t = \bar{C}\tilde{C}_t + \bar{K}\tilde{K}_{t+1} - (1-\delta)\bar{K}\tilde{K}_t + \bar{P}^f\bar{Y}^f(\tilde{P}_t^f + \tilde{Y}_t^f)$$


Money supply:
$$M_t = g_t M_{t-1}$$

Loglinearizing:
$$\tilde{M}_t = \tilde{g}_t + \tilde{M}_{t-1}$$

Stochastic processes:
$$\tilde{A}_t = \gamma_A \tilde{A}_{t-1} + \varepsilon_t^A$$
$$\tilde{g}_t = \gamma_g \tilde{g}_{t-1} + \varepsilon_t^g$$
$$\tilde{P}_t^f = \gamma_f \tilde{P}_{t-1}^f + \varepsilon_t^f$$


Define state variables: $x_t = [K_{t+1}, M_t]'$
Define control variables: $y_t = [C_t, H_t, Y_t, Y_t^d, Y_t^f, r_t, w_t, P_t, P_t^d, \xi_t]'$ 
Define shock variables: $z_t = [A_t, g_t, P_t^f]'$

The system becomes:
$$0 = Ax_t + Bx_{t-1} + Cy_t + Dz_t$$
$$0 = E_t[Fx_{t+1} + Gx_t + Hx_{t-1} + Jy_{t+1} + Ky_t + Lz_{t+1} + Mz_t]$$
$$z_{t+1} = Nz_t + \varepsilon_{t+1}$$

where all variables are in log-deviations from steady state (tildes). The matrices are
$$A = \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$$
$$B = \begin{bmatrix} 0 & 0 \\ 0 & -1 \end{bmatrix}$$

$$C = \begin{bmatrix} -\frac{\bar{C}}{\bar{K}} & 0 & \frac{\bar{Y}}{\bar{K}} & 0 & -\frac{\bar{P}^f\bar{Y}^f}{\bar{K}} & 0 & 0 & -\frac{\bar{M}}{\bar{P}\bar{K}} & 0 & 0 \\ 0 & 0 & 0 & 0 & 0 & 0 & 0 & -1 & 0 & 0 \end{bmatrix}$$
$$D = \begin{bmatrix} 0 & 0 & -\frac{\bar{P}^f\bar{Y}^f}{\bar{K}} \\ 0 & -1 & 0 \end{bmatrix}$$
$$F = \begin{bmatrix} 0 & 0 \end{bmatrix}$$

$$G = \begin{bmatrix} 0 & \frac{\bar{M}}{\bar{P}} \end{bmatrix}$$


$$H = \begin{bmatrix} 0 & 0 \end{bmatrix}$$


$$J = \begin{bmatrix} 1 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 \end{bmatrix}$$


$$K = \begin{bmatrix} 0 & 0 & 0 & 0 & 0 & 0 & -1 & 0 & 0 & 0 \end{bmatrix}$$


$$L = \begin{bmatrix} 0 & 1 & 0 \end{bmatrix}$$


$$M = \begin{bmatrix} 0 & 0 & 0 \end{bmatrix}$$


$$N = \begin{bmatrix} \gamma_A & 0 & 0 \\ 0 & \gamma_g & 0 \\ 0 & 0 & \gamma_f \end{bmatrix}$$