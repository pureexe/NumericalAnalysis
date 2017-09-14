function root = regulafalsi(f,a,b,tol)
    if nargin == 3
        tol = 0.00000001;
    end
    if f(a) * f(b) > 0
        throw(MException("Bisection:OutOfBound","Value is out of bound"))
    end
    disp('Iteration       a          b          c          f(a)          f(b)             f(c)');
    disp('=========    =======    =======    =======    ==========    ==========       ========');
    c = 0;
    prev = 0;
    count = 0;
    while(true)
        prev = c;
        fa = f(a);         
        fb = f(b);
        fc = f(c);
        c = b - fb*(b-a)/(fb-fa);
        fprintf('%3d%17.4f%11.4f%11.4f%14.4f%14.4f%14.4f\n', count,a,b,c,fa,fb,fc);
        count = count+1;
        if fc == 0
           root = c;
        elseif fa*fc < 0
            b = c;
        else
            a = c;
        end
        if abs(fc) < tol && abs(c - prev) < tol
            root = c;
            break
        end
    end
end