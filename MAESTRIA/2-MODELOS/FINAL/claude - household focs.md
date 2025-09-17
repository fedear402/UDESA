
You're absolutely right! Let me solve this step by step with complete mathematical rigor. No shortcuts.Perfect! Now I'll solve this step by step using the Lagrangian method exactly as shown in your class notes.

## STEP 1: SET UP THE LAGRANGIAN

The household's optimization problem is:

$$\max E_t \sum_{j=0}^{\infty} \beta^j \left[ \ln c_{t+j}^i + B h_{t+j}^i \right]$$

Subject to constraints:

1. Cash-in-advance constraint: 
2. $$P_{t+j} c_{t+j}^i = m_{t+j-1}^i - n_{t+j-1}^i + (g_{t+j}^f - 1) M_{t+j-1}$$
    
2. Flow budget constraint: $$\frac{m_{t+j}^i + n_{t+j}^i}{P_{t+j}} + \frac{e_{t+j} b_{t+j}^i}{P_{t+j}} + k_{t+j+1}^i + \frac{\kappa}{2}(k_{t+j+1}^i - k_{t+j}^i)^2$$ $$= w_{t+j} h_{t+j}^i + r_{t+j} k_{t+j}^i + (1-\delta)k_{t+j}^i + \frac{e_{t+j}(1+r_{t+j-1}^f)b_{t+j-1}^i}{P_{t+j}} + r_{t+j}^n \frac{n_{t+j-1}^i}{P_{t+j}}$$
    

Form the Lagrangian: $$\mathcal{L} = E_t \sum_{j=0}^{\infty} \beta^j \left[ \ln c_{t+j}^i + B h_{t+j}^i \right.$$ $$+ \lambda_{t+j}^1 \left[ \frac{m_{t+j-1}^i - n_{t+j-1}^i + (g_{t+j}^f - 1) M_{t+j-1}}{P_{t+j}} - c_{t+j}^i \right]$$ $$+ \lambda_{t+j}^2 \left[ w_{t+j} h_{t+j}^i + r_{t+j} k_{t+j}^i + (1-\delta)k_{t+j}^i + \frac{e_{t+j}(1+r_{t+j-1}^f)b_{t+j-1}^i}{P_{t+j}} + r_{t+j}^n \frac{n_{t+j-1}^i}{P_{t+j}} \right.$$ $$\left. \left. - \frac{m_{t+j}^i + n_{t+j}^i}{P_{t+j}} - \frac{e_{t+j} b_{t+j}^i}{P_{t+j}} - k_{t+j+1}^i - \frac{\kappa}{2}(k_{t+j+1}^i - k_{t+j}^i)^2 \right] \right]$$

## STEP 2: TAKE FIRST-ORDER CONDITIONS

FOC with respect to $c_{t+j}^i$: $$\frac{\partial \mathcal{L}}{\partial c_{t+j}^i} = \beta^j \left[ \frac{1}{c_{t+j}^i} - \lambda_{t+j}^1 \right] = 0$$

Therefore: $$\frac{1}{c_{t+j}^i} = \lambda_{t+j}^1 \quad \text{...(1)}$$

FOC with respect to $h_{t+j}^i$: $$\frac{\partial \mathcal{L}}{\partial h_{t+j}^i} = \beta^j \left[ B + \lambda_{t+j}^2 w_{t+j} \right] = 0$$

Therefore: $$B + \lambda_{t+j}^2 w_{t+j} = 0$$ $$\lambda_{t+j}^2 = -\frac{B}{w_{t+j}} \quad \text{...(2)}$$

FOC with respect to $k_{t+j+1}^i$: $$\frac{\partial \mathcal{L}}{\partial k_{t+j+1}^i} = \beta^j \left[ -\lambda_{t+j}^2 - \lambda_{t+j}^2 \kappa(k_{t+j+1}^i - k_{t+j}^i) \right]$$ $$+ \beta^{j+1} \left[ \lambda_{t+j+1}^2 (r_{t+j+1} + (1-\delta)) + \lambda_{t+j+1}^2 \kappa(k_{t+j+2}^i - k_{t+j+1}^i) \right] = 0$$

Simplifying: $$-\lambda_{t+j}^2 [1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)] + \beta E_{t+j} \lambda_{t+j+1}^2 [r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)] = 0$$

Therefore: $$\lambda_{t+j}^2 [1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)] = \beta E_{t+j} \lambda_{t+j+1}^2 [r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)] \quad \text{...(3)}$$

FOC with respect to $m_{t+j}^i$: $$\frac{\partial \mathcal{L}}{\partial m_{t+j}^i} = \beta^j \left[ -\lambda_{t+j}^2 \frac{1}{P_{t+j}} \right] + \beta^{j+1} \left[ \lambda_{t+j+1}^1 \frac{1}{P_{t+j+1}} \right] = 0$$

Therefore: $$-\lambda_{t+j}^2 \frac{1}{P_{t+j}} + \beta E_{t+j} \lambda_{t+j+1}^1 \frac{1}{P_{t+j+1}} = 0$$ $$\lambda_{t+j}^2 \frac{1}{P_{t+j}} = \beta E_{t+j} \lambda_{t+j+1}^1 \frac{1}{P_{t+j+1}} \quad \text{...(4)}$$

FOC with respect to $n_{t+j}^i$: $$\frac{\partial \mathcal{L}}{\partial n_{t+j}^i} = \beta^j \left[ -\lambda_{t+j}^2 \frac{1}{P_{t+j}} \right] + \beta^{j+1} \left[ -\lambda_{t+j+1}^1 \frac{1}{P_{t+j+1}} + \lambda_{t+j+1}^2 \frac{r_{t+j+1}^n}{P_{t+j+1}} \right] = 0$$

Therefore: $$-\lambda_{t+j}^2 \frac{1}{P_{t+j}} + \beta E_{t+j} \left[ -\lambda_{t+j+1}^1 \frac{1}{P_{t+j+1}} + \lambda_{t+j+1}^2 \frac{r_{t+j+1}^n}{P_{t+j+1}} \right] = 0$$ $$\lambda_{t+j}^2 \frac{1}{P_{t+j}} = \beta E_{t+j} \left[ \lambda_{t+j+1}^1 \frac{1}{P_{t+j+1}} - \lambda_{t+j+1}^2 \frac{r_{t+j+1}^n}{P_{t+j+1}} \right] \quad \text{...(5)}$$

FOC with respect to $b_{t+j}^i$: $$\frac{\partial \mathcal{L}}{\partial b_{t+j}^i} = \beta^j \left[ -\lambda_{t+j}^2 \frac{e_{t+j}}{P_{t+j}} \right] + \beta^{j+1} \left[ \lambda_{t+j+1}^2 \frac{e_{t+j+1}(1+r_{t+j}^f)}{P_{t+j+1}} \right] = 0$$

Therefore: $$-\lambda_{t+j}^2 \frac{e_{t+j}}{P_{t+j}} + \beta E_{t+j} \lambda_{t+j+1}^2 \frac{e_{t+j+1}(1+r_{t+j}^f)}{P_{t+j+1}} = 0$$ $$\lambda_{t+j}^2 \frac{e_{t+j}}{P_{t+j}} = \beta E_{t+j} \lambda_{t+j+1}^2 \frac{e_{t+j+1}(1+r_{t+j}^f)}{P_{t+j+1}} \quad \text{...(6)}$$

## STEP 3: SUBSTITUTE LAGRANGIAN MULTIPLIERS

From equations (1) and (2): $$\lambda_{t+j}^1 = \frac{1}{c_{t+j}^i}$$ $$\lambda_{t+j}^2 = -\frac{B}{w_{t+j}}$$

Substitute into equation (4): $$\left(-\frac{B}{w_{t+j}}\right) \frac{1}{P_{t+j}} = \beta E_{t+j} \left(\frac{1}{c_{t+j+1}^i}\right) \frac{1}{P_{t+j+1}}$$

$$-\frac{B}{w_{t+j} P_{t+j}} = \beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}}$$

Multiply both sides by $(-1)$: $$\frac{B}{w_{t+j} P_{t+j}} = -\beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}} \quad \text{...(7)}$$

This is the money demand equation.

Excellent! Let me continue the step-by-step substitution of the Lagrangian multipliers.

## STEP 4: SUBSTITUTE INTO REMAINING FOCs

Substitute into equation (3) - Capital FOC:

From equations (1) and (2): $$\lambda_{t+j}^1 = \frac{1}{c_{t+j}^i}, \quad \lambda_{t+j}^2 = -\frac{B}{w_{t+j}}$$

Substitute into equation (3): $$\left(-\frac{B}{w_{t+j}}\right) [1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)] = \beta E_{t+j} \left(-\frac{B}{w_{t+j+1}}\right) [r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]$$

Multiply both sides by $(-1/B)$: $$\frac{1}{w_{t+j}} [1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)] = \beta E_{t+j} \frac{1}{w_{t+j+1}} [r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]$$

Multiply both sides by $w_{t+j}$: $$1 + \kappa(k_{t+j+1}^i - k_{t+j}^i) = \beta E_{t+j} \frac{w_{t+j}}{w_{t+j+1}} [r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]$$

Therefore: $$\frac{1}{\beta} = E_{t+j} \frac{w_{t+j}}{w_{t+j+1}} \frac{[r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]}{[1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)]} \quad \text{...(8)}$$

This is the capital Euler equation.

Substitute into equation (5) - Deposit FOC:

Equation (5) was: $$\lambda_{t+j}^2 \frac{1}{P_{t+j}} = \beta E_{t+j} \left[ \lambda_{t+j+1}^1 \frac{1}{P_{t+j+1}} - \lambda_{t+j+1}^2 \frac{r_{t+j+1}^n}{P_{t+j+1}} \right]$$

Substitute the multipliers: $$\left(-\frac{B}{w_{t+j}}\right) \frac{1}{P_{t+j}} = \beta E_{t+j} \left[ \frac{1}{c_{t+j+1}^i} \frac{1}{P_{t+j+1}} - \left(-\frac{B}{w_{t+j+1}}\right) \frac{r_{t+j+1}^n}{P_{t+j+1}} \right]$$

Simplify: $$-\frac{B}{w_{t+j} P_{t+j}} = \beta E_{t+j} \left[ \frac{1}{c_{t+j+1}^i P_{t+j+1}} + \frac{B r_{t+j+1}^n}{w_{t+j+1} P_{t+j+1}} \right]$$

Multiply both sides by $(-1)$: $$\frac{B}{w_{t+j} P_{t+j}} = \beta E_{t+j} \left[ -\frac{1}{c_{t+j+1}^i P_{t+j+1}} - \frac{B r_{t+j+1}^n}{w_{t+j+1} P_{t+j+1}} \right]$$

Factor out from the expectation: $$\frac{B}{w_{t+j} P_{t+j}} = -\beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}} - \beta E_{t+j} \frac{B r_{t+j+1}^n}{w_{t+j+1} P_{t+j+1}}$$

From equation (7), we know: $$\frac{B}{w_{t+j} P_{t+j}} = -\beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}}$$

Substitute this: $$-\beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}} = -\beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}} - \beta E_{t+j} \frac{B r_{t+j+1}^n}{w_{t+j+1} P_{t+j+1}}$$

This simplifies to: $$0 = -\beta E_{t+j} \frac{B r_{t+j+1}^n}{w_{t+j+1} P_{t+j+1}}$$

Since $B \neq 0$ and $\beta \neq 0$: $$E_{t+j} \frac{r_{t+j+1}^n}{w_{t+j+1} P_{t+j+1}} = 0$$

This implies: $$r_{t+j+1}^n = 1 \quad \text{...(9)}$$

This is the bank deposit interest rate condition.

Substitute into equation (6) - Foreign Bond FOC:

Equation (6) was: $$\lambda_{t+j}^2 \frac{e_{t+j}}{P_{t+j}} = \beta E_{t+j} \lambda_{t+j+1}^2 \frac{e_{t+j+1}(1+r_{t+j}^f)}{P_{t+j+1}}$$

Substitute the multipliers: $$\left(-\frac{B}{w_{t+j}}\right) \frac{e_{t+j}}{P_{t+j}} = \beta E_{t+j} \left(-\frac{B}{w_{t+j+1}}\right) \frac{e_{t+j+1}(1+r_{t+j}^f)}{P_{t+j+1}}$$

Multiply both sides by $(-1/B)$: $$\frac{1}{w_{t+j}} \frac{e_{t+j}}{P_{t+j}} = \beta E_{t+j} \frac{1}{w_{t+j+1}} \frac{e_{t+j+1}(1+r_{t+j}^f)}{P_{t+j+1}}$$

Multiply both sides by $w_{t+j}$: $$\frac{e_{t+j}}{P_{t+j}} = \beta E_{t+j} \frac{w_{t+j}}{w_{t+j+1}} \frac{e_{t+j+1}(1+r_{t+j}^f)}{P_{t+j+1}}$$

Rearrange: $$\frac{1}{\beta} = E_{t+j} \frac{w_{t+j}}{w_{t+j+1}} \frac{e_{t+j+1}(1+r_{t+j}^f)}{e_{t+j}} \frac{P_{t+j}}{P_{t+j+1}}$$

This can be written as: $$\frac{1}{\beta} = E_{t+j} \frac{w_{t+j}}{w_{t+j+1}} (1+r_{t+j}^f) \frac{e_{t+j+1}}{e_{t+j}} \frac{P_{t+j}}{P_{t+j+1}} \quad \text{...(10)}$$

This is the foreign bond Euler equation (uncovered interest parity with wage adjustment).

## STEP 5: COMPARE WITH MONEY DEMAND (from equation 7)

From equation (7) and using $\lambda_{t+j}^1 = 1/c_{t+j}^i$: $$\frac{B}{w_{t+j} P_{t+j}} = -\beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}}$$

Since $\lambda_{t+j}^2 = -B/w_{t+j}$, we can also write equation (4) as: $$\frac{1}{c_{t+j}^i P_{t+j}} = \beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}} \quad \text{...(11)}$$

This is the money Euler equation.

Perfect! Let me continue step-by-step to derive the key relationships between these FOCs.

## STEP 6: DERIVE THE LABOR SUPPLY CONDITION

From equation (7): $$\frac{B}{w_{t+j} P_{t+j}} = -\beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}}$$

From equation (11): $$\frac{1}{c_{t+j}^i P_{t+j}} = \beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}}$$

Therefore: $$\beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}} = \frac{1}{c_{t+j}^i P_{t+j}}$$

Substitute this into equation (7): $$\frac{B}{w_{t+j} P_{t+j}} = -\frac{1}{c_{t+j}^i P_{t+j}}$$

Multiply both sides by $P_{t+j}$: $$\frac{B}{w_{t+j}} = -\frac{1}{c_{t+j}^i}$$

Multiply both sides by $(-1)$: $$-\frac{B}{w_{t+j}} = \frac{1}{c_{t+j}^i}$$

Rearrange: $$B = -\frac{w_{t+j}}{c_{t+j}^i} \quad \text{...(12)}$$

This is the labor supply condition.

## STEP 7: EQUATE THE CAPITAL AND FOREIGN BOND EULER EQUATIONS

From equation (8) - Capital Euler: $$\frac{1}{\beta} = E_{t+j} \frac{w_{t+j}}{w_{t+j+1}} \frac{[r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]}{[1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)]}$$

From equation (10) - Foreign Bond Euler: $$\frac{1}{\beta} = E_{t+j} \frac{w_{t+j}}{w_{t+j+1}} (1+r_{t+j}^f) \frac{e_{t+j+1}}{e_{t+j}} \frac{P_{t+j}}{P_{t+j+1}}$$

Since both equal $1/\beta$, we can equate them: $$E_{t+j} \frac{w_{t+j}}{w_{t+j+1}} \frac{[r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]}{[1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)]} = E_{t+j} \frac{w_{t+j}}{w_{t+j+1}} (1+r_{t+j}^f) \frac{e_{t+j+1}}{e_{t+j}} \frac{P_{t+j}}{P_{t+j+1}}$$

Cancel $E_{t+j} \frac{w_{t+j}}{w_{t+j+1}}$ from both sides: $$\frac{[r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]}{[1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)]} = (1+r_{t+j}^f) \frac{e_{t+j+1}}{e_{t+j}} \frac{P_{t+j}}{P_{t+j+1}} \quad \text{...(13)}$$

This is the arbitrage condition between domestic capital and foreign bonds.

## STEP 8: USE LABOR SUPPLY TO REWRITE THE EULER EQUATIONS

From equation (12): $B = -\frac{w_{t+j}}{c_{t+j}^i}$

Therefore: $\frac{w_{t+j}}{c_{t+j}^i} = -B$

Substitute this into equation (11): $$\frac{1}{c_{t+j}^i P_{t+j}} = \beta E_{t+j} \frac{1}{c_{t+j+1}^i P_{t+j+1}}$$

Multiply both sides by $c_{t+j}^i$: $$\frac{1}{P_{t+j}} = \beta E_{t+j} \frac{c_{t+j}^i}{c_{t+j+1}^i P_{t+j+1}}$$

Rearrange: $$\frac{1}{\beta} = E_{t+j} \frac{c_{t+j}^i}{c_{t+j+1}^i} \frac{P_{t+j}}{P_{t+j+1}}$$

Define gross inflation: $\Pi_{t+j+1} = \frac{P_{t+j+1}}{P_{t+j}}$

Therefore: $$\frac{1}{\beta} = E_{t+j} \frac{c_{t+j}^i}{c_{t+j+1}^i} \Pi_{t+j+1} \quad \text{...(14)}$$

This is the consumption Euler equation.

## STEP 9: REWRITE CAPITAL EULER IN TERMS OF CONSUMPTION

From the labor supply condition: $B = -\frac{w_{t+j}}{c_{t+j}^i}$

Therefore: $w_{t+j} = -B c_{t+j}^i$

Substitute into equation (8): $$\frac{1}{\beta} = E_{t+j} \frac{(-B c_{t+j}^i)}{(-B c_{t+j+1}^i)} \frac{[r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]}{[1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)]}$$

Simplify: $$\frac{1}{\beta} = E_{t+j} \frac{c_{t+j}^i}{c_{t+j+1}^i} \frac{[r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]}{[1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)]} \quad \text{...(15)}$$

This is the capital Euler equation in consumption terms.

## STEP 10: REWRITE FOREIGN BOND EULER IN TERMS OF CONSUMPTION

Similarly, substitute $w_{t+j} = -B c_{t+j}^i$ into equation (10): $$\frac{1}{\beta} = E_{t+j} \frac{(-B c_{t+j}^i)}{(-B c_{t+j+1}^i)} (1+r_{t+j}^f) \frac{e_{t+j+1}}{e_{t+j}} \frac{P_{t+j}}{P_{t+j+1}}$$

Simplify: $$\frac{1}{\beta} = E_{t+j} \frac{c_{t+j}^i}{c_{t+j+1}^i} (1+r_{t+j}^f) \frac{e_{t+j+1}}{e_{t+j}} \frac{P_{t+j}}{P_{t+j+1}}$$

Using $\Pi_{t+j+1} = \frac{P_{t+j+1}}{P_{t+j}}$: $$\frac{1}{\beta} = E_{t+j} \frac{c_{t+j}^i}{c_{t+j+1}^i} (1+r_{t+j}^f) \frac{e_{t+j+1}}{e_{t+j}} \frac{1}{\Pi_{t+j+1}} \quad \text{...(16)}$$

This is the foreign bond Euler equation in consumption terms.



## **STEP 11: AGGREGATION CONDITIONS**

Since all households are **identical in equilibrium**, we have:

$$c_t^i = C_t \quad \forall i$$ $$h_t^i = H_t \quad \forall i$$  
$$k_t^i = K_t \quad \forall i$$ $$m_t^i = M_t \quad \forall i$$ $$n_t^i = N_t \quad \forall i$$ $$b_t^i = B_t \quad \forall i$$

## **STEP 12: AGGREGATE THE FIRST-ORDER CONDITIONS**

**From equation (12) - Labor Supply:** $$B = -\frac{w_{t+j}}{c_{t+j}^i}$$

**After aggregation:** $$B = -\frac{w_t}{C_t} \quad \text{...(17)}$$

**From equation (14) - Consumption Euler:** $$\frac{1}{\beta} = E_{t+j} \frac{c_{t+j}^i}{c_{t+j+1}^i} \Pi_{t+j+1}$$

**After aggregation:** $$\frac{1}{\beta} = E_t \frac{C_t}{C_{t+1}} \Pi_{t+1} \quad \text{...(18)}$$

**From equation (15) - Capital Euler:** $$\frac{1}{\beta} = E_{t+j} \frac{c_{t+j}^i}{c_{t+j+1}^i} \frac{[r_{t+j+1} + (1-\delta) + \kappa(k_{t+j+2}^i - k_{t+j+1}^i)]}{[1 + \kappa(k_{t+j+1}^i - k_{t+j}^i)]}$$

**After aggregation:** $$\frac{1}{\beta} = E_t \frac{C_t}{C_{t+1}} \frac{[r_{t+1} + (1-\delta) + \kappa(K_{t+2} - K_{t+1})]}{[1 + \kappa(K_{t+1} - K_t)]} \quad \text{...(19)}$$

**From equation (16) - Foreign Bond Euler:** $$\frac{1}{\beta} = E_{t+j} \frac{c_{t+j}^i}{c_{t+j+1}^i} (1+r_{t+j}^f) \frac{e_{t+j+1}}{e_{t+j}} \frac{1}{\Pi_{t+j+1}}$$

**After aggregation:** $$\frac{1}{\beta} = E_t \frac{C_t}{C_{t+1}} (1+r_t^f) \frac{e_{t+1}}{e_t} \frac{1}{\Pi_{t+1}} \quad \text{...(20)}$$

**From equation (9) - Bank Deposit Rate:** $$r_{t+1}^n = 1 \quad \text{...(21)}$$

## **STEP 13: AGGREGATE THE BUDGET CONSTRAINTS**

**Cash-in-Advance Constraint (aggregated):** $$P_t C_t = M_{t-1} - N_{t-1} + (g_t^f - 1) M_{t-1}$$

**Simplify:** $$P_t C_t = g_t^f M_{t-1} - N_{t-1} \quad \text{...(22)}$$

**Flow Budget Constraint (aggregated):** $$\frac{M_t + N_t}{P_t} + \frac{e_t B_t}{P_t} + K_{t+1} + \frac{\kappa}{2}(K_{t+1} - K_t)^2$$ $$= w_t H_t + r_t K_t + (1-\delta)K_t + \frac{e_t(1+r_{t-1}^f)B_{t-1}}{P_t} + r_t^n \frac{N_{t-1}}{P_t} \quad \text{...(23)}$$

## **STEP 14: FINAL HOUSEHOLD FIRST-ORDER CONDITIONS**

The **complete set of household FOCs** is:

**1) Labor Supply:** $$\frac{B}{w_t} = -\frac{1}{C_t} \quad \text{...(24)}$$

**2) Consumption Euler:** $$\frac{1}{\beta} = E_t \frac{C_t}{C_{t+1}} \frac{P_{t+1}}{P_t} \quad \text{...(25)}$$

**3) Capital Euler:** $$[1 + \kappa(K_{t+1} - K_t)] = \beta E_t \frac{C_t}{C_{t+1}} [r_{t+1} + (1-\delta) + \kappa(K_{t+2} - K_{t+1})] \quad \text{...(26)}$$

**4) Foreign Bond Euler:** $$\frac{e_t}{P_t} = \beta E_t \frac{C_t}{C_{t+1}} \frac{e_{t+1}(1+r_t^f)}{P_{t+1}} \quad \text{...(27)}$$

**5) Bank Deposit Rate:** $$r_{t+1}^n = 1 \quad \text{...(28)}$$

**6) Cash-in-Advance Constraint:** $$P_t C_t = g_t^f M_{t-1} - N_{t-1} \quad \text{...(29)}$$

**7) Flow Budget Constraint:** $$\frac{M_t + N_t}{P_t} + \frac{e_t B_t}{P_t} + K_{t+1} + \frac{\kappa}{2}(K_{t+1} - K_t)^2$$ $$= w_t H_t + r_t K_t + (1-\delta)K_t + \frac{e_t(1+r_{t-1}^f)B_{t-1}}{P_t} + \frac{N_{t-1}}{P_t} \quad \text{...(30)}$$
