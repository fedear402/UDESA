function valfunfind(handles)
%program to show numerical solution of a value function
global vlast beta delta theta k0 kt
hold off
% set initial conditions
numj=round(get(handles.numj,'Value'));
v0val=get(handles.slider2,'Value');
vlast=v0val.*ones(1,numj);
v=vlast;
kt1=zeros(1,numj);
k0=6/numj:6/numj:6;
beta=get(handles.slider5,'Value');
delta=.1;
theta=.36;
numit=get(handles.slider3,'Value');
numits=round(numit);
%begin recursive calculations;
for k=1:numits
    set(handles.text1,'String',['Value function graph: Iter = ' num2str(k,'%2.0f')])
    vm1=v;
    ktold=kt1;
    for j=1:numj
        kt=j*6/numj;
        ktp1=fminbnd(@valfun,6/numj,5.99);
        v(j)=-valfun(ktp1);
        kt1(j)=ktp1;
    end
    axes(handles.value1)
    plot(k0,v,k0,vm1)
    axis([0,6,0,16])
    xlabel('kt')
    drawnow
    vlast=v;
    axes(handles.policyfun)
    plot(k0,kt1,k0,ktold)
    axis([0,6,0,6])
    xlabel('kt')
    ylabel('kt+1')
    drawnow

end
axes(handles.policyfun)
hold on
plot([0,6],[0,6])
hold off
