A2=2;
A1=1;
s=.2;
delta=.1;
k=zeros(20);
k(1)=10;
for i=2:20
    if i/2==round(i/2)
        k(i)=s*A2*k(i-1)+(1-delta)*k(i-1);
    else
        k(i)=s*A1*k(i-1)+(1-delta)*k(i-1);
    end
end
plot(k)