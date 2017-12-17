function result = fdm_matrix_builder(f1,f2,f3,h,start,finish)
    n = (finish-start)/h;
    result = zeros(n);
    for i = 1:n
        if i ~= 1
            result(i,i-1) = f1((finish-start)*(i/n),h);
        end
        result(i,i) = f2((finish-start)*(i/n),h);
        if i ~= n
            result(i,i+1) = f3((finish-start)*(i/n),h);
        end
    end
end

