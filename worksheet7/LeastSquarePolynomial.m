function P = LeastSquarePolynomial(X,Y,degreeOfPolynomial)
    M = degreeOfPolynomial+1;
    N = length(X);
    A = ones(N,M);
    for j=2:M
        A(:,j) = X.*A(:,j-1);
    end
    P = (A.'*A)\(A.'*Y);
end