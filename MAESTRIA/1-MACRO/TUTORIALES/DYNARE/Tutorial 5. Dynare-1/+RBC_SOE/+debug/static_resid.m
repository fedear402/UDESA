function [lhs, rhs] = static_resid(y, x, params)
T = NaN(8, 1);
lhs = NaN(9, 1);
rhs = NaN(9, 1);
T(1) = exp(y(5))/exp(y(3));
T(2) = exp(y(6))*(1-params(3))*T(1)^params(3);
T(3) = exp(y(2))-exp(y(3))^params(7)/params(7);
T(4) = T(3)^(-params(1));
T(5) = exp(y(6))*params(3)*T(1)^(params(3)-1);
T(6) = 1+T(5)-params(2);
T(7) = exp(y(6))*exp(y(5))^params(3);
T(8) = exp(y(3))^(1-params(3));
lhs(1) = exp(y(1))+y(7);
rhs(1) = exp(y(2))+exp(y(5))-exp(y(5))*(1-params(2))+y(7)*(1+params(4)+params(9)*(exp(y(7)-params(5))-1));
lhs(2) = exp(y(3))^(params(7)-1);
rhs(2) = T(2);
lhs(3) = T(4);
rhs(3) = T(4)*(1+params(4)+params(9)*(exp(y(7)-params(5))-1))*params(6);
lhs(4) = T(4);
rhs(4) = T(4)*params(6)*T(6);
lhs(5) = exp(y(1));
rhs(5) = T(7)*T(8);
lhs(6) = exp(y(5));
rhs(6) = exp(y(5))*(1-params(2))+exp(y(4));
lhs(7) = y(9);
rhs(7) = 0;
lhs(8) = y(8);
rhs(8) = (exp(y(1))-exp(y(2))-exp(y(4)))/exp(y(1));
lhs(9) = y(6);
rhs(9) = y(6)*params(10)+params(11)*x(1);
end
