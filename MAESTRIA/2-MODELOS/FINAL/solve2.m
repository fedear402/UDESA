clear; clc;
beta=0.99; theta=0.36; delta=0.025; a=0.01; pibar=1.03; kappa=2; rstar=0.03;
rwbar=0.9750; wbar=2.4314; Cbar=0.9056; rnbar=1.0404; Kbar=11.5706; NPbar=0.6940; MPbar=1.5997; Hbar=0.3046;
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


%% === IRFs: 1% P* shock; two plots; inline labels early in horizon ===
close all;
nx=5; ny=11; H=40; shock=0.01;

% bigger text/lines
set(0,'defaultaxesfontsize',14);
set(0,'defaulttextfontsize',14);
set(0,'defaultlinelinewidth',1.8);

% simple simulator
function [X,Y]=irf_once(P,Q,R,S,N,shock,H,nx,ny)
  x=zeros(nx,1); z=shock; X=zeros(nx,H); Y=zeros(ny,H);
  for t=1:H
    Y(:,t)=R*x+S*z; X(:,t)=x;
    x=P*x+Q*z; z=N*z;
  end
endfunction

% label each series near the beginning, spread across early anchors,
% snapped to a nearby local extremum; with small vertical jitter and de-cluttering
function label_early(t,Z,names,hs)
  m=rows(Z); H=columns(Z);
  yall=Z(:); ymin=min(yall); ymax=max(yall); rng=ymax-ymin; if rng==0, rng=1; end
  % anchor window early in the sample [~0.12H, ~0.38H]
  a0 = max(1, round(0.12*H)); a1 = max(a0, round(0.38*H));
  anchors = round(linspace(a0, a1, m));
  win = 3;                          % half-window for local extremum search
  basejit = 0.05*rng;               % vertical jitter scale
  placed = [];                      % keep (tx,ty) to avoid overlaps
  for k=1:m
    idx = anchors(k);
    lo=max(1,idx-win); hi=min(H,idx+win);
    [~,rel]=max(abs(Z(k,lo:hi))); idx=lo+rel-1;  % snap to local |extremum|
    tx = t(idx) + 0.8;             % put label slightly to the RIGHT of point
    ty = Z(k,idx) + basejit * sin(2*pi*k/(m+1));
    % nudge if too close to previous labels
    if ~isempty(placed)
      for it=1:4
        d = min( abs(ty - placed(:,2)) + 0.02*abs(tx - placed(:,1)) );
        if d < 0.02*rng, ty += 0.03*rng * cos(2*pi*(k+it)/(m+2)); else, break; end
      end
    end
    placed = [placed; tx, ty];
    c=get(hs(k),'color');
    text(tx,ty,names{k},'Color',c,'HorizontalAlignment','left', ...
         'FontWeight','bold','BackgroundColor','w');
  end
endfunction

% compute IRFs
[X1,Y1]=irf_once(P,Q,R,S,N,shock,H,nx,ny); X1=real(X1); Y1=real(Y1);
t=1:H;

% indices (your ordering)
% states: [1 K_{t+1}, 2 M_t, 3 P_t, 4 B_t, 5 r^f_t]
% jumps : [1 C_t, 2 H_t, 3 w_t, 4 r_t, 5 Y_t, 6 N_t, 7 r^n_t, 8 r^w_t, 9 g^M_t, 10 e_t, 11 X_t]

% NOMINAL (exclude r^f, X): M_t, P_t, r^n_t, r^w_t, g^M_t, e_t
nom_state_idx=[2 3];
nom_jump_idx =[7 8 9 10];
Z_nom=[X1(nom_state_idx,:); Y1(nom_jump_idx,:)];
names_nom={'M_t','P_t','r^n_t','r^w_t','g^M_t','e_t'};

% REAL (exclude r^f, X): K_{t+1}, B_t, C_t, H_t, w_t, r_t, Y_t, N_t
real_state_idx=[1 4];
real_jump_idx =[1 2 3 4 5 6];
Z_real=[X1(real_state_idx,:); Y1(real_jump_idx,:)];
names_real={'K_{t+1}','B_t','C_t','H_t','w_t','r_t','Y_t','N_t'};

% --- Plot NOMINAL ---
figure('Name','Nominal IRFs (1% P^* shock)');
hn=plot(t,Z_nom'); grid on; xlim([1 H+6]);
ylim([min(Z_nom(:))-0.15*(max(Z_nom(:))-min(Z_nom(:))), max(Z_nom(:))+0.15*(max(Z_nom(:))-min(Z_nom(:)))]);
xlabel('quarters','FontSize',16); ylabel('deviations','FontSize',16);
title('Nominal variables – IRFs to 1% shock in P^*_t','FontSize',18,'FontWeight','bold');
label_early(t,Z_nom,names_nom,hn);

% --- Plot REAL ---
figure('Name','Real IRFs (1% P^* shock)');
hr=plot(t,Z_real'); grid on; xlim([1 H+6]);
ylim([min(Z_real(:))-0.15*(max(Z_real(:))-min(Z_real(:))), max(Z_real(:))+0.15*(max(Z_real(:))-min(Z_real(:)))]);
xlabel('quarters','FontSize',16); ylabel('deviations','FontSize',16);
title('Real variables – IRFs to 1% shock in P^*_t','FontSize',18,'FontWeight','bold');
label_early(t,Z_real,names_real,hr);

