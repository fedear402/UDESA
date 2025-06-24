%----------------------------------------------------------------
% 0. Housekeeping (close all graphic windows)
%----------------------------------------------------------------

close all;
warning off;

//****************************************************************************
//Define variables
//****************************************************************************
var y           $y$      (long_name='output')
    c           $c$      (long_name='consumption')
    k           ${k}$    (long_name='capital')
    h           ${h}$    (long_name='hours')
    a           ${a}$    (long_name='TFP')
    p           ${p}$    (long_name='TFP')
    m           ${m}$    (long_name='imports')
    ii          ${i}$    (long_name='investment')
    d           ${d}$    (long_name='net debt position')
    tby         ${tb/y}$ (long_name='trade balance-output ratio')
    cay         ${ca/y}$ (long_name='current account-output ratio')
    ;


varexo u_a ${u_a}$ (long_name='shock TFP')
       u_p ${u_p}$ (long_name='imports shock')
       ;

parameters
    BETA    ${\beta}$   (long_name='discount factor')
    PSI     ${\psi}$    (long_name='debt elasticity')
    SIGMA   ${\sigma}$  (long_name='risk aversion')
    DELTA   ${\delta}$  (long_name='depreciation rate')
    ALPHA   ${\alpha}$  (long_name='capital share')
    RHO     ${\rho}$    (long_name='persistence TFP shock')
    OMEGA   ${\omega}$  (long_name='labor disutility')
    PHI     ${\phi}$    (long_name='investment costs')
    ETA     ${\eta}$    (long_name='sd of productivity innovations')
    ALPHA2  ${\alpha_2}$(long_name='share of imports')
    P_bar   ${\p_ss}$   (long_name='steady state price')
    RHO_p   ${\rho_p}$  (long_name='persistence price shock')
    ETA_p   ${\eta_p}$  (long_name='sd of import price innovations')
    r_int   ${r^*}$     (long_name='international interest rate')
    D_BAR   ${\bar{d}}$ (long_name='average level of debt')
    h_ss    ${h_ss}$    (long_name='steady state labor')
    m_ss    ${m_ss}$    (long_name='steady state labor')
    k_ss    ${k_ss}$    (long_name='steady state capital')
    ii_ss   ${i_ss}$    (long_name='steady state interest rate')
    y_ss    ${y_ss}$    (long_name='steady state output')
    d_ss    ${d_ss}$    (long_name='steady state debt')
    p_ss    ${p_ss}$    (long_name='steady state debt')
    c_ss    ${c_ss}$    (long_name='steady state consumption')
    tby_ss  ${tby_ss}$  (long_name='steady state trade balance to output ratio')
    cay_ss  ${\bar{d}}$ (long_name='steady state current account to output ratio')
    a_ss    ${\bar{d}}$ (long_name='steady state productivity')
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
PSI=0.000742;       // debt elasticity
ALPHA2=0.2;
P_bar=1;
RHO_p=0.9;
ETA_p=0.01;

%----------------------------------------------------------------
% 3. Model (11 equations)
%----------------------------------------------------------------

model;

[name='resource constraint']
// - OLD : exp(y) + d = exp(c)+exp(k)-(1-DELTA)*exp(k(-1))+d(-1)*(1+r_int+PSI*(exp(d(-1)-D_BAR)-1))+PHI/2*(exp(k)-exp(k(-1)))^2;

exp(y) + d = exp(c) + exp(k) - (1 - DELTA)*exp(k(-1)) + exp(p)*exp(m) + d(-1)*(1 + r_int+PSI*(exp(d(-1)-D_BAR)-1)) + (PHI/2)*(exp(k) - exp(k(-1)))^2;

[name='Marginal productivity of labor']
// - OLD : exp(h)^(OMEGA-1) = exp(a)*(1-ALPHA)*(exp(k(-1))/exp(h))^ALPHA;
exp(h)^(OMEGA-1) = exp(a)*(1-ALPHA-ALPHA2)*exp(h)^(-ALPHA-ALPHA2)*exp(k(-1))^ALPHA*exp(m)^ALPHA2;

[name='Choice of debt']
// = OLD : (exp(c)-((exp(h)^OMEGA)/OMEGA))^(-SIGMA) = BETA*(1+r_int+PSI*(exp(d-D_BAR)-1))*((exp(c(+1))-((exp(h(+1))^OMEGA)/OMEGA))^(-SIGMA));
(exp(c)-((exp(h)^OMEGA)/OMEGA))^(-SIGMA) = BETA*(1+r_int+PSI*(exp(d-D_BAR)-1))*((exp(c(+1))-((exp(h(+1))^OMEGA)/OMEGA))^(-SIGMA));

[name='Choice of capital']
// OLD : (exp(c)-((exp(h)^OMEGA)/OMEGA))^(-SIGMA)*(1+PHI*(exp(k)-exp(k(-1)))) = BETA*((exp(c(+1))-((exp(h(+1))^OMEGA)/OMEGA))^(-SIGMA)) *(exp(a(+1))*ALPHA*(exp(k)/exp(h(+1)))^(ALPHA-1)+1-DELTA+PHI*(exp(k(+1))-exp(k)));

1 - PHI*(exp(k) - exp(k(-1))) =  BETA * ((exp(c(+1)) - (exp(h(+1))^OMEGA) / OMEGA) / (exp(c) - exp(h)^OMEGA / OMEGA))^(-SIGMA)  * (ALPHA * exp(a(+1)) * exp(k)^(ALPHA - 1) * exp(m(+1))^ALPHA2 * exp(h(+1))^(1 - ALPHA - ALPHA2) + (1 - DELTA) + PHI*(exp(k(+1)) - exp(k)));

[name='Choice of imports']
exp(a)*ALPHA2*(exp(k(-1))^ALPHA)*(exp(m)^(ALPHA2 - 1))*(exp(h)^(1 - ALPHA - ALPHA2)) = exp(p);


[name='Production Function']
exp(y)=exp(a)*(exp(k(-1))^ALPHA)*(exp(m)^ALPHA2)*(exp(h)^(1-ALPHA-ALPHA2));
[name='Evolution of capital']
exp(k)=exp(ii) +(1-DELTA)*exp(k(-1));
[name='Definition of current account as a ratio of gdp']
cay = (d(-1)-d)/exp(y);
[name='Definition of trade balance as a ratio of gdp']
tby = (exp(y)-exp(c)-exp(ii)-(PHI/2)*(exp(k)-exp(k(-1)))^(2))/exp(y);
[name='Stochastic process for produtivity']
a = RHO*a(-1) + ETA*u_a;
[name='Stochastic process for price']
p = RHO_p*p(-1) + ETA_p*u_p;
end;

%----------------------------------------------------------------
% 4. Steady State
%----------------------------------------------------------------

steady_state_model;
    BETA = 1/(1+r_int);

    GAMMA = (1 - (BETA * (1 - DELTA))) / (BETA * ALPHA);

    KAPA= ( P_bar / ( GAMMA^(ALPHA/(ALPHA - 1)) * ALPHA2 ) )^(1/(- (ALPHA * ALPHA2)/(ALPHA - 1) + ALPHA2 - 1));

    h_ss = ((1 - ALPHA - ALPHA2) * ((GAMMA * KAPA^(-ALPHA2))^(1/(ALPHA-1)))^ALPHA * KAPA^(ALPHA2))^(1/(OMEGA-1));

    m_ss = KAPA * h_ss;

    k_ss = (GAMMA * KAPA^(-ALPHA2))^(1/(ALPHA-1)) * h_ss;

    y_ss = k_ss^(ALPHA)*m_ss^( ALPHA2 )*h_ss^(1-ALPHA-ALPHA2);

    c_ss = y_ss-DELTA*k_ss-r_int*D_BAR-m_ss*P_bar;


    ii_ss = DELTA * k_ss;                       // investment
    tby_ss = (y_ss - ii_ss - c_ss)/y_ss;        // trade balance
    cay_ss = 0;                                 // Current account
    a_ss  = 1;                                  // Productivity
    d_ss  = D_BAR;                              // debt
    p_ss  = 1;
    m     = log(m_ss);
    h     = log(h_ss);
    k     = log(k_ss);
    y     = log(y_ss);
    c     = log(c_ss);
    p     = log(p_ss);
    d     = d_ss;
    ii    = log(ii_ss);
    a     = log(a_ss);
    tby   = tby_ss;
    cay   = cay_ss;
end;

%----------------------------------------------------------------
% 4. Computation
%----------------------------------------------------------------
resid;
steady; // Checking that proposed staedsy state satisfy equations in static form

check; // Check that the solution is unique

// Defining variance of exogneous variables
shocks;
    var u_p=1;
end;

// Computing the solution, moments and impulse responses
stoch_simul(periods=0, irf = 20, order = 1,nograph) y c ii h tby p;

// Saving results
save RBC_SOE_base.mat M_ oo_ options_;


write_latex_dynamic_model;
collect_latex_files;
