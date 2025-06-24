function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 12
    T = [T; NaN(12 - size(T, 1), 1)];
end
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
end
