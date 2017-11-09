function result = SimpsonIntegration(f,a,b,n)
% SIMPSON INTEGRATION
% @Parameter
%   - f => (Function) function to integrate
%   - a => (Real) lowerbound of interested interval
%   - b => (Real) upperbound of interested interval
%   - n => (PostiveInterger) point to devide interval
% @Return
%   - result => (Real) value of integration
    h = (b-a)/(2*n);
    x_odd = a+h:h*2:b-h;
    x_even = a+2*h:2*h:b-2*h;
    result = (h/3)*(f(a)+4*sum(f(x_odd))+2*sum(f(x_even))+f(b));
end

