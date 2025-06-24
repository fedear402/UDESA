format long g

function r = sistema(A, b, x, n, c)
  if nargin == 4
    c = {};
  end
  r = A * x + b;
  c = [c; {r}];
  if (n > 1)
    r = sistema(A, b, r, n-1, c);
  else
    r = c;
  endif
endfunction

A = [0.5, 0; 6, 2];
b = [1.5, -14]';
xa = [2, 0]';
xb=[3,-3.9]';
xc=[4,-8.1]';
xd=[2,0.1]';


sistema(A,b,xa,6)
