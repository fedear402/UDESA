%this sequence of m-files and functions will generate the impulse response
%functions for the basic hansen model.  Impulse is 1.
hansenssfind
hansenmatrices
[P,Q,R,S]=llinsolve(A,B,C,D,F,G,H,J,K,L,M,N,1);
z=impres(P,Q,R,S,N,[1:5],1,100);