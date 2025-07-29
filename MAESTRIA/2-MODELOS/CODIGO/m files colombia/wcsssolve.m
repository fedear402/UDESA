function F=wcsssolve(x)
global beta theta gbar BB delta
rbar=1/beta-1+delta;
rnbar=gbar/beta;
MP=x(1);
NP=x(2);
C=x(3);
H=x(4);
rf=x(5);
F(1)=MP-rnbar*NP-((rbar-delta)*(theta/rbar)^(1/(1-theta))-C*gbar*BB/beta)*H;
F(2)=rf+beta*(1-theta)*(theta/rbar)^(theta/(1-theta))/(C*gbar*BB);
F(3)=(rnbar-rf)*NP-rf*(1-1/gbar)*MP;
F(4)=C-MP/gbar+NP;
F(5)=-C*gbar*BB*H/beta-NP-(1-1/gbar)*MP;