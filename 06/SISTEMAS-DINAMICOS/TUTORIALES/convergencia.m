format long
k = 0:1000
serie = 0.99 .^ k
0.99^1000 #check

sinf = 1/(1-0.99) #serie infinita

sinfv=ones(1,1000)*sinf
x=linspace(1,1000, 1000);
line(x,sinfv); #Color?
hold on

suma = cumsum(serie)
plot(x, suma) #???

