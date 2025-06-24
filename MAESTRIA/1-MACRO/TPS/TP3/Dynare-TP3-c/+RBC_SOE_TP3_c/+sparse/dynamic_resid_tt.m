function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 15
    T = [T; NaN(15 - size(T, 1), 1)];
end
T(1) = params(8)/2*(exp(y(14))-exp(y(3)))^2;
T(2) = exp(y(16))*(1-params(5)-params(10))*exp(y(15))^((-params(5))-params(10));
T(3) = exp(y(3))^params(5);
T(4) = exp(y(18))^params(10);
T(5) = exp(y(13))-exp(y(15))^params(7)/params(7);
T(6) = exp(y(24))-exp(y(26))^params(7)/params(7);
T(7) = T(6)^(-params(3));
T(8) = params(1)*(T(6)/T(5))^(-params(3));
T(9) = params(5)*exp(y(27))*exp(y(14))^(params(5)-1);
T(10) = exp(y(29))^params(10);
T(11) = T(9)*T(10);
T(12) = exp(y(26))^(1-params(5)-params(10));
T(13) = 1-params(4)+T(11)*T(12)+params(8)*(exp(y(25))-exp(y(14)));
T(14) = exp(y(18))^(params(10)-1);
T(15) = exp(y(15))^(1-params(5)-params(10));
end
