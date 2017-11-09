clc;clear;
%% variable declation
a = 0;
b = 1;
n = 10;
h = (b-a)/n;
max_error = [0, 2, 6, 12]; % manule find max|f''(c)|
max_error_simpson = [0, 0, 0, 24]; % manule find max|f''''(c)|
%% function creation
for i = 1:4
    f{i} = @(x) x.^(i);
end
trapzoid_error = @(m) ((b-a)/12)*(h^2)*m;
simpson_error = @(m) ((b-a)/120)*(h^4)*m;
%% rendter table 5
disp("=======    TABLE 5    =======");
disp("  Exact    Trapzoid   Simpson");
for i = 1:4
    exact(i) = integral(f{i},a,b);
    trapzoid(i) = TrapezoidIntegration(f{i},a,b,n);
    simpson(i) = SimpsonIntegration(f{i},a,b,5);
    fprintf("%4.6f   %4.6f   %4.6f\n",exact(i),trapzoid(i),simpson(i));
end
%% render table 6
disp("=======    TABLE 6    =======");
trapzoid_error_expected = trapzoid_error(max_error);
simpson_error_expected = simpson_error(max_error_simpson);
disp("Expected Trapzoid      Observed Trapzoid      Expected Simpson    Observed Simpson");
for i = 1:4
    fprintf("    %4.6f               %4.6f              %4.6f             %4.6f\n",...
        abs(trapzoid_error_expected(i)),...
        abs(trapzoid_error_expected(i) - (trapzoid(i) - exact(i))),...
        abs(simpson_error_expected(i)),...
        abs(simpson_error_expected(i) - (simpson(i) - exact(i))));
end
%%