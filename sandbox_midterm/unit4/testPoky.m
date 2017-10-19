clc;clear;
format short;
X = [1:0.2:2].';
Y = [0.5403,0.3624,0.1700,-0.0292,-0.2272,-0.4161].';
%L = polynomial_interpolation(X,Y).';
%L = fliplr(L);
%polyval(L,1.5)
newton_interpolation(X,Y,1.5)
%chebyshev(6,1,5);