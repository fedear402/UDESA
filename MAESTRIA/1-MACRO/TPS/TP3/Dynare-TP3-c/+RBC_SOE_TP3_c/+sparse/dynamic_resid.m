function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(15, 1);
end
[T_order, T] = RBC_SOE_TP3_c.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(11, 1);
    residual(1) = (exp(y(12))+y(20)) - (exp(y(13))+exp(y(14))-(1-params(4))*exp(y(3))+exp(y(17))*exp(y(18))+y(9)*(1+params(14)+params(2)*(exp(y(9)-params(15))-1))+T(1));
    residual(2) = (exp(y(15))^(params(7)-1)) - (T(2)*T(3)*T(4));
    residual(3) = (T(5)^(-params(3))) - (params(1)*(1+params(14)+params(2)*(exp(y(20)-params(15))-1))*T(7));
    residual(4) = (1-params(8)*(exp(y(14))-exp(y(3)))) - (T(8)*T(13));
    residual(5) = (T(3)*exp(y(16))*params(10)*T(14)*T(15)) - (exp(y(17)));
    residual(6) = (exp(y(12))) - (T(15)*T(4)*exp(y(16))*T(3));
    residual(7) = (exp(y(14))) - ((1-params(4))*exp(y(3))+exp(y(19)));
    residual(8) = (y(22)) - ((y(9)-y(20))/exp(y(12)));
    residual(9) = (y(21)) - ((exp(y(12))-exp(y(13))-exp(y(19))-T(1))/exp(y(12)));
    residual(10) = (y(16)) - (params(6)*y(5)+params(9)*x(1));
    residual(11) = (y(17)) - (params(12)*y(6)+params(13)*x(2));
end
