function x2 = secant(f,x0,x1,tol)
    disp('Iteration       x        f(x)      ');
    disp('=========    =======    =======');
    fprintf('%3d%17.4f%11.4f\n', 0,x0,f(x0));
    fprintf('%3d%17.4f%11.4f\n', 1,x1,f(x1));
    count = 2;
    while true
        x2 = x1 - ((f(x1)*(x1-x0))/(f(x1)-f(x0)));
        fprintf('%3d%17.4f%11.4f\n', count,x2,f(x2));
        count = count + 1;
        if(abs(x2-x1) < tol || count > 100)
            break %forever loop protection
        end
        x0 = x1;
        x1 = x2;
    end
    disp("VALUE");
    disp(x2-x1);
end