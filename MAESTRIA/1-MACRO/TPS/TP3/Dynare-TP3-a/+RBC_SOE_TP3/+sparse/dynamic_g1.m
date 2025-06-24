function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(20, 1);
end
[T_order, T] = RBC_SOE_TP3.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(42, 1);
g1_v(1)=(-(T(15)-(1-params(4))*exp(y(3))));
g1_v(2)=(-(exp(y(14))*(1-params(5))*T(2)*T(16)));
g1_v(3)=T(5)*params(8)*(-exp(y(3)));
g1_v(4)=(-(T(12)*exp(y(14))*exp(y(3))*getPowerDeriv(exp(y(3)),params(5),1)));
g1_v(5)=(-((1-params(4))*exp(y(3))));
g1_v(6)=(-((-T(15))/exp(y(10))));
g1_v(7)=(-params(6));
g1_v(8)=(-(1+params(10)+params(2)*(exp(y(7)-params(11))-1)+y(7)*params(2)*exp(y(7)-params(11))));
g1_v(9)=(-(1/exp(y(10))));
g1_v(10)=exp(y(10));
g1_v(11)=exp(y(10));
g1_v(12)=(-((-(exp(y(10))*(y(7)-y(16))))/(exp(y(10))*exp(y(10)))));
g1_v(13)=(-((exp(y(10))*exp(y(10))-exp(y(10))*(exp(y(10))-exp(y(11))-exp(y(15))-T(1)))/(exp(y(10))*exp(y(10)))));
g1_v(14)=(-exp(y(11)));
g1_v(15)=exp(y(11))*T(13);
g1_v(16)=(1+params(8)*(exp(y(12))-exp(y(3))))*exp(y(11))*T(13);
g1_v(17)=(-((-exp(y(11)))/exp(y(10))));
g1_v(18)=(-(exp(y(12))+T(17)));
g1_v(19)=T(5)*exp(y(12))*params(8)-params(1)*T(7)*(params(5)*exp(y(23))*T(8)*T(18)+params(8)*(-exp(y(12))));
g1_v(20)=exp(y(12));
g1_v(21)=(-((-T(17))/exp(y(10))));
g1_v(22)=exp(y(13))*getPowerDeriv(exp(y(13)),params(7)-1,1)-exp(y(14))*(1-params(5))*T(16)*(-(exp(y(3))*exp(y(13))))/(exp(y(13))*exp(y(13)));
g1_v(23)=T(19);
g1_v(24)=(1+params(8)*(exp(y(12))-exp(y(3))))*T(19);
g1_v(25)=(-(T(11)*exp(y(13))*getPowerDeriv(exp(y(13)),1-params(5),1)));
g1_v(26)=(-T(3));
g1_v(27)=(-(T(11)*T(12)));
g1_v(28)=1;
g1_v(29)=(-exp(y(15)));
g1_v(30)=(-((-exp(y(15)))/exp(y(10))));
g1_v(31)=1;
g1_v(32)=(-(T(7)*params(1)*params(2)*exp(y(16)-params(11))));
g1_v(33)=(-((-1)/exp(y(10))));
g1_v(34)=1;
g1_v(35)=1;
g1_v(36)=(-(params(1)*(1+params(10)+params(2)*(exp(y(16)-params(11))-1))*exp(y(20))*T(14)));
g1_v(37)=(-(T(10)*params(1)*exp(y(20))*T(14)));
g1_v(38)=(-(params(1)*T(7)*params(8)*exp(y(21))));
g1_v(39)=(-(params(1)*(1+params(10)+params(2)*(exp(y(16)-params(11))-1))*T(20)));
g1_v(40)=(-(T(10)*params(1)*T(20)+params(1)*T(7)*params(5)*exp(y(23))*T(18)*(-(exp(y(12))*exp(y(22))))/(exp(y(22))*exp(y(22)))));
g1_v(41)=(-(params(1)*T(7)*T(9)));
g1_v(42)=(-params(9));
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 9, 28);
end
