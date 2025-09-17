function F = ss_residuals(x, p)
Y=x(1); lam=x(2); K=x(3); H=x(4); rf=x(5); w=x(6); r=x(7); B=x(8);
c=x(9); C=x(10); Pst=x(11); P=x(12); e=x(13); X=x(14); M=x(15); N=x(16); pi=x(17);

th=p.theta; del=p.delta; bet=p.beta; rstar=p.r_star; a=p.a;
Pss=p.Pstar_ss; gM=p.gM; gPst=p.gamma_star; glam=p.gamma_lambda;

F=zeros(17,1);
F(1)= Y - lam * K^th * H^(1-th);
F(2)= rf*w - (1-th)*Y/H;
F(3)= r - th*Y/K;
F(4)= B + w/c;
F(5)= 1/bet - (r + 1 - del);
F(6)= 1/bet - (1 + rf);
F(7)= Y - C - del*K - X;
F(8)= - rf*B - Pst*X;
F(9)= P*C - (M - N);
F(10)= N + (gM - 1)*M - P*w*H;
F(11)= e - P/Pst;
F(12)= (1 - gPst)*(Pst - Pss);
F(13)= (1 - glam)*log(lam);
F(14)= rf - (rstar - a*B/Pst);
F(15)= pi;
F(16)= P - 1;
F(17)= H - 1;
end

