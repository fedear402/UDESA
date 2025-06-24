Con $p$ predictores, si son demasiados, se busca encontrar M componentes
$$
Z_{m}=\phi_{1m} X_{1}+ \phi_{2m} X_{2}+ \dots +\phi_{1p}X_{p}
$$
tal que $M <p$.
Normalizado:
$$
\sum_{j=1}^p\phi_{jm}^2=1
$$
cada $\phi$ es un *loading*.
Los datos tienen que estar centrados porque PCA busca la dirección de máxima varianza.

---

$$
\max_{\phi_{1m}, \phi_{2m}, \dots, \phi_{pm}} \left\{ \frac{1}{n}\sum_{i=1}^n \left( \sum_{j=1}^n \phi_{jm}x_{ij}\right)^2  \right\} 
$$
sujeto a 
$$
\sum_{j=1}^p\phi_{jm}^2=1
$$
$$
\max_{\phi_{1m}, \phi_{2m}, \dots, \phi_{pm}} \left\{ \frac{1}{n}\sum_{i=1}^n z_{im}^2 \right\} 
$$
cada $z_{i}$ es el *score* del componente.

---

$$
M_{max}=\min\left\{ n-1,p \right\} 
$$
