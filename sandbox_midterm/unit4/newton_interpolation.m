function sum = newton_interpolation(X,Y,interest)
    N = length(X);
    D(:,1) = Y;
    for j=2:N
        for k = j:N
            D(k,j) = (D(k,j-1)-D(k-1,j-1)) / (X(k)-X(k-j+1));
        end
    end
    sum = D(N,N);
    for k = N-1:-1:1
        sum = sum*(interest-X(k)) + D(k,k);
    end        
end