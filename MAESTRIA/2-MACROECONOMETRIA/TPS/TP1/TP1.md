```
CL.Y <- cbind(
              
              CL.IPC.SAE,   
              CL.IMACEC,    
              CL.TASA,
              CL.TCN,
              CL.EMBI)  
```

El modelo de restricciones de corto plazo lo caracterizamos de la siguiente manera:
$$
\begin{pmatrix}
e_{ACTIV} \\
e_{IPC} \\
e_{TASA} \\

e_{EMBI} \\
e_{TCN}
\end{pmatrix}
=
\begin{pmatrix} 1 & 0 & 0 & 0 & 0 \\ \cdot & 1 & 0 & 0 & 0 \\ \cdot & \cdot & 1 & 0 & 0 \\ \cdot & \cdot & \cdot & 1 & 0 \\ \cdot & \cdot & \cdot & \cdot & 1 \end{pmatrix}
\begin{pmatrix}
u_{ACTIV} \\
u_{IPC} \\
 
u_{TASA} \\
u_{EMBI} \\
u_{TCN} 
\end{pmatrix}
$$
En esa estructura, cada $e_{i}$ es un shock estructural y cada $u_{i}$ es un shock residual. De esta manera, la actividad no es afectadas por ninguna variables $contemporaneamente$ (pero si puede ser afectada indirectamente en los periodos como en el modelo de chile que tiene 2 rezagos). Esto se puede justificar si pensamos que hay costos de ajuste que impiden a las empresas cambiar su produccion en el momento de cambios sopresivos en la inflacion de la economía que se anuncia con rezago o en la politica monetaria. 
Luego, asumimos que la inflacion es afectada contemporaneamente por el nivel de actividad pero por ninguna otra variable. La tasa de intrés de politica monetaria se asume afectada contemporaneamente por la inflacion y la actividad, ya que el banco central considera la situación económica del país para tomar decisiones. Por último, el EMBI es afectado por todas las variables de la economía excepto el tipo de cambio nominal y la tasa es afectada por shocks de todas las demás variables




$$
\begin{pmatrix}
e_{TOT} \\
e_{EBP^*} \\
e_{ACTIV^*} \\
e_{IPC^*} \\
e_{TASA^*} \\
e_{ACTIV} \\
e_{IPC} \\
e_{TASA} \\
e_{EMBI} \\
e_{TCN}
\end{pmatrix}
=
\begin{pmatrix} 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\ \cdot & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\ \cdot & \cdot & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\ \cdot & \cdot & \cdot & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\ \cdot & \cdot & \cdot & \cdot & 1 & 0 & 0 & 0 & 0 & 0 \\ \cdot & \cdot & \cdot & \cdot & \cdot & 1 & 0 & 0 & 0 & 0 \\ \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & 1 & 0 & 0 & 0 \\ \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & 1 & 0 & 0 \\ \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & 1 & 0 \\ \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & \cdot & 1 \end{pmatrix} 
\begin{pmatrix}
u_{TOT} \\
u_{EBP^*} \\
u_{ACTIV^*} \\
u_{IPC^*} \\
u_{TASA^*} \\
u_{ACTIV} \\
u_{IPC} \\
u_{TASA} \\
u_{EMBI} \\
u_{TCN} 
\end{pmatrix}
$$
El grupo formado por $(e_{TOT},e_{EBP},e_{ACTIV^*}, e_{IPC^*},e_{TASA^*})'$ no es afectado por variables domésticas y por eso aparece primero.