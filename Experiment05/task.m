
function [x,U]=FD(a,b,ua,uxb,f,n)

a=0;b=10;n=100;

h=(b-a)/n;

h1=h*h;

A=sparse(n-1,n-1);

F=zeros(n-1,1);

for i=1:n-2

A(i,i)=-2/h1;A(i+1,i)=1/h1;A(i,i+1)=1/h1;

end

A(n-1,n-1)=-2/h1;

for i=1:n-1
    x(i)=a+i*h;
    f=0.091875*cos(x(i));
    F(i)=feval(f,x(i));
end
F(1)=F(1)-ua/h1;
F(n-1)=F(n-1)-uxb/hi;
U=A/F;
a=0;b=10;n=100;

ua=0;uxb=0;

[x,U]=FD(a,b,ua,uxb,'f',n);

plot(x,U,0);hold

u=zeros(n-1,1);

for i=1:n-1
    u(i)=0.091875*cos(x(i));
end

plot(x,u)