X = [8; 10; 15; 18; 25];
Y = [5.1; 6.5; 9.3; 12; 18];
%v = lagrange_interpolation(X,Y,21)
%u = sum(v);
u = lagrange_interpolation_syms(X,Y);
u = sum(u)
% simplify(u)
%x = 1;
%eval(subs(v.'))