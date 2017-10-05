function [m,c] = LeastSquareLine(X,Y)
    N = length(X);
    A = ones(N,2);
    A(:,2) = X;
    U = (A.'*A)\(A.'*Y);
    m = U(2);
    c = U(1);
end