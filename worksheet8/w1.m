clc;clear;
X = [1,2,3,4,5].';
Y = [0.6,1.9,4.3,7.6,12.6].';
[X1,Y1] = LowerLsCast(1,X,Y);
[A1,B1] = LeastSquareLine(X1,Y1);
f1 = buildApproxFunction(1,A1,B1);
[X2,Y2] = LowerLsCast(6,X,Y);
[A2,B2] = LeastSquareLine(X2,Y2);
f2 = buildApproxFunction(6,A2,B2);
newY1 = f1(X);
newY2 = f2(X);
disp("y = Ce^dx when x = 2.8 -> "+f1(2.8));
disp("y = Cx^a when x = 2.8 -> "+f2(2.8));
disp("y = Ce^dx when x = 4.2 -> "+f1(4.2));
disp("y = Cx^a when x = 4.2 -> "+f2(4.2));
disp("y = Ce^dx :E2: -> "+ RootMeanSquareError(Y,newY1));
disp("y = Cx^a :E2: ->" + RootMeanSquareError(Y,newY2));
plot(X,Y,'r*',X,newY1,'g-',X,newY2,'b-')