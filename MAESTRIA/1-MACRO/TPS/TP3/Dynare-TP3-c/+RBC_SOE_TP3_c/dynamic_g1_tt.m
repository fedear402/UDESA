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

assert(length(T) >= 25);

T = RBC_SOE_TP3_c.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(16) = getPowerDeriv(T(5),(-params(3)),1);
T(17) = getPowerDeriv(T(6)/T(5),(-params(3)),1);
T(18) = getPowerDeriv(T(6),(-params(3)),1);
T(19) = params(8)/2*(-exp(y(1)))*2*(exp(y(7))-exp(y(1)));
T(20) = exp(y(1))*getPowerDeriv(exp(y(1)),params(5),1);
T(21) = params(8)/2*exp(y(7))*2*(exp(y(7))-exp(y(1)));
T(22) = (-(exp(y(8))*getPowerDeriv(exp(y(8)),params(7),1)/params(7)));
T(23) = exp(y(8))*getPowerDeriv(exp(y(8)),1-params(5)-params(10),1);
T(24) = (-(exp(y(18))*getPowerDeriv(exp(y(18)),params(7),1)/params(7)));
T(25) = exp(y(11))*getPowerDeriv(exp(y(11)),params(10),1);

end
