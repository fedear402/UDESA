%----------------------------------------------------------------
% 0. Housekeeping (close all graphic windows)
%----------------------------------------------------------------

close all;
warning off;

//****************************************************************************
//Define variables
//****************************************************************************
var y           $y$    (long_name='output')
    c           $c$    (long_name='consumption')
    k           ${k}$    (long_name='capital')
    h           ${h}$    (long_name='hours')
    a           ${a}$    (long_name='TFP')
    ii          ${i}$    (long_name='investment')
    d           ${d}$    (long_name='net debt position')
    tby         ${tb/y}$ (long_name='trade balance-output ratio')
    cay         ${ca/y}$ (long_name='current account-output ratio')
    ;

varexo u_a ${u_a}$ (long_name='shock')
    ;

parameters
    BETA    ${\beta}$   (long_name='discount factor')
    PSI     ${\psi}$    (long_name='portfolio adjustement cost')
    SIGMA   ${\sigma}$  (long_name='risk aversion')
    DELTA   ${\delta}$  (long_name='depreciation rate')
    ALPHA   ${\alpha}$  (long_name='capital share')
    RHO     ${\rho}$    (long_name='persistence TFP shock')
    OMEGA   ${\omega}$  (long_name='labor disutility')
    PHI     ${\phi}$    (long_name='investment costs')
    ETA     ${\eta}$    (long_name='sd of productivity innovations')
    r_int   ${r^*}$     (long_name='international interest rate')
    D_BAR   ${\bar{d}}$ (long_name='average level of debt')
    h_ss    ${h_ss}$    (long_name='steady state labor')
    k_ss    ${k_ss}$    (long_name='steady state capital')
    ii_ss   ${i_ss}$    (long_name='steady state interest rate')
    y_ss    ${y_ss}$    (long_name='steady state output')
    d_ss    ${d_ss}$    (long_name='steady state debt')
    c_ss    ${h_ss}$    (long_name='steady state consumption')
    tby_ss  ${tby_ss}$  (long_name='steady state trade balance to output ratio')
    cay_ss  ${\bar{d}}$ (long_name='steady state current account to output ratio')
    a_ss   ${\bar{d}}$ (long_name='steady state productivity')
    ;

%----------------------------------------------------------------
% 2. Calibration
%----------------------------------------------------------------

// Calibarted parameteres
ALPHA=0.32;         // capital share
DELTA=0.1;          // depreciation
RHO=0.42;           // persistence TFP shock 0.42
SIGMA=2;            // risk aversion
ETA=0.0129;         // sd productivity innovations
r_int=0.04;         // international interest rate
OMEGA = 1.455;      // labor disutility
PHI=0.028;          // investment costs
D_BAR=0.7442;       // average level of debt
PSI=0.000742;       // portfolio adjustement cost


%----------------------------------------------------------------
% 3. Model (11 equations)
%----------------------------------------------------------------

//Notice: linearize all variable except for d, tby, cay
//lo que tiene exp se loglinariza

model;

[name='resource constraint']
exp(y)+ d = exp(c)+exp(k)-(1-DELTA)*exp(k(-1))+d(-1)*(1+r_int+PSI*(exp(d(-1)-D_BAR)-1))+PHI/2*(exp(k)-exp(k(-1)))^2;

[name='Marginal productivity of labor']
exp(h)^(OMEGA-1) = exp(a)*(1-ALPHA)*(exp(k(-1))/exp(h))^ALPHA;

[name='Choice of debt']
(exp(c)-((exp(h)^OMEGA)/OMEGA))^(-SIGMA) = BETA*(1+r_int+PSI*(exp(d-D_BAR)-1))*((exp(c(+1))-((exp(h(+1))^OMEGA)/OMEGA))^(-SIGMA));

[name='Choice of capital']
(exp(c)-((exp(h)^OMEGA)/OMEGA))^(-SIGMA)*(1+PHI*(exp(k)-exp(k(-1)))) = BETA *((exp(c(+1))-((exp(h(+1))^OMEGA)/OMEGA))^(-SIGMA)) * (exp(a(+1))*ALPHA*(exp(k)/exp(h(+1)))^(ALPHA-1)+1-DELTA+PHI*(exp(k(+1))-exp(k)));

[name='Production Function']
exp(y)=exp(a)*(exp(k(-1))^ALPHA)*(exp(h)^(1-ALPHA));

[name='Evolution of capital']
exp(k)=exp(ii) +(1-DELTA)*exp(k(-1));

[name='Definition of current account as a ratio of gdp']
cay = (d(-1)-d)/exp(y);

[name='Definition of trade balance as a ratio of gdp']
tby = (exp(y)-exp(c)-exp(ii)-(PHI/2)*(exp(k)-exp(k(-1)))^(2))/exp(y);

[name='Stochastic process for produtivity']
a = RHO*a(-1) + ETA*u_a;

end;

%----------------------------------------------------------------
% 4. Steady State
%----------------------------------------------------------------

steady_state_model;
    BETA = 1/(1+r_int);
    KAPA=((1/BETA - (1-DELTA)) / ALPHA)^(1/(ALPHA-1)) ; // Ratiof of kapital to labor
    h_ss = ((1-ALPHA)*KAPA^(ALPHA))^(1/(OMEGA -1));     // labor
    k_ss = KAPA * h_ss;                         // capital
    y_ss = k_ss^(ALPHA)*h_ss^(1-(ALPHA));       // output
    c_ss = y_ss-DELTA*k_ss-r_int*D_BAR;         // consumption
    ii_ss = DELTA * k_ss;                       // investment
    tby_ss = (y_ss - ii_ss - c_ss)/y_ss;        // trade balance
    cay_ss = 0;                                 // Current account
    a_ss = 1;                                   // Productivity
    d_ss = D_BAR;                               // debt
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
