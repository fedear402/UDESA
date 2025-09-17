p = struct();
p.beta   = 0.99;
p.delta  = 0.025;
p.theta  = 0.36;
p.A      = 1.72;
p.h0     = 0.583;
p.B_ulei = -2.5805;
p.gamma_lambda  = 0.95;
p.sigma_lambda  = 0.007;
p.Pstar_ss      = 1.00;
p.gamma_star    = 0.95;
p.sigma_star    = 0.01;
p.a             = 0.01;
p.r_star        = 0.03;
p.taylor_phi_y  = 0.5;
p.taylor_phi_pi = 0.5;
p.gM            = 1.00;
% Initial guess
x0 = [ ...
  1.0;  % Ȳ
  1.0;  % λ̄
  5.0;  % K̄
  1.0;  % H̄
  0.02; % r̄^f
  1.0;  % w̄
  0.10; % r̄
  0.0;  % B̄
  1.0;  % c̄
  0.8;  % C̄
  1.0;  % P̄*
  1.0;  % P̄
  1.0;  % ē
  0.1;  % X̄
  1.0;  % M̄
  0.0;  % N̄
  0.0]; % π̄
opts = optimset('Display','iter','TolFun',1e-12,'TolX',1e-12,'MaxIter',1e4,'MaxFunEvals',1e6);
[x_ss, fval, exitflag, output] = fsolve(@(x) ss_residuals(x,p), x0, opts);
names = {'Y','lambda','K','H','rf','w','r','B','c','C','Pstar','P','e','X','M','N','pi'};
fprintf('\nSteady state:\n');
for i=1:numel(names)
  fprintf('  %-6s = %.10g\n', names{i}, x_ss(i));
end
maxres = max(abs(ss_residuals(x_ss,p)));


