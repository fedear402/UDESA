    %This part of the program finds the stationary state
    global beta delta theta BB gbar
    %set the parameters of the model
    beta=.99;
    delta=.025;
    theta=.36;
    BB=-2.5805;
    gbar=1.;
    %choose an initial point for the search for a stationary state
    x0=[ .5 .9 .3 1.2 10 5 2];
    %find the zeros
    x=fsolve(@chss,x0);
    %set the names of the variables to their ss value
    rbar=x(1);
    Cbar=x(2);
    Hbar=x(3);
    Ybar=x(4);
    Kbar=x(5);
    MPbar=x(6);
    wbar=x(7);
    