clc;clear;
%% Variable defination
t0 = 0;
tN = 5;
N = 50;
x0 = [3,-5];
%% define interested function
f = @(t,x) [
    x(2,:);
    (-4)*x(2,:) + (-5)*x(1,:)
];
%% solve with Runge-Kutta 4 degree
[x,t] = RK4v(f,t0,tN,N,x0);
%% solve for Exact solution
u = @(t,x) 3.*exp(-2.*t).*cos(t)+exp(-2.*t).*sin(t);
u_diff = @(t,x) -5.*exp(-2.*t).*cos(t) - 5.*exp(-2*t).*sin(t);
solution_exact = @(x,t)[ u(x,t); u_diff(x,t) ];
X = solution_exact(t0:(tN-t0)/N:tN,x);
%% table render
table = [t', x(1,:)', X(1,:)', abs(x(1,:)-X(1,:))'];
fprintf(" K        tk            uk           u(tk)     |u(tk) - uk|\n");
for k = 1:51
    fprintf("%2d   % 2.8f   % 2.8f   % 2.8f   % 2.8f\n",k-1,table(k,1),table(k,2),table(k,3),table(k,4));
end