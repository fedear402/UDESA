function k=akfunction(k1)
A=2;
s=.2;
delta=.1;
k=zeros(1,20);
k(1)=k1;
for i=2:20
    k(i)=s*A*k(i-1)+(1-delta)*k(i-1);
end
plot(k)