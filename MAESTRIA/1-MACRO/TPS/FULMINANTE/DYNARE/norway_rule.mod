// -------------------------------------
//  RAMSEY‑TYPE GOVERNMENT SPENDING SMOOTHING
// -------------------------------------
var g b rev;                                          // endogenous
varexo eps;                                           // exogenous

// ---- Calibration (copy‑paste the block above) ----
parameters beta r sigma rho ss_rev ss_tau tau;
tau    = ss_tau;

// ---- Model equations ----
model(use_differentiation = complex);
// Government budget constraint (one‑period)
b(+1) = (1 + r)*b + rev + tau - g;

// Resource revenue process
rev  = rho*rev(-1) + (1 - rho)*ss_rev + eps;
end;

// ---- Planner’s objective ----
planner_objective  ( g^(1 - sigma) - 1 ) / (1 - sigma);

// ---- Solve Ramsey problem ----
ramsey_policy(planner_discount=beta, instruments=(g));

// ---- Steady state and stochastic simulation ----
steady;
check;
stoch_simul(order=1, irf=40, periods=200);

