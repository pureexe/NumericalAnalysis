syms x;
f = x^3-3*x^2+4;
x = newton_raphson(f,-2.4,0.00001);