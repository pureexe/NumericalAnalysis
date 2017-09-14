format long;
f = @(x) cos(x)-x;
sol = secant(f,0.5,pi/4,10^-8);
disp(sol);