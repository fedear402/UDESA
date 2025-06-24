function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(9, 1);
end
[T_order, T] = RBC_SOE_TP3_c.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(11, 1);
    residual(1) = (exp(y(1))+y(9)) - (exp(y(2))+exp(y(3))-exp(y(3))*(1-params(4))+exp(y(6))*exp(y(7))+y(9)*(1+params(14)+params(2)*(exp(y(9)-params(15))-1)));
    residual(2) = (exp(y(4))^(params(7)-1)) - (T(1)*T(2)*T(3));
    residual(3) = (T(5)) - (T(5)*(1+params(14)+params(2)*(exp(y(9)-params(15))-1))*params(1));
    residual(4) = (1) - (params(1)*(1-params(4)+T(7)*T(8)));
    residual(5) = (T(8)*T(2)*exp(y(5))*params(10)*T(9)) - (exp(y(6)));
    residual(6) = (exp(y(1))) - (T(8)*T(3)*exp(y(5))*T(2));
    residual(7) = (exp(y(3))) - (exp(y(3))*(1-params(4))+exp(y(8)));
residual(8) = y(11);
    residual(9) = (y(10)) - ((exp(y(1))-exp(y(2))-exp(y(8)))/exp(y(1)));
    residual(10) = (y(5)) - (y(5)*params(6)+params(9)*x(1));
    residual(11) = (y(6)) - (y(6)*params(12)+params(13)*x(2));
end
