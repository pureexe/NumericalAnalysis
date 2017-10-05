clc;
X = (1:10).';
Y = [1.3,3.5,4.2,5.0,7.0,8.8,10.1,12.5,13.0,15.6].';
[m,c] = LeastSquareLine(X,Y);
% Question B
disp("=== Question B ===");
disp("When x = 4.5 then "+(m*4.5+c));
disp("When x = 6.8 then "+(m*6.8+c));
% Question C
leastY = m*X+c;
% plot(X,Y,'r+-',X,leastY,'bX-');
% Question D
N = length(X);
RMSE = sqrt(1/N*sum((abs(leastY - Y)).^2));
disp("=== Question D ===");
disp("Root Mean Square Error = "+RMSE);
%Question E;
FY = 1.5*X-0.5;
disp("=== Question E ===");
YRMSE = sqrt(1/N*sum((abs(FY - Y)).^2));
disp("F(x) Root Mean Square Error = "+YRMSE);
plot(X,Y,'r*',X,leastY,'b-',X,FY,'g-');

