function x = newton_raphson(f,f_diff,tol,x)
    i = 0;
    prev_x = x;
    while i < 100
        x = x - (f(x)/f_diff(x));
        if abs(prev_x - x) < tol
            return
        end 
        prev_x = x;
        i = i + 1;
    end
    disp("WARNING: LOOP EXCEED");
end