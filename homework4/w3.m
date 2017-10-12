X = [0,1,2,3].';
Y = [4,9,15,18].';
syms x;
simplify(newton_interpolation(x,X,Y))