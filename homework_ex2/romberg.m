function [r,quad,err] = romberg(f,a,b,n,tol)
    h = b-a;
    r(1,1) = h*(f(a)+f(b))/2;
    j = 1;
    err = 1;
    while ((err > tol) && (j<n))
        j = j+1;
        h = h/2;
        s = 0;
        for i=1:2^(j-2)
            s = s + f(a+(2*i-1)*h);
        end
        r(j,1) = r(j-1,1)/2+h*s;
        for k=2:j
            r(j,k) = (4^(k-1)*r(j,k-1)-r(j-1,k-1))/(4^(k-1)-1);
        end
        err = abs(r(j-1,j-1)-r(j,k));
    end
    quad = r(j,k);
end