function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 12
    T = [T; NaN(12 - size(T, 1), 1)];
end
T(1) = params(8)/2*(exp(y(12))-exp(y(3)))^2;
T(2) = exp(y(3))/exp(y(13));
T(3) = exp(y(14))*(1-params(5))*T(2)^params(5);
T(4) = exp(y(11))-exp(y(13))^params(7)/params(7);
T(5) = T(4)^(-params(3));
T(6) = exp(y(20))-exp(y(22))^params(7)/params(7);
T(7) = T(6)^(-params(3));
T(8) = exp(y(12))/exp(y(22));
T(9) = params(5)*exp(y(23))*T(8)^(params(5)-1);
T(10) = 1+T(9)-params(4)+params(8)*(exp(y(21))-exp(y(12)));
T(11) = exp(y(14))*exp(y(3))^params(5);
T(12) = exp(y(13))^(1-params(5));
end
