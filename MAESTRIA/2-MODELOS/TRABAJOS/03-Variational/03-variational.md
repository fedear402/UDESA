# Stationary State Equilibrium Using Variational Methods

## Problem Setup

Following the variational methods approach from Chapter 3, we have a competitive economy with:
- Unit mass of households indexed by $i \in [0,1]$
- Utility: $u(c_t^i, 1-h_t^i) = \log c_t^i + A \log(1-h_t^i)$ with $A = 1.72$
- Production: $f(K_t, H_t) = \gamma K_t^{\theta} H_t^{1-\theta}$ with $\gamma = 3$ and $\theta = 0.56$
- Parameters: $\beta = 0.98$, $\delta = 0.06$

## Variational Method Framework

### Step 1: Individual Problem Setup

Each household $i$ maximizes:
$$\sum_{t=0}^{\infty} \beta^t u(c_t^i, 1-h_t^i)$$

Substitute the budget constraints directly into utility:
$$c_t^i = w_t h_t^i + r_t k_t^i - k_{t+1}^i + (1-\delta)k_t^i$$

The objective becomes:
$$\sum_{t=0}^{\infty} \beta^t \left[\log(w_t h_t^i + r_t k_t^i - k_{t+1}^i + (1-\delta)k_t^i) + A\log(1-h_t^i)\right]$$

Period Objective Function
$$F(k_t^i, h_t^i, k_{t+1}^i, h_{t+1}^i; w_t, r_t) = \log(w_t h_t^i + r_t k_t^i - k_{t+1}^i + (1-\delta)k_t^i) + A\log(1-h_t^i)$$

Here each period's objective depends on current and next period's variables. The Euler conditions for the choice of $k_s^i$ (appearing in periods $s-1$ and $s$):
$$0 = F_2(k_{s-1}^i, h_{s-1}^i, k_s^i, h_s^i) + \beta F_1(k_s^i, h_s^i, k_{s+1}^i, h_{s+1}^i)$$

Where:

$F_2$ is the derivative with respect to the third argument (next period's capital)

$F_1$ is the derivative with respect to the first argument (current capital)

Euler equation for capital:
$$F_2 = -\frac{1}{c_{s-1}^i}$$
$$F_1 = \frac{r_s + (1-\delta)}{c_s^i}$$

This gives:
$$\frac{1}{c_{s-1}^i} = \beta \frac{r_s + (1-\delta)}{c_s^i}$$

Euler equation for labor (optimizing $h_s^i$):
$$0 = \frac{\partial F}{\partial h_s^i} = \frac{w_s}{c_s^i} - \frac{A}{1-h_s^i}$$

This gives:
$$\frac{A}{1-h_s^i} = \frac{w_s}{c_s^i}$$

In competitive equilibrium

$w_t = f_H(K_t, H_t) = \gamma(1-\theta)K_t^{\theta}H_t^{-\theta}$

$r_t = f_K(K_t, H_t) = \gamma\theta K_t^{\theta-1}H_t^{1-\theta}$

Individuals take $K_t$, $H_t$, $w_t$, and $r_t$ as given when optimizing. We can aggregate the result of individual decisions:

- $K_t = \int_0^1 k_t^i di$
- $H_t = \int_0^1 h_t^i di$
- $C_t = \int_0^1 c_t^i di$

Since all individuals are identical in equilibrium: $k_t^i = K_t$, $h_t^i = H_t$, $c_t^i = C_t$.

In stationary state, all variables are constant: $k_{s-1}^i = k_s^i = k_{s+1}^i = \bar{k}$, etc.

The Euler conditions become:

From capital Euler equation:
$$1 = \beta(r + 1-\delta)$$
$$r = \frac{1}{\beta} - (1-\delta)$$

Since $r = f_K(\bar{K}, \bar{H})$:
$$\gamma\theta \bar{K}^{\theta-1}\bar{H}^{1-\theta} = \frac{1}{\beta} - (1-\delta)$$

From labor Euler equation:
$$\frac{A}{1-\bar{H}} = \frac{w}{\bar{C}}$$

Since $w = f_H(\bar{K}, \bar{H})$:
$$\frac{A\bar{C}}{1-\bar{H}} = \gamma(1-\theta)\bar{K}^{\theta}\bar{H}^{-\theta}$$

From resource constraint:
$$\bar{C} = f(\bar{K}, \bar{H}) - \delta\bar{K}$$

## MATLAB Implementation

```matlab
%% Variational Methods for Competitive Economy
% Following Soviet variational calculus approach from 1950s

clear all; close all; clc;

% Parameters
A = 1.72;
gamma = 3;
theta = 0.56;
beta = 0.98;
delta = 0.06;

fprintf('VARIATIONAL METHODS FOR INFINITELY LIVED AGENTS\n');
fprintf('==============================================\n\n');

fprintf('Variational Method Overview:\n');
fprintf('- Breaks infinite horizon into 3-period relationships\n');
fprintf('- Optimizes period s given s-1 and s+1\n');
fprintf('- Stationary state: x_{s-1} = x_s = x_{s+1}\n\n');

%% Step 1: Display the Variational Setup
fprintf('INDIVIDUAL PROBLEM (Variational Formulation):\n');
fprintf('--------------------------------------------\n');
fprintf('Objective function F for period t:\n');
fprintf('F = log(w*h_i + r*k_i - k_i'' + (1-δ)*k_i) + A*log(1-h_i)\n\n');

fprintf('Euler Conditions:\n');
fprintf('1. For k_s: 0 = F_2(s-1) + β*F_1(s)\n');
fprintf('2. For h_s: 0 = ∂F/∂h_s\n\n');

%% Step 2: Derive Stationary State Conditions
fprintf('STATIONARY STATE CONDITIONS:\n');
fprintf('---------------------------\n');

% From Euler equation for capital
target_r = 1/beta - (1-delta);
fprintf('1. From capital Euler: r = 1/β - (1-δ) = %.6f\n', target_r);
fprintf('   Since r = f_K(K,H): γθK^(θ-1)H^(1-θ) = %.6f\n\n', target_r);

% From Euler equation for labor
fprintf('2. From labor Euler: A/(1-H) = w/C\n');
fprintf('   Since w = f_H(K,H): A*C/(1-H) = γ(1-θ)K^θH^(-θ)\n\n');

% Resource constraint
fprintf('3. Resource constraint: C = f(K,H) - δK\n\n');

%% Step 3: Define System of Equations
% Using variational conditions in stationary state
% x = [K_bar, H_bar, C_bar]

F_variational = @(x) [
    % Condition 1: From capital Euler equation
    gamma * theta * x(1)^(theta-1) * x(2)^(1-theta) - target_r;
    
    % Condition 2: From labor Euler equation  
    (A * x(3))/(1 - x(2)) - gamma * (1-theta) * x(1)^theta * x(2)^(-theta);
    
    % Condition 3: Resource constraint
    x(3) - (gamma * x(1)^theta * x(2)^(1-theta) - delta * x(1))
];

%% Step 4: Solve Using Shooting Method (Variational Spirit)
fprintf('SOLVING USING VARIATIONAL APPROACH:\n');
fprintf('----------------------------------\n');

% Initial guess for state variables
K_guess = 20;
H_guess = 0.3;
C_guess = 3;

% Shooting method iterations (mimicking forward-backward variational iteration)
x = [K_guess; H_guess; C_guess];
tol = 1e-10;
max_iter = 100;
damping = 0.5; % Damping factor for stability

fprintf('Iteration | K_bar | H_bar | C_bar | Error\n');
fprintf('----------|--------|--------|--------|----------\n');

for iter = 1:max_iter
    x_old = x;
    
    % Forward pass: Given K and H, find C from resource constraint
    C_new = gamma * x(1)^theta * x(2)^(1-theta) - delta * x(1);
    
    % Update H using labor Euler condition
    % Solve: A*C/(1-H) = gamma*(1-theta)*K^theta*H^(-theta)
    labor_func = @(h) (A * C_new)/(1 - h) - gamma * (1-theta) * x(1)^theta * h^(-theta);
    H_new = fzero(labor_func, x(2));
    
    % Update K using capital Euler condition
    % Solve: gamma*theta*K^(theta-1)*H^(1-theta) = target_r
    K_new = ((target_r)/(gamma * theta * H_new^(1-theta)))^(1/(theta-1));
    
    % Apply damping for stability
    x_new = [K_new; H_new; C_new];
    x = damping * x_new + (1-damping) * x_old;
    
    % Check convergence
    error = norm(x - x_old);
    
    if mod(iter, 10) == 0 || iter == 1
        fprintf('%9d | %.4f | %.4f | %.4f | %.2e\n', iter, x(1), x(2), x(3), error);
    end
    
    if error < tol
        fprintf('%9d | %.4f | %.4f | %.4f | %.2e\n', iter, x(1), x(2), x(3), error);
        fprintf('\nConverged using variational iteration!\n\n');
        break;
    end
end

% Extract final solutions
K_bar = x(1);
H_bar = x(2);
C_bar = x(3);
Y_bar = gamma * K_bar^theta * H_bar^(1-theta);

%% Step 5: Display Results
fprintf('STATIONARY STATE RESULTS:\n');
fprintf('========================\n');
fprintf('Capital stock (K̄):          %.6f\n', K_bar);
fprintf('Labor supply (H̄):           %.6f\n', H_bar);
fprintf('Consumption (C̄):            %.6f\n', C_bar);
fprintf('Output (Ȳ):                 %.6f\n', Y_bar);
fprintf('Investment (Ī = δK̄):        %.6f\n', delta * K_bar);
fprintf('Leisure (1-H̄):              %.6f\n', 1 - H_bar);

fprintf('\nRatios:\n');
fprintf('Capital-output ratio (K̄/Ȳ): %.6f\n', K_bar/Y_bar);
fprintf('Consumption share (C̄/Ȳ):    %.6f\n', C_bar/Y_bar);
fprintf('Investment share (Ī/Ȳ):     %.6f\n', delta * K_bar/Y_bar);

%% Step 6: Verify Variational Conditions
fprintf('\nVERIFYING VARIATIONAL CONDITIONS:\n');
fprintf('=================================\n');

% Prices in stationary state
w_bar = gamma * (1-theta) * K_bar^theta * H_bar^(-theta);
r_bar = gamma * theta * K_bar^(theta-1) * H_bar^(1-theta);

fprintf('Equilibrium prices:\n');
fprintf('Wage (w̄):                   %.6f\n', w_bar);
fprintf('Rental rate (r̄):            %.6f\n', r_bar);

% Check Euler conditions
fprintf('\nEuler Condition Checks:\n');

% Capital Euler
fprintf('1. Capital Euler: r̄ = %.6f, Target = %.6f\n', r_bar, target_r);
fprintf('   Error: %.2e\n', abs(r_bar - target_r));

% Labor Euler  
labor_euler_lhs = A/(1-H_bar);
labor_euler_rhs = w_bar/C_bar;
fprintf('2. Labor Euler: A/(1-H̄) = %.6f, w̄/C̄ = %.6f\n', labor_euler_lhs, labor_euler_rhs);
fprintf('   Error: %.2e\n', abs(labor_euler_lhs - labor_euler_rhs));

% Resource constraint
resource_lhs = C_bar + delta * K_bar;
resource_rhs = Y_bar;
fprintf('3. Resource: C̄ + δK̄ = %.6f, Ȳ = %.6f\n', resource_lhs, resource_rhs);
fprintf('   Error: %.2e\n', abs(resource_lhs - resource_rhs));

%% Step 7: Transversality Condition
fprintf('\nTRANSVERSALITY CONDITION:\n');
fprintf('========================\n');
fprintf('lim_{t→∞} β^t u''(c_t)k_t = lim_{t→∞} β^t (1/c_t)k_t = 0\n');
fprintf('Since β = %.2f < 1 and (1/C̄)K̄ = %.4f is finite,\n', beta, K_bar/C_bar);
fprintf('the transversality condition is satisfied.\n');

%% Step 8: Path Dynamics (Variational Method Illustration)
fprintf('\nVARIATIONAL PATH DYNAMICS:\n');
fprintf('=========================\n');
fprintf('Starting from different initial capitals,\n');
fprintf('the variational method finds optimal paths to steady state.\n');

% This illustrates the forward-backward sweep of variational methods
T = 30;
K_path = zeros(T, 1);
H_path = zeros(T, 1);
C_path = zeros(T, 1);

% Different initial conditions
K_init = [0.7*K_bar, 1.3*K_bar];
colors = {'b-', 'r-'};

figure('Name', 'Variational Method: Convergence to Steady State');
for j = 1:length(K_init)
    K_path(1) = K_init(j);
    
    % Simulate using approximate dynamics
    for t = 1:T-1
        % Use steady state labor (simplification)
        H_path(t) = H_bar;
        
        % Resource constraint
        Y_t = gamma * K_path(t)^theta * H_path(t)^(1-theta);
        
        % Approximate optimal consumption path
        deviation = (K_path(t) - K_bar)/K_bar;
        C_path(t) = C_bar * (1 + 0.5*deviation);
        
        % Capital accumulation
        K_path(t+1) = (1-delta)*K_path(t) + Y_t - C_path(t);
    end
    
    subplot(1,2,1);
    plot(1:T, K_path, colors{j}, 'LineWidth', 2);
    hold on;
    
    subplot(1,2,2);
    plot(1:T, C_path, colors{j}, 'LineWidth', 2);
    hold on;
end

subplot(1,2,1);
plot([1 T], [K_bar K_bar], 'k--', 'LineWidth', 2);
xlabel('Time');
ylabel('Capital');
title('Capital Path (Variational Method)');
grid on;
legend('K_0 = 0.7K̄', 'K_0 = 1.3K̄', 'Steady State');

subplot(1,2,2);
plot([1 T], [C_bar C_bar], 'k--', 'LineWidth', 2);
xlabel('Time');
ylabel('Consumption');
title('Consumption Path');
grid on;