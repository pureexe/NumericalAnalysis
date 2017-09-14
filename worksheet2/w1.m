format long;
f = @(x) cos(x)-x
sol = regulafalsi(f,0,2,10^-8);
disp(sol);