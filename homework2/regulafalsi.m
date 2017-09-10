function root = regulafalsi(f,a,b,tolerance)
if (nargin < 3)
    error('Wrong number of input arguments');
elseif (nargin == 3 || nargin == 4)
    i = 0;
    if nargin == 3
        tol = 1e-6;
    else
        tol = tolerance;
    end
    g = 1;
    disp('Iteration       a          c          b          f(a)          f(b)             f(c)');
    disp('=========    =======    =======    =======    ==========    ==========       ========');
    while(abs(g) > tol)
        if (f(a) == f(b))
            fprintf('Function has the same value on a and b on iteration %d\n', Iter);
            disp('Denominator in Regula falsi is zero');
            root = 'Regula falsi can''t compute the root';
            beep
            disp('Go for another iteration');
            return;
        end
        c = a - ((f(a)*(b-a))/(f(b) - f(a)));
        fprintf('%3d%17.4f%11.4f%11.4f%14.4f%14.4f%14.4f\n', i,a,c,b,f(a),f(b),f(c));
        i = i + 1;
        if(f(c)*f(b) > 0)
            b = c;
            g = f(b);
            root = b;
        else
            a = c;
            g = f(a);
            root = a;
        end
        end
    elseif (nargin > 4)
    error('Too many input arguments');
end