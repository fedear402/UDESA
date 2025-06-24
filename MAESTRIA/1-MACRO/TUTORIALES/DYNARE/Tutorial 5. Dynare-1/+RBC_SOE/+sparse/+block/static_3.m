function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  T(1)=exp(y(2));
  T(2)=exp(y(7)-params(5));
  T(3)=1+params(4)+params(9)*(T(2)-1);
  T(4)=exp(y(3));
  T(5)=T(1)-T(4)^params(7)/params(7);
  T(6)=T(5)^(-params(1));
  residual(1)=(T(6))-(T(6)*T(3)*params(6));
  T(7)=exp(y(5));
  T(8)=exp(y(6));
  T(9)=1+T(8)*params(3)*(T(7)/T(4))^(params(3)-1)-params(2);
  residual(2)=(T(6))-(T(6)*params(6)*T(9));
  T(10)=exp(y(1));
  T(11)=T(8)*T(7)^params(3);
  T(12)=T(4)^(1-params(3));
  residual(3)=(T(10))-(T(11)*T(12));
  residual(4)=(T(4)^(params(7)-1))-(T(8)*(1-params(3))*(T(7)/T(4))^params(3));
  residual(5)=(T(10)+y(7))-(T(1)+T(7)-T(7)*(1-params(2))+y(7)*T(3));
  T(13)=getPowerDeriv(T(5),(-params(1)),1);
  T(14)=T(1)*T(13);
  T(15)=getPowerDeriv(T(7)/T(4),params(3),1);
  T(16)=T(13)*(-(T(4)*getPowerDeriv(T(4),params(7),1)/params(7)));
  T(17)=getPowerDeriv(T(7)/T(4),params(3)-1,1);
if nargout > 3
    g1_v = NaN(15, 1);
g1_v(1)=T(14)-T(3)*params(6)*T(14);
g1_v(2)=T(14)-T(9)*params(6)*T(14);
g1_v(3)=(-T(1));
g1_v(4)=T(16)-T(3)*params(6)*T(16);
g1_v(5)=T(16)-(T(9)*params(6)*T(16)+T(6)*params(6)*T(8)*params(3)*(-(T(7)*T(4)))/(T(4)*T(4))*T(17));
g1_v(6)=(-(T(11)*T(4)*getPowerDeriv(T(4),1-params(3),1)));
g1_v(7)=T(4)*getPowerDeriv(T(4),params(7)-1,1)-T(8)*(1-params(3))*(-(T(7)*T(4)))/(T(4)*T(4))*T(15);
g1_v(8)=T(10);
g1_v(9)=T(10);
g1_v(10)=(-(T(6)*params(6)*T(8)*params(3)*T(7)/T(4)*T(17)));
g1_v(11)=(-(T(12)*T(8)*T(7)*getPowerDeriv(T(7),params(3),1)));
g1_v(12)=(-(T(8)*(1-params(3))*T(7)/T(4)*T(15)));
g1_v(13)=(-(T(7)-T(7)*(1-params(2))));
g1_v(14)=(-(T(6)*params(6)*params(9)*T(2)));
g1_v(15)=1-(T(3)+y(7)*params(9)*T(2));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
