function sum = largrange_interpolation(X,Y,interest)
    N = length(X);
    sum = 0;
    for k = 1:N
        product = Y(k);
        for j = 1:N
            if k ~= j
                product = product * ((interest - X(j)) / (X(k)-X(j)));
            end
        end
        sum = sum + product;
    end
end

