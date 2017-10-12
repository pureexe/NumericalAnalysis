% @param Double targetToEstimate, Vector X, Vector Y,
function polynomial = lagrange_interpolation_syms(X,Y)
    syms x;
    N = length(X);
    for k = 1:N
        product = Y(k);
        for j = 1:N
            if k ~= j
                product = product*(x - X(j))/(X(k)-X(j));
            end
        end
        polynomial(k) = product;
    end
end