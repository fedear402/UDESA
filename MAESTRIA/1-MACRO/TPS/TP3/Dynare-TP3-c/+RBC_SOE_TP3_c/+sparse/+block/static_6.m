function [y, T, residual, g1] = static_6(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(2, 1);
  T(17)=exp(y(2));
  T(18)=exp(y(9)-params(15));
  T(19)=1+params(14)+params(2)*(T(18)-1);
  residual(1)=(T(16)+y(9))-(T(17)+T(1)-T(1)*(1-params(4))+T(8)*T(2)+y(9)*T(19));
  T(20)=T(17)-T(3)^params(7)/params(7);
  T(21)=T(20)^(-params(3));
  residual(2)=(T(21))-(T(21)*T(19)*params(1));
  T(22)=T(17)*getPowerDeriv(T(20),(-params(3)),1);
if nargout > 3
    g1_v = NaN(4, 1);
g1_v(1)=(-T(17));
g1_v(2)=T(22)-T(19)*params(1)*T(22);
g1_v(3)=1-(T(19)+y(9)*params(2)*T(18));
g1_v(4)=(-(T(21)*params(1)*params(2)*T(18)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 2, 2);
end
end
