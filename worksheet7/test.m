clc;
clear;
f = @(x) x+1/x;
value = 1;
for i = 1:1000000
    value = f(value);
    disp(value);
end