function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = RBC_SOE_TP3.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 20
    T = [T; NaN(20 - size(T, 1), 1)];
end
T(13) = getPowerDeriv(T(4),(-params(3)),1);
T(14) = getPowerDeriv(T(6),(-params(3)),1);
T(15) = params(8)/2*(-exp(y(3)))*2*(exp(y(12))-exp(y(3)));
T(16) = getPowerDeriv(T(2),params(5),1);
T(17) = params(8)/2*exp(y(12))*2*(exp(y(12))-exp(y(3)));
T(18) = getPowerDeriv(T(8),params(5)-1,1);
T(19) = T(13)*(-(exp(y(13))*getPowerDeriv(exp(y(13)),params(7),1)/params(7)));
T(20) = T(14)*(-(exp(y(22))*getPowerDeriv(exp(y(22)),params(7),1)/params(7)));
end
