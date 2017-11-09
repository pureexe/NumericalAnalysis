format long;
f = @(x) 1/x;
[r,quad,err] = romberg(f,1,3,4,10^-6);
disp(r)