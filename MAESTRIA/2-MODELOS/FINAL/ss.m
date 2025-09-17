function ss()
    params = set_parameters();
    x0 = [0.3; 0.8; 1.02; 1; 0.5; 0.3; 0.3; 1.02];
    [x_sol, ~] = fsolve(@(x) steady_state_system(x, params), x0);
    [w_bar, C_bar, rn_bar, K_bar, NP_bar, MP_bar, H_bar, rw_bar] = deal(x_sol(1), x_sol(2), x_sol(3), x_sol(4), x_sol(5), x_sol(6), x_sol(7), x_sol(8));
    pi_bar = params.pi; P_star_bar = 1; e_bar = params.pi; gM_bar = params.pi;
    X_bar = params.rf * params.B_foreign;
    Y_bar = K_bar^params.theta * H_bar^(1-params.theta);
    fprintf('Steady State Values:\n');
    fprintf('pi_bar = %.6f\nrw_bar = %.6f\nw_bar = %.6f\nC_bar = %.6f\n', pi_bar, rw_bar, w_bar, C_bar);
    fprintf('rn_bar = %.6f\nK_bar = %.6f\nNP_bar = %.6f\nMP_bar = %.6f\n', rn_bar, K_bar, NP_bar, MP_bar);
    fprintf('H_bar = %.6f\nY_bar = %.6f\nP_star_bar = %.6f\ne_bar = %.6f\n', H_bar, Y_bar, P_star_bar, e_bar);
    fprintf('gM_bar = %.6f\nX_bar = %.6f\nr_foreign_bar = %.6f\nr_capital_bar = %.6f\nB_foreign_bar = %.6f\n', gM_bar, X_bar, params.rf, params.r, params.B_foreign);
end

function F = steady_state_system(x, params)
    [w, C, rn, K, NP, MP, H, rw] = deal(x(1), x(2), x(3), x(4), x(5), x(6), x(7), x(8));
    p = params;
    F = [p.beta * w + p.B_coeff * C * p.pi;
         p.pi - p.beta * rn;
         C - MP + NP;
         MP - p.B_foreign * p.rf - K * (p.r - p.delta) - rn * NP - w * H;
         rw * w - (1 - p.theta) * K^p.theta * H^(-p.theta);
         p.r - p.theta * K^(p.theta-1) * H^(1-p.theta);
         rw * w * H - rn * NP;
         (1/p.pi) * MP + w * H - NP - MP];
end

function params = set_parameters()
    params = struct('beta', 0.99, 'theta', 0.36, 'delta', 0.025, 'B_coeff', -2.5805, 'r_star', 0.03, 'a', 0.01, 'pi', 1.03);
    params.rf = 1/params.beta - 1;
    params.r = 1/params.beta - (1-params.delta);
    params.B_foreign = (params.r_star - params.rf) / params.a;
    params.P_star = 1;
    params.X = params.rf * params.B_foreign;
end
