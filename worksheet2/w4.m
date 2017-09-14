format long;
f= @(y) (1/2)+(1/4)*y^2-y*sin(y)-(1/2)*cos(2*y);
df= @(y) y/2 + sin(2*y) - sin(y) - y*cos(y);
% newton_manual(f,df,pi/2,10^-10)
% newton_manual(f,df,5*pi,10^-10)
newton_manual(f,df,10*pi,10^-10)