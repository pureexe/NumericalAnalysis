function result = polynomial_interpolation(X,Y)
    N = length(X);
    L = ones(N,N);
    for j=2:N
        L(:,j) = X.*L(:,j-1);
    end
    result = L\Y;
end
