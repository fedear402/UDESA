function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14)=params(6)*y(5)+params(9)*x(1);
end
