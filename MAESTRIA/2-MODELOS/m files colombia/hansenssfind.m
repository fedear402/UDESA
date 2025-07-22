    %This part of the program finds the stationary state
    global beta delta theta AA
    %set the parameters of the model
    beta=.99;
    delta=.025;
    theta=.36;
    AA=1.72;
    %choose an initial point for the search for a stationary state
    x0=[ .5 .9 .3 1.2 10];
    %find the zeros
    x=fsolve(@hansenss,x0);
    %set the names of the variables to their ss value
    rbar=x(1);
    Cbar=x(2);
    Hbar=x(3);
    Ybar=x(4);
    Kbar=x(5);