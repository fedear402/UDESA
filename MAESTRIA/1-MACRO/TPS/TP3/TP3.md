# Ejercicio 1


# Ejercicio 2

Las condiciones de equilibrio que cambiarán son:

$$r_t = r^*_t + p(\overline{d}_t)$$  
$$A_t F(k_t, h_t) + d_t = c_t + k_{t+1} - (1 - \delta)k_t + d_{t-1}[1 + r^*_{t-1} + p(\overline{d}_{t-1})] + \Phi[k_{t+1} - k_t]$$  
$$u_{c,t} = \beta [1 + r^*_t + p(\overline{d}_t)] E_t \{ u_{c,t+1} \}$$  
$$ca_t = d_t - d_{t-1}[1 + r^*_{t-1} + p(\overline{d}_{t-1})]$$

Además agregamos:

$$\ln\left( \frac{r^*_t}{\overline{r}^*} \right) = \rho_r \ln\left( \frac{r^*_{t-1}}{\overline{r}^*} \right) + \eta_r \epsilon_t^r$$

Utilizando las formas funcionales de $U(c_t, h_t),\, F(k_t, h_t),\, \Phi(k_{t+1} - k_t)$:

$$r_t = r^*_t + \psi_1(e^{d_t - \overline{d}} - 1)$$  
$$A_t k_t^\alpha h_t^{1-\alpha} + d_t = c_t + k_{t+1} - (1 - \delta)k_t + d_{t-1} [1 + r^*_{t-1} + \psi_1(e^{d_t - \overline{d}} - 1)] + \frac{\phi}{2}(k_{t+1} - k_t)^2$$  
$$\left[ c_t - \frac{h_t^\omega}{\omega} \right]^{-\sigma} = \beta [1 + r^*_t + \psi_1(e^{d_t - \overline{d}} - 1)] E_t \left\{ \left[ c_{t+1} - \frac{h_{t+1}^\omega}{\omega} \right]^{-\sigma} \right\}$$  
$$ca_t = d_t - d_{t-1}[1 + r^*_{t-1} + \psi_1(e^{d_t - \overline{d}} - 1)]$$

Para caracterizar el estado de equilibrio notamos primero que no puede cumplirse $\beta(1 + r^*) = 1$, pues ahora $r^*$ es estocástica. Pero en su definición, notamos que $\epsilon_t^r$ no puede perder el subíndice que indica el tiempo, pero sí podremos decir que es estacionario en su esperanza.

# Ejercicio 3
## a)

Precio de importados $p_{t}$. Procesos AR(1): $a_{t}=\rho a_{t-1}+\eta \epsilon_{t}$ 

Inversión : $k_{t+1}=i_{t}+(1-\delta)k_{t} \to i_{t}=k_{t+1}-(1-\delta)k_{t}$

Transversalidad : $\lim_{ j \to \infty }\mathbb{E}_{t} \frac{d_{t+1}}{\prod_{s=0}^{j}1+r_{t+s}}$

EDEIR: $p(d_{t})=\psi(e^{d_{t}-\bar{d}}-1)$

Lagrangiano:

$$
\mathcal{L}=\mathbb{E}_{0} \sum_{t=0}^{\infty}  \beta^t \left\{   \left[  \frac{\left( c_{t}-\frac{h_{t}^{\omega}}{\omega} \right) ^{ 1-\sigma} - 1}{1-\sigma}\right] +\lambda _{t} \left[ a_{t}k_{t-1}^{\alpha_{1}} m_{t}^{\alpha_{2}} h_{t}^{1-\alpha_{1}-\alpha_{2}}+d_{t} \right.   \right. \dots
$$

$$
\dots  \left. \left.-c_{t}-k_{t+1}+(1-\delta)k_{t}-p_{t}m_{t}-d_{t-1}(1+r_{t-1})-\frac{\phi}{2} (k_{t}-k_{t-1})^{2} \right]   \right\}
$$

Variables de decisión: $c_{t},h_{t},d_{t},k_{t+1},\lambda_{t},m_{t}$

Condiciones de primer orden que cumple el óptimo, además de transversalidad y la regla AR(1) de $a_{t}$ y de $p_{t}$:

$\boxed{\frac{  \partial \mathcal{L} }{ \partial c_{t} } = 0 }: \lambda _{t}=\left( c_{t}-\frac{h_{t}^{\omega}}{\omega} \right)^{-\sigma}$

$\boxed{\frac{ \partial \mathcal{L} }{ \partial h_{t} } =0}: (1-\alpha_{1}-\alpha_{2})h_{t}^{-\alpha_{1}-\alpha_{2}} a_{t}k_{t-1}^{\alpha_{1}} m_{t}^{\alpha_{2}} = h_{t}^{\omega-1}$

$\boxed{\frac{ \partial \mathcal{L} }{ \partial d_{t} } =0}:\lambda _{t}=\beta \mathbb{E}_{t} \lambda _{t+1} (1+r^*+\psi(e^{d_{t}-\bar{d}}-1))$


$\boxed{\frac{ \partial \mathcal{L} }{ \partial k_{t} } =0}: -\lambda _{t}\beta ^{t}\left[ 1-\phi(k_{t}-k_{t-1}) \right] + \beta ^{t+1} \mathbb{E}_{t} \left[ \lambda_{t+1} a_{t} k_{t} ^{\alpha_{1}-1}\alpha_{1}m_{t}^{\alpha_{2}}h_{t} ^{ 1-\alpha_{1}-\alpha_{2}} + 1- \delta + \phi(k_{t+1}-k_{t})  \right]=0$
 

$\boxed{\frac{ \partial \mathcal{L} }{ \partial m_{t} } =0} : a_{t}k_{t-1}^{\alpha_{1}}  \alpha_{2} m_{t}^{\alpha_{2}-1} h_{t}^{1-\alpha_{1}-\alpha_{2}} = p_{t}$

Reemplazando $\lambda$, llegamos a las condiciones:

1. Restriccion Presupuestaria
$$a_{t}k_{t-1}^{\alpha_{1}} m_{t}^{\alpha_{2}} h_{t}^{1-\alpha_{1}-\alpha_{2}}+d_{t}=c_{t}+k_{t+1}-(1-\delta)k_{t}+p_{t}m_{t}+d_{t-1}(1+r^*+\psi(e^{d_{-1}-\bar{d}}-1))+ \frac{\phi}{2} (k_{t}-k_{t-1})^{2}$$

En este caso, la restricción presupuestaria que deben respetar los agentes es similar a la vista en clase con respecto a las fuentes de ingreso. Por el lado de los usos, encontramos una nueva alternativa que son los productos importados, cuyo precio es $p_{t}$ por unidad demandada. Por lo tanto, relativo al modelo visto en clase, los hogares deberán reducir su gasto en otros bienes si desean consumir productos importados. 

2. Productividad Marginal del Trabajo
$$
(1-\alpha_{1}-\alpha_{2})h_{t}^{-\alpha_{1}-\alpha_{2}} a_{t}k_{t-1}^{\alpha_{1}} m_{t}^{\alpha_{2}} = h_{t}^{\omega-1}
$$

En este caso, vemos que la productividad marginal del trabajo es creciente en $m_{t}$ porque la demanda de productos importados se relaciona con mejores salarios para los hogares. De esta manera, entendemos que las importaciones pueden estar relacionadas con mayor bienestar para los hogares. 

3. Eleccion de la Deuda
$$
\left( c_{t}-\frac{h_{t}^{\omega}}{\omega} \right)^{-\sigma}=\beta \mathbb{E}_{t}\left[ \left( c_{t+1}-\frac{h_{t+1}^{\omega}}{\omega} \right)^{-\sigma} \right]  (1+r^*+\psi(e^{d_{t}-\bar{d}}-1))
$$

4. Eleccion del importaciones
$$
a_{t}k_{t-1}^{\alpha_{1}}  \alpha_{2} m_{t}^{\alpha_{2}-1} h_{t}^{1-\alpha_{1}-\alpha_{2}} = p_{t}
$$

Esto simplemente nos dice que el producto marginal generado por importaciones tiene que ser el costo marginal de importar (el precio)

5. Eleccion de stock de capital:

$$
1 - \phi(k_{t}-k_{t-1}) = 
\beta \, \mathbb{E}_t \left[ \left( 
\frac{c_{t+1} - \frac{h_{t+1}^\omega}{\omega}}{c_t - \frac{h_t^\omega}{\omega}} \right)^{-\sigma} \left( \alpha_1 a_{t+1} k_t^{\alpha_1 - 1} m_{t+1}^{\alpha_2} h_{t+1}^{1 - \alpha_1 - \alpha_2} + (1-\delta)+ \phi (k_{t+1} - k_t) 
\right) \right]
$$
A la hora de elegir capital, los agentes ahora deben considerar la producción del próximo período y, por ende, contemplarán los insumos importados que serán necesitados. 

## b)

El equilibrio no estocástico tiene esta forma:
Los procesos estocásticos
$ak^{\alpha_{1}} m^{\alpha_{2}} h^{1-\alpha_{1}-\alpha_{2}}+d=c+k-(1-\delta)k+pm+d(1+r^*+\psi(e^{d-\bar{d}}-1))+ \frac{\phi}{2} (k-k)^{2}$

$(1-\alpha_{1}-\alpha_{2})h^{-\alpha_{1}-\alpha_{2}} ak^{\alpha_{1}} m^{\alpha_{2}} = h^{\omega-1}$

$\left( c-\frac{h^{\omega}}{\omega} \right)^{-\sigma}=\beta \left[ \left( c-\frac{h^{\omega}}{\omega} \right)^{-\sigma} \right]  (1+r^*+\psi(e^{d-\bar{d}}-1))$

$ak^{\alpha_{1}}  \alpha_{2} m^{\alpha_{2}-1} h^{1-\alpha_{1}-\alpha_{2}} = p$

$1 - \phi(k-k) = \beta \left[ \left(\frac{c - \frac{h^\omega}{\omega}}{c - \frac{h^\omega}{\omega}} \right)^{-\sigma} \left( \alpha_1 a k^{\alpha_1 - 1} m^{\alpha_2} h^{1 - \alpha_1 - \alpha_2} + (1-\delta)+ \phi (k - k)\right)\right]$

Valores de estado estacionario que simplificamos:
$\beta=(1+r^*)$
$d=\bar{d}$
$a = 1$
$\bar{p}=1$
Con eso nos queda saber los valores estacionarios de $m$, $h$, $k$, $c$.
$k^{\alpha_{1}} m^{\alpha_{2}} h^{1-\alpha_{1}-\alpha_{2}}=c+k\delta+m+dr^*$
$(1-\alpha_{1}-\alpha_{2})h^{-\alpha_{1}-\alpha_{2}} k^{\alpha_{1}} m^{\alpha_{2}} = h^{\omega-1}$
$k^{\alpha_{1}}  \alpha_{2} m^{\alpha_{2}-1} h^{1-\alpha_{1}-\alpha_{2}} = p$
$1  = \beta [\alpha_1  k^{\alpha_1 - 1} m^{\alpha_2} h^{1 - \alpha_1 - \alpha_2} + 1-\delta]$
Reordenando:
$$
(1-\alpha_{1}-\alpha_{2}) \left( \frac{k}{h} \right)^{ \alpha_{1}} \left( \frac{m}{h} \right)^{\alpha_{2}} = h^{\omega -1}
$$
$$
\alpha_{2} \left( \frac{k}{h} \right)^{ \alpha_{1}} \left( \frac{m}{h} \right)^{ \alpha_{2}-1} = p
$$
$$
\left( \frac{k}{h} \right)^{ \alpha_{1}-1} \left( \frac{m}{h} \right)^{ \alpha_{2}} = \frac{1-\beta(1-\delta)}{\beta \alpha_{1}}
$$
Despejo $\frac{k}{h}$ de la ultima:
$$
\frac{k}{h} = \left[  \underbrace{ \left[ \frac{1-\beta(1-\delta)}{\beta \alpha_{1}} \right]  }_{ \gamma }   \left( \frac{m}{h} \right)^{-\alpha_{2}}  \right] ^{\frac{1}{\alpha_{1}-1}}
$$
Ahora eso lo reemplazo en la segunda:
$$
\alpha_{2} \left(  \left[  \gamma   \left( \frac{m}{h} \right)^{-\alpha_{2}}  \right] ^{\frac{1}{\alpha_{1}-1}} \right)^{ \alpha_{1}} \left( \frac{m}{h} \right)^{ \alpha_{2}-1} = p
$$
$$
 \left(  \left[  \gamma ^{\frac{ \alpha_{1}}{\alpha_{1}-1}}  \left( \frac{m}{h} \right)^{\frac{ -\alpha_{2}\alpha_{1}}{\alpha_{1}-1}}  \right] ^{} \right) \left( \frac{m}{h} \right)^{ \alpha_{2}-1} = \frac{p}{\alpha_{2} }
$$
$$
 \left(  \left[  \left( \frac{m}{h} \right)^{\frac{ -\alpha_{2}\alpha_{1}}{\alpha_{1}-1} + \alpha_{2}-1}  \right] \right)  = \frac{p}{\alpha_{2}  \gamma ^{\frac{ \alpha_{1}}{\alpha_{1}-1}}  }
$$
$$
\frac{m}{h} =\left(  \frac{p}{\alpha_{2}  \gamma ^{\frac{ \alpha_{1}}{\alpha_{1}-1}}  } \right) ^{ \frac{1}{\frac{ -\alpha_{2}\alpha_{1}}{\alpha_{1}-1} + \alpha_{2}-1}}
$$

De ahi despejo $\frac{m}{h}$
$$
\frac{m}{h} =  \underbrace{\left[ \frac{p}{\gamma ^{ \frac{\alpha_{1}}{\alpha_{1}-1}} \alpha_{2}} \right]^{\frac{1}{\frac{-\alpha_{1}\alpha_{2}}{\alpha_{1}-1} +\alpha_{2}-1}}}_{ \kappa_{m} }
$$Llego a los valores de estado estacionario:
$$
\frac{k}{h} = (\gamma \kappa ^{-\alpha_{2}} ) ^{\frac{1}{\alpha _{1}-1}}
$$

### EQUILIBRIO

$$
\gamma = \left[ \frac{1-\beta(1-\delta)}{\beta \alpha_{1}} \right]
$$
$$
\kappa =\left[ \frac{p}{\gamma ^{ \frac{\alpha_{1}}{\alpha_{1}-1}} \alpha_{2}} \right]^{\frac{1}{\frac{-\alpha_{1}\alpha_{2}}{\alpha_{1}-1} +\alpha_{2}-1}}
$$

$$
h_{ss}=\left[  (1-\alpha_{1}-\alpha_{2}) \left( (\gamma \kappa ^{-\alpha_{2}} ) ^{\frac{1}{\alpha _{1}-1}}  \right)^{\alpha_{1}}  \kappa ^{ \alpha_{2}}\right]  ^{\frac{1}{\omega-1}}
$$
$$
m_{ss}=\kappa h_{ss}
$$
$$
k_{ss}=(\gamma \kappa ^{-\alpha_{2}} ) ^{\frac{1}{\alpha _{1}-1}} h_{ss}
$$

$$
y_{ss}= k_{ss}^{\alpha_{1}} m_{ss}^{\alpha_{2}} h_{ss}^{1-\alpha_{1}-\alpha_{2}}
$$
$$
y_{ss}-k_{ss}\delta+m_{ss}+dr^*=c_{ss}
$$
