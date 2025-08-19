% Build Gamma0, Gamma1, Gamma2, Psi as above
[TT, RR, eu, QQ, ZZ] = gensys(Gamma0, Gamma1, Gamma2, Psi, zeros(size(Psi)));
% TT is T. Extract blocks by sizes: nx = 2; ny = 4; nz = 2.
nx=2; ny=4; nz=2;
Txx = TT(1:nx, 1:nx);   Txz = TT(1:nx, nx+ny+1:nx+ny+nz);
P = Txx; Q = Txz;

% Compute R,S from static block
R = - (C \ (A + B / P));
S = - (C \ (D - B / P * Q));
