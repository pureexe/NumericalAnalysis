function result = gauess_seidel(A,B,tol,X0)
    count = 0;
    N = length(B);
    X = X0;
    while(count < 100)
        fprintf("%d, %.6f, %.6f, %.6f\n",count,X(1),X(2),X(3));
        for i = 1:N
            sum = jacobi_sum(A,X,i);
            X(i) = (B(i) - (sum))/A(i,i);
        end
        error = jacobi_norm(X-X0);
        if(error < tol)
            break;
        end
        X0 = X;
        count = count+1;
    end
    result = X;
end
function max = jacobi_norm(matrix)
    max = -1;
    i = 1;
    for val = matrix
        if(abs(val) > max)
            max = abs(val);
        end
    end
end
function sum = jacobi_sum(A,X0,i)
    len = length(X0);
    sum = 0;
    for j = 1:len
        if i ~= j
            sum = sum+ (A(i,j)*X0(j));            
        end
    end
   
end
