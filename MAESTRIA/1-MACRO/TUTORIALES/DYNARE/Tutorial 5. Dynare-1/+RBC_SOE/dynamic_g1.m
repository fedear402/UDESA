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
    T = RBC_SOE.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(9, 17);
g1(1,4)=exp(y(4));
g1(1,5)=(-exp(y(5)));
g1(1,1)=(-(T(19)-(1-params(2))*exp(y(1))));
g1(1,8)=(-(exp(y(8))+T(20)));
g1(1,3)=(-(1+params(4)+params(9)*(exp(y(3)-params(5))-1)+y(3)*params(9)*exp(y(3)-params(5))));
g1(1,10)=1;
g1(2,6)=exp(y(6))*getPowerDeriv(exp(y(6)),params(7)-1,1)-exp(y(9))*(1-params(3))*(-(exp(y(1))*exp(y(6))))/(exp(y(6))*exp(y(6)))*T(15);
g1(2,1)=(-(exp(y(9))*(1-params(3))*T(2)*T(15)));
g1(2,9)=(-T(3));
g1(3,5)=exp(y(5))*T(13);
g1(3,13)=(-(params(6)*(1+params(4)+params(9)*(exp(y(10)-params(5))-1))*exp(y(13))*T(14)));
g1(3,6)=T(16);
g1(3,14)=(-(params(6)*(1+params(4)+params(9)*(exp(y(10)-params(5))-1))*T(17)));
g1(3,10)=(-(T(7)*params(6)*params(9)*exp(y(10)-params(5))));
g1(4,5)=(1+params(8)*(exp(y(8))-exp(y(1))))*exp(y(5))*T(13);
g1(4,13)=(-(T(10)*params(6)*exp(y(13))*T(14)));
g1(4,6)=(1+params(8)*(exp(y(8))-exp(y(1))))*T(16);
g1(4,14)=(-(T(10)*params(6)*T(17)+params(6)*T(7)*params(3)*exp(y(16))*(-(exp(y(8))*exp(y(14))))/(exp(y(14))*exp(y(14)))*T(18)));
g1(4,1)=T(5)*params(8)*(-exp(y(1)));
g1(4,8)=T(5)*exp(y(8))*params(8)-params(6)*T(7)*(params(3)*exp(y(16))*T(8)*T(18)+params(8)*(-exp(y(8))));
g1(4,15)=(-(params(6)*T(7)*params(8)*exp(y(15))));
g1(4,16)=(-(params(6)*T(7)*T(9)));
g1(5,4)=exp(y(4));
g1(5,6)=(-(T(11)*exp(y(6))*getPowerDeriv(exp(y(6)),1-params(3),1)));
g1(5,1)=(-(T(12)*exp(y(9))*exp(y(1))*getPowerDeriv(exp(y(1)),params(3),1)));
g1(5,9)=(-(T(11)*T(12)));
g1(6,7)=(-exp(y(7)));
g1(6,1)=(-((1-params(2))*exp(y(1))));
g1(6,8)=exp(y(8));
g1(7,4)=(-((-(exp(y(4))*(y(3)-y(10))))/(exp(y(4))*exp(y(4)))));
g1(7,3)=(-(1/exp(y(4))));
g1(7,10)=(-((-1)/exp(y(4))));
g1(7,12)=1;
g1(8,4)=(-((exp(y(4))*exp(y(4))-exp(y(4))*(exp(y(4))-exp(y(5))-exp(y(7))-T(1)))/(exp(y(4))*exp(y(4)))));
g1(8,5)=(-((-exp(y(5)))/exp(y(4))));
g1(8,7)=(-((-exp(y(7)))/exp(y(4))));
g1(8,1)=(-((-T(19))/exp(y(4))));
g1(8,8)=(-((-T(20))/exp(y(4))));
g1(8,11)=1;
g1(9,2)=(-params(10));
g1(9,9)=1;
g1(9,17)=(-params(11));

end
