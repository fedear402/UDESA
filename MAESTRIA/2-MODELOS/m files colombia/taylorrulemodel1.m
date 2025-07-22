%sets up a cash in advance model with a lending market for
%working capital and with money injection in financial intermediaries The
%central bank follows a taylor rule with coefficients given by aa and bb
global beta theta gbar BB delta
theta=.36;
beta=.99;
gamma=.95;
delta=.025;
gbar=1.0;
lambdabar=1;
aa=.5;
bb=.5;
AA=1.72;
BB=-2.5805;
rbar=1/beta-1+delta;
x0=[1.6675 .767 .9 .327 1.0101];
x=fsolve(@wcsssolve,x0);
rnbar=gbar/beta;
MPbar=x(1);
NPbar=x(2);
Cbar=x(3);
Hbar=x(4);
rfbar=x(5);
Kbar=Hbar*(theta/rbar)^(1/(1-theta));
Ybar=Hbar^(1-theta)*Kbar^theta;
wbar=-Cbar*gbar*BB/beta;
A=[0 0 0
    0 0 Cbar
    Kbar MPbar rnbar*NPbar-MPbar
    0 0 0
    0 0 0
    0 0 0
    0 0 0
    0 MPbar -(NPbar+MPbar*(1-1/gbar))
    0 0 bb*gbar];
B=[0 0 0
    0 -MPbar/gbar 0
    -(rbar+1-delta)*Kbar 0 0
    -theta 0 0
    -(theta-1) 0 0
    -theta 0 0
    0 -(rnbar-rfbar)*NPbar 0
    0 -MPbar/gbar 0
    0 0 -bb*gbar];
C=[0 1 0 -1 0 0 -1 0 0
    0 0 0 Cbar 0 NPbar 0 0 0
    -rbar*Kbar -wbar*Hbar 0 0 -wbar*Hbar -rnbar*NPbar -rnbar*NPbar 0 0
    0 1 0 0 theta 0 0 1 0
    1 0 0 0 -(1-theta) 0 0 0 0
    0 0 1 0 -(1-theta) 0 0 0 0 
    0 0 0 0 0 (rnbar-rfbar)*NPbar rnbar*NPbar -rnbar*NPbar -rfbar*MPbar
    0 -wbar*Hbar 0 0 -wbar*Hbar NPbar 0 0 MPbar
    0 0 aa*Ybar 0 0 0 0 -rfbar 0];
D=[0 
    0 
    0 
    -1 
    -1 
    -1 
    0 
    0 
    0];
F=[0 0 -1
    0 0 0
    0 0 0];
G=[0 0 1
    0 0 0
    0 1 0];
H=[0 0 0
    0 0 0
    0 -1 0];
J=[0 0 0 -1 0 0 0 0 0
    beta*rbar -1 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0];
K=[0 1 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 -1];
L=[0 
   0 
   0];
M=[0 
   0 
   0];
N=[gamma];