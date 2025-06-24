function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(12, 1);
end
[T_order, T] = RBC_SOE_TP3.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(9, 1);
    residual(1) = (exp(y(10))+y(16)) - (exp(y(11))+exp(y(12))-(1-params(4))*exp(y(3))+y(7)*(1+params(10)+params(2)*(exp(y(7)-params(11))-1))+T(1));
    residual(2) = (exp(y(13))^(params(7)-1)) - (T(3));
    residual(3) = (T(5)) - (params(1)*(1+params(10)+params(2)*(exp(y(16)-params(11))-1))*T(7));
    residual(4) = (T(5)*(1+params(8)*(exp(y(12))-exp(y(3))))) - (params(1)*T(7)*T(10));
    residual(5) = (exp(y(10))) - (T(11)*T(12));
    residual(6) = (exp(y(12))) - ((1-params(4))*exp(y(3))+exp(y(15)));
    residual(7) = (y(18)) - ((y(7)-y(16))/exp(y(10)));
    residual(8) = (y(17)) - ((exp(y(10))-exp(y(11))-exp(y(15))-T(1))/exp(y(10)));
    residual(9) = (y(14)) - (params(6)*y(5)+params(9)*x(1));
end
