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
    T = RBC_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(9, 1);
    residual(1) = (exp(y(4))+y(10)) - (exp(y(5))+exp(y(8))-(1-params(2))*exp(y(1))+y(3)*(1+params(4)+params(9)*(exp(y(3)-params(5))-1))+T(1));
    residual(2) = (exp(y(6))^(params(7)-1)) - (T(3));
    residual(3) = (T(5)) - (params(6)*(1+params(4)+params(9)*(exp(y(10)-params(5))-1))*T(7));
    residual(4) = (T(5)*(1+params(8)*(exp(y(8))-exp(y(1))))) - (params(6)*T(7)*T(10));
    residual(5) = (exp(y(4))) - (T(11)*T(12));
    residual(6) = (exp(y(8))) - ((1-params(2))*exp(y(1))+exp(y(7)));
    residual(7) = (y(12)) - ((y(3)-y(10))/exp(y(4)));
    residual(8) = (y(11)) - ((exp(y(4))-exp(y(5))-exp(y(7))-T(1))/exp(y(4)));
    residual(9) = (y(9)) - (params(10)*y(2)+params(11)*x(it_, 1));

end
