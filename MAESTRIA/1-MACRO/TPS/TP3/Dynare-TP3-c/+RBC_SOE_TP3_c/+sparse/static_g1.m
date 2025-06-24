function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(15, 1);
end
[T_order, T] = RBC_SOE_TP3_c.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(36, 1);
g1_v(1)=exp(y(1));
g1_v(2)=exp(y(1));
g1_v(3)=(-((exp(y(1))*exp(y(1))-exp(y(1))*(exp(y(1))-exp(y(2))-exp(y(8))))/(exp(y(1))*exp(y(1)))));
g1_v(4)=(-exp(y(2)));
g1_v(5)=T(11)-(1+params(14)+params(2)*(exp(y(9)-params(15))-1))*params(1)*T(11);
g1_v(6)=(-((-exp(y(2)))/exp(y(1))));
g1_v(7)=(-(exp(y(3))-exp(y(3))*(1-params(4))));
g1_v(8)=(-(T(3)*T(1)*T(12)));
g1_v(9)=(-(params(1)*T(8)*T(3)*exp(y(5))*params(5)*exp(y(3))*getPowerDeriv(exp(y(3)),params(5)-1,1)));
g1_v(10)=T(8)*T(9)*exp(y(5))*params(10)*T(12);
g1_v(11)=(-(T(8)*T(3)*exp(y(5))*T(12)));
g1_v(12)=exp(y(3))-exp(y(3))*(1-params(4));
g1_v(13)=exp(y(4))*getPowerDeriv(exp(y(4)),params(7)-1,1)-T(3)*T(2)*exp(y(5))*(1-params(5)-params(10))*exp(y(4))*getPowerDeriv(exp(y(4)),(-params(5))-params(10),1);
g1_v(14)=T(13)-(1+params(14)+params(2)*(exp(y(9)-params(15))-1))*params(1)*T(13);
g1_v(15)=(-(params(1)*T(7)*T(14)));
g1_v(16)=T(2)*exp(y(5))*params(10)*T(9)*T(14);
g1_v(17)=(-(T(3)*exp(y(5))*T(2)*T(14)));
g1_v(18)=(-(T(1)*T(2)*T(3)));
g1_v(19)=(-(params(1)*T(7)*T(8)));
g1_v(20)=T(8)*T(2)*exp(y(5))*params(10)*T(9);
g1_v(21)=(-(T(8)*T(3)*exp(y(5))*T(2)));
g1_v(22)=1-params(6);
g1_v(23)=(-(exp(y(6))*exp(y(7))));
g1_v(24)=(-exp(y(6)));
g1_v(25)=1-params(12);
g1_v(26)=(-(exp(y(6))*exp(y(7))));
g1_v(27)=(-(T(1)*T(2)*T(15)));
g1_v(28)=(-(params(1)*T(8)*T(6)*T(15)));
g1_v(29)=T(8)*T(2)*exp(y(5))*params(10)*exp(y(7))*getPowerDeriv(exp(y(7)),params(10)-1,1);
g1_v(30)=(-(T(8)*exp(y(5))*T(2)*T(15)));
g1_v(31)=(-exp(y(8)));
g1_v(32)=(-((-exp(y(8)))/exp(y(1))));
g1_v(33)=1-(1+params(14)+params(2)*(exp(y(9)-params(15))-1)+y(9)*params(2)*exp(y(9)-params(15)));
g1_v(34)=(-(T(5)*params(1)*params(2)*exp(y(9)-params(15))));
g1_v(35)=1;
g1_v(36)=1;
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 11, 11);
end
