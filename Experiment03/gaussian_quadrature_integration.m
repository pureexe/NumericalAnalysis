function result = gaussian_quadrature_integration(f,a,b,n)
% Gaussain Quadtrature Integration
% @Parameter
%   - f => (Function) function to integrate
%   - a => (Real) lowerbound of interested interval
%   - b => (Real) upperbound of interested interval
%   - n => (PostiveInterger) point to devide interval
% @Return
%   - result => (Real) value of integration explanation goes here
    Wi = getWi(n);
    Xi = getXi(n);
    Ti = ((a+b)/2)+((b-a)/2)*Xi;
    result = ((b-a)/2)*(Wi'*f(Ti));
end
function Xi = getXi(N)
% Information of Xi
% @Parameter
%   - N => (PostiveInterger) point to devide interval
% @Return
%   - Xi => (Matrix<1,N>) matrix value of Xi
    switch N
        case 2
            Xi = [-0.5773502692, 0.5773502692];
        case 3
            Xi = [-0.8611363116, 0.8611363116, 0];
        case 4
            Xi = [-0.8622363116, 0.8622363116, -0.3399810436, 0.3399810436];
        case 5
            Xi = [-0.9061798459, 0.9061798459, -0.5384693101, 0.5384693101, 0];
        case 6
            Xi = [-0.9324695142, 0.9324695142, -0.6612093865, 0.6612093865, -0.2386191861, 0.2386191861];
        case 7
            Xi = [-0.941910791, 0.941910791, -0.741531186, 0.741531186, -0.405845151, 0.405845151, 0];
        case 8
            Xi = [-0.960289857, 0.960289857, -0.796666477, 0.796666477, -0.52553241, 0.52553241, -0.183434643, 0.183434643];
    end
    Xi = Xi';
end
function Wi = getWi(N)
% Information of Wi
% @Parameter
%   - N => (PostiveInterger) point to devide interval
% @Return
%   - Wi => (Matrix<1,N>) matrix value of Wi
    switch N
        case 2
            Wi = [1, 1];
        case 3
            Wi = [0.5555555556, 0.5555555556, 0.888888888];
        case 4
            Wi = [0.3478548451, 0.3478548451, 0.6521451549, 0.6521451549];
        case 5
            Wi = [0.2369268851, 0.2369268851, 0.4786286705, 0.4786286705, 0.5688888888];
        case 6
            Wi = [0.1713244924, 0.1713244924, 0.3607615730, 0.3607615730, 0.4679139346, 0.4679139346];
        case 7
            Wi = [0.1294849662, 0.1294849662, 0.2797053915, 0.2797053915, 0.3818300505, 0.3818300505, 0.4179591837];
        case 8
            Wi = [0.1012285363, 0.1012285363, 0.2223810345, 0.2223810345, 0.3137066459, 0.3137066459, 0.3626837834, 0.3626837834];
    end
    Wi = Wi';
end