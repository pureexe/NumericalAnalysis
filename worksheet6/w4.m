format long;
X = chebyshev_nodes(11,-1,1);
Y = arrayfun(@(x) 1/(1+12*x^2),X);
result = lagrange_interpolation_syms(X,Y).';
x = 1;
eval(subs(result))