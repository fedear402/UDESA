function [y, T, residual, g1] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(3, 1);
  T(1)=exp(y(3));
  T(2)=exp(y(7));
  T(3)=exp(y(4));
  T(4)=exp(y(5));
  T(5)=T(2)^params(10);
  T(6)=T(4)*params(5)*T(1)^(params(5)-1);
  T(7)=T(3)^(1-params(5)-params(10));
  residual(1)=(1)-(params(1)*(1-params(4)+T(5)*T(6)*T(7)));
  T(8)=exp(y(6));
  T(9)=T(1)^params(5);
  T(10)=T(2)^(params(10)-1);
  residual(2)=(T(7)*T(9)*T(4)*params(10)*T(10))-(T(8));
  T(11)=T(4)*(1-params(5)-params(10))*T(3)^((-params(5))-params(10));
  T(12)=T(11)*T(9);
  residual(3)=(T(3)^(params(7)-1))-(T(12)*T(5));
  T(13)=T(1)*getPowerDeriv(T(1),params(5),1);
  T(14)=T(3)*getPowerDeriv(T(3),1-params(5)-params(10),1);
  T(15)=T(2)*getPowerDeriv(T(2),params(10),1);
if nargout > 3
    g1_v = NaN(9, 1);
g1_v(1)=(-(params(1)*T(7)*T(6)*T(15)));
g1_v(2)=T(7)*T(9)*T(4)*params(10)*T(2)*getPowerDeriv(T(2),params(10)-1,1);
g1_v(3)=(-(T(12)*T(15)));
g1_v(4)=(-(params(1)*T(7)*T(5)*T(4)*params(5)*T(1)*getPowerDeriv(T(1),params(5)-1,1)));
g1_v(5)=T(7)*T(10)*T(4)*params(10)*T(13);
g1_v(6)=(-(T(5)*T(11)*T(13)));
g1_v(7)=(-(params(1)*T(5)*T(6)*T(14)));
g1_v(8)=T(9)*T(4)*params(10)*T(10)*T(14);
g1_v(9)=T(3)*getPowerDeriv(T(3),params(7)-1,1)-T(5)*T(9)*T(4)*(1-params(5)-params(10))*T(3)*getPowerDeriv(T(3),(-params(5))-params(10),1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 3, 3);
end
end
