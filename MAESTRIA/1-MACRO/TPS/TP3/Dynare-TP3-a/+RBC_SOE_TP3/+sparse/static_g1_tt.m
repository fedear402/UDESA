function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = RBC_SOE_TP3.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 14
    T = [T; NaN(14 - size(T, 1), 1)];
end
T(9) = getPowerDeriv(T(3),(-params(3)),1);
T(10) = exp(y(2))*T(9);
T(11) = getPowerDeriv(T(1),params(5),1);
T(12) = getPowerDeriv(T(1),params(5)-1,1);
T(13) = (-(exp(y(3))*exp(y(4))))/(exp(y(4))*exp(y(4)));
T(14) = T(9)*(-(exp(y(4))*getPowerDeriv(exp(y(4)),params(7),1)/params(7)));
end
