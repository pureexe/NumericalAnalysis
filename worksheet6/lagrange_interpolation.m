% @param Double targetToEstimate, Vector X, Vector Y,
function sum = lagrange_interpolation(target,X,Y)
    N = length(X);
    sum = 0;
    for k = 1:N
        product = Y(k);
        for j = 1:N
            if k ~= j
                product = product*(target - X(j))/(X(k)-X(j));
            end
        end
        sum = sum+product;
    end
end