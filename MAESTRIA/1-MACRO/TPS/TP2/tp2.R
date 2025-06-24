# y = Ak^alpha
# k* =  ( ( (1-alpha)*A )/ ((2+rho)*(1+n))  ) ^(1/(1-alpha))
# y* = A (k*)^alpha
rm(list=ls())
################################################################################
n <- 0.003 # Banco Mundial
rho <- 0.05 
alpha <- 0.424 # Baumann Fonay, Iván y Cohan, Luciano (Junio 2018)
y <- 12933.2 # 2023, Banco Mundial - GDP per capita (constant 2015 US$) - Argentina
g <- 0.011

y_35 <- y * (1+g)^35 * 35# 2023, Banco Mundial - GDP growth (annual %) - Argentina
rho_35  <- ( (1+rho)^35 - 1 )
n_35  <- ( (1+n)^35 - 1 )

A <- (y^(1-alpha)) * ( (1 - alpha) / ( (2+rho)*(1+n) )  )^(-alpha)
A_35 <- (y_35^(1-alpha)) * ( (1 - alpha) / ( (2+rho_35)*(1+n_35) ) )^(-alpha)
kss_35 =( ( (1-alpha)*A_35 ) / ( (2+rho_35)*(1+n_35) ))^(1/(1-alpha))
k_y_35 <- kss_35/y_35

################################################################################
# c)
################################################################################
r_35 <- A_35 * alpha * kss_35^(alpha-1)
r = (r_35 + 1)^(1/35) - 1 

################################################################################
# d)
################################################################################
# prev
w <-  A_35 * kss_35^(alpha)   -  kss_35 * (A_35 * alpha * kss_35^(alpha-1))
s <- w/(1+rho_35)

d <-( (w/(2+rho_35)) + (1+n_35)*kss_35 )/ (  ((1+n_35) + (1+rho_35)*(1+n_35) )/((2+rho_35)*(1+r_35))  )


# --------------------------------------
# Step 5: PAYG System Implementation
# --------------------------------------
# Equilibrium wage without pension (35-year period)
w_ss <- (1 - alpha) * A * kss_35^alpha

# Pension contribution: 30% of equilibrium wage
d <- 0.3 * w_ss

# Define capital mapping function for PAYG equilibrium
capital_map <- function(k) {
  r <- alpha * A * k^(alpha - 1)
  w <- (1 - alpha) * A * k^alpha
  savings_rate <- 1 / (2 + rho_35)
  pension_factor <- ((1 + r) + (1 + rho_35) * (1 + n_35)) / ((2 + rho_35) * (1 + r))
  
  k_new <- (savings_rate * w - d * pension_factor) / (1 + n_35)
  return(max(0.001, k_new))  # Prevent negative capital
}

# Iterate to find new steady-state capital
k_payg <- kss_35  # Initial guess
tol <- 1e-6
max_iter <- 1000
iter <- 0
diff <- Inf

while(diff > tol && iter < max_iter) {
  k_new <- capital_map(k_payg)
  diff <- abs(k_new - k_payg) / k_payg
  k_payg <- k_new
  iter <- iter + 1
}

# Calculate PAYG output
y_payg <- A * k_payg^alpha

