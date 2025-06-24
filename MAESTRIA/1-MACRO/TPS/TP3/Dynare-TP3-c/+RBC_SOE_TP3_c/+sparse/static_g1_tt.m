function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = RBC_SOE_TP3_c.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 15
    T = [T; NaN(15 - size(T, 1), 1)];
end
T(10) = getPowerDeriv(T(4),(-params(3)),1);
T(11) = exp(y(2))*T(10);
T(12) = exp(y(3))*getPowerDeriv(exp(y(3)),params(5),1);
T(13) = T(10)*(-(exp(y(4))*getPowerDeriv(exp(y(4)),params(7),1)/params(7)));
T(14) = exp(y(4))*getPowerDeriv(exp(y(4)),1-params(5)-params(10),1);
T(15) = exp(y(7))*getPowerDeriv(exp(y(7)),params(10),1);
end
