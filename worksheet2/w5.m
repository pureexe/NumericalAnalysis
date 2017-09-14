f = @(x) x^3 - 3*x^2 +4;
df = @(x) 3*x^2 - 6*x;
disp("Newton");
newton_manual(f,df,-3,10^-10)
disp("Secant");
secant(f,-3,-2,10^-10)