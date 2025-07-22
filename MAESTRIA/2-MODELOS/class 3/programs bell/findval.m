function  v = findval(v0,k0,k,handles)
global beta delta theta A ks jj
set(handles.text1,'String',['Evaluating value function at kt = ' num2str(k,'%4.2f')])
for i=1:100
    val(i)=log(A*k^theta+(1-delta)*k-ks(i))+beta*interp1(k0,v0,ks(i),'linear');
    if imag(val(i)) ~= 0
        val(i)=[];
    end
end
[valf,vall]=size(val);
ks1=ks(1:vall);
[v,j]=max(val);
jj=j;
kk=ks(j);
axes(handles.axes2)
plot(ks1,val,ks(j),val(j),'o')
axis([0 6 0 16])
xlabel('kt+1')
ylabel('V(kt)')
