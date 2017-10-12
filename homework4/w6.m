syms y;
X = [0;0.5;1;2];
Y = [0;y;3;2];
%v = lagrange_interpolation(X,Y,21)
%u = sum(v);
u = lagrange_interpolation_syms(X,Y);
u = sum(u)