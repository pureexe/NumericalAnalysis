function result = regular_falsi(f,a,b,tol)
    prev_c = 0;
    prev_fc = 0;
    i = 0;
    while i < 100
        fb = f(b);
        fa = f(a);
        c = b - ((fb*(b-a))/(fb-fa));
        fc = f(c);
        if fc == 0 || (abs(fc - prev_fc) < tol && abs(c - prev_c) < 0)
            result = c;
            return;
        elseif fa*fc < 0
            b = c;
        else
            a = c;
        end
        i = i + 1;        
    end
    disp("WARNING: LOOP EXCEED");
    result = c;
end

