format long;
X = -1:0.2:1;
Y = arrayfun(@(x) 1/(1+12*x^2),X);
newY = X;
for i = 1:length(X)
    newY(i) = lagrange_interpolation(X(i),X,Y);
end
plot(X,Y,'r-+',X,newY,'b-X');