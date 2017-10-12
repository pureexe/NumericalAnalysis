% this function is implementation of polyval(fliplr(transpose(A)),x);
% @param Matrix A, value X
function result = polynomial_evaluation(A,x)
    N = length(A);
    B = zeros(N,1);
    B(N) = A(N);
    for k= N-1:-1:1
        B(k) = A(k)+(B(k+1)*x);
    end
    result = B(1);
end