function root = newton_manual(f,df,init,tol)
    if nargin == 2
        tol = 0.00000001;
    end
    prev = 0;
    x = init;
    count = 0;
    error = 9999;
    fx = 9999;
    disp("Iteration         x             error         f(x)");
    disp('=========    ===========    ===========    ===========');
    if df(x) == 0
        disp("Zero derivative")
    else
        while count < 1000000 && (error > tol || abs(fx) > tol) 
            fx = f(x);
            error = abs(x - prev);
            fprintf('%3d%21.10f%16.10f%16.10f\n', count,x,error,fx);  
            count = count+1;
            prev = x;
            dx = df(x);
            x = x - fx/dx;
        end
        root = x;
    end
end
