2+2;
function r = grafico(A, b)
  xe=-A^-1 * b;


  x=-3:.25:3;
  y=-3:.25:3;
  [xx, yy]=meshgrid(x,y);
  F=@(x) A*x + b;
  FFx=zeros(size(xx));
  FFy=zeros(size(xx));

  for i = 1:length(xx(:))
    FFx(i) = F([xx(i); yy(i)])(1);
    FFy(i) = F([xx(i); yy(i)])(2);
  endfor
  FFxn=FFx./sqrt(FFx.^2+FFy.^2);
  FFyn=FFy./sqrt(FFx.^2+FFy.^2);

  quiver(xx,yy,FFxn,FFyn, .5)
  max = 3.1
  axis([(xe(1) - max) (xe(1) + max) (xe(2) - max) (xe(2) + max)])

endfunction

grafico([1 1; -17 1], [0 1]')
