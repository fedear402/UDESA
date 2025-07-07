% Parameters
A = 1.72;
gamma = 3;
theta = 0.56;
beta = 0.98;
delta = 0.06;
r = 1/beta - (1-delta);
K_H_ratio = (r/(gamma*theta))^(1/(theta-1));
Y_H_ratio = gamma * K_H_ratio^theta;
C_H_ratio = Y_H_ratio - delta*K_H_ratio;
H_bar = ((1-theta)*Y_H_ratio)/(A*C_H_ratio + (1-theta)*Y_H_ratio);
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
