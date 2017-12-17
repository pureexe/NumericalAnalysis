function [x,t] = RK4v(f,t0,tN,N,x0)
%RK4V Summary of this function goes here
%   Detailed explanation goes here
    h = (tN - t0) / N;
    t = t0:h:tN;
    x(:,1) = x0;
    for k=1:N
        K1 = h * f( t(k), x(:,k) );
        K2 = h * f( t(k) + h/2, x(:,k) + K1/2 );
        K3 = h * f( t(k) + h/2, x(:,k) + K2/2 );
        K4 = h * f( t(k) + h, x(:,k) + K3);
        x(:,k+1) = x(:,k) + (K1 + 2 * K2 + 2 * K3 + K4) / 6;
    end
end

