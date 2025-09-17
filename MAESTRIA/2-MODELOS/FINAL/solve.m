clear; clc;

beta=0.99; theta=0.36; delta=0.025; a=0.01; pibar=1.03; kappa=2; rstar=0.03;
rwbar=0.9765; wbar=2.4275; Cbar=0.9042; rnbar=1.0404; Kbar=12.0918; NPbar=0.7254; MPbar=1.6295; Hbar=0.3184;
rbar=1/beta-(1-delta); rf_dom=1/beta-1; Bbar=(rstar-rf_dom)/a; Xbar=rf_dom*Bbar; rfbar=rstar-a*Bbar; Ybar=Kbar^theta*Hbar^(1-theta); gstar=0.90;

A=[0,0,Cbar,0,0;
   Kbar,MPbar,-MPbar+Bbar*rfbar+rnbar*NPbar,Bbar,0;
   0,0,0,0,0;
   0,0,0,0,0;
   0,0,0,Bbar,0;
   0,0,-1,0,0;
   0,0,-1,0,0;
   0,0,-wbar*Hbar,0,0;
   0,0,0.5*pibar/rwbar,0,0;
   0,1,0,0,0;
   0,0,0,0,0];

B=[0,-MPbar,0,0,0;
   -(rbar+(1-delta))*Kbar,0,0,-Bbar*(1+rfbar),-Bbar*rfbar;
   -theta,0,0,0,0;
   1-theta,0,0,0,0;
   0,0,0,-(1+rfbar)*Bbar,-rfbar*Bbar;
   0,0,0,0,0;
   0,0,0,0,0;
   0,(pibar-1)*MPbar,0,0,0;
   0,0,-0.5*pibar/rwbar,0,0;
   0,-1,0,0,0;
   -theta,0,0,0,0];

C=[Cbar,0,0,0,0,NPbar,0,0,0,0,0;
   0,-wbar*Hbar,-wbar*Hbar,-rbar*Kbar,0,-rnbar*NPbar,-rnbar*NPbar,0,0,-Bbar*rfbar,0;
   0,theta,1,0,0,0,0,1,0,0,0;
   0,theta-1,0,1,0,0,0,0,0,0,0;
   0,0,0,0,0,0,0,0,0,0,-Xbar;
   0,0,0,0,0,0,0,0,0,1,0;
   0,-1,-1,0,0,1,1,-1,0,0,0;
   0,-wbar*Hbar,-wbar*Hbar,0,0,NPbar,0,0,(pibar-1)*MPbar,0,0;
   0,0,0,0,0.5*Ybar/rwbar,0,0,-1,0,0,0;
   0,0,0,0,0,0,0,0,-1,0,0;
   0,-(1-theta),0,0,1,0,0,0,0,0,0];

D=[0;0;0;0;-Xbar;1;0;0;0;0;0];

F=[0,0,-1,0,0;
   0,0,pibar,0,0;
   0,0,0,0,0;
   -beta*kappa*Kbar,0,-1,0,0;
   0,0,0,a*Bbar,rfbar];

G=[0,0,1,0,0;
   0,0,-pibar,0,0;
   0,0,0,0,-beta*rfbar;
   (1+beta)*kappa*Kbar,0,1,0,0;
   0,0,0,0,0];

H=[0,0,0,0,0;
   0,0,0,0,0;
   0,0,0,0,0;
   -kappa*Kbar,0,0,0,0;
   0,0,0,0,0];

J=[-1,0,0,0,0,0,0,0,0,0,0;
   pibar,0,0,0,0,0,0,0,0,0,0;
   1/pibar-1,0,0,0,0,0,1/pibar,0,0,-1,0;
   1/pibar-1,0,0,-beta*rbar,0,0,1/pibar,0,0,0,0;
   0,0,0,0,0,0,0,0,0,0,0];

K=[0,0,1,0,0,0,0,0,0,0,0;
   -1,0,0,0,0,0,-1,0,0,0,0;
   0,0,0,0,0,0,0,0,0,1,0;
   0,0,0,0,0,0,0,0,0,0,0;
   0,0,0,0,0,0,0,0,0,0,0];

L=[0;0;0;0;-a*Bbar];
M=zeros(5,1);
N=gstar;

[P,Q,R,S]=llinsolve(A,B,C,D,F,G,H,J,K,L,M,N,1)
% After running your existing code up to [P,Q,R,S]=llinsolve(...)

% First, let's identify what variables we have
% From your matrices, you need to check the ordering of state and jump variables
% State variables (x): typically K, B, etc.
% Jump variables (y): typically C, H, r, w, P, etc.

% For foreign price shock (assuming it's shock #1 in your N matrix)
figure(1)
% Plot key real variables - adjust indices based on your variable ordering
z1 = impres(P,Q,R,S,N,[1:6],1,80);  % Adjust [1:6] to your variable indices
plot(z1')
title('Response to Foreign Price Shock - Real Variables')
legend('K','B','C','H','Y','r')  % Adjust legend to match your variables
xlabel('Periods')
ylabel('Deviation from Steady State')

figure(2)
% Plot nominal variables
z2 = impres(P,Q,R,S,N,[7:10],1,80);  % Adjust indices for nominal variables
plot(z2')
title('Response to Foreign Price Shock - Nominal Variables')
legend('P','w','rf','pi')  % Adjust legend to match your variables
xlabel('Periods')
ylabel('Deviation from Steady State')

% To see all variable responses:
figure(3)
z_all = impres(P,Q,R,S,N,1:size([P;R],1),1,80);
plot(z_all')
title('All Variables Response to Foreign Price Shock')
xlabel('Periods')
ylabel('Deviation from Steady State')
