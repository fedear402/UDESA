\section*{1. Stack the unknowns and build the Sims (gensys) form}

Let
$$
s_t=\begin{bmatrix}x_t\\ y_t\\ z_t\end{bmatrix},\qquad
\varepsilon_{t+1}=\begin{bmatrix}0\\ 0\\ u_{t+1}\end{bmatrix},\quad\text{with}\quad
z_{t+1}=N z_t+u_{t+1},\;\;E_t u_{t+1}=0.
$$

Your two equation blocks can be written as

$$
0=A x_t+B x_{t-1}+C y_t+D z_t
$$
$$
0=E_t\big[F x_{t+1}+G x_t+H x_{t-1}+J y_{t+1}+K y_t+L z_{t+1}+M z_t\big]
$$
and the exogenous VAR:
$$
z_{t+1}-N z_t-u_{t+1}=0.
$$

Collect these three sets into the generalized system
$$
\Gamma_0\,E_t s_{t+1}=\Gamma_1\,s_t+\Gamma_2\,s_{t-1}+\Psi\,\varepsilon_{t+1},
$$
with blocks (conformable with $s_t=[x_t;y_t;z_t]$):

$$
\Gamma_0=\begin{bmatrix}
0 & 0 & 0\\
F & J & L\\
0 & 0 & I
\end{bmatrix},\qquad
\Gamma_1=\begin{bmatrix}
A & C & D\\
G & K & M\\
0 & 0 & N
\end{bmatrix},\qquad
\Gamma_2=\begin{bmatrix}
B & 0 & 0\\
H & 0 & 0\\
0 & 0 & 0
\end{bmatrix},\qquad
\Psi=\begin{bmatrix}
0\\ 0\\ I
\end{bmatrix}.
$$

\section*{2. Solve the LRE model by QZ (generalized Schur) and check BK}

Compute the QZ decomposition for the pencil $(\Gamma_0,\Gamma_1)$, reorder so that stable generalized eigenvalues (inside the unit circle) correspond to predetermined variables, and verify the Blanchard–Kahn conditions: the number of stable eigenvalues must equal the number of predetermined endogenous states (the dimension of $x_t$) plus the number of exogenous states (the dimension of $z_t$).

If BK holds, there is a unique solution of the form
$$
s_{t+1}=T\,s_t+R\,\varepsilon_{t+1}.
$$

\section*{3. Read off $P,Q,R,S$ from the solved law of motion}

Partition $T$ conformably with $s_t=[x_t;y_t;z_t]$:
$$
T=\begin{bmatrix}
T_{xx} & T_{xy} & T_{xz}\\
T_{yx} & T_{yy} & T_{yz}\\
0      & 0      & N
\end{bmatrix}.
$$

Because $y_t$ is jump, the solution can be written
$$
y_t=\mathcal{R}\,x_t+\mathcal{S}\,z_t.
$$

Concretely, if your solver returns
$$
\begin{bmatrix}x_{t+1}\\ y_{t+1}\\ z_{t+1}\end{bmatrix}
=
\begin{bmatrix}
T_{xx} & T_{xy} & T_{xz}\\
T_{yx} & T_{yy} & T_{yz}\\
0 & 0 & N
\end{bmatrix}
\begin{bmatrix}x_t\\ y_t\\ z_t\end{bmatrix},
$$
then $P=T_{xx}$, $Q=T_{xz}$, and from the static block
$$
A x_t+B x_{t-1}+C y_t+D z_t=0,
$$
substitute $x_{t-1}=P^{-1}(x_t-Q z_t)$ to get
$$
\mathcal{R} = -C^{-1}\big(A + B P^{-1}\big),\qquad
\mathcal{S} = -C^{-1}\big(D - B P^{-1}Q\big).
$$
So set $R=\mathcal{R}$ and $S=\mathcal{S}$.

\section*{4. Minimal code skeleton (Matlab/Octave with gensys)}

\begin{verbatim}
% Build Gamma0, Gamma1, Gamma2, Psi as above
[TT, RR, eu, QQ, ZZ] = gensys(Gamma0, Gamma1, Gamma2, Psi, zeros(size(Psi)));
% TT is T. Extract blocks by sizes: nx = 2; ny = 4; nz = 2.
nx=2; ny=4; nz=2;
Txx = TT(1:nx, 1:nx);   Txz = TT(1:nx, nx+ny+1:nx+ny+nz);
P = Txx; Q = Txz;

% Compute R,S from static block
R = - (C \ (A + B / P));
S = - (C \ (D - B / P * Q));
\end{verbatim}

\section*{5. Notes}

- If $C$ is singular, use the decision rule for $y_t$ that \texttt{gensys} provides directly.  
- Check BK conditions ($eu=(1,1)$ in \texttt{gensys}).  
- Augmenting $z_t$ as a state ensures $Q,S$ are functions of contemporaneous $z_t$.
