function [L,U] = LUdecomposition(A)
    N = length(A);
    R = [A eye(N)];
    for r = 1:N
        for i = r+1:N
            m = R(i,r)/ R(r,r); 
            R(i,:) = R(i,:) - m*R(r,:);
        end
    end
    U = R(1:N,1:N);
    L = R(1:N,N+1:N*2);
end