function x = Eulerval(k,beta,delta,theta)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
global ksm1 ksp1
if k<0
    k=.001;
end
x=(k^theta-ksp1+(1-delta)*k)/(beta*(ksm1^theta-k+(1-delta)*ksm1));
x=theta*k^(theta-1)+(1-delta)-x;
x=real(x);
end

