function x = newton_raphson(symsF,init,tol)    
    diffF = diff(symsF);
    x = init;
    prev  = 0;
    count = 0;
    disp("Iteration       x        f(x)        f'(x)");
    disp('=========    =======    =======    =======');
    % nneed to check f(x) = 0
    while abs(prev - x) > tol && x ~= 0
        prev = x;
        fx = subs(symsF);
        dx = subs(diffF);
        fprintf('%3d%17.4f%11.4f%11.4f\n', count,x,fx,dx);
        x = x - (fx/dx);
        count = count+1;       
    end
    fprintf('%3d%17.4f%11.4f\n', count,x,fx);
end