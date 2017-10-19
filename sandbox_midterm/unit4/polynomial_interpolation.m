function A = polynomial_interpolation(X,Y)
    N = length(X);
    L = ones(N,N);
    for j = 2:N
        L(:,j) = X.*L(:,j-1);
    end
    A = L\Y;
end

