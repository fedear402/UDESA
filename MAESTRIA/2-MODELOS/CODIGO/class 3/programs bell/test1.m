function test1(handles)
global beta delta theta A ks jj
beta=.98;
delta=.1;
theta=.36;
A=1;
jj=1;
%find k where  f'(k)=1/beta-1+delta
% f'(k) = theta*A*k^(theta-1)
kss=((1/beta-1+delta)/(theta*A))^(1/(theta-1));
ktop=ceil(kss);
kstep=ktop/100;
ks=kstep:kstep:ktop;
numj=round(get(handles.slider2,'Value'));
numits=round(get(handles.slider3,'Value'));
pauset=get(handles.slider4,'Value');
v01=get(handles.slider1,'Value');
v0=v01*ones(1,numj);
k0=ktop/numj:ktop/numj:ktop;
for j=1:numits
    set(handles.text2,'String',['Value function: Iter = ' num2str(j,'%2.0f')])
for ii=1:numj
    k00=k0(ii);
    v=findval(v0,k0,k00,handles);
    v1(ii)=v;
    k1(ii)=ks(jj);
    axes(handles.axes1)
    plot(k0(1:ii),v1(1:ii),k0,v0,k0(ii),v1(ii),'o')
    axis([0 6 0 16])
    xlabel('kt')
    ylabel('V(kt)')
    axes(handles.axes3)
    plot(k1(1:ii),k0(1:ii),k1(ii),k0(ii),'o')
    axis([0 6 0 6])
    ylabel('kt')
    pause(pauset/2)
end
axes(handles.axes1)
plot(k0,v1,k0,v0)
axis([0 6 0 16])
xlabel('kt')
ylabel('V(kt)')
v0=v1;
pause(pauset)
end
