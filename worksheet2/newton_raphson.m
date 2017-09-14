function root = newton_raphson(symsF,init,tol)
    if nargin == 2
        tol = 0.00000001;
    end
    dF = diff(symsF);
    prev = 0;
    x = init;
    count = 0;
    error = 9999;
    fx = 9999;
    disp("Iteration         x             error         f(x)");
    disp('=========    ===========    ===========    ===========');
    if subs(dF) == 0
        disp("Zero derivative")
    else
        while (error > tol || abs(fx) > tol) && count < 100
            fx = subs(symsF);
            error = abs(x - prev);
            fprintf('%3d%21.10f%16.10f%16.10f\n', count,x,error,fx);  
            count = count+1;
            prev = x;
            dx = subs(dF);
            x = x - fx/dx;
        end
        root = x;
    end
end
