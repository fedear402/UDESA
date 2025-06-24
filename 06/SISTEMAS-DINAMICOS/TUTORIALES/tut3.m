# Sistemas lineales
format short g
A =[
1 2 -3;
-3 -1 1;
1 -1 1
]
b = [5 -8 0]'

x = A\b

# Hay solucion solo si b esta en la imagen de A (la dimension de columnas)
# Sino, te devuelve el vector mas cerca

M = [1 4;
-3 -1]
r = [34 2]'
y = M\r
# M es inversible
# M*y me da r (es comb lineal)
# Entonces es la solucion y no la de minimos cuadrados

x = [-4:0.1:4]
y = x.^2
yy = y+randn(size(y))

p2=polyfit(x,yy,2);
plot(x,yy,'o', 'MarkerSize', 1);
hold on;
plot(x,polyval(p2,x),'r--')
hold off




f = @(x) cos(4*x) .* sin(10*x) .* exp(-abs(x))
r_pi = fzero(f, -pi)
rpi = fzero(f, pi)
mn=fminbnd(f,-pi,pi)
x=pi*(-1:.01:1)
plot(x,f(x))
hold on
plot(x, zeros(size(x)), 'linestyle', '--', 'color', 'r')
plot([r_pi r_pi], [-1 0], 'linestyle', '--', 'color', 'r')
plot([rpi rpi], [-1 0], 'linestyle', '--', 'color', 'r')
scatter([mn], [f(mn)], 'o', "filled")
hold off
