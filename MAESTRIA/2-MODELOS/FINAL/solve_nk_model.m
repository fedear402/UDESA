function [ss_vars, exitflag] = solve_nk_model()
    % Define Parameters
    theta = 0.35;
    beta = 0.99;
    delta = 0.025;
    lambda_bar = 1.0;
    r_star = 0.04;
    a = 0.05;
    P_star_bar = 1.0;
    g_M = 1.0;

    % Initial Guess for the variables [Y, K, H, r, C, X, B, w, rf, P, N, M]
    x0 = [1.0, 10.0, 0.33, 0.05, 0.8, 0.0, 0.0, 0.8, 0.03, 1.0, 0.0, 1.0];

    % Call fsolve to find the steady state
    options = optimoptions('fsolve', 'Display', 'iter', 'TolFun', 1e-8);
    [ss_vars, fval, exitflag] = fsolve(@(x) steady_state_equations(x, theta, beta, delta, lambda_bar, r_star, a, P_star_bar, g_M), x0, options);

    % Display results
    if exitflag > 0
        fprintf('Successfully converged to a solution.\n');
        var_names = {'Y', 'K', 'H', 'r', 'C', 'X', 'B', 'w', 'rf', 'P', 'N', 'M'};
        for i = 1:length(ss_vars)
            fprintf('%s_bar = %.4f\n', var_names{i}, ss_vars(i));
        end
    else
        fprintf('fsolve did not converge. Exit flag: %d\n', exitflag);
    end
end

function F = steady_state_equations(x, theta, beta, delta, lambda_bar, r_star, a, P_star_bar, g_M)
    % Map the input vector x to the variable names
    Y = x(1);
    K = x(2);
    H = x(3);
    r = x(4);
    C = x(5);
    X = x(6);
    B = x(7);
    w = x(8);
    rf = x(9);
    P = x(10);
    N = x(11);
    M = x(12);

    % Set up the system of equations, with all residuals set to zero
    F = zeros(12, 1);
    F(1) = Y - lambda_bar * K^theta * H^(1-theta);
    F(2) = rf * w - (1-theta) * Y / H;
    F(3) = r - theta * Y / K;
    F(4) = 1/beta - (r + 1 - delta);
    F(5) = rf - (r_star - a * B / P_star_bar);
    F(6) = 1/beta - (1 + r_star - a * B / P_star_bar); % From (6) assuming P*/P* = 1
    F(7) = Y - (C + K - (1-delta)*K + X);
    F(8) = -rf * B - P_star_bar * X;
    F(9) = P * C - (M - N);
    F(10) = N + (g_M - 1)*M - P * w * H;
    F(11) = P - (1.0 * P_star_bar); % Since e_bar = P/P* = 1 in this simple setup
    F(12) = w - (C / B);
end
