function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(14, 1);
end
[T_order, T] = RBC_SOE_TP3.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(26, 1);
g1_v(1)=exp(y(1));
g1_v(2)=exp(y(1));
g1_v(3)=(-((exp(y(1))*exp(y(1))-exp(y(1))*(exp(y(1))-exp(y(2))-exp(y(6))))/(exp(y(1))*exp(y(1)))));
g1_v(4)=(-exp(y(2)));
g1_v(5)=T(10)-(1+params(10)+params(2)*(exp(y(7)-params(11))-1))*params(1)*T(10);
g1_v(6)=T(10)-T(6)*params(1)*T(10);
g1_v(7)=(-((-exp(y(2)))/exp(y(1))));
g1_v(8)=(-(exp(y(3))-exp(y(3))*(1-params(4))));
g1_v(9)=(-(exp(y(5))*(1-params(5))*T(1)*T(11)));
g1_v(10)=(-(T(4)*params(1)*exp(y(5))*params(5)*T(1)*T(12)));
g1_v(11)=(-(T(8)*exp(y(5))*exp(y(3))*getPowerDeriv(exp(y(3)),params(5),1)));
g1_v(12)=exp(y(3))-exp(y(3))*(1-params(4));
g1_v(13)=exp(y(4))*getPowerDeriv(exp(y(4)),params(7)-1,1)-exp(y(5))*(1-params(5))*T(11)*T(13);
g1_v(14)=T(14)-(1+params(10)+params(2)*(exp(y(7)-params(11))-1))*params(1)*T(14);
g1_v(15)=T(14)-(T(6)*params(1)*T(14)+T(4)*params(1)*exp(y(5))*params(5)*T(12)*T(13));
g1_v(16)=(-(T(7)*exp(y(4))*getPowerDeriv(exp(y(4)),1-params(5),1)));
g1_v(17)=(-T(2));
g1_v(18)=(-(T(4)*params(1)*T(5)));
g1_v(19)=(-(T(7)*T(8)));
g1_v(20)=1-params(6);
g1_v(21)=(-exp(y(6)));
g1_v(22)=(-((-exp(y(6)))/exp(y(1))));
g1_v(23)=1-(1+params(10)+params(2)*(exp(y(7)-params(11))-1)+y(7)*params(2)*exp(y(7)-params(11)));
g1_v(24)=(-(T(4)*params(1)*params(2)*exp(y(7)-params(11))));
g1_v(25)=1;
g1_v(26)=1;
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 9, 9);
end
