function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = RBC_SOE_TP3_c.static_resid_tt(T, y, x, params);
end
residual = zeros(11, 1);
    residual(1) = (exp(y(1))+y(9)) - (exp(y(2))+exp(y(3))-exp(y(3))*(1-params(4))+exp(y(6))*exp(y(7))+y(9)*(1+params(14)+params(2)*(exp(y(9)-params(15))-1)));
    residual(2) = (exp(y(4))^(params(7)-1)) - (T(1)*T(2)*T(3));
    residual(3) = (T(5)) - (T(5)*(1+params(14)+params(2)*(exp(y(9)-params(15))-1))*params(1));
    residual(4) = (1) - (params(1)*(1-params(4)+T(7)*T(8)));
    residual(5) = (T(8)*T(2)*exp(y(5))*params(10)*T(9)) - (exp(y(6)));
    residual(6) = (exp(y(1))) - (T(8)*T(3)*exp(y(5))*T(2));
    residual(7) = (exp(y(3))) - (exp(y(3))*(1-params(4))+exp(y(8)));
residual(8) = y(11);
    residual(9) = (y(10)) - ((exp(y(1))-exp(y(2))-exp(y(8)))/exp(y(1)));
    residual(10) = (y(5)) - (y(5)*params(6)+params(9)*x(1));
    residual(11) = (y(6)) - (y(6)*params(12)+params(13)*x(2));

end
