% Case 1: y = Ce^x
% Case 2: y = A/x+B
% Case 3: y = D/(C+x)
% Case 4: y = 1/(Ax+B)
% Case 5: y = x/(A+Bx)
% Case 6: y = Cx^A
% Case 7: 1/(Ax+B)^2
% Case 8: y = A*ln(X)
function [X,Y] = LowerLsCast(c,x,y)
    if c == 1
        X = x;
        Y = log(y);
    end
    if c == 2
        X = 1./x;
        Y = y;
    end
    if c == 3
        X = x.*y;
        Y = y;
    end
    if c == 4
        X = x;
        Y = 1./y;
    end
    if c == 5
        X = 1./x;
        Y = 1./y;
    end
    if c == 6
        X = log(x);
        Y = log(y);
    end
    if c == 7
        X = x;
        Y = y.^(-1/2);
    end
    if c == 8
        X = log(x);
        Y = y;
    end
end