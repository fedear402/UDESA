% RBC SOE Model - log-linearized
% The mdoel follows Uribe and Schmitt-Grohe (2017) , Ch 4
% By Javier Garcia-Cicco, 2012

%----------------------------------------------------------------
% 0. Housekeeping (close all graphic windows)
%----------------------------------------------------------------

close all;
warning off;

%----------------------------------------------------------------
% 1. Defining variables
%----------------------------------------------------------------

// Endogenous variables
var y c h ii k a d tby cay;

// Exogenous variables
varexo u_a;

// Parameters
parameters SIGMA DELTA;
parameters ALPHA r_int D_BAR BETA;
parameters OMEGA PHI PSI RHO ETA;
parameters h_ss k_ss ii_ss y_ss d_ss c_ss tby_ss cay_ss a_ss;

%----------------------------------------------------------------
% 2. Calibration
%----------------------------------------------------------------

// Calibarted parameteres
ALPHA=0.32;
DELTA=0.1;
RHO=0.42;
SIGMA=2;
ETA=0.0129;
r_int=0.04;
OMEGA = 1.455;
PHI=0.028;
D_BAR=0.7442;
PSI=0.000742;


%----------------------------------------------------------------
% 3. Model (11 equations)
%----------------------------------------------------------------

//Notice: linearize all variable except for d, tby, cay
//lo que tiene exp se loglinariza

model;

// Resource constraint
// Original: y+ d = c + k-(1-DELTA)*k(-1)+d(-1)*(1+r_int+PSI*(exp(d(-1)-D_BAR)-1))+PHI/2*(k-k(-1))^2;

exp(y)+ d = exp(c)+exp(k)-(1-DELTA)*exp(k(-1))+d(-1)*(1+r_int+PSI*(exp(d(-1)-D_BAR)-1))+PHI/2*(exp(k)-exp(k(-1)))^2;

// Marginal rate of substitution = Marginal productivity of labor
// Original: h^(OMEGA-1) = a*(1-ALPHA)*(k(-1)/h)^ALPHA;

exp(h)^(OMEGA-1) = exp(a)*(1-ALPHA)*(exp(k(-1))/exp(h))^ALPHA;

// Choice of debt
// Original: (c-(h^OMEGA)/OMEGA))^(-SIGMA) = BETA*(1+r_int+PSI*(exp(d-D_BAR)-1))*((c(+1)-((h(+1)^OMEGA)/OMEGA))^(-SIGMA));

(exp(c)-((exp(h)^OMEGA)/OMEGA))^(-SIGMA) = BETA*(1+r_int+PSI*(exp(d-D_BAR)-1))*((exp(c(+1))-((exp(h(+1))^OMEGA)/OMEGA))^(-SIGMA));

// Choice of capital
// Original: (c-(h^OMEGA)/OMEGA))^(-SIGMA)*(1+PHI*(k-k(-1)))  = BETA*((c(+1)-((h(+1)^OMEGA)/OMEGA))^(-SIGMA))* (a(+1)*ALPHA*(k/h(+1))^(ALPHA-1)+1-DELTA+PHI*(k(+1)-k));

(exp(c)-((exp(h)^OMEGA)/OMEGA))^(-SIGMA)*(1+PHI*(exp(k)-exp(k(-1)))) = BETA *((exp(c(+1))-((exp(h(+1))^OMEGA)/OMEGA))^(-SIGMA)) * (exp(a(+1))*ALPHA*(exp(k)/exp(h(+1)))^(ALPHA-1)+1-DELTA+PHI*(exp(k(+1))-exp(k)));

// Production Function
// Original: y=a*(k(-1)^ALPHA)*(h^(1-ALPHA));

exp(y)=exp(a)*(exp(k(-1))^ALPHA)*(exp(h)^(1-ALPHA));

// Evolution of capital
// Original: k=ii +(1-DELTA)*k(-1);

exp(k)=exp(ii) +(1-DELTA)*exp(k(-1));

// Definition of current account as a ratio of gdp
// Original: cay = (d(-1)-d)/y;

cay = (d(-1)-d)/exp(y);

// Definition of trade balance as a ratio of gdp
// Original:  tby = (y-c-ii-(PHI/2)*(k-k(-1))^(2))/y;

tby = (exp(y)-exp(c)-exp(ii)-(PHI/2)*(exp(k)-exp(k(-1)))^(2))/exp(y);

// Stochastic process for produtivity
// Original:  log(a) = RHO*log(a(-1)) + ETA*u_a;
a = RHO*a(-1) + ETA*u_a;

end;

%----------------------------------------------------------------
% 4. Steady State
%----------------------------------------------------------------

steady_state_model;

// Computing the steady state and calibrated parameters
BETA = 1/(1+r_int);
KAPA=((1/BETA - (1-DELTA)) / ALPHA)^(1/(ALPHA-1)) ;// Ratiof of kapital to labor
h_ss = ((1-ALPHA)*KAPA^(ALPHA))^(1/(OMEGA -1)); //labor
k_ss = KAPA * h_ss; //capital
y_ss = k_ss^(ALPHA)*h_ss^(1-(ALPHA)); //output
c_ss = y_ss-DELTA*k_ss-r_int*D_BAR; //consumption
ii_ss = DELTA * k_ss; //investment
tby_ss = (y_ss - ii_ss - c_ss)/y_ss; //trade balance
cay_ss = 0; // Current account
a_ss = 1; // Productivity
d_ss = D_BAR; // debt

// Assigning logs to those variables that are log-linearized, and teh actual value for those thata are just linearized
    h     = log(h_ss);
    k     = log(k_ss);
    y     = log(y_ss);
    c     = log(c_ss);
    d     = d_ss;
    ii    = log(ii_ss);
    a     = log(a_ss);
    tby   = tby_ss;
    cay   = cay_ss;
end;

%----------------------------------------------------------------
% 4. Computation
%----------------------------------------------------------------

steady; // Checking that proposed staedsy state satisfy equations in static form

check; // Check that the solution is unique

// Defining variance of exogneous variables
shocks;
    var u_a=1;
end;

// Computing the solution, moments and impulse responses
stoch_simul(periods=0, irf = 50, order = 1, nograph) ;

// Saving results
save RBC_SOE_base.mat M_ oo_ options_;

