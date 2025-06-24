function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = RBC_SOE.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 20
    T = [T; NaN(20 - size(T, 1), 1)];
end
T(13) = getPowerDeriv(T(4),(-params(1)),1);
T(14) = getPowerDeriv(T(6),(-params(1)),1);
T(15) = getPowerDeriv(T(2),params(3),1);
T(16) = T(13)*(-(exp(y(12))*getPowerDeriv(exp(y(12)),params(7),1)/params(7)));
T(17) = T(14)*(-(exp(y(21))*getPowerDeriv(exp(y(21)),params(7),1)/params(7)));
T(18) = getPowerDeriv(T(8),params(3)-1,1);
T(19) = params(8)/2*(-exp(y(5)))*2*(exp(y(14))-exp(y(5)));
T(20) = params(8)/2*exp(y(14))*2*(exp(y(14))-exp(y(5)));
end
