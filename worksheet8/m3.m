X = [0.1:0.1:0.4].';
Y = [0.76,0.58,0.44,0.35].';
%%% IMPLEMENTATION WITHOUT ANY FUNCTION %%%
A = zeros(2,2);
B = zeros(2,1);
U = zeros(2,1);
N = length(X);
A(1,1) = sum(exp(-6*X));
A(1,2) = sum(exp(-5*X));
A(2,1) = A(1,2);
A(2,2) = sum(exp(-4*X));
B(1,1) = sum(Y.*exp(-3*X));
B(2,1) = sum(Y.*exp(-2*X));
U = A\B;
a = U(1);
b = U(2);
F = @(x) a*exp(-3*x) + b*exp(-2*x);
newY = F(X);
RootMeanSquareError(Y,newY)
plot(X,Y,'r*',X,newY,'b-O');