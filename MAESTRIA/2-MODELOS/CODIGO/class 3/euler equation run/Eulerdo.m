function eulerdo(beta,delta,theta,numitt)
global ksm1 ksp1
kfirst=1;
kss=((1/beta-1+delta)/theta)^(1/(theta-1));
klast=round(kss+1);
kstep=(klast-kfirst)/51;
kk=kfirst:kstep:klast;
[km,knum] = size(kk);
t=1:knum;
plot(t,kk)
drawnow
pause(.5)
klast=kk;
for i=1:numitt
    for j=2:knum-1
        ksm1=kk(j-1);
        ksp1=kk(j+1);
        kk(j)=fzero(@(x) Eulerval(x,beta,delta,theta),kk(j));
    end
    plot(t,kk,t,klast)
    drawnow
    %pause(.05)
    klast=kk;
end
        
    