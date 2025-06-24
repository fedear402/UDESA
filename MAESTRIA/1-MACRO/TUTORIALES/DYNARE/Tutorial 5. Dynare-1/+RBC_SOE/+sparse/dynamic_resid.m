function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(12, 1);
end
[T_order, T] = RBC_SOE.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(9, 1);
    residual(1) = (exp(y(10))+y(16)) - (exp(y(11))+exp(y(14))-(1-params(2))*exp(y(5))+y(7)*(1+params(4)+params(9)*(exp(y(7)-params(5))-1))+T(1));
    residual(2) = (exp(y(12))^(params(7)-1)) - (T(3));
    residual(3) = (T(5)) - (params(6)*(1+params(4)+params(9)*(exp(y(16)-params(5))-1))*T(7));
    residual(4) = (T(5)*(1+params(8)*(exp(y(14))-exp(y(5))))) - (params(6)*T(7)*T(10));
    residual(5) = (exp(y(10))) - (T(11)*T(12));
    residual(6) = (exp(y(14))) - ((1-params(2))*exp(y(5))+exp(y(13)));
    residual(7) = (y(18)) - ((y(7)-y(16))/exp(y(10)));
    residual(8) = (y(17)) - ((exp(y(10))-exp(y(11))-exp(y(13))-T(1))/exp(y(10)));
    residual(9) = (y(15)) - (params(10)*y(6)+params(11)*x(1));
end
