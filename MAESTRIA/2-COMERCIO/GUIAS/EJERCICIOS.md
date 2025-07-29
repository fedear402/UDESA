# Exercise Guide: Melitz Model
**Facundo**

## Melitz Model

Consider the Melitz model as discussed in class. The demand system is CES with substitution elasticity $\sigma = 2$. Firms face a fixed cost of production $f = 40$. The cost of entering the market is $f_e = 10$, and the probability that an exogenous shock forces firms to exit the market is $\delta = \frac{1}{4}$. Firm productivity $\phi$ follows the cumulative distribution function $G(\phi)$:

$$G(\phi) = 1 - \left(\frac{10}{\phi}\right)^3$$

This is a particular case of a Pareto distribution, with support on $[10, \infty)$.

Consider the simple case of two symmetric countries, each with a labor force $L = 20,736$ workers.

**Before starting.** What is the distribution $g(\phi)$? Recall for your Statistics or Econometrics that the probability density function is first derivative of cumulative distribution function.

## 1. Closed Economy (Autarky)

To solve for equilibrium in autarky, follow the steps below:

1) Find the expression for $\tilde{\phi}$ in terms of a given $\phi^*$ (i.e., $\tilde{\phi}(\phi^*)$).

2) Derive the two equilibrium conditions FE and ZCP in autarky and graph them.

3) Using the two equilibrium conditions, find the value of $\phi^*$.

4) With the value of $\phi^*$, calculate $\tilde{\phi}$.

5) Find the number of producing firms, $M^{**}$, which in autarky is equal to the number of available varieties.

6) How an increase in the fixed cost would affect the average productivity in equilibrium? Discuss.

7) How an increase in entry sunk cost would affect the average productivity in equilibrium? Discuss.

8) Obtain the real wage, $W = \frac{1}{P}$, using the price index expression as a function of $M$ and $\phi$.

## 2. Open Economy (International Trade)

In the open economy, firms interested in exporting must pay additional costs. Specifically, the fixed cost of exporting is $f_x = 32$, and the iceberg cost (the number of goods that must be exported to deliver one unit to the foreign country) is $\tau = 2.5$. Note that $\tau > 1$.

To solve for equilibrium in the open economy, follow the steps below:

1. Find the probability of exporting in this economy. To do this, combine the definition of the probability of exporting:
   $$p_x = \frac{1 - G(\phi_x^*)}{1 - G(\phi^*)}$$
   with the expression that relates the two cutoffs in the open economy.

2. As in step 1 from autarky, find the expressions for $\tilde{\phi}(\phi^*)$ and $\tilde{\phi}_x(\phi_x^*)$.

3. Once you have $\tilde{\phi}(\phi^*)$ and $\tilde{\phi}_x(\phi_x^*)$, use them along with $p_x$ to derive the two equilibrium conditions (FE and ZCP) in the open economy.

4. Using the two equilibrium conditions**, find the value of $\phi^*$ (the productivity cutoff beyond which firms begin to make positive profits).

5. Using the expression that relates the two cutoffs in the open economy, find the value of $\phi_x^*$ (the productivity cutoff beyond which firms export).

6. With the values of $\phi^*$ and $\phi_x^*$ obtained, find $\tilde{\phi}$ and $\tilde{\phi}_x$ using the expressions from step 2.

7. Find the number of producing firms, $M$, and the total number of varieties available.

8. Obtain the real wage, $W = \frac{w}{P} = \frac{1}{P}$, using the price index expression.

## 3. Gains from International Trade and Conclusions

1. Compare the values of the productivity cutoffs, $\phi^*$, between autarky and international trade. Which is higher? What does this imply about firm selection?

2. Compare the average productivity values, $\tilde{\phi}$, between autarky and international trade. Which is higher? What does this imply for the country's overall productivity?

3. Compare the values of $\phi^*$ and $\phi_x^*$ in international trade. Which is higher? What does this imply about the differences between exporters and non-exporters?

4. Compare the number of domestic firms, $M$, between autarky and international trade. Which is larger? What does this imply?

5. Compare the number of varieties available in the domestic economy, $M_t$, between autarky and international trade. Which is larger? What does this imply?

6. Measure the gains from international trade (i.e., the increase in real wages):
   $$\frac{W_T}{W_A} - 1 = \frac{P_A}{P_T}$$
   What are the sources of these gains?

---

# Exercises: Krugman 1979 Model
**Facundo Albornoz**

## Problem 1

Consider the Krugman model. Consumers have the following utility function:

$$U = \left[\int_0^n D(\omega)^{\frac{\sigma-1}{\sigma}} d\omega\right]^{\frac{\sigma}{\sigma-1}}$$

where $D(\omega)$ represents the quantity consumed of variety $\omega$, $\sigma > 1$ is the elasticity of substitution between varieties, and $n$ is the number of available varieties.

1. Derive the demand function for a representative variety $\omega$ assuming consumers maximize utility subject to a budget constraint.

In the Krugman model, firms produce with increasing returns to scale. The labor required to produce quantity $q(\omega)$ of variety $\omega$ is given by:

$$l(\omega) = \frac{q(\omega)}{\phi} + f$$

where $f$ is a fixed cost, and $\phi$ represents productivity.

(a) Derive the total cost function $C(q(\omega))$ for a firm producing $q(\omega)$ units of variety $\omega$. Express marginal cost and average cost.

$$TC(q_\omega) = l_i w_i = \frac{q_\omega}{\phi} + fw$$

$$MC(q_i) = \frac{1}{\phi}$$

$$TC(q_\omega) = l_i w_i = \frac{1}{\phi} + fw/q$$

(b) Assume firms are monopolistically competitive. Derive the optimal price $p(\omega)$ set by a firm in terms of its marginal cost, the elasticity of substitution $\sigma$, and productivity $\phi$.

The firm behaves as if it was a monopolist. So maximizes

$$\pi = \left(p - \frac{1}{\phi}\right)q_i - fw$$

$$\pi = \left(p - \frac{1}{\phi}\right)q_i - fw$$

2. Follow the symmetric equilibrium we considered in class. Write down the (P.P) equation. Interpret it.

3. Using the free entry (zero-profit) condition (Z.P), derive the relationship between the price over wages as a function of fixed cost $f$, productivity $\phi$, and demand for the firm's variety $D(\omega)$.

4. Combine the P.P and Z.P conditions to solve for equilibrium $p/w$ and $D$. Then use the other equation to find quantity produced by each firm $q$.

5. In equilibrium, the goods and labor markets must clear.

   (a) Use the labor market clearing condition to solve for the number of firms $n$ in equilibrium, in terms of the total labor force $L$, fixed cost $f$, and elasticity of substitution $\sigma$.

6. What would happen to the equilibrium variables if there is an increase in $f$. How would the curves move? Explain the intuition.

7. In class, we haven't discussed the aggregate variables in Krugman. Lets do this here. Normalize labor to be the numerairie, $w=1$. The ideal price index of the CES function is:

   $$P = \left[\int_{\omega \in \Omega_n} p(\omega)^{1-\sigma} d\omega\right]^{\frac{1}{1-\sigma}}$$

   where $\Omega_n$ is the set of active firms. What is the price index in equilibrium? How does this depend on the number of firms? What does this tell you about the effects of having more firms, while maintaining the price of each firm?

   $$P = n^{\frac{1}{1-\sigma}} p$$

8. Assume countries open to trade. Explain the movements of each curve and the new equilibrium.

9. Show that in the new equilibrium, trade is balanced. That is: the amount of exports of the local economy is equal to the amount of imports of the local economy.

Assume $L = 10$, $L^* = 20$, $\phi = 2$, $\sigma = 5$, $f = 0.5$. Find the optimal values in equilibrium.

---

# PROBLEM SET 1
**Facundo Albornoz**  
**July 15, 2025**

Due at the beginning of the first tutorial class

1.Consider the following Ricardian model. The economy consists of a continuum of goods produced with labor in perfect competition. There are two countries, Home and Foreign, differing only in their technology to produce goods. Precisely, there are $n$ goods ranked to obtain diminishing Home comparative advantage

   $$\frac{a_1^*}{a_1} > \ldots > \frac{a_i^*}{a_i} > \ldots > \frac{a_n^*}{a_n}$$

   where $a$ is Home unit labor requirement and $a^*$ is Foreign's. Set $A(z) = a^*(z)/a(z)$ and assume that, $A(z)$ is continuous and monotonically decreasing on the continuum of goods $0 < z < 1$, taking the form is $A(z) = \bar{A}z^{-1}$, with $\bar{A} = 2$. Suppose consumers preferences in both countries are

   $$U = \int_0^1 \ln c(z) dz \quad (1)$$

   assume that the relative size of the two countries is $\frac{L^*}{L} = \beta = 1$.

   (a) Compute the equilibrium borderline good $\bar{z}$ and relative wage $\omega$.

   (b) Prove analytically the existence of welfare gains from trade and discuss the economic intuition.

   (c) Suppose that the foreign country experience uniform technological progress in all goods, that is $\bar{A}$ is now equal 1. Derive the new borderline good $\bar{z}$ and relative wage $\omega$. How does this episode of foreign technological progress affect home welfare? Explain. Suppose that the foreign country's population doubles while home population stays constant. How does this episode of foreign technological progress affect home welfare? Discuss.

   (d) Now go back to the baseline model with log utility as in (1) and generic relative technology $A(z) = a^*(z)/a(z)$. In the previous questions you have proved the existence of the gains from trade, now I ask you to compute the total gains that trade generates for the country. Recall that in autarky, consumption in the two countries is $c(z) = w/p(z)$ and $c^*(z) = w^*/p^*(z)$, hence welfare can be expressed as

       $$U_A = -\int_0^1 \ln(a(z))dz \quad \text{and} \quad U_A^* = -\int_0^1 \ln(a^*(z))dz. \quad (2)$$

Derive the welfare gains from trade: compute the difference between welfare under trade and autarky, $U_T - U_A$ and $U_T^* - U_A^*$.

2.This is an exercise on the Heckscher-Ohlin model. Consider the following global economy. There are two countries $j \in \{1, 2\}$, two tradable goods $i \in \{1, 2\}$ produced with two factors of production, capital $(K)$ and labor $(L)$ according to the following technologies:

   $$Y_{j1} = K_{j1}^\alpha L_{j1}^{1-\alpha} \quad \text{with } 0 < \alpha < 1$$

   $$Y_{j2} = K_{j1}^\beta L_{j1}^{1-\beta} \quad \text{with } 0 < \beta < 1.$$

   We assume $\beta > \alpha$, so that good 2 is capital intensive. Moreover, endowments as such that $\bar{K}_1/\bar{L}_1 > \bar{K}_2/\bar{L}_2$, which implies that country 1 is capital abundant. All markets are perfectly competitive. Finally, preferences are homothetic and identical in both countries:

   $$U(C_{j1}, C_{j2}) = \log(C_{j1}) + \log(C_{j2}),$$

   where $C_{ji}$ denotes consumption of good $i$ in country $j$.

   (a) Focusing on the closed economy, solve the cost mininization problem of the firm, deriving the cost function and the demand for labor and capital. Specify the equilibrium pricing conditions of the firms. Solve the consumer problem, deriving the demand for both goods. Complete equlibrium description imposing market clearing. (Hint: it suffices to derive the equilibrium for one country only.)

   (b) Suppose now that the two countries are open to free trade. What will the move from autarky to free trade imply for the relative price of good 1 in country 2? Derive algebraically the implications of this change in the relative price of good 1 for both the relative and real return to labour (wage) in country 2 assuming that both goods continue to be produced. Give the economic intuition for your findings. (Hint: just explain what happens to the relative price of good 1 in country 2 when we move to free trade, don't need to derive the price change. Once you know how the relative price moves, the distributional effect can be found applying the Stolper-Samuelson theorem)

---

# PROBLEM SET 2
**Facundo Albornoz**  
**July 15, 2025**

## 1. Increasing returns and monopolistic competition

Consider the following version of the Krugman (1980) economy. Preferences and technology are as in the baseline model that we saw in class, but assume that countries are symmetric, that is besides sharing the same preferences and technology they have the same population. Now assume that firms incurr in a fixed cost of creating a variety, that is firms have to pay a cost $f_E$ to enter the market.

(a) Solve the household problem and derive the demand for each variety. Solve the firm problem and derive the optimal price. Use the free entry condition to derive the optimal quantity produced and sold.

(b) Now assume that that firms need to pay a fixed cost, $s$ to set up a plant and can reach the foreign market either by exporting or by setting up another plant abroad, which is a form of horizontal multinational activity. If a firm reaches the foreign market via export it must pay an iceberg cost $\tau > 1$ for each units shipped abroad, as in the standard model. If the firm decides to establish a foreign subsidiary, it must pay an additional fixed cost to set up the plant abroad, so paying in total $2f_s$, but will not have to pay the iceberg cost. Derive the condition under which the firm chooses to reach the foreign market via multinational production instead of export. HINT: In the free entry implies that total profits (on domestic and export sales) are zero. Hence, in order for multinational production to be convenient it must do better than this. HINT: it is convenient to write profits in simple form, taking the domestic profits as an example, $\pi = \phi^{\sigma-1}B$ where $B = (1/\sigma)((\sigma - 1)/\sigma)^{\sigma-1}A$, where $A$ the aggregate demand shifter from demand $q(\omega) = \frac{wL}{\int_{0}^{n}p(\omega)^{1-\sigma}}p(\omega)^{-\sigma} = Ap(\omega)^{-\sigma}$.

## 2. Trade under oligopoly

The economy consists of two countries, Home and Foreign, with one firm in each country producing the same good with a unit cost of production $c$ and $c^*$ respectively. The countries can trade at a cost $t \geq 0$ per unit, hence the total cost of producing one unit for the export market is $t + c$ in the home country and $t + c^*$ in the foreign country. Assume that the Home firm faces a linear demand $p = a - bZ$, where $Z = x + y$ is the total amount of the good sold on the Home market by the Home firm $x$ and by the Foreign firm $y$. Assume that the Foreign firm faces a linear demand $p^* = a - bZ^*$, where $Z^* = x^* + y^*$ is the total amount of the good sold on the Foreign market by the Home firm $x^*$ and by the Foreign firm $y^*$.

(a) Characterize the first order conditions for the firms, and derive their best response functions. Show the condition under which there is two-ways trade in the same good (reciprocal dumping) and explain the economic reason for two countries trading the same good. (20 points)

(b) Focusing on the home firm (the answer for the foreign firm is similar), derive the effect of an increase in the trade cost $t$ on domestic profits and export profits. (20 points)

(c) Focus on the home firm. Derive the effect of a decrease in the trade cost $t$ on total profits when the economy is in autarky ($t$ is at its prohibitive level, $x^* = 0$). Derive the effect of an increase in the trade cost $t$ on total profits when the economy is in free trade ($t = 0$, $x^* = x$).

(d) Using your answer to point (c) above, explain the effect of trade liberalization on welfare. (You don't need to derive it, just explain the intuition).

(e) How would your answer to point (d) above change if we assume that there is free entry in both markets?

## 3. Consider the simplified version of the Melitz (2003) model discussed in class

(a) Suppose that there are no fixed export costs, $f_x = 0$. Will the model equilibrium generate a partition of the firm space in line with what we observe in the data?

(b) Suppose that because of an large stimulus package decided by both countries' governments, the aggregate demand increases ($B$ increases). What effects would that policy have on firm selection? What consequences of aggregate productivity and welfare can we expect?

(c) Suppose that because of a national referendum vote, both countries decide to stop trading with each other and revert to autarky. What effects would that policy have on firm selection? What consequences for aggregate productivity and welfare can we expect?