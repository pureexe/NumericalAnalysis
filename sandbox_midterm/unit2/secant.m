function x2 = secant(f,tol,x0,x1)
    i = 0;
    while i < 100
        x2 = x1 - ((f(x1)*(x1-x0))/(f(x1)-f(x0)));
        if abs(x2 - x1) < tol && abs(f(x2) - f(x1)) < tol
            return ;
        end
        i = i + 1;
    end
    disp("WARNING: LOOP EXCEED");
end