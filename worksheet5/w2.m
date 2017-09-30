X = [1; 1.2; 1.4; 1.6; 1.8; 2.0];
Y = [0.5403; 0.3624; 0.1700; -0.0292; -0.2272; -0.4161];
%v = lagrange_interpolation(X,Y,1.5);
A = 1:0.1:2;
B = A;
i = 1;
while(i < 10)
    B(i) = lagrange_interpolation(X,Y,A(i));
    i = i+1;
end
plot(A,B,'*r',X,Y,'b-o');