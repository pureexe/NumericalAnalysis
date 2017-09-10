format long;

x  =  (0.75:0.01:1.25);
y1 = exp(x)-2;
y2 = cos(exp(x) - 2);
plot(x,y1,x,y2)

bisection(@(x) 2+cos(exp(x)-2)-exp(x) , 0,2, 0.00000001)