f = @(x) ((0.3*x^2)/(500+log(x)^3)) - 0.02*x - 9.8;
bisection(f,1,200,0.01);