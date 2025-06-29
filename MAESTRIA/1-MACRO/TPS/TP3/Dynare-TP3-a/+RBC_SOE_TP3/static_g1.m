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
    T = RBC_SOE_TP3.static_g1_tt(T, y, x, params);
end
g1 = zeros(9, 9);
g1(1,1)=exp(y(1));
g1(1,2)=(-exp(y(2)));
g1(1,3)=(-(exp(y(3))-exp(y(3))*(1-params(4))));
g1(1,7)=1-(1+params(10)+params(2)*(exp(y(7)-params(11))-1)+y(7)*params(2)*exp(y(7)-params(11)));
g1(2,3)=(-(exp(y(5))*(1-params(5))*T(1)*T(11)));
g1(2,4)=exp(y(4))*getPowerDeriv(exp(y(4)),params(7)-1,1)-exp(y(5))*(1-params(5))*T(11)*T(13);
g1(2,5)=(-T(2));
g1(3,2)=T(10)-(1+params(10)+params(2)*(exp(y(7)-params(11))-1))*params(1)*T(10);
g1(3,4)=T(14)-(1+params(10)+params(2)*(exp(y(7)-params(11))-1))*params(1)*T(14);
g1(3,7)=(-(T(4)*params(1)*params(2)*exp(y(7)-params(11))));
g1(4,2)=T(10)-T(6)*params(1)*T(10);
g1(4,3)=(-(T(4)*params(1)*exp(y(5))*params(5)*T(1)*T(12)));
g1(4,4)=T(14)-(T(6)*params(1)*T(14)+T(4)*params(1)*exp(y(5))*params(5)*T(12)*T(13));
g1(4,5)=(-(T(4)*params(1)*T(5)));
g1(5,1)=exp(y(1));
g1(5,3)=(-(T(8)*exp(y(5))*exp(y(3))*getPowerDeriv(exp(y(3)),params(5),1)));
g1(5,4)=(-(T(7)*exp(y(4))*getPowerDeriv(exp(y(4)),1-params(5),1)));
g1(5,5)=(-(T(7)*T(8)));
g1(6,3)=exp(y(3))-exp(y(3))*(1-params(4));
g1(6,6)=(-exp(y(6)));
g1(7,9)=1;
g1(8,1)=(-((exp(y(1))*exp(y(1))-exp(y(1))*(exp(y(1))-exp(y(2))-exp(y(6))))/(exp(y(1))*exp(y(1)))));
g1(8,2)=(-((-exp(y(2)))/exp(y(1))));
g1(8,6)=(-((-exp(y(6)))/exp(y(1))));
g1(8,8)=1;
g1(9,5)=1-params(6);

end
