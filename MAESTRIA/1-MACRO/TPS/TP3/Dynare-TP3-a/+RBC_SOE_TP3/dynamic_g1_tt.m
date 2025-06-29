function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 20);

T = RBC_SOE_TP3.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(13) = getPowerDeriv(T(4),(-params(3)),1);
T(14) = getPowerDeriv(T(6),(-params(3)),1);
T(15) = params(8)/2*(-exp(y(1)))*2*(exp(y(6))-exp(y(1)));
T(16) = getPowerDeriv(T(2),params(5),1);
T(17) = params(8)/2*exp(y(6))*2*(exp(y(6))-exp(y(1)));
T(18) = getPowerDeriv(T(8),params(5)-1,1);
T(19) = T(13)*(-(exp(y(7))*getPowerDeriv(exp(y(7)),params(7),1)/params(7)));
T(20) = T(14)*(-(exp(y(15))*getPowerDeriv(exp(y(15)),params(7),1)/params(7)));

end
