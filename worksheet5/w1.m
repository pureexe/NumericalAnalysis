X = [1; 1.2; 1.4; 1.6; 1.8; 2.0];
Y = [0.5403; 0.3624; 0.1700; -0.0292; -0.2272; -0.4161];
A = polynomial_interpolation(X,Y);
polynomial_evaluation(A,1.5) % equal to -> polyval(fliplr(transpose(A)),1.5)