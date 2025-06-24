// RBC_SOE_imported.mod - Modelo con insumos importados

var y c h ii k a d tby cay m p;
varexo u_a u_p;

parameters alpha1 alpha2 beta delta psi omega phi r_star rho_a rho_p sigma_a sigma_p psi_1 psi_2 p_ss;

// Parámetros base (mismos que el modelo original)
alpha1 = 0.32;     // Participación del capital (igual que alpha en modelo base)
alpha2 = 0.2;      // Participación de insumos importados
beta = 0.96;
delta = 0.1;
psi = 1.75;
omega = 1.455;
phi = 0.028;
r_star = 0.04;
rho_a = 0.42;
rho_p = 0.9;       // Persistencia del precio
sigma_a = 0.0129;
sigma_p = 0.01;
psi_1 = 0.000742;
psi_2 = 1;
p_ss = 1;          // Precio en estado estacionario

model;
// Ecuación de Euler
exp(c)^(-psi) = beta*(1+r_star+psi_1*(exp(d-steady_state(d))-1)+psi_2/2*(exp(d-steady_state(d))-1)^2)*exp(c(+1))^(-psi);

// Acumulación de capital
exp(c)^(-psi) = beta*(exp(c(+1))^(-psi)*(alpha1*exp(a(+1))*exp(k)^(alpha1-1)*exp(m(+1))^alpha2*exp(h(+1))^(1-alpha1-alpha2)+(1-delta)+phi/2*(exp(k(+1))/exp(k)-1)^2-phi*(exp(k(+1))/exp(k)-1)*(exp(k(+1))/exp(k))));

// Oferta de trabajo (con preferencias GHH)
exp(c)^(-psi)*omega*exp(h)^psi = exp(c)^(-psi)*(1-alpha1-alpha2)*exp(a)*exp(k(-1))^alpha1*exp(m)^alpha2*exp(h)^(-alpha1-alpha2);

// Condición para insumos importados
alpha2*exp(a)*exp(k(-1))^alpha1*exp(m)^(alpha2-1)*exp(h)^(1-alpha1-alpha2) = exp(p);

// Producción con insumos importados
exp(y) = exp(a)*exp(k(-1))^alpha1*exp(m)^alpha2*exp(h)^(1-alpha1-alpha2);

// Acumulación de capital
exp(k) = (1-delta)*exp(k(-1)) + exp(ii);

// Restricción presupuestaria
exp(y) + exp(d) = exp(c) + exp(ii) + exp(p)*exp(m) + (1+r_star+psi_1*(exp(d(-1)-steady_state(d))-1)+psi_2/2*(exp(d(-1)-steady_state(d))-1)^2)*exp(d(-1)) + phi/2*(exp(k)-exp(k(-1)))^2;

// Balanza comercial
tby = 1 - (exp(c) + exp(ii) + exp(p)*exp(m))/exp(y);

// Cuenta corriente
cay = 1 - exp(c)/exp(y);

// Procesos exógenos
a = rho_a*a(-1) + sigma_a*u_a;
p = rho_p*p(-1) + sigma_p*u_p;
end;

steady;
check;

shocks;
var u_a = 1;
var u_p = 1;
end;

stoch_simul(order=1, irf=40) y c h ii k a d tby cay m p;