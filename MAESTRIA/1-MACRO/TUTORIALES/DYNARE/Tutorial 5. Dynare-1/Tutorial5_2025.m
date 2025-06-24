% Tutorial 5

%-----------------------------------------------
% Clear
%-----------------------------------------------
2+2
% Para limpiar todo
clc

% Solo variables
clearvars

%-----------------------------------------------
% Current directory
%-----------------------------------------------
cd

%-----------------------------------------------
% Variables
%-----------------------------------------------
x = 10

%Las variables se guardan en el workspace

% A tener en cuenta: las operaciones que hace matlab siempre son
% matriciales
% Por eso, es necesarioe expresar a funciones como operaciones de matrices
% Los output de dynare van a ser matrices que luego van usarse para
% realizar los gráficos.

%-----------------------------------------------
% Vectores
%-----------------------------------------------
v = [1 2 3]

v_T = v'

v2 = 1:10

v3 = 1:2:10

%-----------------------------------------------
% Matrices
%-----------------------------------------------
m = [1 2 3; 4 5 6; 7 8 9] %muestra el resultado

m = [1 2 3; 4 5 6; 7 8 9]; %no muestra el resultado

m1 = ones(3,4)

m2 = eye(4)

m3 = zeros(2,8)

% Llamamos elementos:
m(2,2)

m(:,2)

m(2,:)

%-----------------------------------------------
% Gráficos
%-----------------------------------------------

% Vector entre -10 y 10 con 100 elementos de por medio
x = linspace(-10,10,100)

% Función y = -(x - 3)^2.

%y = -(x - 3)^2 %CUIDADO!

%Para hacer la operación elemento por elemento, agregamos .^
y = -(x - 3).^2

% Para pedir ayuda
% doc linspace

% Plot
p = plot(x,y);
