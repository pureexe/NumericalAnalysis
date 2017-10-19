function result = bisection(f,a,b,tol)
    if f(a)*f(b) > 0
        disp("CRASH not in interval")
        return 
    end
    prev_c = 0;
    prev_fc = 0;
    i = 0;
    while i < 100
        c = (a+b)/2;
        fc = f(c);
        if fc == 0 && (abs(prev_c - c) < tol && abs(prev_fc - fc) < tol)
            result = c;
            return
        elseif fc*f(a) < 0
            b = c;
        else
            a = c;
        end
        i = i + 1;
    end
    disp("Warning: exceed")
    result = c;
end

