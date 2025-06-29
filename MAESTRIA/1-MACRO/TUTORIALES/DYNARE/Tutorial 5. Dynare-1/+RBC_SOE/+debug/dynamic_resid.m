function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(12, 1);
lhs = NaN(9, 1);
rhs = NaN(9, 1);
T(1) = params(8)/2*(exp(y(14))-exp(y(5)))^2;
T(2) = exp(y(5))/exp(y(12));
T(3) = exp(y(15))*(1-params(3))*T(2)^params(3);
T(4) = exp(y(11))-exp(y(12))^params(7)/params(7);
T(5) = T(4)^(-params(1));
T(6) = exp(y(20))-exp(y(21))^params(7)/params(7);
T(7) = T(6)^(-params(1));
T(8) = exp(y(14))/exp(y(21));
T(9) = params(3)*exp(y(24))*T(8)^(params(3)-1);
T(10) = 1+T(9)-params(2)+params(8)*(exp(y(23))-exp(y(14)));
T(11) = exp(y(15))*exp(y(5))^params(3);
T(12) = exp(y(12))^(1-params(3));
lhs(1) = exp(y(10))+y(16);
rhs(1) = exp(y(11))+exp(y(14))-(1-params(2))*exp(y(5))+y(7)*(1+params(4)+params(9)*(exp(y(7)-params(5))-1))+T(1);
lhs(2) = exp(y(12))^(params(7)-1);
rhs(2) = T(3);
lhs(3) = T(5);
rhs(3) = params(6)*(1+params(4)+params(9)*(exp(y(16)-params(5))-1))*T(7);
lhs(4) = T(5)*(1+params(8)*(exp(y(14))-exp(y(5))));
rhs(4) = params(6)*T(7)*T(10);
lhs(5) = exp(y(10));
rhs(5) = T(11)*T(12);
lhs(6) = exp(y(14));
rhs(6) = (1-params(2))*exp(y(5))+exp(y(13));
lhs(7) = y(18);
rhs(7) = (y(7)-y(16))/exp(y(10));
lhs(8) = y(17);
rhs(8) = (exp(y(10))-exp(y(11))-exp(y(13))-T(1))/exp(y(10));
lhs(9) = y(15);
rhs(9) = params(10)*y(6)+params(11)*x(1);
end
