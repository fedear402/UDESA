%this sets up the matrices for the basic Hansen model
A=[0 -Kbar 0 0]';
B=[0 (1-delta)*Kbar theta -1]';
C=[1 -1 -1/(1-Hbar) 0
   Ybar -Cbar 0 0
  -1 0 1-theta 0
   1 0 0 -1];
D=[0 0 1 0]';
F=[0];
G=[0];
H=[0];
J=[0 -1 0 beta*rbar];
K=[0 1 0 0];
L=[0];
M=[0];
N=[.95];