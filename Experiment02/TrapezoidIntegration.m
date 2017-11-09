function result = TrapezoidIntegration(f,a,b,n)
% TRAPEZOID Integration
% @Parameter
%   - f => (Function) function to integrate
%   - a => (Real) lowerbound of interested interval
%   - b => (Real) upperbound of interested interval
%   - n => (PostiveInterger) point to devide interval
% @Return
%   - result => (Real) value of integration
    h = (b-a)/n;
    x = a+h:h:b-h;
    result = h*((f(a)+f(b))/2+sum(f(x)));
end

