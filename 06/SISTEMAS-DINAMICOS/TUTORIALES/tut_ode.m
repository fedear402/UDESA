X0 = [0 1];
M=[-10 50; 10 -50];
f=@(t,X) M*X;
% Es muy importante definir la f para que acepte dos variables pese a que no use
% alguno.
% Hay que pensar que la primera entrada es el tiempo (variable escalar), y la
% segunda es la variable espacial, o función incógnita (un vector columna).
[t X] = ode45(f, [0, 0.5], X0)
plot(t,X(:,1), 'k', 'LineWidth', 1.5);
% X(:,1) está tomando la primera columna de X, viendo la ecuación (1), esto será
% la primera coordenada de la solución evaluada en varios tiempos entre 0 y 0.5.
hold on
plot(t,X(:,2), 'r', 'LineWidth', 1.5);
legend('x(t)', 'y(t)')
hold off

faselin(M, [0 0]')
% Armé una función que hace los diagramas de fase siguiendo los pasos de la
% tutorial 05.
% Las entradas son la matriz asociada al sistema lineal y el término
% independiente.
hold on
plot(X(:,1), X(:,2), 'linewidth', 2)
hold off
