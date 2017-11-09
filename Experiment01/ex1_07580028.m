clc;clear;

% variable declaration
x = 1;

% function declaration
f = @(x) sin(x);
H = @(x) 2^-(x); %interested H
forward_difference = @(x,h) (f(x+h) - f(x)) / h;
backward_difference = @(x,h) (f(x+h) - f(x)) / h;
center_difference = @(x,h) (f(x+h) - f(x-h))/(2*h);
three_point_difference = @(x,h) ( 2*f(x+h) + 3*f(x) - 6*f(x-h) + f(x - 2*h) )/(6*h);
richard_o4_difference = @(x,h) (4*center_difference(x,h) - center_difference(x,2*h))/3;
absolute_error = @(data) abs(cos(x)-data);

% table printing
fprintf("n       D+         D-          D0          D3      D-richard\n");
for i = 1:8
    h = H(i);
    fprintf("%d  %4.4e %4.4e  %4.4e  %4.4e  %4.4e\n", i, absolute_error(forward_difference(x,h)), absolute_error(backward_difference(x,h)), absolute_error(center_difference(x,h)), absolute_error(three_point_difference(x,h)), absolute_error(richard_o4_difference(x,h)) );
end