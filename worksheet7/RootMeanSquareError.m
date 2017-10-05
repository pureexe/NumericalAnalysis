function RMSE = RootMeanSquareError(Y,newY)
    N = length(Y);
    RMSE = sqrt(1/N*sum((abs(newY - Y)).^2));
end

