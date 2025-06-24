function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = RBC_SOE_TP3_c.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(11, 22);
g1(1,5)=exp(y(5));
g1(1,6)=(-exp(y(6)));
g1(1,1)=(-(T(19)-(1-params(4))*exp(y(1))));
g1(1,7)=(-(exp(y(7))+T(21)));
g1(1,10)=(-(exp(y(10))*exp(y(11))));
g1(1,11)=(-(exp(y(10))*exp(y(11))));
g1(1,4)=(-(1+params(14)+params(2)*(exp(y(4)-params(15))-1)+y(4)*params(2)*exp(y(4)-params(15))));
g1(1,13)=1;
g1(2,1)=(-(T(4)*T(2)*T(20)));
g1(2,8)=exp(y(8))*getPowerDeriv(exp(y(8)),params(7)-1,1)-T(4)*T(3)*exp(y(9))*(1-params(5)-params(10))*exp(y(8))*getPowerDeriv(exp(y(8)),(-params(5))-params(10),1);
g1(2,9)=(-(T(2)*T(3)*T(4)));
g1(2,11)=(-(T(2)*T(3)*T(25)));
g1(3,6)=exp(y(6))*T(16);
g1(3,16)=(-(params(1)*(1+params(14)+params(2)*(exp(y(13)-params(15))-1))*exp(y(16))*T(18)));
g1(3,8)=T(16)*T(22);
g1(3,18)=(-(params(1)*(1+params(14)+params(2)*(exp(y(13)-params(15))-1))*T(18)*T(24)));
g1(3,13)=(-(T(7)*params(1)*params(2)*exp(y(13)-params(15))));
g1(4,6)=(-(T(13)*params(1)*(-(exp(y(6))*T(6)))/(T(5)*T(5))*T(17)));
g1(4,16)=(-(T(13)*params(1)*T(17)*exp(y(16))/T(5)));
g1(4,1)=(-(params(8)*(-exp(y(1)))));
g1(4,7)=(-(exp(y(7))*params(8)))-T(8)*(T(12)*T(10)*params(5)*exp(y(19))*exp(y(7))*getPowerDeriv(exp(y(7)),params(5)-1,1)+params(8)*(-exp(y(7))));
g1(4,17)=(-(T(8)*params(8)*exp(y(17))));
g1(4,8)=(-(T(13)*params(1)*T(17)*(-(T(6)*T(22)))/(T(5)*T(5))));
g1(4,18)=(-(T(13)*params(1)*T(17)*T(24)/T(5)+T(8)*T(11)*exp(y(18))*getPowerDeriv(exp(y(18)),1-params(5)-params(10),1)));
g1(4,19)=(-(T(8)*T(11)*T(12)));
g1(4,20)=(-(T(8)*T(12)*T(9)*exp(y(20))*getPowerDeriv(exp(y(20)),params(10),1)));
g1(5,1)=T(15)*T(14)*exp(y(9))*params(10)*T(20);
g1(5,8)=T(3)*exp(y(9))*params(10)*T(14)*T(23);
g1(5,9)=T(3)*exp(y(9))*params(10)*T(14)*T(15);
g1(5,10)=(-exp(y(10)));
g1(5,11)=T(15)*T(3)*exp(y(9))*params(10)*exp(y(11))*getPowerDeriv(exp(y(11)),params(10)-1,1);
g1(6,5)=exp(y(5));
g1(6,1)=(-(T(15)*T(4)*exp(y(9))*T(20)));
g1(6,8)=(-(T(4)*exp(y(9))*T(3)*T(23)));
g1(6,9)=(-(T(15)*T(4)*exp(y(9))*T(3)));
g1(6,11)=(-(T(15)*exp(y(9))*T(3)*T(25)));
g1(7,1)=(-((1-params(4))*exp(y(1))));
g1(7,7)=exp(y(7));
g1(7,12)=(-exp(y(12)));
g1(8,5)=(-((-(exp(y(5))*(y(4)-y(13))))/(exp(y(5))*exp(y(5)))));
g1(8,4)=(-(1/exp(y(5))));
g1(8,13)=(-((-1)/exp(y(5))));
g1(8,15)=1;
g1(9,5)=(-((exp(y(5))*exp(y(5))-exp(y(5))*(exp(y(5))-exp(y(6))-exp(y(12))-T(1)))/(exp(y(5))*exp(y(5)))));
g1(9,6)=(-((-exp(y(6)))/exp(y(5))));
g1(9,1)=(-((-T(19))/exp(y(5))));
g1(9,7)=(-((-T(21))/exp(y(5))));
g1(9,12)=(-((-exp(y(12)))/exp(y(5))));
g1(9,14)=1;
g1(10,2)=(-params(6));
g1(10,9)=1;
g1(10,21)=(-params(9));
g1(11,3)=(-params(12));
g1(11,10)=1;
g1(11,22)=(-params(13));

end
