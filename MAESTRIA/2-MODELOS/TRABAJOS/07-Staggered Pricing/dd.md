## Complete Derivation: Final Goods Firm Optimization

### Setup

The final goods firm produces output using the technology:
$$Y_t = \left[\alpha (Y_t^d)^{\frac{\sigma-1}{\sigma}} + (1-\alpha) (Y_t^f)^{\frac{\sigma-1}{\sigma}}\right]^{\frac{\sigma}{\sigma-1}}$$

Where domestic production comes from a CES aggregator:
$$Y_t^d = \left[\int_0^1 Y_t^d(k)^{\frac{\psi-1}{\psi}} dk\right]^{\frac{\psi}{\psi-1}}$$

---

### Stage 1: Domestic Bundle Cost Minimization

For a given level of domestic aggregate $Y_t^d$, minimize the cost of the domestic bundle:

$$\min_{\{Y_t^d(k)\}} \int_0^1 P_t^d(k)Y_t^d(k)dk$$

subject to: $Y_t^d = \left[\int_0^1 Y_t^d(k)^{\frac{\psi-1}{\psi}} dk\right]^{\frac{\psi}{\psi-1}}$

Lagrangian:
$$\mathcal{L} = \int_0^1 P_t^d(k)Y_t^d(k)dk + \lambda\left[Y_t^d - \left[\int_0^1 Y_t^d(k)^{\frac{\psi-1}{\psi}} dk\right]^{\frac{\psi}{\psi-1}}\right]$$

First-order condition with respect to $Y_t^d(\ell)$:
$$P_t^d(\ell) = \lambda \frac{\psi}{\psi-1}\left[\int_0^1 Y_t^d(k)^{\frac{\psi-1}{\psi}} dk\right]^{\frac{1}{\psi-1}} \frac{\psi-1}{\psi} Y_t^d(\ell)^{-\frac{1}{\psi}}$$

$$P_t^d(\ell) = \lambda \left(Y_t^d\right)^{\frac{1}{\psi}} Y_t^d(\ell)^{-\frac{1}{\psi}}$$

Solving for demand:
$$\boxed{Y_t^d(\ell) = Y_t^d \left(\frac{\lambda}{P_t^d(\ell)}\right)^\psi}$$

Finding the Lagrange multiplier $\lambda$. We substitute the demand back into the constraint:
$$Y_t^d = \left[\int_0^1 \left[Y_t^d \left(\frac{\lambda}{P_t^d(k)}\right)^\psi\right]^{\frac{\psi-1}{\psi}} dk\right]^{\frac{\psi}{\psi-1}}$$

$$Y_t^d = Y_t^d \lambda^{\psi-1} \left[\int_0^1 P_t^d(k)^{1-\psi} dk\right]^{\frac{1}{\psi-1}}$$

$$1 = \lambda^{\psi-1} \left[\int_0^1 P_t^d(k)^{1-\psi} dk\right]^{\frac{1}{\psi-1}}$$

Therefore: $\lambda = \left[\int_0^1 P_t^d(k)^{1-\psi} dk\right]^{\frac{1}{1-\psi}} = P_t^d$
Results:

$$\boxed{P_t^d = \left[\int_0^1 P_t^d(k)^{1-\psi} dk\right]^{\frac{1}{1-\psi}}}$$

$$\boxed{Y_t^d(k) = Y_t^d \left(\frac{P_t^d}{P_t^d(k)}\right)^\psi}$$


Now we minimize total cost choosing $Y_t^d$ and $Y_t^f$:

$$\min_{Y_t^d, Y_t^f} P_t^d Y_t^d + P_t^f Y_t^f$$

subject to: $Y_t = \left[\alpha (Y_t^d)^{\frac{\sigma-1}{\sigma}} + (1-\alpha) (Y_t^f)^{\frac{\sigma-1}{\sigma}}\right]^{\frac{\sigma}{\sigma-1}}$

Lagrangian:
$$\mathcal{L} = P_t^d Y_t^d + P_t^f Y_t^f + \lambda\left[Y_t - \left[\alpha (Y_t^d)^{\frac{\sigma-1}{\sigma}} + (1-\alpha) (Y_t^f)^{\frac{\sigma-1}{\sigma}}\right]^{\frac{\sigma}{\sigma-1}}\right]$$

First-order condition with respect to $Y_t^d$:
$$P_t^d = \lambda \frac{\sigma}{\sigma-1}\left[\alpha (Y_t^d)^{\frac{\sigma-1}{\sigma}} + (1-\alpha) (Y_t^f)^{\frac{\sigma-1}{\sigma}}\right]^{\frac{1}{\sigma-1}} \alpha \frac{\sigma-1}{\sigma} (Y_t^d)^{-\frac{1}{\sigma}}$$

$$P_t^d = \lambda Y_t^{\frac{1}{\sigma}} \alpha (Y_t^d)^{-\frac{1}{\sigma}}$$

First-order condition with respect to $Y_t^f$:
$$P_t^f = \lambda Y_t^{\frac{1}{\sigma}} (1-\alpha) (Y_t^f)^{-\frac{1}{\sigma}}$$

Taking the ratio:
$$\frac{P_t^d}{P_t^f} = \frac{\alpha}{1-\alpha} \left(\frac{Y_t^f}{Y_t^d}\right)^{\frac{1}{\sigma}}$$

Solving for the ratio:
$$\left(\frac{Y_t^d}{Y_t^f}\right)^{\frac{1}{\sigma}} = \frac{\alpha}{1-\alpha} \frac{P_t^f}{P_t^d}$$

$$\frac{Y_t^d}{Y_t^f} = \left(\frac{\alpha}{1-\alpha}\right)^\sigma \left(\frac{P_t^f}{P_t^d}\right)^\sigma$$

From the constraint and using the ratio:
$$Y_t^d = \left(\frac{\alpha}{1-\alpha}\right)^\sigma \left(\frac{P_t^f}{P_t^d}\right)^\sigma Y_t^f$$

Substituting into the production function:
$$Y_t = \left[\alpha \left[\left(\frac{\alpha}{1-\alpha}\right)^\sigma \left(\frac{P_t^f}{P_t^d}\right)^\sigma Y_t^f\right]^{\frac{\sigma-1}{\sigma}} + (1-\alpha) (Y_t^f)^{\frac{\sigma-1}{\sigma}}\right]^{\frac{\sigma}{\sigma-1}}$$

We can reexpress that as:
$$Y_t^f = Y_t \left[\alpha^\sigma \left(\frac{P_t^f}{P_t^d}\right)^{\sigma-1} + (1-\alpha)^\sigma\right]^{-\frac{1}{\sigma-1}} (1-\alpha)^\sigma \left(\frac{1}{P_t^f}\right)^{\sigma-1}$$
From the first-order condition: $\lambda = \frac{P_t^f}{Y_t^{\frac{1}{\sigma}} (1-\alpha) (Y_t^f)^{-\frac{1}{\sigma}}}$

Using $Y_t^f = Y_t (1-\alpha)^\sigma \left(\frac{P_t}{P_t^f}\right)^\sigma$:

$$\boxed{P_t = \left[\alpha^\sigma (P_t^d)^{1-\sigma} + (1-\alpha)^\sigma (P_t^f)^{1-\sigma}\right]^{\frac{1}{1-\sigma}}}$$

Results:

$$\boxed{Y_t^d = Y_t \alpha^\sigma \left(\frac{P_t}{P_t^d}\right)^\sigma}$$

$$\boxed{Y_t^f = Y_t (1-\alpha)^\sigma \left(\frac{P_t}{P_t^f}\right)^\sigma}$$

These are the equations we have:
Individual domestic good demand:
$$\boxed{Y_t^d(k) = Y_t \alpha^\sigma \left(\frac{P_t}{P_t^d}\right)^\sigma \left(\frac{P_t^d}{P_t^d(k)}\right)^\psi}$$

Price indices:
$$\boxed{P_t^d = \left[\int_0^1 P_t^d(k)^{1-\psi} dk\right]^{\frac{1}{1-\psi}}}$$

$$\boxed{P_t = \left[\alpha^\sigma (P_t^d)^{1-\sigma} + (1-\alpha)^\sigma (P_t^f)^{1-\sigma}\right]^{\frac{1}{1-\sigma}}}$$

Aggregate demands:
$$\boxed{Y_t^d = Y_t \alpha^\sigma \left(\frac{P_t}{P_t^d}\right)^\sigma}$$

$$\boxed{Y_t^f = Y_t (1-\alpha)^\sigma \left(\frac{P_t}{P_t^f}\right)^\sigma}$$