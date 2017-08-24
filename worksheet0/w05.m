f = @(n) 2*(n^2)-3*n+5;
s = 0;
for  i = 1:10
    s = s + f(i);
end
disp(s);