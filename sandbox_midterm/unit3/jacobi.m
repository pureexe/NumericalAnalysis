function  X = jacobi(A,B,tol,X)
    N = length(A);
    X0 = X;
    round = 0;
    while round < 100
        for i =1:N
            X(i) = (B(i) - A(i,1:i-1)*X0(1:i-1) - A(i,i+1:N)*X0(i+1:N)) / A(i,i);
        end
        if  max(abs(X-X0)) < tol
            return 
        end
        X0 = X;
        round = round + 1;
    end
    disp("WARNING: LOOP EXCEED");
end
