clc;
clear;
warning('off');
X = [   4.0,    4.2,    4.5,    4.7,    5.1,    5.5,    5.9,    6.3,    6.8,    7.1].';
Y = [102.56, 118.18, 130.11, 142.05, 167.53, 195.14, 224.87, 256.73, 259.50, 326.72].';
plot(X,Y,'b*');
hold on;
color = ['r','g','b','c','k'];
for degree = [1,2,3,5]
    disp("====== When degree is "+degree+" (color:"+color(degree)+") ======");
    P = LeastSquarePolynomial(X,Y,degree);
    disp("Polynomial is ");
    disp(P.');
    newY = polyval(flipud(P),X);
    disp("new Y value is ");
    disp(newY.')
    disp("RootMeanSquareError = "+RootMeanSquareError(Y,newY));
    plot(X,newY,color(degree));
end