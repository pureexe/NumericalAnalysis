exact_function = @(t) 1.25+0.486089652.*t-2.25.^t+2.*t.*atan(t)-(1/2).*log(1+t.^2)+(1/2).*t.^2.*log(1+t.^2);
f1 = @(t,h) 1+t.^2+h;
f2 = @(t,h) 2.*(h.^2)-2-2.*(t.^2);
f3 = @(t,h) 1+t.^2-h;
u = zeros(4/0.2,1);
h = 0.2;
for i = 1:length(u)
    u(i,1) = h.^2;
end
u(1,1) =  (h.^2) - (1.25*f1(0,h));
u(20,1) = (h.^2) - (-0.95*f3(0,h));
%fdm_matrix_builder(f1,f2,f3,0.2,0,4)
first_test = fdm_matrix_builder(f1,f2,f3,0.2,0,4)\u;
exact_first = exact_function([0:0.2:3.8]).';
[first_test exact_first]
%r = @(t,h) 1+t.^2+h;
%q = @(t,h) 2.*(h.^2)-2-2.*(t.^2);
%p = @(t,h) 1+t.^2-h;
%s = @(t,h) 1+t.^2;