2+2 % esto es para que no interperte que es un archivo de una sola funcion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% primer ejemplo
function dhdt = sistema(t, state)
    k = state(1);
    h = state(2);
    s_k = 0.1;
    s_h = 0.1;
    kt = s_k* k^0.3 * h^0.1 - 0.76 * k;
    ht = s_h* k^0.3 * h^0.1 - 0.76 * h;
    dhdt = [kt; ht];
end

% puntos fijos
kfijo = 0.034039;
hfijo = 0.034039;

x_lim = [-0.1 kfijo + 0.15];
y_lim = [-0.1 hfijo + 0.15];

% grifca
[x, y] = meshgrid(linspace(x_lim(1), x_lim(2), 20),
                  linspace(y_lim(1), y_lim(2), 20));
u = zeros(size(x));
v = zeros(size(y));
for i = 1:numel(x)
    q = sistema(0, [x(i); y(i)]);
    u(i) = q(1);
    v(i) = q(2);
end
fu=u./sqrt(u.^2+v.^2);
fv=v./sqrt(u.^2+v.^2);
quiver(x, y, fu, fv, .5);
hold on;
xlabel('k');
ylabel('h');
grid on;
axis([x_lim y_lim]);

% trayectorias con puntos inciales

for d = linspace(0.005, 0.07, 5)
    start = [kfijo + d; hfijo + d];
    [t, sol] = ode45(@sistema, [0 10], start);
    plot(sol(:, 1), sol(:, 2), 'LineWidth',2);
end
start = [0.15; 0.05];
[t, sol] = ode45(@sistema, [0 10], start);
plot(sol(:, 1), sol(:, 2), 'LineWidth',2);

start = [0.1; 0];
[t, sol] = ode45(@sistema, [0 10], start);
plot(sol(:, 1), sol(:, 2), 'LineWidth',2);

start = [0.1; 0.01];
[t, sol] = ode45(@sistema, [0 10], start);
plot(sol(:, 1), sol(:, 2), 'LineWidth',2);

% opciones del grafico
xlabel('k');
ylabel('h');
grid on;
axis([x_lim y_lim]);
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% esto es para chequear autovalores
k_f= ((0.1^0.9 * 0.1^0.1) / 0.76)^(1/0.6);
h_f = k_f;

A = [0.1 * (0.3 * k_f^(0.3 - 1) * k_f^0.1) - 0.76,       0.1 * (k_f^0.3 * 0.1 * (k_f)^(0.1 - 1));
     0.1 * (0.3 * k_f^(0.3 - 1) * k_f^0.1),              0.1 * (k_f^0.3 * 0.1 * (k_f)^(0.1 - 1)) - 0.76 ];
disp(eig(A));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function dhdt = sistema_argentina(state)
    k = state(1);
    h = state(2);
    s_k = 0.25;
    s_h = 0.5;
    kt = s_k * k^0.3 * h^0.1 - 0.76 * k;
    ht = s_h * k^0.3 * h^0.1 - 0.76 * h;
    dhdt = [kt; ht];
end
function dhdt = sistema_usa(state)
    k = state(1);
    h = state(2);
    s_k = 0.21;
    s_h = 0.11;
    kt = s_k * k^0.3 * h^0.1 - 0.76 * k;
    ht = s_h * k^0.3 * h^0.1 - 0.76 * h;
    dhdt = [kt; ht];
end

subplot(1, 2, 1);
plot_system(@sistema_argentina, 'Argentina');


subplot(1, 2, 2);
plot_system(@sistema_usa, 'USA');



