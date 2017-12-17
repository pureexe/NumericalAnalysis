%% variable defination
alpha = 1.25;
beta = -0.95;
a = 0;
b = 4;
h = 0.025;
exact_function = @(t) 1.25+0.486089652.*t-2.25.^t+2.*t.*atan(t)-(1/2).*log(1+t.^2)+(1/2).*t.^2.*log(1+t.^2);
p = @(t) (2.*t)./(1+t.^2);
q = @(t) 2./(1+t.^2);
r = @(t) t.^(0);
result = fdm_solver(a,b,h,alpha,beta,p,q,r);
[result exact_function(0:0.025:4).']
%% 
