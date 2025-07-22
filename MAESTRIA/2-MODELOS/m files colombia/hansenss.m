    function z=hansenss(x)
    global beta delta theta AA
    %convert the x matrix to the variable names
    rbar=x(1);
    Cbar=x(2);
    Hbar=x(3);
    Ybar=x(4);
    Kbar=x(5);
    %set of the equations that you want the zeros of
    z(1)=1-beta*(rbar+1-delta);
    z(2)=AA*Cbar*Hbar-(1-theta)*(1-Hbar)*Ybar;
    z(3)=Cbar-Ybar+delta*Kbar;
    z(4)=Ybar-Kbar ^theta*Hbar ^(1-theta);
    z(5)=rbar*Kbar-theta*Ybar;