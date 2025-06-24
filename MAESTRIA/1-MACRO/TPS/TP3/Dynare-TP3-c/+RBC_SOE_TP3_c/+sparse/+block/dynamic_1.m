function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(16)=params(6)*y(5)+params(9)*x(1);
  y(17)=params(12)*y(6)+params(13)*x(2);
end
