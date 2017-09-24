function result = jacobi(A,B,tol,X0)
    count = 0;
    N = length(B);
    X = X0;
    while(count < 100)
        for i = 1:N
            sum = jacobi_sum(A,X0,i);
            % sum = (A(i,1:i-1)*X0(1:i-1)) + (A(i,i+1:N)*X0(i+1:N));
            X(i) = (B(i) - (sum))/A(i,i);
        end
        %error = max(abs(X-X0));
        error = jacobi_norm(X-X0);
        disp(count);
        disp(X);
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
