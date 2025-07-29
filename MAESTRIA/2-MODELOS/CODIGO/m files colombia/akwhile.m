%this file finds the time path of an AK economy until the capital stock is
%above 30
A=2;
s=.2;
delta=.1;
k=10;
ind=1;
ksave(ind)=k;
while k<30
    ind=ind+1;
    k=s*A*k+(1-delta)*k;
    ksave(ind)=k;
    if ind>30
        return
    end
end
plot(ksave)