syms a,x;
% X = [0,a,2].';
% f = @(x) sqrt(x+x.^2);
% Y = f(X);
% newton_interpolation(x,X,Y)
P  = 0 + sqrt((a^2+a)/a)*(x-0)+((((sqrt(6)-sqrt(a^2+a))/(2-a))-(sqrt((a^a+a)/a)))/2)*(x-0)*(x-sqrt(a^2+a));
simplify(P)

sqrt((a^2+a)/a)*(0.5-0)+((((sqrt(6)-sqrt(a^2+a))/(2-a))-(sqrt((a^a+a)/a)))/2)*(0.5-0)*(0.5-sqrt(a^2+a)) = 0.75