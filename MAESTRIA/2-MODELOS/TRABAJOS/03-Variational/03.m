% Parameters
A = 1.72;
gamma = 3;
theta = 0.56;
beta = 0.98;
delta = 0.06;

% Implied rental rate
r = 1/beta - (1-delta);

% Capital-labor ratio from FOC for capital
K_H_ratio = (r/(gamma*theta))^(1/(theta-1));

% From production function: Y/H = gamma * (K/H)^theta
Y_H_ratio = gamma * K_H_ratio^theta;

% From resource constraint: C/H = Y/H - delta*(K/H)
C_H_ratio = Y_H_ratio - delta*K_H_ratio;

% From labor FOC: A*C/(1-H) = (1-theta)*Y/H
% This gives us: H = [(1-theta)*Y_H_ratio]/(A*C_H_ratio + (1-theta)*Y_H_ratio)
H_bar = ((1-theta)*Y_H_ratio)/(A*C_H_ratio + (1-theta)*Y_H_ratio);

% Now we can find all other variables
K_bar = K_H_ratio * H_bar;
Y_bar = Y_H_ratio * H_bar;
C_bar = C_H_ratio * H_bar;

% Display results
fprintf('Stationary State Equilibrium:\n');
fprintf('Output (Y): %.4f\n', Y_bar);
fprintf('Consumption (C): %.4f\n', C_bar);
fprintf('Capital Stock (K): %.4f\n', K_bar);
fprintf('Labor Supply (H): %.4f\n', H_bar);

% Verify the conditions
fprintf('\nVerification:\n');
fprintf('MPK = 1/beta - (1-delta): %.4f = %.4f\n', ...
    theta*gamma*(K_bar/H_bar)^(theta-1), r);
fprintf('Labor FOC check: %.4f = %.4f\n', ...
    A*C_bar/(1-H_bar), (1-theta)*gamma*(K_bar/H_bar)^theta);
fprintf('Resource constraint: Y - delta*K = C: %.4f = %.4f\n', ...
    Y_bar - delta*K_bar, C_bar);
