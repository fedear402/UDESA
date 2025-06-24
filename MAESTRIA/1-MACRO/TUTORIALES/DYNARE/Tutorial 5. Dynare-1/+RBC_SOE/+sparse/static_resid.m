function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(8, 1);
end
[T_order, T] = RBC_SOE.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(9, 1);
    residual(1) = (exp(y(1))+y(7)) - (exp(y(2))+exp(y(5))-exp(y(5))*(1-params(2))+y(7)*(1+params(4)+params(9)*(exp(y(7)-params(5))-1)));
    residual(2) = (exp(y(3))^(params(7)-1)) - (T(2));
    residual(3) = (T(4)) - (T(4)*(1+params(4)+params(9)*(exp(y(7)-params(5))-1))*params(6));
    residual(4) = (T(4)) - (T(4)*params(6)*T(6));
    residual(5) = (exp(y(1))) - (T(7)*T(8));
    residual(6) = (exp(y(5))) - (exp(y(5))*(1-params(2))+exp(y(4)));
residual(7) = y(9);
    residual(8) = (y(8)) - ((exp(y(1))-exp(y(2))-exp(y(4)))/exp(y(1)));
    residual(9) = (y(6)) - (y(6)*params(10)+params(11)*x(1));
end
