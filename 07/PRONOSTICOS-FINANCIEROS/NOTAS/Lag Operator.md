$$
Lx_{t}=x_{t-1}
$$
$$
L^kx_{t}=x_{t-k}
$$
$$
\Delta y_{t} = y_{t} - y_{t-1} =(1-L)y_{t}
$$
$y_{t}$ es $AR(p)$
$$
y_{t}(1-\phi L-\phi_{2}L^2-\dots-\phi_{p}L^p)=\epsilon_{t}
$$
$$
y_{t}A(L)=\epsilon_{t}
$$
con 
$$
A(L)=(1-\phi L-\phi_{2}L^2-\dots-\phi_{p}L^p)
$$
entonces
$$
A(1) = 1-\phi_{1}-\phi_{2} - \dots-\phi_{p}
$$
un $AR(1)$ es
$$
y_{t}(1-pL)=\epsilon_{t}
$$
Y la condición para que un AR(1) sea débilmente estacionario es |𝜌| < 1, o sea, la raíz de 1 − 𝜌𝑧 = 0 sea mayor a uno.

Proceso AR(2): suponga que 
𝑦𝑡 = 𝜌1𝑦𝑡−1 + 𝜌2𝑦𝑡−2 + 𝜀𝑡 
Este proceso autorregresivo puede reescribirse como 
$𝑦_{t}(1 − 𝜌_{1}𝐿 − 𝜌_{2}𝐿^2) = 𝜀_{t}$
es debimente estacionario si las raices de 
$1-\phi_{1}z-\phi_{2}z^2=0$
estan fuera del circulo unitario