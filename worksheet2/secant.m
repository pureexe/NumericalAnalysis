function root = secant(f,x0,x1,tol)
    if nargin == 3
        tol = 0.00000001;
    end
    x2 = 0;
    count = 2;
    error = 9999;
    disp("Iteration         x             error         f(x)");
    disp('=========    ===========    ===========    ===========');
    while error > tol || f(x2) > tol;
        x2 = x1 - f(x1)*(x1-x0)/(f(x1)-f(x0));
        error = abs(x2-x1);
        fprintf('%3d%21.10f%16.10f%16.10f\n', count,x2,error,f(x2));
        x0 = x1;
        x1 = x2;
        count = count+1;
    end
    root = x2;
end