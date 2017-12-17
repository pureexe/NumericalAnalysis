function [u,t] = fdm_solver(a,b,h,alpha,beta,p,q,r)
    %Step 1
    n = ((b-a)/h)-1;
    t = [a+h:h:a+n*h];
    %Step 2
    t1 = t(1);
    tn = t(n);
    f1 = (1+(h/2)-p(t1))*alpha-(h.^2)*r(t1);
    fn = (1+(h/2)-p(tn))*beta-(h.^2)*r(tn);
    f = (-h^2).*r(t);
    f = f.';
    %f = [f1 : (-h^2)*r(tn:n-1) : fn];
    av = -1-((h/2)*p(t(2:n)));
    bv = 2+(h^2)*q(t);
    cv = -1+((h/2)*p(t(1:n-1)));
    av = [av,0];
    cv = [0,cv];    
    A = spdiags([av.',bv.',cv.'],[-1,0,1],n,n);
    %Step 3
    v = A\f;
    u = [alpha;v;beta];
    t = [a,t,b].';
end