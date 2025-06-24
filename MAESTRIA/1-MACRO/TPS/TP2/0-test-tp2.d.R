# Parámetros iniciales (anuales)
n      <- 0.003         # Tasa de crecimiento poblacional anual (Banco Mundial)
rho    <- 0.05          # Tasa de descuento anual
alpha  <- 0.424         # Participación del capital (Baumann Fonay, Iván y Cohan, Luciano, Junio 2018)
y      <- 12933.2       # PIB per cápita (2023) en US$ (constante 2015, Argentina)
g      <- 0.011         # Tasa de crecimiento del PIB

# Horizonte de 35 años
T       <- 35
y_35    <- y * (1+g)^T
rho_35  <- (1+rho)^T - 1
n_35    <- (1+n)^T - 1

# Calibración del parámetro A:
# Para el horizonte anual:
A  <- y^(1-alpha) * ((1-alpha) / ((2+rho)*(1+n)))^(-alpha)
# Para el horizonte de 35 años:
A_35  <- y_35^(1-alpha) * ((1-alpha) / ((2+rho_35)*(1+n_35)))^(-alpha)

# Steady state original sin PAYG (para horizonte 35 años)
k_original <- (((1-alpha) * A_35) / ((2+rho_35) * (1+n_35)))^(1/(1-alpha))
w_original <- (1-alpha) * A_35 * (k_original^alpha)

# Definir la contribución d (30% del salario original)
d <- 0.30 * w_original

# Funciones para salario y tasa de rendimiento dado k:
w_func <- function(k) {
  (1-alpha) * A_35 * k^alpha
}

r_func <- function(k) {
  alpha * A_35 * k^(alpha-1)
}

# Definir la función de equilibrio para el sistema PAYG:
# Buscamos k tal que:
# (1+n_35)*k = w(k)/(2+rho_35) + d * ( [ (1+r(k)) + (1+rho_35)*(1+n_35) ] / [ (2+rho_35)*(1+r(k)) ] )
equilibrium_eq <- function(k) {
  w_k <- w_func(k)
  r_k <- r_func(k)
  
  term <- ((1 + r_k) + (1+rho_35)*(1+n_35)) / ((2+rho_35) * (1+r_k))
  
  lhs <- (1+n_35) * k
  rhs <- w_k / (2+rho_35) + d * term
  
  return(lhs - rhs)
}

# Intervalo de búsqueda para k: usamos k_original como referencia
k_lower <- 0.1 * k_original
k_upper <- 1.5 * k_original

# Resolver la ecuación f(k) = 0 con uniroot
# Ajustar el intervalo de búsqueda para que f(k) tenga signos opuestos:
k_lower <- 1.5 * k_original
k_upper <- 3 * k_original

# Comprobar nuevamente los extremos:
cat("Nuevo f(k_lower) =", equilibrium_eq(k_lower), "\n")
cat("Nuevo f(k_upper) =", equilibrium_eq(k_upper), "\n")

# Resolver la ecuación f(k) = 0 con uniroot en el nuevo intervalo
result  <- uniroot(equilibrium_eq, lower = k_lower, upper = k_upper)
k_payg <- result$root

# Calcular el ingreso en estado estacionario con PAYG
y_payg <- A_35 * (k_payg^alpha)
k_y_ratio <- k_payg / y_payg

# Mostrar resultados
cat("Nuevo stock de capital (k* PAYG):", k_payg, "\n")
cat("Nuevo ingreso en estado estacionario (y* PAYG):", y_payg, "\n")
cat("Razón k / y:", k_y_ratio, "\n")