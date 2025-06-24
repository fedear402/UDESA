function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 15);

T(1) = params(8)/2*(exp(y(7))-exp(y(1)))^2;
T(2) = exp(y(9))*(1-params(5)-params(10))*exp(y(8))^((-params(5))-params(10));
T(3) = exp(y(1))^params(5);
T(4) = exp(y(11))^params(10);
T(5) = exp(y(6))-exp(y(8))^params(7)/params(7);
T(6) = exp(y(16))-exp(y(18))^params(7)/params(7);
T(7) = T(6)^(-params(3));
T(8) = params(1)*(T(6)/T(5))^(-params(3));
T(9) = params(5)*exp(y(19))*exp(y(7))^(params(5)-1);
T(10) = exp(y(20))^params(10);
T(11) = T(9)*T(10);
T(12) = exp(y(18))^(1-params(5)-params(10));
T(13) = 1-params(4)+T(11)*T(12)+params(8)*(exp(y(17))-exp(y(7)));
T(14) = exp(y(11))^(params(10)-1);
T(15) = exp(y(8))^(1-params(5)-params(10));

end
