% Case 1: y = Ce^x
% Case 2: y = A/x+B
% Case 3: y = D/(C+x)
% Case 4: y = 1/(Ax+B)
% Case 5: y = x/(A+Bx)
% Case 6: y = Cx^A
% Case 7: 1/(Ax+B)^2
% Case 8: y = A*ln(X)+B
function f = buildApproxFunction(c,a,b)
    if c == 1
       f = @(x) exp(a)*exp(b*x);
    end
    if c == 2
        f = @(x) b/x+a;
    end
    if c == 3
        f = @(x) (-a/b)/((-1/b)+x);
    end
    if c == 4
        f = @(x) 1./(b.*x+a);
    end
    if c == 5
        f = @(x) x/(b+a*x);
    end
    if c == 6
       f = @(x) exp(a)*x.^b;
    end
    if c == 7
       f = @(x) 1/((b*x+a)^2);
    end
    if c == 8
       f = @(x) b*log(X)+a;
    end
end