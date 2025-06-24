function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
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

assert(length(T) >= 14);

T = RBC_SOE_TP3.static_resid_tt(T, y, x, params);

T(9) = getPowerDeriv(T(3),(-params(3)),1);
T(10) = exp(y(2))*T(9);
T(11) = getPowerDeriv(T(1),params(5),1);
T(12) = getPowerDeriv(T(1),params(5)-1,1);
T(13) = (-(exp(y(3))*exp(y(4))))/(exp(y(4))*exp(y(4)));
T(14) = T(9)*(-(exp(y(4))*getPowerDeriv(exp(y(4)),params(7),1)/params(7)));

end
