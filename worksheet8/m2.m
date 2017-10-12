clc;clear;
X = [-1,0,1,2,3].';
Y = [6.62,3.94,2.17,1.35,0.89].';
[X1,Y1] = LowerLsCast(1,X,Y);
[A1,B1] = LeastSquareLine(X1,Y1);
f1 = buildApproxFunction(1,A1,B1);
[X2,Y2] = LowerLsCast(4,X,Y);
[A2,B2] = LeastSquareLine(X2,Y2);
f2 = buildApproxFunction(4,A2,B2);
newY1 = f1(X);
newY2 = f2(X);
disp("y = Ce^dx :E2: -> "+ RootMeanSquareError(Y,newY1));
disp("y = 1/(Ax+B) :E2: ->" + RootMeanSquareError(Y,newY2));
plot(X,Y,'r*',X,newY1,'g-',X,newY2,'b-')