format long g

ev = linspace(0, 500000, 100)
t = 1.5 * 24*60*60

for i = linspace(0, 500000, 100)
  i, 1 - exp(-i/t)
endfor
