function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = RBC_SOE_TP3_c.static_g1_tt(T, y, x, params);
end
g1 = zeros(11, 11);
g1(1,1)=exp(y(1));
g1(1,2)=(-exp(y(2)));
g1(1,3)=(-(exp(y(3))-exp(y(3))*(1-params(4))));
g1(1,6)=(-(exp(y(6))*exp(y(7))));
g1(1,7)=(-(exp(y(6))*exp(y(7))));
g1(1,9)=1-(1+params(14)+params(2)*(exp(y(9)-params(15))-1)+y(9)*params(2)*exp(y(9)-params(15)));
g1(2,3)=(-(T(3)*T(1)*T(12)));
g1(2,4)=exp(y(4))*getPowerDeriv(exp(y(4)),params(7)-1,1)-T(3)*T(2)*exp(y(5))*(1-params(5)-params(10))*exp(y(4))*getPowerDeriv(exp(y(4)),(-params(5))-params(10),1);
g1(2,5)=(-(T(1)*T(2)*T(3)));
g1(2,7)=(-(T(1)*T(2)*T(15)));
g1(3,2)=T(11)-(1+params(14)+params(2)*(exp(y(9)-params(15))-1))*params(1)*T(11);
g1(3,4)=T(13)-(1+params(14)+params(2)*(exp(y(9)-params(15))-1))*params(1)*T(13);
g1(3,9)=(-(T(5)*params(1)*params(2)*exp(y(9)-params(15))));
g1(4,3)=(-(params(1)*T(8)*T(3)*exp(y(5))*params(5)*exp(y(3))*getPowerDeriv(exp(y(3)),params(5)-1,1)));
g1(4,4)=(-(params(1)*T(7)*T(14)));
g1(4,5)=(-(params(1)*T(7)*T(8)));
g1(4,7)=(-(params(1)*T(8)*T(6)*T(15)));
g1(5,3)=T(8)*T(9)*exp(y(5))*params(10)*T(12);
g1(5,4)=T(2)*exp(y(5))*params(10)*T(9)*T(14);
g1(5,5)=T(8)*T(2)*exp(y(5))*params(10)*T(9);
g1(5,6)=(-exp(y(6)));
g1(5,7)=T(8)*T(2)*exp(y(5))*params(10)*exp(y(7))*getPowerDeriv(exp(y(7)),params(10)-1,1);
g1(6,1)=exp(y(1));
g1(6,3)=(-(T(8)*T(3)*exp(y(5))*T(12)));
g1(6,4)=(-(T(3)*exp(y(5))*T(2)*T(14)));
g1(6,5)=(-(T(8)*T(3)*exp(y(5))*T(2)));
g1(6,7)=(-(T(8)*exp(y(5))*T(2)*T(15)));
g1(7,3)=exp(y(3))-exp(y(3))*(1-params(4));
g1(7,8)=(-exp(y(8)));
g1(8,11)=1;
g1(9,1)=(-((exp(y(1))*exp(y(1))-exp(y(1))*(exp(y(1))-exp(y(2))-exp(y(8))))/(exp(y(1))*exp(y(1)))));
g1(9,2)=(-((-exp(y(2)))/exp(y(1))));
g1(9,8)=(-((-exp(y(8)))/exp(y(1))));
g1(9,10)=1;
g1(10,5)=1-params(6);
g1(11,6)=1-params(12);

end
