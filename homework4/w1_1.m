X = [8; 10; 15; 18; 25];
Y = [5.1; 6.5; 9.3; 12; 18];
A = polynomial_interpolation(X,Y);
polynomial_evaluation(A,21)
%polynomial_evaluation(A,121) % equal to -> polyval(fliplr(transpose(A)),1.5)