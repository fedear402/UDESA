function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 9
    T = [T; NaN(9 - size(T, 1), 1)];
end
T(1) = exp(y(5))*(1-params(5)-params(10))*exp(y(4))^((-params(5))-params(10));
T(2) = exp(y(3))^params(5);
T(3) = exp(y(7))^params(10);
T(4) = exp(y(2))-exp(y(4))^params(7)/params(7);
T(5) = T(4)^(-params(3));
T(6) = exp(y(5))*params(5)*exp(y(3))^(params(5)-1);
T(7) = T(3)*T(6);
T(8) = exp(y(4))^(1-params(5)-params(10));
T(9) = exp(y(7))^(params(10)-1);
end
