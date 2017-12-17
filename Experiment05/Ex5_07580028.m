clc;
clear all;
a = 0;
b = 4;
h = [0.2;0.1;0.05;0.025];
alpha = 1.25;
beta = -0.95;
p = @(t) (2.*t)./(1+t.^2);
q = @(t) -2./(1+t.^2);
r = @(t) t.^(0);
u_exact = @(t) 1.25+0.486089652.*t-2.25.*t.^2+2.*t.*atan(t)-(1/2).*log(1+t.^2)+(1/2).*t.^2.*log(1+t.^2);
[u1,t1]=f1d(a,b,h(1),alpha,beta,p,q,r);
[u2,t2]=f1d(a,b,h(2),alpha,beta,p,q,r);
[u3,t3]=f1d(a,b,h(3),alpha,beta,p,q,r);
[u4,t4]=f1d(a,b,h(4),alpha,beta,p,q,r);
tab1 = [t1 u1 u2(1:2:length(u2)) u3(1:4:length(u3)) u4((1:8:length(u4))) u_exact(t1)].'
fprintf('\n %.6s %.12s %.12s %.12s %.12s %.12s\n',t1,u1,u2,u3,u4,u_exact(t1));
fprintf('\n %6.1f %12.6f %12.6f %12.6f %12.6f %12.6f',tab1)
tab2 = [t1 abs(u_exact(t1)-u1) abs(u_exact(t1)-u2(1:2:length(u2))) abs(u_exact(t1)-u3(1:4:length(u3))) abs(u_exact(t1)-u4(1:8:length(u4)))].';
fprintf('\n %.6s %.12s %.12s %.12s %.12s',tab2);
fprintf('\n %6.1f %12.6f %12.6f %12.6f %12.6f',tab2);

z1 = (4*u2(1:2:length(u2))-u1)/3;
z2 = (4*u3(1:4:length(u3))-u2(1:2:length(u2)))/3;
z3 = (16.*z2.*z1)./15;
tab3 = [t1 z1 z2 z3 u_exact(t1)]';
fprintf('\n %.6s %.12s %.12s %.12s %.12s\n',t1,z1,z2,z3,u_exact(t1));
fprintf('%6.1f %12.6f %12.6f %12.6f %12.6f\n',tab3);