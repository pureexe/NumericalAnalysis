function result = fixpoint(f,tol,start)
    limit = 100;
    x = start;
    prev = x;
    i = 0;
    while i < limit
        disp(x);
        x = f(x);
        if abs(prev - x) < tol
            result = x;
            return
        end
        prev = x;
        i = i + 1;
    end
end

