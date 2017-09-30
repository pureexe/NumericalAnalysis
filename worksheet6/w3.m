X = 1:0.2:2;
Y = cos(X);
newY = X;
for i = 1:length(X)
    newY(i) = lagrange_interpolation(X(i),X,Y);
end
plot(X,Y,'r-+',X,newY,'b-X');