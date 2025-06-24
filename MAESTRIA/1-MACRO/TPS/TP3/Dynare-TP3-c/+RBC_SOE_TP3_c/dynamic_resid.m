function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = RBC_SOE_TP3_c.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(11, 1);
    residual(1) = (exp(y(5))+y(13)) - (exp(y(6))+exp(y(7))-(1-params(4))*exp(y(1))+exp(y(10))*exp(y(11))+y(4)*(1+params(14)+params(2)*(exp(y(4)-params(15))-1))+T(1));
    residual(2) = (exp(y(8))^(params(7)-1)) - (T(2)*T(3)*T(4));
    residual(3) = (T(5)^(-params(3))) - (params(1)*(1+params(14)+params(2)*(exp(y(13)-params(15))-1))*T(7));
    residual(4) = (1-params(8)*(exp(y(7))-exp(y(1)))) - (T(8)*T(13));
    residual(5) = (T(3)*exp(y(9))*params(10)*T(14)*T(15)) - (exp(y(10)));
    residual(6) = (exp(y(5))) - (T(15)*T(4)*exp(y(9))*T(3));
    residual(7) = (exp(y(7))) - ((1-params(4))*exp(y(1))+exp(y(12)));
    residual(8) = (y(15)) - ((y(4)-y(13))/exp(y(5)));
    residual(9) = (y(14)) - ((exp(y(5))-exp(y(6))-exp(y(12))-T(1))/exp(y(5)));
    residual(10) = (y(9)) - (params(6)*y(2)+params(9)*x(it_, 1));
    residual(11) = (y(10)) - (params(12)*y(3)+params(13)*x(it_, 2));

end
