
$$
\left( 
\begin{matrix}
y_{1t} \\
\vdots \\
y_{kt}
\end{matrix}
\right) 
=
\left( 
\begin{matrix}
m_{1} \\
\vdots \\
m_{k}
\end{matrix}
\right) 
+
\left( 
\begin{matrix}
a_{11} & \dots  & a_{1k}\\
\vdots  & \ddots &  \vdots\\ 
a_{k1} & \dots & a_{kk}
\end{matrix}
\right)
\left( 
\begin{matrix}
y_{1t-1} \\
\vdots \\
y_{kt-1}
\end{matrix}
\right)
+
\dots
+
\left( 
\begin{matrix}
\epsilon_{1} \\
\vdots \\
\epsilon_{k}
\end{matrix}
\right) 
$$
$y_{t}=m+A_{1}y_{t-1}+A_{2}y_{t-2}+\dots+A_{p}y_{t-p}+\epsilon_{p}$

$$E(\epsilon_{t}\epsilon_{s}')=\begin{cases}
\Omega \ \ \ \ \ t=s \\
0 \ \ \ \ \ t \neq s 
\end{cases}$$
