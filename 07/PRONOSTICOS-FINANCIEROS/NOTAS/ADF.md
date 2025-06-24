Test para ver si una serie de tiempo es estacionaria.
Con un $AR(1)$
$$y_{t}=\phi_{1}y_{t-1}+\epsilon_{t}$$
$$y_{t-1}=\phi_{1}y_{t-2}+\epsilon_{t}$$
$H_{0}:\phi=1$ -> implicaría tiene raíz unitaria : no es estacionaria
$H_{A}:\phi < 1$ -> implica que es estacionaria

tomar diferencia:
$$
y_{t}-y_{t-1}=\phi_{1}y_{t-1}+\epsilon_{t}-y_{t-1}
$$
$$
\Delta y_{t}=(1-\phi_{1})y_{t-1}+\epsilon_{t}
$$
Dickey Fuller
$H_{0}:\phi-1=0$ -> implicaría tiene raíz unitaria : no es estacionaria
$H_{A}:\phi - 1 < 0$ -> implica que es estacionaria
 (sigue distribucion DF, no t)
 ![[Pasted image 20240426055616.png]]
 ![[Pasted image 20240426055649.png]]
 ![[Pasted image 20240426055658.png]]
Dickey Fuller Aumentado
agrega constante y tendencia
$$
\Delta y_{t}=c+(1-\phi_{1})y_{t-1}+dt+\epsilon_{t}
$$

