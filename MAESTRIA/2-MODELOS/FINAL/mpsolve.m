beta = .99;
A=1.72;
h0=.583;
Bbar=A*log(1-h0)/h0;
theta=.36;
delta=.025;
gamma=.95;
pie=.45;
gbar=1.4;
rbar=1/beta-1+delta;
wbar=(1-theta)*(rbar/theta)^(theta/(theta-1));
Cbar=-beta/Bbar*wbar/gbar;
Mpbar=Cbar;
Hbar=Cbar/(wbar+(rbar-delta)*(rbar/theta)^(1/(theta-1)));
Kbar=(Mpbar-wbar*Hbar)/(rbar-delta);
Ybar=Kbar^theta*Hbar^(1-theta);
ssvec=[gbar Kbar Mpbar Ybar Cbar Hbar rbar wbar]
A=[0 0 0
   0 0 0
   0 0 0
   0 0 -1
   -Kbar -Mpbar Mpbar];
B=[0 0 0
   0 0 0
   -1 0 0
   0 1 0
   (rbar+1-delta)*Kbar 0 0];
C=[-1 0 1-theta 0 0
    1 0 -1 0 -1
    1 0 0 -1 0
    0 -1 0 0 0
    0 0 wbar*Hbar rbar*Kbar wbar*Hbar];
D=[1 0
    0 0
    0 0
    0 1
    0 0];
F=[0 0 0
    0 0 -1
    0 0 0];
G=[0 0 0
    0 0 1
    0 -1 0];
H=[0 0 0
    0 0 0
    0 1 0];
J=[0 0 0 beta*rbar -1
    0 -1 0 0 0
    0 0 0 0 0];
K=[0 0 0 0 1
    0 0 0 0 1
    0 0 0 0 0];
L=[0 0
    0 0
    0 0];
M=[0 0
    0 0
    0 1];
N=[gamma 0
    0 pie];
[P,Q,R,S]=llinsolve(A,B,C,D,F,G,H,J,K,L,M,N,1)
figure(1)
z=impres(P,Q,R,S,N,1:8,1,80);
legend('K','M','p','Y','C','H','r','w')
figure(2)
z=impres(P,Q,R,S,N,[1 4:8],2,25);
legend('K','Y','C','H','r','w')
figure(3)
z=impres(P,Q,R,S,N,2:3,2,25);
legend('M','p')
