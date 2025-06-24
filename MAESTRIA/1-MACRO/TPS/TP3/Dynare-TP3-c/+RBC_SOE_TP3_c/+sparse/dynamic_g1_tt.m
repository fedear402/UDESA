function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = RBC_SOE_TP3_c.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 25
    T = [T; NaN(25 - size(T, 1), 1)];
end
T(16) = getPowerDeriv(T(5),(-params(3)),1);
T(17) = getPowerDeriv(T(6)/T(5),(-params(3)),1);
T(18) = getPowerDeriv(T(6),(-params(3)),1);
T(19) = params(8)/2*(-exp(y(3)))*2*(exp(y(14))-exp(y(3)));
T(20) = exp(y(3))*getPowerDeriv(exp(y(3)),params(5),1);
T(21) = params(8)/2*exp(y(14))*2*(exp(y(14))-exp(y(3)));
T(22) = (-(exp(y(15))*getPowerDeriv(exp(y(15)),params(7),1)/params(7)));
T(23) = exp(y(15))*getPowerDeriv(exp(y(15)),1-params(5)-params(10),1);
T(24) = (-(exp(y(26))*getPowerDeriv(exp(y(26)),params(7),1)/params(7)));
T(25) = exp(y(18))*getPowerDeriv(exp(y(18)),params(10),1);
end
