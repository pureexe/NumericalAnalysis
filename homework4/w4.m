X = chebyshev_nodes(4,1,4);
Y = log(X.^2);
syms x;
vpa(simplify(newton_interpolation(x,X,Y)),6)