% fix point iteration
% x - e^(-x) = 0; when x0 = 0, tol = 10^-8
format long;
prev = 1;
x0 = 0;
while(abs(prev - x0) > 0.00000001)
    prev = x0;
    x0 = exp(-x0);
    disp(x0)
end