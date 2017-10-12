% @function newton_interpolation
% @param double targetToEstimate, Matrix<N,1> X, Matrix<N,1> Y
% @return PolynomialMatrix result
function result = newton_interpolation(target,X,Y)
    N = length(X);
    D = zeros(N,N);
    D(:,1) = Y;
    for j = 2:N
        for k = j:N
            D(k,j) = (D(k,j-1) - D(k-1,j-1)) / (X(k)-X(k-j+1));
        end
    end
    D
    result = D(N,N);
    for k = N-1:-1:1
        result = result*(target - X(k))+D(k,k);
    end
end