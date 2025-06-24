# Tus datos
x_bar = 65.6
y_bar = 59.8
n = 32
m = 38
sigma = 1.1
D_0 = 5

# Calcula el estadístico de prueba
Z = ((x_bar - y_bar) - D_0) / (sigma * sqrt((1/n) + (1/m)))
( (65.6-59.8) - 5 ) / (1.1 * sqrt((1/32) + (1/38)))
Z
# Calcula el p-valor
p_value = 1 - pnorm(Z)
p_value

####### B
Z_H1 = ((65.6 - 59.8) - 6) / (1.1 * sqrt(1/32 + 1/38))
potencia = 1 - pnorm(2.326348, mean = Z_H1)
potencia