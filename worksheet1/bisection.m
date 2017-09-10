function root = bisection(expression,a,b,tol)
    if nargin == 3
        tol = 0.00000001;
    end
    if expression(a) * expression(b) > 0
        throw(MException("Bisection:OutOfBound","Value is out of bound"))
    end
    c = 0;
    prev = 0;
    count = 0;
    while(true)
        prev = c;
        c = (a+b)/2;
        fa = expression(a);         
        fc = expression(c);
        fprintf("n: %d\t an: %.6f\t cn: %.6f\t bn: %.6\t fc: %.6f \n",count,a,c,b,fc);
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