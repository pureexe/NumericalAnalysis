syms x;
f = 2*x*exp(-0.25 *x);
df = diff(f);
x = newton_raphson(df,0.01);
x = 4;
subs(f)