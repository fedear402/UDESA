function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 9);

T(1) = exp(y(5))*(1-params(5)-params(10))*exp(y(4))^((-params(5))-params(10));
T(2) = exp(y(3))^params(5);
T(3) = exp(y(7))^params(10);
T(4) = exp(y(2))-exp(y(4))^params(7)/params(7);
T(5) = T(4)^(-params(3));
T(6) = exp(y(5))*params(5)*exp(y(3))^(params(5)-1);
T(7) = T(3)*T(6);
T(8) = exp(y(4))^(1-params(5)-params(10));
T(9) = exp(y(7))^(params(10)-1);

end
