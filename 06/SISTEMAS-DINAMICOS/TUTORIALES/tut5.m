A=[-2 0; -2 -6];
b=[2 -10]';
xe=-A^-1*b



a = [1 0]';

# x'(t) = A x(t) + b
#  x(t) = a \in R^n
# x'(t) = A * (a) + b


res = A * a + b


x=-1:.25:3;
y=-4:.25:0;
[xx, yy]=meshgrid(x,y)

F=@(x) A*x + b;
FFx=zeros(size(xx));
FFy=zeros(size(xx));

for i = 1:length(xx(:))
  FFx(i) = F([xx(i); yy(i)])(1);
  FFy(i) = F([xx(i); yy(i)])(2);
endfor

# quiver(xx,yy,FFx,FFy)
# NORMALIZO los vectores

FFxn=FFx./sqrt(FFx.^2+FFy.^2);
FFyn=FFy./sqrt(FFx.^2+FFy.^2);

quiver(xx,yy,FFxn,FFyn, .5)
hold on


sol3 = zeros(2, 1);
sol4 = zeros(2, 1);

t=0:.1:2;

for i=1:length(t)
  sol3(:,i)=expm(A*t(i))*([2 0]'-xe)+xe;
  sol4(:,i)=expm(A*t(i))*([0 -4]'-xe)+xe;
endfor


plot(sol3(1,:), sol3(2,:),'m','linewidth', 2)
plot(sol4(1,:), sol4(2,:),'c','linewidth', 2)
hold off
