function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(8, 1);
end
[T_order, T] = RBC_SOE_TP3.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(9, 1);
    residual(1) = (exp(y(1))+y(7)) - (exp(y(2))+exp(y(3))-exp(y(3))*(1-params(4))+y(7)*(1+params(10)+params(2)*(exp(y(7)-params(11))-1)));
    residual(2) = (exp(y(4))^(params(7)-1)) - (T(2));
    residual(3) = (T(4)) - (T(4)*(1+params(10)+params(2)*(exp(y(7)-params(11))-1))*params(1));
    residual(4) = (T(4)) - (T(4)*params(1)*T(6));
    residual(5) = (exp(y(1))) - (T(7)*T(8));
    residual(6) = (exp(y(3))) - (exp(y(3))*(1-params(4))+exp(y(6)));
residual(7) = y(9);
    residual(8) = (y(8)) - ((exp(y(1))-exp(y(2))-exp(y(6)))/exp(y(1)));
    residual(9) = (y(5)) - (y(5)*params(6)+params(9)*x(1));
end
